echo off
SET regex_files_txt=accounts.txt psw.txt acc.txt account.txt accs.txt passes.txt pass.txt passw.txt passwo.txt password.txt passwords.txt ps.txt psw.txt pw.txt secure.txt
SET regex_files_doc=accounts.doc psw.doc acc.doc account.doc accs.doc passes.doc pass.doc passw.doc passwo.doc password.doc passwords.doc ps.doc psw.doc pw.doc secure.doc
SET regex_files_docx=accounts.docx psw.docx acc.docx account.docx accs.docx passes.docx pass.docx passw.docx passwo.docx password.docx passwords.docx ps.docx psw.docx pw.docx secure.docx

echo [*] regex: %regex_files_txt%
echo \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/
dir /s %regex_files_txt%

echo [*] regex: %regex_files_doc%
echo \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/
dir /s %regex_files_doc%

echo [*] regex: %regex_files_docx%
echo \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/
dir /s %regex_files_docx%