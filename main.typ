#import "poster.typ": *

#show: poster.with(
  size: "18x24",
  title: "ระบบสนับสนุนการตัดสินใจซื้อขายสินทรัพย์ด้วยฟัซซีโลจิก",
  authors: "ธนัตถ์ ตั้งอั้น, ธนวัตน์ บําเพ็งพันธ์ุ",
  departments: "คณะวิศวกรรมศาสตร์ ภาควิชาวิศวกรรมคอมพิวเตอร์",
  univ_logo: "Chiang_mai_university_logo.svg",
  footer_text: "",
  footer_url: "",
  footer_email_ids: "",
  footer_color: "ebcfb2",

  // Use the following to override the default settings
  // for the poster header.
  num_columns: "2",
  univ_logo_scale: "55",
  title_font_size: "34",
  authors_font_size: "20",
  univ_logo_column_size: "3",
  title_column_size: "10",
  footer_url_font_size: "15",
  footer_text_font_size: "24",
)

= บทคัดย่อ
ในการวิเคราะห์ทางเทคนิค มีการใช้อินดิเคเตอร์ทางเทคนิคและปัจจัยอื่นๆมาใช้ช่วยในการตัดสินใจ ซึ่งหลายๆ อย่างก็มีการตีความหมายด้วยเกณฑ์ที่ไม่สามารถรับความไม่แน่นอนและความผันผวนของตลาดได้
เช่น ค่าคงที่เป็นต้น และถ้าเราใช้อินดิเคเตอร์ทางเทคนิคหลายๆ อันด้วยกันแล้วการตีความหมายแต่ละอย่าง
พร้อมๆกันก็เป็นเรื่องที่เราทําได้ยาก ดังนั้นทางผู้จัดจึงสร้างระบบเพื่อช่วยนักลงทุนในการเทรดโดยนําอินดิเคเตอร์ทางเทคนิคและปัจจัยอื่นๆ ของผู้ใช้งานที่ใช้ในการวิเคราะห์การซื้อ และการขายมาสร้างอินดิเคเตอร์ตัว
ใหม่ที่ช่วยตัดสินใจโดยใช้ Fuzzy Logic ซึ่งต่างจากอินดิเคเตอร์ทางเทคนิคแบบดั้งเดิม เนื่องจากสามารถเอา
มุมมองการวิเคราะห์ส่วนตัวของผู้ใช้งานใส่เข้าไปใน\ อินดิเคเตอร์ตัวนี้ได้ โดยอินดิเคเตอร์ตัวนี้จะรับข้อมูลอย่าง
เช่น RSI, MA, การทํากําไรของสินทรัพย์, ความผันผวนของตลาด และข้อมูลอื่นๆ ที่ผู้ใช้งานอาจจะต้องการ ในขณะที่ผลลัพธ์คือสัญญาณการซื้อ และการขาย หรือสัญญาณวิเคราะห์อื่นๆ ที่ผู้ใช้งานต้องการสร้าง
ขึ้น ด้วยวิธีดังกล่าวอินดิเคเตอร์ของเราจะสามารถช่วยนักลงทุนในการจัดการกับข้อมูลหลายๆปัจจัยที่ผู้ใช้งาน
ใช้ในการวิเคราะห์ออกมาเป็นสัญญาณใหม่เพียง 1 หรือ 2 สัญญาณที่เข้าใจง่าย เพื่อใช้ในการช่วยตัดสินใจ
เราจะสร้างเว็บแอพพลิเคชั่นจากไอเดียดังกล่าวข้างต้น และทดสอบว่าอินดิเคเตอร์จาก Fuzzy Logic นั้นให้ผลลัพธ์ที่ดีกว่า

= จุดประสงค์

1. เพื่อพัฒนา Fuzzy Logic ร่วมกับ Particle Swarm Optimization (PSO) สําหรับการสร้างวิธีการซื้อขายเฉพาะของแต่ละสินทรัพย์
2. เพื่อสร้างเว็บไซต์ไว้ใช้งานระบบของเรา

= วิธีการ
เราจะใช้อินดิเคเตอร์ Aroon และ MACD ในการมาทำอินดิเคเตอร์ใหม่ด้วย Fuzzy Logic และการเข้าซื้อแบบ Classical ก็จะใช้ค่าของอินดิเคเตอร์เหล่านี้ตรงๆ เลย 
//#figure(image("example.png", height: 20%), caption: [ตัวอย่างของการใช้ Fuzzy Logic มาแทนที่แบบ Classical], supplement: [รูปที่])

