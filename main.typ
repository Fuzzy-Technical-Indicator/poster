#import "poster.typ": *

#show: poster.with(
  size: "18x24",
  title: "Fuzzy Technical Indicator",
  authors: "Tanat Tangun, Thanawat ...",
  departments: "Department of Computer Engineering",
  univ_logo: "Chiang_mai_university_logo.png",
  footer_text: "",
  footer_url: "",
  footer_email_ids: "",
  footer_color: "ebcfb2",

  // Use the following to override the default settings
  // for the poster header.
  num_columns: "2",
  univ_logo_scale: "50",
  title_font_size: "34",
  authors_font_size: "20",
  univ_logo_column_size: "4",
  title_column_size: "10",
  footer_url_font_size: "15",
  footer_text_font_size: "24",
)

= บทคัดย่อ
ในการวิเคราะห์ทางเทคนิค มีการใช้อินดิเคเตอร์ทางเทคนิคและปัจจัยอื่นๆมาใช้ช่วนในการตัดสินใจ ซึ่งหลายๆ อย่างก็มีการตีความหมายด้วยเกณฑ์ที่ไม่สามารถรับความไม่แน่นอนและความผันผวนของตลาดได้
เช่น ค่าคงที่เป็นต้น และถ้าเราใช้อินดิเคเตอร์ทางเทคนิดหลายๆ อันด้วยกันแล้วการตีความหมายแต่ละอย่าง
พร้อมๆกันก็เป็นเรื่องที่เราทําได้ยาก ดังนั้นทางผู้จัดจึงสร้างระบบเพื่อช่วยนักลงทุนในการเทรดโดยนําอินดิเค
เตอร์ทางเทคนิคและปัจจัยอื่นๆ ของผู้ใช้งานที่ใช้ในการวิเคราะห์การซื้อ และการขายมาสร้างอินดิเคเตอร์ตัว
ใหม่ที่ช่วยตัดสินใจโดยใช้ Fuzzy logic ซึ่งต่างจากอินดิเคเตอร์ทางเทคนิคแบบดั้งเดิม เนื่องจากสามารถเอา
มุมมองการวิเคราะห์ส่วนตัวของผู้ใช้งานใส่เข้าไปในอินดิเคเตอร์ตัวนี้ได้โดยอินดิเคเตอร์ตัวนี้จะรับข้อมูลอย่าง
เช่น RSI, MA, การทํากําไรของสินทรัพย์ , ความผันผวนของตลาด และข้อมูลอื่นๆ ที่ผู้ใช้งานอาจจะต้อง-
การ ในขณะที่ผลลัพธ์คือสัญญาณการซื้อ และการขาย หรือสัญญาณวิเคราะห์อื่นๆ ที่ผู้ใช้งานต้องการสร้าง
ขึ้น ด้วยวิธีดังกล่าวอินดิเคเตอร์ของเราจะสามารถช่วยนักลงทุนในการจัดการกับข้อมูลหลายๆปัจจัยที่ผู้ใช้งาน
ใช้ในการวิเคราะห์ออกมาเป็นสัญญาณใหม่เพียง 1 หรือ 2 สัญญาณที่เข้าใจง่าย เพื่อใช้ในการช่วยตัดสินใจ
เราจะสร้างเว็บแอพพลิเคชั่นจากไอเดียดังกล่าวข้างต้น และทดสอบว่าอินดิเคเตอร์จาก Fuzzy Logic นั้นให้ผลลัพธ์ที่ดีกว่า

= จุดประสงค์

1. เพื่อพัฒนา Fuzzy Logic ร่วมกับ Particle Swarm Optimization (PSO) สําหรับการสร้างวิธีการซื้อขายเฉพาะของแต่ละสินทรัพย์
2. เพื่อสร้างเว็บไซต์ไว้ใช้งานระบบของเรา

= วิธีการ

เริ่มทดสอบที่ 1 ตุลาคม 2023 ถึง ...

= ผลลัพธ์

#align(center)[
#figure(table(
  columns: (auto, auto, auto, auto, auto, auto),
  [Symbol], [Classical], [Fuzzy], [Fuzzy C], [FuzzyPSO], [Fuzzy C PSO],
  [BTC], [], [], [], [], [],
  [ETH], [], [], [], [], [],
  [BNB], [], [], [], [], []
), caption: [crypto], supplement: [ตารางที่])

#figure(table(
  columns: (auto, auto, auto, auto, auto, auto),
  [Symbol], [Classical], [Fuzzy], [Fuzzy C], [Fuzzy PSO], [Fuzzy C PSO],
  [AAPL], [], [], [], [], [],
  [IBM], [], [], [], [], [],
  [JPM], [], [], [], [], [],
  [MSFT], [], [], [], [], [],
  [NKE], [], [], [], [], [],
  [TSLA], [], [], [], [], []
), caption: [stock], supplement: [ตารางที่])

#figure(image("crypto.png"))

#figure(image("stock.png"))
]

= สรุป
