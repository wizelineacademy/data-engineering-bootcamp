# Wizeline Data Engineering Bootcamp Challenge

Thank you for registering for the Wizeline Academy Data Engineering Bootcamp, and welcome to the Technical Challenge!

To be accepted into the Wizeline Academy Data Engineering Bootcamp, you must complete the Technical Challenge, which consists of two parts. After registering, you have **three days** to complete both parts, detailed below.

This challenge **is not** a test or an exam; it is a project, and you are the engineer assigned to solve this issue.

Communication is essential, and we are here to help you if you get stuck or have any concerns - open an issue in the source repository, and our team of expert Data Engineers will get back to you as soon as possible!

We need you to use the same email address for your registration, for your Coding Challenge in **CodeSignal** and for your Practical Challenge. This way we can have a 360 profile of your work.
<br />

## Technical Challenge Part 1 - Coding

To allow you to show your coding skills, we have designed a challenge for you in **`CodeSignal`**.

You can access this part of the challenge using the following **[link](https://app.codesignal.com/public-test/M4aKscdKFjuzgzPTA/ZnpLfepFRD22eh)**.

### Important Notes:

- Once you start this part of the challenge, you will have **1 hour** to complete it within the CodeSignal platform!
- Make sure before you start, you have the time available to finish it.
- You **must** complete this part of the challenge before moving on to the second part, detailed below.
  <br />
  <br />

## Technical Challenge Part 2 - Practical Applications

For the second part of the challenge, we would like you to fork **[this repository](https://github.com/wizelineacademy/data-engineering-bootcamp)**, read the rest of the instructions labeled "Exploratory Analysis," and solve the questions listed at the end of the statement.
This challenge will help us understand your problem-solving skills.

### Important notes:

- We expect this part of the challenge to take about **3 hours** to complete.
- There are no specific time limitations, so you can go at your own pace, **but please make sure to submit it within three days of registration!**
- Once you have completed this part of the challenge, please fill out the **Google Form** mentioned at the end of this page.

# Exploratory Analysis

The Customer Service team at Profeco (Mexican Consumer Protection Agency) wants to analyze the monitored products in Mexico. The IT team downloaded the database into an Google Drive on a CSV file of about 20GB; you can find the big file at: [Google Drive File](https://drive.google.com/file/d/1crFR4yrS_6DV3_Fh-HrhANJg1-qlyE-O/view?usp=sharing)

Your task as a Data Engineer is processing the data and creating an exploratory analysis with Python Pandas without using pure Python functions. As an aid to help you start, a small sample of data from the file can be found at: [https://github.com/wizelineacademy/data-engineering-bootcamp/blob/main/data/sample.csv](https://github.com/wizelineacademy/data-engineering-bootcamp/blob/main/data/sample.csv)

<br>
Once the working environment and data are ready, this exercise takes approximately three hours to complete.
The following is the structure of the CSV file:


| producto                | presentacion                                  | marca            | categoria        | catalogo         | precio | fechaRegistro      | cadenaComercial    | giro       | nombreComercial                         | direccion                             | estado           | municipio | latitud  | longitud   |
| ------------------------- | ----------------------------------------------- | ------------------ | ------------------ | ------------------ | -------- | -------------------- | -------------------- | ------------ | ----------------------------------------- | --------------------------------------- | ------------------ | ----------- | ---------- | ------------ |
| CUADERNO FORMA ITALIANA | 96 HOJAS PASTA DURA. CUADRICULA CHICA         | ESTRELLA         | MATERIAL ESCOLAR | UTILES ESCOLARES | 25.9   | 2011-05-18 0:00:00 | ABASTECEDORA LUMEN | PAPELERIAS | ABASTECEDORA LUMEN SUCURSAL VILLA COAPA | CANNES No. 6 ESQ. CANAL DE MIRAMONTES | DISTRITO FEDERAL | TLALPAN   | 19.29699 | -99.125417 |
| CRAYONES                | CAJA 12 CERAS. JUMBO. C.B. 201423             | CRAYOLA          | MATERIAL ESCOLAR | UTILES ESCOLARES | 27.5   | 2011-05-18 0:00:00 | ABASTECEDORA LUMEN | PAPELERIAS | ABASTECEDORA LUMEN SUCURSAL VILLA COAPA | CANNES No. 6 ESQ. CANAL DE MIRAMONTES | DISTRITO FEDERAL | TLALPAN   | 19.29699 | -99.125417 |
| CRAYONES                | CAJA 12 CERAS. TAMANO REGULAR C.B. 201034     | CRAYOLA          | MATERIAL ESCOLAR | UTILES ESCOLARES | 13.9   | 2011-05-18 0:00:00 | ABASTECEDORA LUMEN | PAPELERIAS | ABASTECEDORA LUMEN SUCURSAL VILLA COAPA | CANNES No. 6 ESQ. CANAL DE MIRAMONTES | DISTRITO FEDERAL | TLALPAN   | 19.29699 | -99.125417 |
| COLORES DE MADERA       | CAJA 12 PIEZAS LARGO. TRIANGULAR. C.B. 640646 | PINCELIN         | MATERIAL ESCOLAR | UTILES ESCOLARES | 46.9   | 2011-05-18 0:00:00 | ABASTECEDORA LUMEN | PAPELERIAS | ABASTECEDORA LUMEN SUCURSAL VILLA COAPA | CANNES No. 6 ESQ. CANAL DE MIRAMONTES | DISTRITO FEDERAL | TLALPAN   | 19.29699 | -99.125417 |
| COLOR LARGO             | CAJA 36 PIEZAS. CON SACAPUNTAS. 68-4036       | CRAYOLA          | MATERIAL ESCOLAR | UTILES ESCOLARES | 115    | 2011-05-18 0:00:00 | ABASTECEDORA LUMEN | PAPELERIAS | ABASTECEDORA LUMEN SUCURSAL VILLA COAPA | CANNES No. 6 ESQ. CANAL DE MIRAMONTES | DISTRITO FEDERAL | TLALPAN   | 19.29699 | -99.125417 |
| BOLIGRAFO               | BLISTER 3 PIEZAS. PUNTO FINO. GEL             | BIC. CRISTAL GEL | MATERIAL ESCOLAR | UTILES ESCOLARES | 32.5   | 2011-05-18 0:00:00 | ABASTECEDORA LUMEN | PAPELERIAS | ABASTECEDORA LUMEN SUCURSAL VILLA COAPA | CANNES No. 6 ESQ. CANAL DE MIRAMONTES | DISTRITO FEDERAL | TLALPAN   | 19.29699 | -99.125417 |
| CINTA ADHESIVA          | BOLSA 1 PIEZA. 12 MM. X 33 M. C.B. 100317     | SCOTCH 3M. 600   | MATERIAL ESCOLAR | UTILES ESCOLARES | 9      | 2011-05-18 0:00:00 | ABASTECEDORA LUMEN | PAPELERIAS | ABASTECEDORA LUMEN SUCURSAL VILLA COAPA | CANNES No. 6 ESQ. CANAL DE MIRAMONTES | DISTRITO FEDERAL | TLALPAN   | 19.29699 | -99.125417 |

#### **Respond to the following questions:**

1. How many commercial chains are monitored, and therefore, included in this database?
2. What are the top 10 monitored products by State?
3. Which is the commercial chain with the highest number of monitored products?
4. Use the data to find an interesting fact.
5. What are the lessons learned from this exercise?
6. Can you identify other ways to approach this problem? Explain.

### Deliverables

* Google Form with your forked GitHub repository URL containing your code.
* Python Code (Plain Script or Jupyter Notebook) on GitHub.
* Create a report that includes the responses to the questions, the lessons learned, and any additional comments. In this report, you can include diagrams and images that support your solution. Upload your report into your forked GitHub repository.  
    
    If you want to deliver an online document, the **[Google Form](https://forms.gle/BVWLqYnoFj8CRF3v8)** has an optional field for your online document URL. (Remember to configure the suitable access policy for your document)
    
* Create a 5-minute video to explain your solution, thought process, and relevant information from your report. You can create a Slideshow for your report as an aid for your video. Upload your video as a private video on any Video platform of your preference (YouTube, Vimeo, etc.) and provide the link to your video on the **[Google Form](https://forms.gle/BVWLqYnoFj8CRF3v8)**

---

## Don’t forget to fill out the Google Form with your forked repository!

Remember, you must send your forked repository by filling out the following **[Google Form](https://forms.gle/BVWLqYnoFj8CRF3v8)** within **three days of your registration date** to be considered for the Wizeline Academy Data Engineering Bootcamp!

Thanks for completing the challenge. We can't wait to see you soon!
