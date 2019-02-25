# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AUTHORS 
Ibn_Taymiyyah = Author.create(name: "Ibn Taymiyyah", bio: "Great Scholar", yod: 728)
Sh_Rabee = Author.create(name: "Shaykh Rabee'", bio: "Great Scholar", yod: 1)
Ibn_Abdul_wahhaab = Author.create(name: "Muhammad Ibn Abdul-Wahhaab", bio: "Great Scholar", yod: 1206)


#GENRES 

Aqeedah = Genre.create(name: "Aqeedah")
Hadeeth = Genre.create(name: "Hadeeth")
Fiqh = Genre.create(name: "Fiqh")
Tafseer = Genre.create(name: "Tafseer")

# BOOKS 

Majmoo_al_fataawah = Book.create(author_id: Ibn_Taymiyyah.id, genre_id: Aqeedah.id, eng_title: "MAJMOO' AL-FATAAWA BY SHAYKH AL-ISLAAM IBN TAYMIYAH (20 VOL.)", arabic_title: "مجموعة الفتاوى لشيخ الإسلام ابن تيمية", language: "Arabic", harakat: "No", num_pages: 20000, translator: "n/a", about: "Finally the famous Majmu 'Fatawa of Shaykh al-Islam ibn Taymiyyah! This book that each of our shouyoukhs quotes or to which they refer. It is a sea of science, a source for understanding religion in an authentic way. Thus we offer this monument of the science of Ahl-us-Sunnah wa-Jama'ah in 20 volumes! enjoy!")

Hadeeth_jibril = Book.create(author_id: Ibn_Taymiyyah.id, genre_id: Aqeedah.id, eng_title: "SHARH HADITH JIBRIL BY SHAYKHUL-ISLAM IBN TAYMIYYAH", arabic_title: "شرح حديث جبريل لشيخ الإسلام ابن تيمية", language: "Arabic", harakat: "No", num_pages: 687, translator: "n/a", about: "Excellent edition of this book of Shaykh al-Islam, with a very thorough search and meticulous Tahqiq, indeed it is the doctoral research of the author of Tahqiq which yielded him mention Mumtaz in Aqeedah section ...")

Iddatul_uqood = Book.create(author_id: Ibn_Taymiyyah.id, genre_id: Aqeedah.id, eng_title: "QA'IDATUL-'UQOOD (NADHARIYAH AL-'AQD) BY IBN TAYMIYA", arabic_title: "قاعدة العقود (نظرية العقد) لشيخ الإسلام ابن تيمية", language: "Arabic", harakat: "No", num_pages: 600, translator: "n/a", about: "Book on contracts in Islam, acceptable conditions or not, promises (Nadhr), different types of 'Aqd (Nikah, Sale, Purchase etc ...), which is allowed or not these ' Uqood ... The best book on this subject in its best edition: tahqiq of Text by al-Albani and Muhammad al-Faqi and verification of Hadith and Athar by Al-Hilaalee.")


Al_Muntaqa = Book.create(author_id: Sh_Rabee.id, genre_id: Hadeeth.id, eng_title: "AL-MUNTAQA MIN FATAWA SHAYKH RABEE' AL-MADKHALEE (2 VOL.)", arabic_title: "المنتقى من فتاوي الشيخ العلامة ربيع بن هادي المدخلي
", language: "Arabic", harakat: "No", num_pages: 1059, translator: "n/a", about: "Recueil de fatawa choisies de Cheikh Rabi' ibn Hadi al-Madkhali, en 2 volumes. Le premier volume traite de Aqida et de Manhaj. Le second volume traite de la science, de certains livres et écrivains, puis des fatawas sur la Salat et d'autres chapitres de jurisprudence.")

Majmoo_al_kutoob = Book.create(author_id: Sh_Rabee.id, genre_id: Hadeeth.id, eng_title: "MAJMU' KUTUB WA RASAIL WA FATAWA SHAYKH RABEE' AL-MADKHALI", arabic_title: "مجموعة كتب ورسائل وفتاوى فضيلة الشيخ ربيع المدخلي
", language: "Arabic", harakat: "No", num_pages: 687, translator: "n/a", about: "Exceptionally, the set of all books, epistles and fatawa of Shaykh Rabee' al-Madkhalee, gathered in 15 volumes in this beautiful edition, with the agreement of the sheikh.")

Marhaban_yaa_taalib = Book.create(author_id: Sh_Rabee.id, genre_id: Hadeeth.id, eng_title: "MARHABAAN YA TAALIB AL-'ILM - SHAYKH RABEE' AL-MADKHALI", arabic_title: "مرحبان يا طالب العلم ـ الشيخ ربيع بن هادي المدخلي
", language: "Arabic", harakat: "No", num_pages: 488, translator: "n/a", about: "Series of several Risala and Nasiha directed to Students in Science, and many questions answered.")

