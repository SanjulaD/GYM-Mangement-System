   M S B A M L   `   `   `  ����P  LGym Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Gym_Management_SystemGym_Management_System  5   	   *    $Gym_Management_System.ForgotPassword   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:Gym_Management_System     5   	     � Title$  ForgotPassword��5   	    � WindowStartupLocation$ CenterScreen=�6    $	��500��6E   $	��400��6R    � 
ResizeMode$ NoResize=�6^    � 	Resources 5	         Button.MouseOver.Background �� Color  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  RoundedButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType	 ��Name
 �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName��%)  &	        &	 #     &	 F     &	 i     &	 �     &	 �     &	 �     &	 �     7  7  7  7  7  �� 5
   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6+   .�5      ��  � ��# � ��6+   �� 5       � ��$ 1q�60   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � ��$ 1q�6(   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $	 border��6!   $
 20��61   #��z��6C   #��z��6m   #��z��6�   $
 true��6�   $��	174,0,0,0q�6�   ._�5      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5       5      P� 5       �@��IsDefaulted$
 true��6=   . �5   "   �� $ border��6@    � �� �#ffcd086T   5       P� 5!       �@J�IsMouseOver$
 true��6=   . �5"   "   �� $ border��6?    � �� �#ffcd086S   �� 5#   "   $ border��6@    � �� �#ffcd086T   5$      P� 5%       � ��$
 true��6;   . �5&   "   �� $ border��6?   8    � ��6S   �� 5'   "   $ border��6@   8   � ��6T   5(      P� 5)       � {�$ false��6;   . �5*   "   �� $ border��6?   8   � ��6S   �� 5+   "   $ border��6@   8   � ��6T   �� 5,   "   $ contentPresenter��6K   8   � ��6i   5-      5/      51      52      53      .��54      � .+�55   
   �� -   5         ��Name$ ResetNameTxt��55      $��Center=�6(   $��41��6E   $��16(�6Q   $��Century Gothic)�6_   $��8q�6{   $	��310��6�   
�������$	��Top=�6�   ���	#FFFFD104 �� SelectionBrush �	#FF0078D7
���   �$��	0,233,0,0q�6  �� 56   
   $��Email��6   $
��Left=�6    $	��Top=�6;   $��
45,288,0,0q�6S   $��47��6g   $	��129��6s   $��16(�6   $��Century Gothic)�6�   
���   �$
��Bold"�6�   ��6�   Z� 6�   �� 57   
   $��Username��6   $
��Left=�6#   $	��Top=�6>   $��
45,193,0,0q�6V   $��34��6j   $	��129��6v   $��16(�6�   $��Century Gothic)�6�   
���   �$
��Bold"�6�   ��6�   Z� 6�   �� 58   
   -   5        $ ResetPWEmailTxt��58      $��Center=�6+   $��41��6H   $��	0,329,0,0q�6T   $��16(�6g   $��Century Gothic)�6u   $��8q�6�   $	��310��6�   
�������$	��Top=�6�   ���	#FFFFD104 �� SelectionTextBrush �	#FFFFD104
���   �6  �� 59   
   -   5         ��Name$ SendMailBtn��59      #���  6&   $��SEND ME��6S   $
��Left=�6e   $��-105,396,0,0q�6�   $	��Top=�6�   $	��289��6�   $��40��6�   $��16(�6�   $��Century Gothic)�6�    � UseLayoutRounding$ False��6�   
����������	#FFFFD104
���   � � Cursor$
 Hand��6I  $��Normal"�6W  6k  �� 5:   
   -   5        $ LoginBtn��5:      #���  6#   $��LOGIN��6P   $
��Left=�6`   $��
40,396,0,0q�6{   $	��Top=�6�   $	��289��6�   $��40��6�   $��16(�6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFD3CDB6
���   �$
 Hand��6B  $��Normal"�6P  6d  �� 5;   
   $��images/forgotpw.png��6   $
��Left=�6-   $	��181��6H   $��	90,20,0,0q�6U   $	��Top=�6h   $	��210��6�   5<      5=      