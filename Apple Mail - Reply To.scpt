FasdUAS 1.101.10   ��   ��    k             l     ��  ��    9 3---------------------------------------------------     � 	 	 f - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��    / )	Name: Simple List Handler for Apple Mail     �   R 	 N a m e :   S i m p l e   L i s t   H a n d l e r   f o r   A p p l e   M a i l      l     ��  ��    4 .	Author: Patrick Welker <http://rocketink.net>     �   \ 	 A u t h o r :   P a t r i c k   W e l k e r   < h t t p : / / r o c k e t i n k . n e t >      l     ��  ��    # 	Version: 1.0 (July 21, 2013)     �   : 	 V e r s i o n :   1 . 0   ( J u l y   2 1 ,   2 0 1 3 )      l     ��  ��    M G	For Apple Mail and Keyboard Maestro (<http://www.keyboardmaestro.com>)     �   � 	 F o r   A p p l e   M a i l   a n d   K e y b o a r d   M a e s t r o   ( < h t t p : / / w w w . k e y b o a r d m a e s t r o . c o m > )      l     ��   !��     9 3---------------------------------------------------    ! � " " f - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   # $ # l     �� % &��   % � �	Apple Mail Part borrow from Federico Viticci of MacStories (<http://www.macstories.net/tutorials/automating-mail-signatures-and-senders-with-applescript-and-keyboard-maestro/>)    & � ' 'b 	 A p p l e   M a i l   P a r t   b o r r o w   f r o m   F e d e r i c o   V i t i c c i   o f   M a c S t o r i e s   ( < h t t p : / / w w w . m a c s t o r i e s . n e t / t u t o r i a l s / a u t o m a t i n g - m a i l - s i g n a t u r e s - a n d - s e n d e r s - w i t h - a p p l e s c r i p t - a n d - k e y b o a r d - m a e s t r o / > ) $  ( ) ( l     �� * +��   * 9 3---------------------------------------------------    + � , , f - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - )  - . - l     �� / 0��   /  	Installation    0 � 1 1  	 I n s t a l l a t i o n .  2 3 2 l     �� 4 5��   4 b \	1. Use this script with an "Execute AppleScript action" and assign a hot key to it, c.f. ?R    5 � 6 6 � 	 1 .   U s e   t h i s   s c r i p t   w i t h   a n   " E x e c u t e   A p p l e S c r i p t   a c t i o n "   a n d   a s s i g n   a   h o t   k e y   t o   i t ,   c . f .  # R 3  7 8 7 l     �� 9 :��   9 Y S 	2. Add/Remove your list items and setup a default item in the configuration below    : � ; ; �   	 2 .   A d d / R e m o v e   y o u r   l i s t   i t e m s   a n d   s e t u p   a   d e f a u l t   i t e m   i n   t h e   c o n f i g u r a t i o n   b e l o w 8  < = < l     �� > ?��   > 9 3---------------------------------------------------    ? � @ @ f - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =  A B A l     �� C D��   C  	Configuration    D � E E  	 C o n f i g u r a t i o n B  F G F j     �� H�� 0 	emaillist 	emailList H J      I I  J K J m      L L � M M R F e d e r i c o   V i t i c c i   < v i t i c c i @ m a c s t o r i e s . n e t > K  N O N m     P P � Q Q \ P r e s i d e n t   o f   S p e c i a l   B u s i n e s s   < p r o m p t @ 5 b y 5 . t v > O  R S R m     T T � U U > F e d e r i c o   V i t i c c i   < m e @ t i c c i . o r g > S  V�� V m     W W � X X B F e d e r i c o   V i t i c c i   < v i t i c c i @ m e . c o m >��   G  Y Z Y j    
�� [�� 0 defaultemail defaultEmail [ m    	 \ \ � ] ] \ P r e s i d e n t   o f   S p e c i a l   B u s i n e s s   < p r o m p t @ 5 b y 5 . t v > Z  ^ _ ^ j    �� `�� 0 signaturelist signatureList ` J     a a  b c b m     d d � e e  S i g n a t u r e   # 1 c  f g f m     h h � i i  S i g n a t u r e   # 2 g  j k j m     l l � m m  S i g n a t u r e   # 3 k  n o n m     p p � q q  S i g n a t u r e   # 4 o  r s r m     t t � u u  S i g n a t u r e   # 5 s  v w v m     x x � y y  S i g n a t u r e   # 6 w  z�� z m     { { � | |  N o n e��   _  } ~ } j    �� �� $0 defaultsignature defaultSignature  m     � � � � �  S i g n a t u r e   # 1 ~  � � � l      � � � � j    �� ��� .0 cancelsignaturedialog cancelSignatureDialog � m    ��
�� boovtrue � U O If Cancel/ESC dialog then use no signature; set to false for default signature    � � � � �   I f   C a n c e l / E S C   d i a l o g   t h e n   u s e   n o   s i g n a t u r e ;   s e t   t o   f a l s e   f o r   d e f a u l t   s i g n a t u r e �  � � � l     �� � ���   �  		Optional    � � � �  	 O p t i o n a l �  � � � l     ����� � r      � � � m      � � � � �   M y   A d r e s s e s   L i s t � o      ���� $0 titleemaildialog titleEmailDialog��  ��   �  � � � l    ����� � r     � � � m     � � � � �  P i c k   S i g n a t u r e � o      ���� ,0 titlesignaturedialog titleSignatureDialog��  ��   �  � � � l     �� � ���   � 9 3---------------------------------------------------    � � � � f - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � l   � ����� � O    � � � � k    � � �  � � � I   ������
�� .miscactvnull��� ��� null��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � % 	Prompt for "Send From" Address    � � � � > 	 P r o m p t   f o r   " S e n d   F r o m "   A d d r e s s �  � � � r    % � � � I   #�� � �
�� .gtqpchltns    @   @ ns   � l    ����� � o    ���� 0 	emaillist 	emailList��  ��   � �� � �
�� 
appr � o    ���� $0 titleemaildialog titleEmailDialog � �� ���
�� 
inSL � o    ���� 0 defaultemail defaultEmail��   � o      ���� 0 selectedemail selectedEmail �  � � � Z   & @ � ��� � � =  & ) � � � o   & '���� 0 selectedemail selectedEmail � m   ' (��
�� boovfals � l  , 8 � � � � k   , 8 � �  � � � I  , 1�� ���
�� .sysobeepnull��� ��� long � m   , -���� ��   �  ��� � R   2 8���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   4 5��������  ��   �   Cancel script    � � � �    C a n c e l   s c r i p t��   � l  ; @ � � � � r   ; @ � � � c   ; > � � � o   ; <���� 0 selectedemail selectedEmail � m   < =��
�� 
ctxt � o      ���� 0 fromaccount fromAccount � 4 . Gets the selected list and creates a variable    � � � � \   G e t s   t h e   s e l e c t e d   l i s t   a n d   c r e a t e s   a   v a r i a b l e �  � � � l  A A��������  ��  ��   �  � � � l  A A�� � ���   �  	Prompt for signature    � � � � * 	 P r o m p t   f o r   s i g n a t u r e �  � � � r   A ^ � � � I  A Z�� � �
�� .gtqpchltns    @   @ ns   � l  A F ����� � o   A F���� 0 signaturelist signatureList��  ��   � �� � �
�� 
prmp � m   I L � � � � � < F o r   n o   s i g n a t u r e   p r e s s   C a n c e l . � �� � �
�� 
appr � o   M N���� ,0 titlesignaturedialog titleSignatureDialog � �� ���
�� 
inSL � o   O T���� $0 defaultsignature defaultSignature��   � o      ���� &0 selectedsignature selectedSignature �  ��� � Z   _ � � ��� � � =  _ d � � � o   _ b���� &0 selectedsignature selectedSignature � m   b c��
�� boovfals � l  g � � � � � Z   g � � ��� � � o   g l���� .0 cancelsignaturedialog cancelSignatureDialog � k   o � � �  � � � r   o v � � � m   o r � � � � �   � o      ���� &0 selectedsignature selectedSignature �  ��� � r   w � �  � c   w | o   w z���� &0 selectedsignature selectedSignature m   z {��
�� 
ctxt  o      ���� 0 mysignature mySignature��  ��   � k   � �  r   � � o   � ����� $0 defaultsignature defaultSignature o      ���� &0 selectedsignature selectedSignature �� r   � �	
	 c   � � o   � ����� &0 selectedsignature selectedSignature m   � ���
�� 
ctxt
 o      ���� 0 mysignature mySignature��   �   If cancel rules    � �     I f   c a n c e l   r u l e s��   � r   � � c   � � o   � ����� &0 selectedsignature selectedSignature m   � ���
�� 
ctxt o      ���� 0 mysignature mySignature��   � m    	0                                                                                  KM*E  alis    �  Hub                        �)�	H+  ���Keyboard Maestro Engine.app                                    �و����        ����  	                	Resources     �)��      ����    ��������� Vf�  XHub:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app  8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    H u b  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��  ��  ��   �  l     ��������  ��  ��    l     ����   ? 9	Apple Mail: fills in "From Address" and chosen signature    � r 	 A p p l e   M a i l :   f i l l s   i n   " F r o m   A d d r e s s "   a n d   c h o s e n   s i g n a t u r e �� l  � ����� O   � � k   � �   I  � �������
�� .miscactvnull��� ��� null��  ��    !"! r   � �#$# o   � ����� 0 mysignature mySignature$ o      ���� $0 thesignaturename theSignatureName" %&% r   � �'(' l  � �)����) n   � �*+* 1   � ���
�� 
smgs+ l  � �,����, 4  � ���-
�� 
mvwr- m   � ����� ��  ��  ��  ��  ( o      ���� 0 themessages theMessages& ./. r   � �010 n   � �232 4  � ���4
�� 
cobj4 m   � ����� 3 o   � ����� 0 themessages theMessages1 o      ���� 0 
themessage 
theMessage/ 565 r   � �787 I  � ���9:
�� .emalrpmsnull���     mssg9 o   � ����� 0 
themessage 
theMessage: �;�~
� 
ropw; m   � ��}
�} boovtrue�~  8 o      �|�| (0 theoutgoingmessage theOutgoingMessage6 <=< r   � �>?> 4   � ��{@
�{ 
situ@ o   � ��z�z $0 thesignaturename theSignatureName? n      ABA 1   � ��y
�y 
tnrgB o   � ��x�x (0 theoutgoingmessage theOutgoingMessage= C�wC r   � �DED o   � ��v�v 0 fromaccount fromAccountE n      FGF 1   � ��u
�u 
sndrG o   � ��t�t (0 theoutgoingmessage theOutgoingMessage�w   m   � �HH�                                                                                  emal  alis    *  Hub                        �)�	H+   Vf�Mail.app                                                        X����        ����  	                Applications    �)��      �h�     Vf�  Hub:Applications: Mail.app    M a i l . a p p    H u b  Applications/Mail.app   / ��  ��  ��  ��       �sIJ \K ��rL�s  I �q�p�o�n�m�l�q 0 	emaillist 	emailList�p 0 defaultemail defaultEmail�o 0 signaturelist signatureList�n $0 defaultsignature defaultSignature�m .0 cancelsignaturedialog cancelSignatureDialog
�l .aevtoappnull  �   � ****J �kM�k M   L P T WK �jN�j N   d h l p t x {
�r boovtrueL �iO�h�gPQ�f
�i .aevtoappnull  �   � ****O k     �RR  �SS  �TT  �UU �e�e  �h  �g  P  Q # ��d ��c�b�a�`�_�^�]�\�[�Z�Y�X�W ��V�U ��TH�S�R�Q�P�O�N�M�L�K�J�I�H�d $0 titleemaildialog titleEmailDialog�c ,0 titlesignaturedialog titleSignatureDialog
�b .miscactvnull��� ��� null
�a 
appr
�` 
inSL�_ 
�^ .gtqpchltns    @   @ ns  �] 0 selectedemail selectedEmail
�\ .sysobeepnull��� ��� long
�[ 
errn�Z��
�Y 
ctxt�X 0 fromaccount fromAccount
�W 
prmp�V �U &0 selectedsignature selectedSignature�T 0 mysignature mySignature�S $0 thesignaturename theSignatureName
�R 
mvwr
�Q 
smgs�P 0 themessages theMessages
�O 
cobj�N 0 
themessage 
theMessage
�M 
ropw
�L .emalrpmsnull���     mssg�K (0 theoutgoingmessage theOutgoingMessage
�J 
situ
�I 
tnrg
�H 
sndr�f �E�O�E�O� �*j Ob   ���b  � 	E�O�f  kj O)��lhY ��&E�Ob  a a ���b  a  	E` O_ f  4b   a E` O_ �&E` Y b  E` O_ �&E` Y _ �&E` UOa  V*j O_ E` O*a k/a ,E` O_ a k/E` O_ a el E` O*a  _ /_ a !,FO�_ a ",FUascr  ��ޭ