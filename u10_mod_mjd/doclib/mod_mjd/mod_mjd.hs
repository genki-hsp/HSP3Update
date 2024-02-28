;--------------------------------------------------
; HSP ヘルプ ソースファイル (hs 形式)
; hs ファイルの書式については、HS_BIBLE.txt を参照してください。

;--------------------------------------------------
; この hs ファイルのデフォルトのフィールド値を設定

%dll
; プラグイン/モジュール名 を記入
mod_mjd

%ver
; バージョン を記入
1.00

%date
; 日付 を記入
2017/02/20

%author
; 著作者 を記入
GENKI

%url
http://mclab.uunyan.com/

%note
mod_mjd.hspをインクルードすること。

%type
拡張命令

%port
; 対応環境 を記入

%portinfo
; 移植のヒント を記入


%index
ConvertG2MJD
グレゴリオ暦を修正ユリウス日へ換算

%prm
( Year, Month, Day )
int Year  : 年
int Month : 月
int Day   : 日
val : 修正ユリウス日

%inst
グレゴリオ暦（現在使われている普通の太陽暦）を修正ユリウス日（MJD）に変換します。

Year
年を整数値で指定してくだい。
西暦2017年の場合は、2017を指定します。
紀元前100年の場合は、-99（=1-100）を指定します。

Month
月を1～12の整数値で指定してください。

Day
日を1～31の整数値で指定してください。

戻り値
修正ユリウス日を整数値で返します。

%sample
; サンプルスクリプト を記入

%href
ConvertMJD2G
ConvertTime2MJD
MJD2Weekday
MJD2Jyunishi
MJD2Jikkan
MJD2Kanshi

%group
日付換算

%index
ConvertTime2MJD
時刻を修正ユリウス日へ換算

%prm
( Hour, Min, Sec )
int/double Hour : 時
int/double Min  : 分
int/double Sec  : 秒
val      : 修正ユリウス日時刻

%inst
時刻（hh:mm:ss.ss）を修正ユリウス日の時刻へ換算します。
結果は実数で返されます。ConvertG2MJD関数での換算結果に足し算して利用してください。

Hour
時を実数又は数値で指定してください。
通常は整数値を使ってください。

Min
分を実数又は数値で指定してください。
通常は整数値を使ってください。

Sec
秒を実数又は数値で指定してください。
小数点以下を使ってミリ秒も指定できます。

計算結果の例：
  0時00分00秒　0.00000
  0時00分01秒　0.00001
  9時00分00秒　0.37500
 19時00分00秒　0.79167
 24時00分00秒　1.00000

内部では次のような計算をしています。
Hour/24 + Min/(60*24) + Sec/(60*60*24)


%sample
	; 10時09分08秒
	;出力結果は「0.42301」
mes strf("%0.5f", ConvertTime2MJD(10, 9, 8))


%href
ConvertMJD2Time
ConvertG2MJD

%group
日付換算


%index
ConvertMJD2Time
修正ユリウス日を時刻へ換算

%prm
mjdtime, Hour, Min, Sec
double mjdtie : 修正ユリウス日時刻
var Hour      : 時
var Min       : 分
var Sec       : 秒

%inst
修正ユリウス日の時刻（小数点以下の部分）を時刻（hh:mm:ss.ss）に換算します。

mjdtime
修正ユリウス日の小数部分を取り出して指定してください。
またはConvertTime2MJD関数の値を指定してください。

Hour
小数値から時を取り出して整数値で返します。

Min
小数値から分を取り出して整数値で返します。

Sec
小数値から秒を取り出して実数値で返します。


%sample
 ;出力結果
 ;10時09分08秒

ConvertMJD2Time 0.42301, h,m,s
mes strf("%02d時%02d分%02d秒", h, m, s)

%href
ConvertTime2MJD
ConvertMJD2G
GetMJDNow

%group
日付換算

%index
ConvertMJD2G
修正ユリウス日からグレゴリオ暦へ換算

%prm
mjd, Year, Month, Day
int mjd   : 修正ユリウス日
var Year  : 年
var Month : 月
var Day   : 日

%inst
修正ユリウス日（MJD）をグレゴリオ暦（現在使われている普通の太陽暦）に変換します。

mjd
修正ユリウス日の整数値部分を指定してください。

Year
修正ユリウス日から年を取り出して整数値で返します。

Month
修正ユリウス日から月を取り出して整数値で返します。

Day
修正ユリウス日から日を取り出して整数値で返します。

%sample
; サンプルスクリプト を記入

%href
ConvertG2MJD
ConvertMJD2Time
GetMJDToday

%group
日付換算

%index
MJD2Weekday
修正ユリウス日から曜日を取得

%prm
( mjd )
int mjd : 修正ユリウス日
val     : 曜日（0～6）

%inst
修正ユリウス日から曜日を取得します。

結果は0～6の数値で返されます。数値の対応は次の通り。
      0  1  2  3  4  5  6
曜日 日 月 火 水 木 金 土


