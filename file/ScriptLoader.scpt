FasdUAS 1.101.10   ��   ��    k             l      ��  ��    t n
 * NOTE: dont bother writing a load_many method since you need to store it in singular properties after all
      � 	 	 � 
   *   N O T E :   d o n t   b o t h e r   w r i t i n g   a   l o a d _ m a n y   m e t h o d   s i n c e   y o u   n e e d   t o   s t o r e   i t   i n   s i n g u l a r   p r o p e r t i e s   a f t e r   a l l 
     
  
 i         I      �� ���� 0 load        o      ���� 0 	hsf_alias     ��  o      ���� 0 	file_name  ��  ��    k            l         r         b         l     ����  c         o     ���� 0 	hsf_alias    m    ��
�� 
ctxt��  ��    o    ���� 0 	file_name    o      ���� 0 the_file_path    V Pcombines the path and the file name into "folder:sub_folder:file.txt" hsf format     �   � c o m b i n e s   t h e   p a t h   a n d   t h e   f i l e   n a m e   i n t o   " f o l d e r : s u b _ f o l d e r : f i l e . t x t "   h s f   f o r m a t    ��   l    ! " # ! L     $ $ I    �� %���� 0 load_script   %  &�� & 4   	 �� '
�� 
alis ' o    ���� 0 the_file_path  ��  ��   " g afinally makes the hsf_file path into an alias hsf file path and then calls the load_script method    # � ( ( � f i n a l l y   m a k e s   t h e   h s f _ f i l e   p a t h   i n t o   a n   a l i a s   h s f   f i l e   p a t h   a n d   t h e n   c a l l s   t h e   l o a d _ s c r i p t   m e t h o d��     ) * ) l      �� + ,��   +��
 * Note: we use load_script to load plain-text .applescript files, which cant be loaded directly without this method
 * Note: we use .applescript instead of .scpt files because its easier to put plain text script files under version control like github
 * Note: You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:
 * Remember to import this method before you use it with a property: 
 * Example: 
 * property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt")--prerequisite for loading .applescript files * property ListAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListAsserter.applescript"))  * my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4})
 * if my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4}) then *		log "yes" *	else *		log "no" *	end if
 * @Param: apple_script_path: is an "alias hsf file path"
     , � - -	� 
   *   N o t e :   w e   u s e   l o a d _ s c r i p t   t o   l o a d   p l a i n - t e x t   . a p p l e s c r i p t   f i l e s ,   w h i c h   c a n t   b e   l o a d e d   d i r e c t l y   w i t h o u t   t h i s   m e t h o d 
   *   N o t e :   w e   u s e   . a p p l e s c r i p t   i n s t e a d   o f   . s c p t   f i l e s   b e c a u s e   i t s   e a s i e r   t o   p u t   p l a i n   t e x t   s c r i p t   f i l e s   u n d e r   v e r s i o n   c o n t r o l   l i k e   g i t h u b 
   *   N o t e :   Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t : 
   *   R e m e m b e r   t o   i m p o r t   t h i s   m e t h o d   b e f o r e   y o u   u s e   i t   w i t h   a   p r o p e r t y :   
   *   E x a m p l e :   
   *   p r o p e r t y   S c r i p t L o a d e r   :   l o a d   s c r i p t   a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " f i l e : S c r i p t L o a d e r . s c p t " ) - - p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s    *   p r o p e r t y   L i s t A s s e r t e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " l i s t : L i s t A s s e r t e r . a p p l e s c r i p t " ) )      *   m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } ) 
   *   i f   m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } )   t h e n    * 	 	 l o g   " y e s "    * 	 e l s e    * 	 	 l o g   " n o "    * 	 e n d   i f 
   *   @ P a r a m :   a p p l e _ s c r i p t _ p a t h :   i s   a n   " a l i a s   h s f   f i l e   p a t h " 
   *  . / . i     0 1 0 I      �� 2���� 0 load_script   2  3�� 3 o      ���� 0 apple_script_path  ��  ��   1 k     { 4 4  5 6 5 Q     x 7 8 9 7 r    
 : ; : I   �� <��
�� .sysoloadscpt        file < o    ���� 0 apple_script_path  ��   ; o      ���� 0 script_object   8 R      ���� =
�� .ascrerr ****      � ****��   = �� >��
�� 
errn > d       ? ? m      �������   9 l   x @ A B @ k    x C C  D E D r     F G F m     H H � I I   G o      ���� 0 script_text   E  J K J Q    1 L M N L l     O P Q O r      R S R I   �� T��
�� .rdwrread****        **** T o    ���� 0 apple_script_path  ��   S o      ���� 0 script_text   P ( " Try reading as Mac encoding first    Q � U U D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t M R      ���� V
�� .ascrerr ****      � ****��   V �� W��
�� 
errn W d       X X m      �������   N l  ( 1 Y Z [ Y l  ( 1 \ ] ^ \ r   ( 1 _ ` _ I  ( /�� a b
�� .rdwrread****        **** a o   ( )���� 0 apple_script_path   b �� c��
�� 
as   c m   * +��
�� 
utf8��   ` o      ���� 0 script_text   ]   Finally try UTF-8    ^ � d d $   F i n a l l y   t r y   U T F - 8 Z &   Error reading script's encoding    [ � e e @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g K  f�� f Q   2 x g h i g r   5 H j k j I  5 F�� l��
�� .sysodsct****        scpt l l  5 B m���� m b   5 B n o n b   5 @ p q p b   5 > r s r b   5 < t u t b   5 : v w v b   5 8 x y x m   5 6 z z � { {  s c r i p t   s y o   6 7��
�� 
ret  w o   8 9���� 0 script_text   u o   : ;��
�� 
ret  s m   < = | | � } }  e n d   s c r i p t   q o   > ?��
�� 
ret  o m   @ A ~ ~ �    r e t u r n   s��  ��  ��   k o      ���� 0 script_object   h R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 e   � �� � �
�� 
errn � o      ���� 0 n   � �� � �
�� 
ptlr � o      ���� 0 p   � �� � �
�� 
erob � o      ���� 0 f   � �� ���
�� 
errt � o      ���� 0 t  ��   i k   P x � �  � � � I  P a�� ���
�� .sysodlogaskr        TEXT � b   P ] � � � b   P Y � � � b   P W � � � b   P S � � � m   P Q � � � � � , E r r o r   r e a d i n g   l i b r a r y   � o   Q R���� 0 apple_script_path   � m   S V � � � � �    � o   W X���� 0 e   � m   Y \ � � � � � : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��   �  ��� � R   b x�� � �
�� .ascrerr ****      � **** � o   v w���� 0 e   � �� � �
�� 
errn � o   f g���� 0 n   � �� � �
�� 
ptlr � o   j k���� 0 p   � �� � �
�� 
erob � o   n o���� 0 f   � �� ���
�� 
errt � o   r s���� 0 t  ��  ��  ��   A   text format script     B � � � (   t e x t   f o r m a t   s c r i p t   6  ��� � l  y { � � � � L   y { � � o   y z���� 0 script_object   � + %return the script, it is now loadable    � � � � J r e t u r n   t h e   s c r i p t ,   i t   i s   n o w   l o a d a b l e��   /  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ��{
 * NOTE: this method is a little strange, it serves as a simple way to load script files relative to the position of the script that is loading it.
 * Example: property FileParser : ScriptLoader's load(path to me, "FileParser.applescript",-1)--loads the script
 * @PARAM: the path_offset is used to offset the path backwards
 * --load(path to me, "FileParser.applescript", -1)
     � � � �� 
   *   N O T E :   t h i s   m e t h o d   i s   a   l i t t l e   s t r a n g e ,   i t   s e r v e s   a s   a   s i m p l e   w a y   t o   l o a d   s c r i p t   f i l e s   r e l a t i v e   t o   t h e   p o s i t i o n   o f   t h e   s c r i p t   t h a t   i s   l o a d i n g   i t . 
   *   E x a m p l e :   p r o p e r t y   F i l e P a r s e r   :   S c r i p t L o a d e r ' s   l o a d ( p a t h   t o   m e ,   " F i l e P a r s e r . a p p l e s c r i p t " , - 1 ) - - l o a d s   t h e   s c r i p t 
   *   @ P A R A M :   t h e   p a t h _ o f f s e t   i s   u s e d   t o   o f f s e t   t h e   p a t h   b a c k w a r d s 
   *   - - l o a d ( p a t h   t o   m e ,   " F i l e P a r s e r . a p p l e s c r i p t " ,   - 1 ) 
   �  ��� � i     � � � I      �� ����� 0 relative_load   �  � � � o      ���� 0 	hsf_alias   �  � � � o      ���� 0 	file_name   �  ��� � o      ���� 0 path_offset  ��  ��   � k     % � �  � � � r      � � � o     ���� 0 	hsf_alias   � o      ���� 0 the_offset_file_path   �  � � � Y     ��� � ��� � k     � �  � � � l   �� � ���   �  log i    � � � � 
 l o g   i �  ��� � r     � � � 4    �� �
�� 
alis � l    ����� � b     � � � l    ����� � c     � � � o    ���� 0 the_offset_file_path   � m    ��
�� 
ctxt��  ��   � m     � � � � �  : :��  ��   � o      ���� 0 the_offset_file_path  ��  �� 0 i   � o    ���� 0 path_offset   � m    	��������   �  � � � l   �� � ���   �  log the_offset_file_path    � � � � 0 l o g   t h e _ o f f s e t _ f i l e _ p a t h �  ��� � I    %�� ����� 0 load   �  � � � o     ���� 0 the_offset_file_path   �  ��� � o     !���� 0 	file_name  ��  ��  ��  ��       �� � � � ���   � �������� 0 load  �� 0 load_script  �� 0 relative_load   � �� ��� � ��~�� 0 load  �� �} ��}  �  �|�{�| 0 	hsf_alias  �{ 0 	file_name  �   � �z�y�x�z 0 	hsf_alias  �y 0 	file_name  �x 0 the_file_path   � �w�v�u
�w 
ctxt
�v 
alis�u 0 load_script  �~ ��&�%E�O**�/k+  � �t 1�s�r � ��q�t 0 load_script  �s �p ��p  �  �o�o 0 apple_script_path  �r   � �n�m�l�k�j�i�h�g�n 0 apple_script_path  �m 0 script_object  �l 0 script_text  �k 0 e  �j 0 n  �i 0 p  �h 0 f  �g 0 t   � �f�e � H�d ��c�b z�a | ~�`�_ � � � ��^�]�\�[�Z�Y
�f .sysoloadscpt        file�e   � �X�W�V
�X 
errn�W�(�V  
�d .rdwrread****        **** � �U�T�S
�U 
errn�T�\�S  
�c 
as  
�b 
utf8
�a 
ret 
�` .sysodsct****        scpt�_ 0 e   � �R�Q �
�R 
errn�Q 0 n   � �P�O �
�P 
ptlr�O 0 p   � �N�M �
�N 
erob�M 0 f   � �L�K�J
�L 
errt�K 0 t  �J  
�^ .sysodlogaskr        TEXT
�] 
errn
�\ 
ptlr
�[ 
erob
�Z 
errt�Y �q | �j  E�W mX  �E�O �j E�W X  ���l E�O ��%�%�%�%�%�%j E�W /X  �%a %�%a %j O)a �a �a �a �a �O� � �I ��H�G � ��F�I 0 relative_load  �H �E ��E  �  �D�C�B�D 0 	hsf_alias  �C 0 	file_name  �B 0 path_offset  �G   � �A�@�?�>�=�A 0 	hsf_alias  �@ 0 	file_name  �? 0 path_offset  �> 0 the_offset_file_path  �= 0 i   � �<�; ��:
�< 
alis
�; 
ctxt�: 0 load  �F &�E�O �ikh *��&�%/E�[OY��O*��l+  ascr  ��ޭ