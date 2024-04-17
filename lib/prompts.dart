class prompts{

  static String s_1_intro_prompt= 'Hello, please give me a report on Hematology Sample 1.';
  static String s_2_intro_prompt= 'Hello, please give me a report on Hematology Sample 2.';
  static String s_3_intro_prompt= 'Hello, please give me a report on Hematology Sample 3.';
  static String s_4_intro_prompt= 'Hello, please give me a report on Hematology Sample 4.';

  static String p_1_intro_prompt= 'Hello, please give me a report on Pathology Sample 1.';
  static String p_2_intro_prompt= 'Hello, please give me a report on Pathology Sample 2.';
  static String p_3_intro_prompt= 'Hello, please give me a report on Pathology Sample 3.';
  static String p_4_intro_prompt= 'Hello, please give me a report on Pathology Sample 4.';

  static String r_1_intro_prompt= 'Hello, please give me a report on Radiology Sample 1.';
  static String r_2_intro_prompt= 'Hello, please give me a report on Radiology Sample 2.';
  static String r_3_intro_prompt= 'Hello, please give me a report on Radiology Sample 3.';
  static String r_4_intro_prompt= 'Hello, please give me a report on Radiology Sample 4.';

  static String h1Prompt = '''
You are a world-renowned hematologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Hematology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report

This is a detailed description of the image based on its visible content: 
The image depicts a microscopic view of a stained blood smear commonly used in hematology to examine blood cells. The field is crowded with numerous cells, primarily erythrocytes (red blood cells), which appear as pinkish discs, some with a pale center called the central pallor, which is typical of these cells.

The AI, Mantiscope, has annotated the image with various colored boxes to indicate the identification of different cell types:

Eosinophil: Marked with a red box, there's one clearly visible eosinophil toward the center-left part of the image. Eosinophils are a type of white blood cell characterized by their granular cytoplasm. They typically have a two-lobed nucleus and large cytoplasmic granules that stain orange/pink when a Romanowsky-type stain is used, which seems to match the cell indicated by the red box.
White Blood Cells (Leukocytes): Indicated with multiple blue boxes throughout the image. It is not possible to give an exact count from the provided image due to its resolution and the partial view of some cells, but there are several distinct blue boxes that can be seen, which suggests the presence of numerous white blood cells of various types.
Platelet: There is a pink box that appears to label a small, lightly stained, irregularly shaped object consistent with the appearance of a platelet. Platelets are considerably smaller than white or red blood cells and are responsible for blood clotting.
Black Label: Erythrocytes.
In terms of quantitative analysis, the precise count of each cell type would require a high-resolution image and possibly access to the full field of the microscope slide. Normally, cells on the edge of the image, which are not fully visible, are not included in the count to maintain accuracy.

The presence of eosinophils, a distinct type of leukocyte, might indicate a parasitic infection, allergic reaction, or other conditions where these cells typically increase.

The scale at the bottom right suggests that the magnification and field of view allow for measurements within the image, as '200 µm' indicates the length corresponding to the scale bar.
       ''';
  static String h2Prompt = ''' 
  You are a world-renowned hematologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Hematology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  This image displays a detailed microscopic view of a blood smear with numerous cells primarily identified as erythrocytes, which are red blood cells characterized by their biconcave disk shape and central pallor, a lighter area in the center of the cell. The erythrocytes dominate the visual field and appear in various orientations, with some presenting their classic doughnut-like shape in this stained sample.

The image is overlaid with an array of blue squares, each likely corresponding to individual cells the AI tool Mantiscope has identified for review or categorization. Two cells are specifically highlighted:

A cell in the upper left is enclosed by a red square, possibly indicating a type of white blood cell or another significant feature that the AI has been trained to recognize as requiring special attention.
Towards the center-right, another cell is outlined by a red square, appearing larger and with a different staining pattern than the surrounding erythrocytes. This cell has a more granular internal structure and could potentially be a leukocyte (white blood cell), but without specific staining details or additional context, it's challenging to identify the exact type. It stands out from the erythrocytes, suggesting it is of significant interest, possibly due to its size, shape, or staining characteristics, which differ from the surrounding cells.
Similar to the previous image, the scale bar marked "200 µm" indicates the microscopic magnification level, which is essential for making precise measurements of cell size and understanding the relative dimensions within the sample. ''';
  static String h3Prompt = '''
  You are a world-renowned hematologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Hematology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  This microscopic image showcases a blood smear densely populated with cells, primarily erythrocytes, and annotated with colored squares indicating various blood cell types identified by the AI tool:

Neutrophils (Red Squares): There appear to be cells marked with red squares, indicative of neutrophils. These cells are a type of white blood cell, part of the body's first line of defense and often increased during infections. They typically have a multi-lobed nucleus and granular cytoplasm.
White Blood Cells (Blue Squares): Numerous cells are marked with blue squares. These could be various types of white blood cells, not exclusively neutrophils, and may include other leukocytes such as monocytes or basophils, depending on their morphology.
Eosinophils (Cyan Squares): The cells encased in cyan squares suggest eosinophils, another type of white blood cell characterized by their large cytoplasmic granules, which typically stain red to orange with eosin, a red dye used in blood smears.
Lymphocytes (Black Squares): The black squares are likely marking lymphocytes, which are smaller white blood cells with a large, round nucleus taking up most of the cell volume, a hallmark of this cell type.
Platelets (Pink Squares): Small fragments marked with pink squares indicate platelets, which are significantly smaller than red or white blood cells and are involved in clotting processes. They are irregularly shaped and sometimes appear in clusters.
In the context of this image:

Count and Categorization: An exact count of each cell type would require access to the full resolution and scope of the image, as partially visible and edge cells are generally excluded from accurate counts.
Clinical Relevance: The presence of different cell types and their ratios can have clinical significance. For instance, an increase in neutrophils might suggest a bacterial infection, while an increase in eosinophils could point towards allergic reactions or parasitic infections.
Scale: The scale marker indicates "200 µm," which provides a reference for the size of the cells and the magnification used for the slide. ''';
  static String h4Prompt = ''' 
  You are a world-renowned hematologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Hematology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  In this fourth microscopic image of a blood smear, the view is primarily populated with cells known as erythrocytes, displaying their characteristic pink hue with a lighter central area, known as the central pallor. Overlaying these are annotated squares in various colors, each associated with a different cell type identified by the AI tool:

Neutrophils (Cyan Squares): Highlighted by cyan squares, neutrophils can be identified by their distinct multi-lobed nucleus and granular cytoplasm. They are the most abundant type of white blood cells (WBCs) and are key players in the immune response, particularly in the defense against bacterial infections.
Platelets (Pink Squares): Small, irregularly shaped bodies marked with pink squares, represent platelets. These cell fragments are essential for blood clotting and wound healing. They are significantly smaller than the erythrocytes and can sometimes appear as clumps or singular units.
White Blood Cells (WBCs) (Blue Squares): Blue squares are scattered throughout the image, marking the presence of white blood cells. These are part of the immune system and are involved in protecting the body against both infectious diseases and foreign invaders. The precise identification of each WBC type would require further detailed examination.
The image serves as a detailed map of various cell types within the blood, each serving distinct roles within the circulatory and immune systems. The distribution and relative proportions of these cells can provide essential insights into a person's health and can indicate normal function or the presence of disease or infection.

The "200 µm" scale in the bottom right gives context to the size of the cells and the magnification used, allowing for accurate measurement and assessment. ''';

  static String p1Prompt = ''' 
  You are a world-renowned pathologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Pathology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  The image is a high-magnification photomicrograph of a breast tissue section, likely processed for pathological examination. The sample has been stained using hematoxylin and eosin (H&E), which renders nuclei in shades of purple to blue and cytoplasm in varying shades of pink to red. The staining quality appears uniform, suggesting good tissue preservation and staining technique.

Densely packed epithelial cells are visible, forming duct-like and lobular structures characteristic of breast tissue. These epithelial components are surrounded by a pink-staining fibrous stroma, which provides structural support. Within the stroma, there are sparse areas of lighter-staining adipose tissue, identifiable by its vacuolated, or "empty," appearance due to fat extraction during processing.

Focal areas within the tissue show increased cellularity with closely packed nuclei, indicating regions of proliferative activity. These could correlate with the pathology of benign breast carcinoma, such as fibroadenoma or intraductal papilloma, where an increase in benign epithelial cells is typically observed. The cells maintain a uniform appearance, and no significant pleomorphism or signs of malignancy, such as irregular nuclear contours, prominent nucleoli, or excessive mitotic figures, are evident.

Vascular structures are sparsely scattered throughout the stroma, evidenced by the presence of endothelial-lined spaces without red blood cells. No significant inflammatory infiltrate is discernible, which might have suggested an active lesion or infection.

Overall, the tissue architecture appears well-preserved without disruption, supporting the information that the sample represents a benign process. This microscopic snapshot provides a detailed view of the histological features which are crucial for the diagnosis and characterization of breast lesions. ''';
  static String p2Prompt = ''' 
  You are a world-renowned pathologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Pathology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  This image presents a histopathological section of breast tissue diagnosed with benign carcinoma, stained using H&E technique, and subsequently analyzed by QuPath AI for detailed structure identification. The tissue architecture, while proliferative, maintains an orderly pattern, which is indicative of benign pathology. 
  Red annotations, likely applied by the AI tool, delineate areas of cellular clusters that may represent benign hyperplasia, displaying uniformity in cellular morphology without signs of malignancy. Blue markings are scattered throughout the sample, possibly marking the nuclei of epithelial cells, signifying regular mitotic activity typical for such benign lesions. 
  
  The interlobular stroma appears dense and fibrous, with some adipose infiltration, and clear spaces suggestive of ductal or lobular luminal areas are visible. The red-marked regions, although indicative of cell proliferation, do not disrupt the tissue’s integrity and are contained, thus not exhibiting invasive characteristics. 
  
  The sample serves as a representative view of benign breast neoplasia where the orderly arrangement of ducts and lobules is juxtaposed with regions of proliferation, as highlighted by the QuPath analysis. ''';
  static String p3Prompt = ''' 
  You are a world-renowned pathologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Pathology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  This histological section presents a dense cellular arrangement typical of breast tissue, highlighted to showcase areas of pathological interest. 
  The vibrant red areas, marked by an AI-powered analysis tool, possibly represent regions of carcinoma in situ. These regions exhibit denser cellular clustering and a lack of organized structure, which contrasts with the surrounding tissue. 
  
  The carcinoma in situ is characterized by the proliferation of neoplastic cells that remain confined within the ductal-lobular system and have not breached the basement membrane into surrounding stroma. 
  The blue markings interspersed within the red areas could indicate specific cellular or nuclear features that the AI has been trained to detect, such as abnormal mitotic figures or pleomorphic nuclei, which are often seen in neoplastic cells. 
  
  The unmarked purple areas suggest normal tissue components or less-altered pathology, preserving some of the glandular architecture and adipose tissue characteristic of non-neoplastic breast tissue. ''';
  static String p4Prompt = ''' 
  You are a world-renowned pathologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Pathology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  This histopathological image showcases a section of breast tissue that has undergone algorithmic analysis to demarcate areas indicative of invasive carcinoma. The red overlay dominates the landscape, possibly marking the widespread presence of invasive cancer cells that breach the boundaries of the original tissue structures, such as ducts and lobules, infiltrating the surrounding stromal tissue. Invasive carcinoma is typified by cells that not only proliferate but also penetrate the basement membrane, enabling them to invade into adjacent tissues and potentially metastasize to distant sites.

The interspersed purple structures within the sea of red are likely the remnants of normal breast tissue architecture, now scarce and encroached upon by the malignant process. These could represent ducts, lobules, and connective tissue components that have been overtaken by the invasive cancerous cells. The purple areas may retain some semblance of structured tissue, but their integrity is visibly compromised by the invasive process.

The extent of red coverage and the sparseness of normal tissue indicate a significant malignant process, consistent with the diagnosis of invasive carcinoma. The image likely highlights both the density and the irregularity of the cancer cells, showing a disruption of the normal breast tissue architecture and the aggressive nature of the pathology. ''';

  static String r1Prompt = ''' 
  You are a world-renowned radiologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Radiology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  "This chest X-ray depicts standard thoracic anatomy with the heart shadow centrally located and the lung fields appearing well-expanded. 'Chester the AI Radiology Assistant' has processed the image and applied a heatmap, highlighting the central to left lung field with blue pixels, suggesting potential abnormalities. According to the AI's additional risk assessment, various conditions are evaluated with a colored bar representing the risk level: green for lower risk, red for higher risk, and white for uncertainty. The conditions of atelectasis, consolidation, edema, emphysema, fibrosis, effusion, pleural thickening, cardiomegaly, mass, and hernia are all marked with predominantly green bars, indicating lower risk levels. However, lung opacity is flagged with an orange color, suggesting a higher risk and implying the possibility of infection, inflammation, or neoplastic processes, though the assessment does not extend into the area of absolute certainty. The AI also indicates a low to moderate risk for an enlarged cardiac silhouette. The provided AI risk assessment does not convey absolute certainty, and further clinical correlation is necessary to interpret these findings accurately." ''';
  static String r2Prompt = ''' 
    You are a world-renowned radiologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Radiology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  "This set of diagnostic images includes a standard posteroanterior chest X-ray alongside an analysis from 'Chester the AI Radiology Assistant.' The original X-ray reveals the heart, diaphragm, and lung fields with no overt abnormalities. However, the AI has superimposed blue pixels predominantly in the central lung regions, which may indicate noteworthy findings. The provided risk assessment graph utilizes a color-coded system to represent the AI's confidence in predicting specific conditions: green for low likelihood, red for high likelihood, and white for uncertainty. Notably, the graph indicates an orange bar for atelectasis, suggesting a moderate risk, although it does not completely reach the red zone of high certainty, nor does it overlap with the white area that denotes uncertainty. Other conditions such as consolidation, edema, emphysema, and fibrosis are predominantly marked with green, implying a lower likelihood.

Therefore, while most assessed conditions are unlikely according to the AI, atelectasis is identified as a potential concern. The AI’s indication of atelectasis, characterized by the partial collapse or incomplete inflation of the lung, is not definitively diagnosed but warrants clinical attention. The clinician may consider this AI-generated assessment in conjunction with the patient's clinical presentation and may opt for additional investigations, such as a CT scan, to confirm the presence of atelectasis and determine appropriate management." ''';
  static String r3Prompt = ''' 
    You are a world-renowned radiologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Radiology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  "This chest X-ray illustrates a front view of the thoracic cavity, showing the heart, both lungs, and the diaphragmatic contours. 'Chester the AI Radiology Assistant' has processed the image and marked certain areas with blue pixels, primarily located in the lower regions of the lung fields, suggesting potential anomalies.

The AI's risk assessment output indicates a particular concern for effusion, as evidenced by an orange bar on the graph. This suggests a moderate to high likelihood of pleural effusion, which is fluid accumulation in the pleural space. The other conditions listed, such as atelectasis, consolidation, edema, emphysema, fibrosis, pleural thickening, cardiomegaly, mass, hernia, lung opacity, and an enlarged cardiac silhouette, are represented by green bars, signifying a lower likelihood of these findings.

Considering the AI's indication of a potential effusion, this X-ray may warrant further evaluation, such as a thoracic ultrasound or CT scan, to confirm the presence of fluid and determine the appropriate clinical management. The findings should be interpreted in conjunction with clinical symptoms and patient history for accurate diagnosis and treatment planning." ''';
  static String r4Prompt = ''' 
    You are a world-renowned radiologist and extremely good at analysing samples and giving reports.    
Given the medical data: 
Generate a report with the following structure:
Radiology Automated Sample Report:
1. Title of the sample. 
2. The method of analysis. 
3. Description of what you can see on the sample.  
4. Summary of the demarcated areas by the AI.
5. Preliminary findings that you can give based on the information.
6. Medical Report
  "This chest X-ray presents a frontal view of the thoracic cavity. The original image shows the heart, diaphragm, and bilateral lung fields with the normal anatomical clarity. 'Chester the AI Radiology Assistant' has annotated the X-ray with blue pixels, concentrated primarily in the right lower lung field. These markers suggest the presence of an anomaly that the AI system has identified as potentially significant.

The risk assessment chart demonstrates the AI's predictions for various pulmonary conditions, with the majority of conditions marked with green bars indicating a lower likelihood of presence. However, the condition of hernia is notably marked with an orange bar, suggesting a moderate to high probability, though not with complete certainty as it doesn't reach into the red zone or the central white area, which would represent a definitive model prediction. This suggests that the AI has detected signs that could be indicative of a hernia in the X-ray, but further clinical evaluation is needed to confirm the finding.

Given the focus on hernia and the AI's annotations, additional diagnostic considerations may include a CT scan for a more detailed examination of the area, alongside a review of the patient's clinical history and symptoms to ascertain the significance of these findings and plan appropriate treatment." ''';

  static String hemaInfo= ''' 
  Scopio Labs is revolutionizing hematology and full-field morphology with its cutting-edge digital imaging platforms. Their technology enables high-resolution imaging of blood smears at 100X magnification, allowing for detailed analysis and remote review capabilities. This innovative approach supports more confident clinical decision-making and efficient workflow processes, significantly improving patient care quality. Scopio Labs combines full-field imaging with AI to enhance diagnostic accuracy in hematology, offering tools that streamline the review process and facilitate real-time collaboration among healthcare professionals.\n\n''';
  static String patoInfo= '''
  QuPath, an open-source digital pathology software, has significantly advanced the field of pathology by enhancing the analysis and understanding of various diseases, including cancer. Its capabilities in digital immunohistochemistry and whole slide image analysis have been widely recognized and validated in numerous medical research publications.

QuPath's impact is notably profound in cancer research, where it has been employed to analyze tumor microenvironments, including the evaluation of tumor-infiltrating lymphocytes (TILs), which are pivotal for understanding cancer prognosis and treatment outcomes. The software's deep learning extensions, such as the WSInfer extension, facilitate the spatial identification of TILs, offering insights into the immune landscape of tumors and potentially guiding immunotherapy decisions[1].

In a study published in Scientific Reports, QuPath demonstrated its capability to analyze a large cohort of colon cancer cases, providing quantitative assessments of biomarkers like CD3 and CD8. The software enabled efficient analysis of immunohistochemically stained tissue microarrays, yielding data that correlated with disease-specific survival. This illustrates QuPath's utility in assessing the prognostic significance of immune markers in colorectal cancer, thereby contributing to the field's understanding of cancer immunology[2].

Furthermore, QuPath has been applied in placental tissue analysis, showcasing its versatility beyond oncology. The analysis focused on quantifying staining of specific receptors in placental tissues, comparing QuPath's digital scoring with traditional visual scoring methods. This study highlights QuPath's potential to bring accuracy and efficiency to a broader range of pathology applications, including the investigation of pregnancy-related pathologies[3].

QuPath's extensive use and the validation of its analytical capabilities across different studies underscore its importance in modern pathology. By leveraging QuPath's powerful image analysis tools, researchers and clinicians can uncover novel insights into disease mechanisms, improve diagnostic accuracy, and potentially tailor treatments to individual patient profiles, thereby advancing personalized medicine.

These examples demonstrate QuPath's critical role in enhancing our understanding of disease pathology and treatment, supported by its widespread adoption and validation in the scientific community. Its open-source nature and continuous development promise further advancements in digital pathology, making it an invaluable tool for research and clinical practice alike.\n\n
   ''';
  static String radInfo=  ''' 
  Chester AI employs a DenseNet-121 model, an advanced neural network architecture, enabling it to process images for 18 different radiological findings, leveraging datasets from leading public repositories such as NIH, PadChest, and MIMIC-CXR. Its unique approach ensures all processing occurs locally on the user's device, thereby prioritizing data privacy and security—a paramount concern in medical applications[1][2].
  
  Designed as a second opinion tool, Chester AI assists medical professionals in confirming or revising diagnoses, thereby enhancing diagnostic accuracy and potentially reducing the time to treatment. While its utility in educational settings and as a demonstration of AI's capabilities in medical diagnostics is well documented, it's crucial to acknowledge the system's current limitations, including its prototype status and the explicit advisory against its use for medical purposes without professional oversight[3].
  
  The ongoing development of Chester AI, with goals to expand its capabilities and possibly integrate additional diagnostic functionalities, highlights the dynamic nature of AI research in radiology. As AI models become more sophisticated and datasets more comprehensive, the potential for AI to support radiological diagnostics will likely expand, potentially including more complex imaging analyses and broader diagnostic applications[4]\n\n''';

  static String hemaRef1 = '[1] https://scopiolabs.com';

  static String patoRef1 = "[1] Kaczmarzyk, J.R., O’Callaghan, A., Inglis, F. et al. Open and reusable deep learning for pathology with WSInfer and QuPath. npj Precis. Onc. 8, 9 (2024). https://doi.org/10.1038/s41698-024-00499-9\n\n";
  static String patoRef2 = "[2] Bankhead, P., Loughrey, M.B., Fernández, J.A. et al. QuPath: Open source software for digital pathology image analysis. Sci Rep 7, 16878 (2017).\n\n ";
  static String patoRef3 = "[3] Hein AL, Mukherjee M, Talmon GA, Natarajan SK, Nordgren TM, Lyden E, Hanson CK, Cox JL, Santiago-Pintado A, Molani MA, Ormer MV, Thompson M, Thoene M, Akhter A, Anderson-Berry A, Yuil-Valdes AG. QuPath Digital Immunohistochemical Analysis of Placental Tissue. J Pathol Inform. 2021 Nov 1;12:40. doi: 10.4103/jpi.jpi_11_21. PMID: 34881095; PMCID: PMC8609285.\n\n";

  static String radRef1 = '[1] https://mlmed.org/tools/xray/\n\n';
  static String radRef2 = '[2] https://welovelmc.com/artificial-intelligence/chester-ai-radiology-assistant.htm\n\n';
  static String radRef3 = '[3] https://mila.quebec/en/chester-the-ai-radiology-assistant/\n\n';
  static String radRef4 = '[4] Joseph Paul Cohen, Paul Bertin, Vincent Frappier, Chester: A Web Delivered Locally Computed Chest X-Ray Disease Prediction System, https://doi.org/10.48550/arXiv.1901.11210\n\n';






}