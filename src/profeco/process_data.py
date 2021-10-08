import pandas as pd

all_data_df=pd.DataFrame([])
all_data_df_Q2=pd.DataFrame([])
all_data_df_Q3=pd.DataFrame([])
all_data_df_Q4_1=pd.DataFrame([])
all_data_df_Q4_2=pd.DataFrame([])

chunksize = 10 ** 5
for df_all in pd.read_csv('data/all_data.csv', delimiter=',',low_memory=False, iterator=True, chunksize=chunksize):
    df = df_all.loc[:,['cadenaComercial','producto','estado','giro','precio']]
    #Q1
    all_data_df = all_data_df.append(pd.DataFrame(df.loc[:,['cadenaComercial']]).drop_duplicates())

    #Q2
    top_monitored = df.loc[:,['producto','estado']]
    top_products=top_monitored.groupby(['estado','producto'])['producto']
    all_data_df_Q2 =all_data_df_Q2.append(top_products.count())


    #Q3
    selection = df.loc[:,['producto','cadenaComercial']]
    comercial_chains = selection.groupby(['cadenaComercial'])
    all_data_df_Q3=all_data_df_Q3.append(comercial_chains.count())

    #Q4
    select_precio_giro = df.loc[:,['giro','precio','cadenaComercial']]
    select_precio_giro_g = select_precio_giro.groupby(['giro','cadenaComercial'])
    all_data_df_Q4=all_data_df_Q4_1.append(select_precio_giro_g.sum())


print("Q1")
print(all_data_df)
print(all_data_df.count())
print("Q2")
print(all_data_df_Q2.count().sort_values(ascending=False).iloc[:10])
print("Q3")
print(all_data_df_Q3.sort_values("producto",ascending=False).iloc[:10])
print("Q4")
print(all_data_df_Q4.sort_values('precio',ascending=False))
