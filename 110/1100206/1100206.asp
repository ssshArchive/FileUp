<!-- #include file="DB.fun" -->
<HTML>

<head>
<title>�x�_���ߪQ�s�����оǶi�ת�</title>
<style fprolloverstyle>A:hover {color: #FFFF00; background-color: #30008A}
</style>
<base target="_blank">
</head>
<BODY bgcolor="#FFFFFF">

<p align="center"><font face="�з���" color="#0000FF" size="4">�x�_���ߪQ�s����110�Ǧ~�ײĤG�Ǵ��оǶi�ת�</font></p>   

<%
  Response.write "<font face=�з���>"
  Set rs = GetMdbRecordset("../../110exam.mdb", "1100206")
  If rs Is Nothing Then
      Response.Write "GetMdbRecordset �I�s����!"
      Response.End
  End If 
%>
<CENTER>
<div align="center">

<table border="1" width="80%" cellpadding="3" bordercolorlight="#663300" style="border-style: dashed; border-color: #000000">

<TR BGCOLOR=#004931>
<%
  
  ' Part I�G��X�u���Y�W�١v
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
  ' Part II�G��X��ƪ��u���e�v
  rs.MoveFirst		' �N�ثe��ƿ�����Ĥ@��
  c=0
  While Not rs.EOF	' �P�_�O�_�L�F�̫�@��
      if c mod 2 = 0 then cr="#EFFFDC" else cr="#FFFFFF"
      Row = "<TR BGCOLOR=" & cr & ">"
     For i=1 to 4
        stri=rs(i)
        if i=1 then  
           Row = Row & "<TD> " & stri & " </TD>"  
        elseif stri<>"" then
           Row = Row & "<TD> <a href=" & stri & "> <p align=center > �U��</TD>"
        else
           Row = Row & "<TD><p align=center>x</TD>"  
        end if
     Next
     Response.Write Row & "</TR>"
     c=c+1
     rs.MoveNext	' ����U�@��
  Wend

%>
</TABLE></div></CENTER>
</BODY>
</HTML>