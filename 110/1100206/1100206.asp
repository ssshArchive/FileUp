<!-- #include file="DB.fun" -->
<HTML>

<head>
<title>台北市立松山高中教學進度表</title>
<style fprolloverstyle>A:hover {color: #FFFF00; background-color: #30008A}
</style>
<base target="_blank">
</head>
<BODY bgcolor="#FFFFFF">

<p align="center"><font face="標楷體" color="#0000FF" size="4">台北市立松山高中110學年度第二學期教學進度表</font></p>   

<%
  Response.write "<font face=標楷體>"
  Set rs = GetMdbRecordset("../../110exam.mdb", "1100206")
  If rs Is Nothing Then
      Response.Write "GetMdbRecordset 呼叫失敗!"
      Response.End
  End If 
%>
<CENTER>
<div align="center">

<table border="1" width="80%" cellpadding="3" bordercolorlight="#663300" style="border-style: dashed; border-color: #000000">

<TR BGCOLOR=#004931>
<%
  
  ' Part I：輸出「抬頭名稱」
  For i=1 to 4
     if i=1 then w="15%"
     if i=2 then w="25%"
     if i=3 then w="25%"
     if i=4 then w="25%"
     
     Response.Write "<TD width=" & w & "> <p align=center><font color=#FFFFFF>" & rs(i).Name & "</TD>"
  Next

%>
</TR>
<%
  ' Part II：輸出資料表的「內容」
  rs.MoveFirst		' 將目前資料錄移到第一筆
  c=0
  While Not rs.EOF	' 判斷是否過了最後一筆
      if c mod 2 = 0 then cr="#EFFFDC" else cr="#FFFFFF"
      Row = "<TR BGCOLOR=" & cr & ">"
     For i=1 to 4
        stri=rs(i)
        if i=1 then  
           Row = Row & "<TD> " & stri & " </TD>"  
        elseif stri<>"" then
           Row = Row & "<TD> <a href=" & stri & "> <p align=center > 下載</TD>"
        else
           Row = Row & "<TD><p align=center>x</TD>"  
        end if
     Next
     Response.Write Row & "</TR>"
     c=c+1
     rs.MoveNext	' 移到下一筆
  Wend

%>
</TABLE></div></CENTER>
</BODY>
</HTML>