ในการทดลองนี้เราจะใช้ระบบของเราในการทำการทดสอบโดยจะทำการทดสอบโดยใช้เงินตั้งต้น 3,000 USD และทดสอบบนตลาด Crypto Currency (BTC, ETH, BNB) และตลาดหุ้น NASDAQ (AAPL, IBM, JPM, MSFT, NKE, TSLA) ซึ่งเงินตั้งต้นจะถูกแบ่งให้เท่าๆ กันจาก 3,000 USD สำหรับแต่ละเหรียญหรือหุ้นในทั้ง 2 ตลาด โดยวิธีการเข้าซื้อจะมีดังนี้

- *Fuzzy*: ใช้ Fuzzy Logic ในการทำอินดิเคเตอร์ขึ้นมา และเข้าซื้อเมื่อค่าของอินดิเคเตอร์มีค่าเกิน 30 (ทั้ง LONG และ SHORT)
- *Fuzzy C*: เหมือนกับ Fuzzy แต่มีการการจัดการเงินทุนโดยใช้ค่าของอินดิเคเตอร์จาก Fuzzy Logic มาช่วยด้วย
- *Fuzzy PSO*: เหมือนกับ Fuzzy แต่มีการใช้ Particle Swarm Optimization (PSO) ในการปรับค่าของตัวแปรทางภาษาของอินดิเคเตอร์ เพื่อให้ได้ผลที่ดีกว่าในแต่ละตลาด โดยจะใช้ข้อมูล ตั้งแต่จุดเริ่มต้นต้นของแต่ละตลาดถึงเดือนมีนาคม 2023 ในการฝึกสอน แล้วในเดือนเมษายน 2023 ถึงเดือนกันยายน 2023 จะเป็นช่วงของการทดสอบ
- *Fuzzy C PSO*: รวมทุกอย่างที่กล่าวมาด้านบนมาอยู่ในอันเดียวกัน กล่าวคือใช้อินดิเคเตอร์จาก Fuzzy Logic และมีการจัดการเงินทุนโดยใช้ค่าของอินดิเคเตอร์มาใช้ รวมถึงมีการใช้ PSO ในการปรับค่าตัวแปรทางภาษา
- *Classical*: เป็นระบบที่ไม่มีการใช้ Fuzzy Logic ใช้ค่าของอินดิเคเตอร์แต่ละตัวมาใช้ตัดสินใจเข้าซื้อ

ทั้งหมดนี้แต่ละการเข้าซื้อมีขั้นต่ำอยู่ที่ 30 USD และสำหรับการเข้าซื้อแบบที่ไม่ได้การจัดการเงินทุนจะเข้าซื้อที่ 5% ของเงินที่มีอยู่ขณะนั้น และในการออกจากการเข้าซื้อที่ทำไปแล้วจะใช้วิธีเมื่อกำไรของการเข้าซื้อนั้น ≥ 20\% สำหรับ Crypto Currecny และ ≥ 10\% สำหรับหุ้น NASDAQ ก็จะให้ทำการขายเอากำไรเลย (take profit) และเมื่อการเข้าซื้อนั้นขาดทุนมากกว่า ≥ 10\% สำหรับ Crypto Currency และ ≥ 5\% สำหรับหุ้น NASDAQ ก็ให้ทำการขายเพื่อไม่ให้ขาดทุนไปมากกว่านี้เลย (stop loss)

นอกจากนี้เราจะมีวิธี Buy & Hold ซึ่งเป็นวิธีการนี้ก็คือการซื้อ สินทรัพย์ไว้ด้วยจำนวนเงินทั้งหมด\ ตั้งแต่วันแรกที่ทดสอบไว้ แล้วถือไว้โดยไม่ขายออก เป็นตัวไว้เปรียบเทียบ เวลาที่เริ่มทดสอบ คือวันที่ 1 ตุลาคม 2023 เวลา 00:00 (GMT+07) ถึง 24 กุมภาพันธ์ 2024 เวลา 17:50 (GMT+07) เป็นเวลาประมาณ 5 เดือน

\
\
\
\
\
\
= ผลลัพธ์