%sample
 ;2012/1/1（日曜日）の場合

曜日 = "日", "月", "火", "水", "木", "金", "土"
mes 曜日( MJD2Weekday(ConvertG2MJD(2012,1,1)) )

%href
ConvertG2MJD
GetMJDToday

%group
日付計算

%index
MJD2Jyunishi
修正ユリウス日から十二支を取得

%prm
( mjd )
int mjd : 修正ユリウス日
val     : 十二支（0～11）

%inst
修正ユリウス日から十二支を取得します。

結果は0～11の数値で返されます。数値の対応は次の通り。
  0  1  2  3  4  5  6  7  8  9 10 11
 子 丑 寅 卯 辰 巳 午 未 申 酉 戌 亥


%sample
 ;2012/1/1（酉）の場合

十二支 = "子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"
mes 十二支( MJD2Jyunishi(ConvertG2MJD(2012,1,1)) )


%href
ConvertG2MJD
GetMJDToday
%group
日付計算

%index
MJD2Jikkan
修正ユリウス日から十干を取得

%prm
( mjd )
int mjd : 修正ユリウス日
val     : 十干（0～9）

%inst
修正ユリウス日から十干を取得します。

結果は0～9の数値で返されます。数値の対応は次の通り。
  0  1  2  3  4  5  6  7  8  9
 甲 乙 丙 丁 戊 己 庚 辛 壬 癸

%sample
 ;2012/1/1（辛）の場合

十干 = "甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"
mes 十干( MJD2Jikkan(ConvertG2MJD(2012,1,1)) )

%href
ConvertG2MJD
GetMJDToday

%group
日付計算

%index
MJD2Kanshi
修正ユリウス日から干支紀日を取得

%prm
( mjd )
int mjd : 修正ユリウス日
val     : 干支紀日（0～59）

%inst
修正ユリウス日から干支紀日を取得します。

結果は0～59の数値で返されます。数値の対応は次の通り。
    0  甲子
    1  乙丑
    2  丙寅
    3  丁卯
    4  戊辰
    5  己巳
    6  庚午
    7  辛未
    8  壬申
    9  癸酉
   10  甲戌
   11  乙亥
   12  丙子
   13  丁丑
   14  戊寅
   15  己卯
   16  庚辰
   17  辛巳
   18  壬午
   19  癸未
   20  甲申
   21  乙酉
   22  丙戌
   23  丁亥
   24  戊子
   25  己丑
   26  庚寅
   27  辛卯
   28  壬辰
   29  癸巳
   30  甲午
   31  乙未
   32  丙申
   33  丁酉
   34  戊戌
   35  己亥
   36  庚子
   37  辛丑
   38  壬寅
   39  癸卯
   40  甲辰
   41  乙巳
   42  丙午
   43  丁未
   44  戊申
   45  己酉
   46  庚戌
   47  辛亥
   48  壬子
   49  癸丑
   50  甲寅
   51  乙卯
   52  丙辰
   53  丁巳
   54  戊午
   55  己未
   56  庚申
   57  辛酉
   58  壬戌
   59  癸亥

%sample
 ;2012/1/1（辛酉）の場合

sdim 干支, 64, 60
干支( 0) = "甲子", "乙丑", "丙寅", "丁卯", "戊辰", "己巳", "庚午", "辛未", "壬申", "癸酉", "甲戌", "乙亥", "丙子", "丁丑", "戊寅", "己卯", "庚辰", "辛巳", "壬午", "癸未"
干支(20) = "甲申", "乙酉", "丙戌", "丁亥", "戊子", "己丑", "庚寅", "辛卯", "壬辰", "癸巳", "甲午", "乙未", "丙申", "丁酉", "戊戌", "己亥", "庚子", "辛丑", "壬寅", "癸卯"
干支(40) = "甲辰", "乙巳", "丙午", "丁未", "戊申", "己酉", "庚戌", "辛亥", "壬子", "癸丑", "甲寅", "乙卯", "丙辰", "丁巳", "戊午", "己未", "庚申", "辛酉", "壬戌", "癸亥"
mes 干支( MJD2Kanshi(ConvertG2MJD(2012,1,1)) )

%href
ConvertG2MJD
GetMJDToday

%group
日付計算

%index
GetMJDToday
現在の修正ユリウス日を取得

%prm
()
val : 現在の修正ユリウス日

%inst
現在の修正ユリウス日を取得します。
年月日だけを取得するので結果は整数です。

%sample
; サンプルスクリプト を記入

%href
GetMJDNow
ConvertMJD2G

%group
日付取得

%index
GetMJDNow
現在の修正ユリウス日（時刻）を取得

%prm
()
val : 現在の修正ユリウス日の時刻

%inst
現在の修正ユリウス日の時刻を取得します。
時刻のみを取得します。結果は1.0未満の実数になります。
GetMJDToday関数の結果と足し算して利用してください。

%sample
; サンプルスクリプト を記入

%href
GetMJDToday
ConvertMJD2Time

%group
日付取得