#align(center)[
#figure(table(
  columns: (auto, auto, auto, auto, auto, auto),
  [Symbol], [Classical], [Fuzzy], [Fuzzy C], [Fuzzy PSO], [Fuzzy C PSO],
  [BTC], [334.28], [763.41], [867.74], [759.38], [*872.94*],
  [ETH], [91.40], [680.26], [715.21], [692.24], [*759.44*],
  [BNB], [141.54], [*805.67*], [654.23], [*805.67*], [653.76]
), caption: [กำไรสุทธิของเหรียญในตลาด Crypto Currency], supplement: [ตารางที่]) <table1>

#figure(table(
  columns: (auto, auto, auto, auto, auto, auto),
  [Symbol], [Classical], [Fuzzy], [Fuzzy C], [Fuzzy PSO], [Fuzzy C PSO],
  [AAPL], [-4.30], [*6.05*], [3.22], [*6.05*], [3.22],
  [IBM], [74.68], [*153.63*], [114.13], [*153.63*], [114.13],
  [JPM], [4.98], [139.66], [*141.72*], [139.66], [*141.72*],
  [MSFT], [72.51], [134.59], [*143.97*], [128.24], [131.94],
  [NKE], [6.14], [51.12], [50.29], [*68.45*], [45.82],
  [TSLA], [*150.11*], [-65.41], [-92.88], [-65.41], [-92.71]
), caption: [กำไรสุทธิของหุ้นในตลาดหุ้น NASDAQ], supplement: [ตารางที่]) <table2>

#figure(image("crypto.svg"), caption: [การเปลี่ยนแปลงของเงินลงทุนสำหรับแต่ละวิธีในตลาด Crypto Currency], supplement: [รูปที่]) <crypto_g>

#figure(image("stock.svg"), caption: [การเปลี่ยนแปลงของเงินลงทุนสำหรับแต่ละวิธีในตลาดหุ้น NASDAQ], supplement: [รูปที่]) <stock_g>
]

= สรุปผล
จาก @crypto_g และ @stock_g เราจะเห็นว่าการใช้ Fuzzy Logic มาสร้างอินดิเคเตอร์ใหม่นั้นให้ผลลัพธ์ ที่ดีกว่าการใช้ตัวเลขธรรมดาแบบ Classical เสมอ โดยเฉพาะในตลาด Crypto Currency ที่จะเห็นว่าแบบ Classical นั้นให้ผลลัพธ์ที่แย่กว่าแบบ Fuzzy อย่างชัดเจน และจะเห็นว่าถ้าเราเปรียบเทียบกับการ Buy & Hold เราจะได้ผลลัพธ์ที่ใกล้เคียงกัน แต่การเปลี่ยนแปลงของเงินทุนนั้นมีความผันผวนกว่า    และมีช่วงที่เงินทุนลดไปเป็นจำนวนมากเยอะ ถ้าเราดูใน @table1 และ @table2 จะเห็นว่าไม่มีวิธีการเข้าซื้อจาก Fuzzy Logic แบบไหนที่ให้ผลลัพธ์นี่ดีกว่าแบบอื่นอย่างเป็นเอกฉันท์ และจะมีบางเหรียญหรือหุ้นที่ Fuzzy กับ Fuzzy PSO ให้ผลเหมือนกันเนื่องจาก PSO นั้นสรุปว่าการไม่เปลี่ยนแปลงตัวแปรทางภาษาเลยให้ผลที่ดีที่สุดแล้วในเวลาที่ใช้ฝึกสอน

ดังนั้นด้วยความสามารถของ Fuzzy Logic ในการจัดการกับข้อมูลที่มีความผันผวน และไม่แน่นอนของข้อมูล ทำให้เราเห็นว่าการใช้ Fuzzy Logic ในการสร้างอินดิเคเตอร์ใหม่นั้นเป็นวิธีให้ผลลัพธ์ที่ดีกว่าการใช้ตัวเลขธรรมดาแบบ Classical

#place(
dx: -535pt,
dy: 50pt,
figure(
  rect(stroke: 1pt)[
    #figure(image("qr-code.svg", width: 25%)) <live_web_qr_code>
    ],
  )
)

#place(
  dx: -400pt,
  dy: 115pt,
  rect(stroke: none)[
  สแกนเพื่อเข้า \
  เว็บแอพพลิเคชันของระบบสนับสนุนการตัดสินใจซื้อขายสินทรัพย์ด้วยฟัซซีโลจิก \
  #link("https://cmu.to/FZT")
  ]
)