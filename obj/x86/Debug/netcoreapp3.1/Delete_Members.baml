   M S B A M L   `   `   `  ����P  LGym Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Gym_Management_SystemGym_Management_System  5   	   *    $Gym_Management_System.Delete_Members   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:Gym_Management_System     5   	     � Title$  Delete_Members��5   	   $	��600��6    $	��950��6-    � WindowStartupLocation$ CenterScreen=�69    � 
ResizeMode$ NoResize=�6^    � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 RoundedButtonStyle	 �� 
TargetType
 �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	 �     &	 �     &	 �     &	     &	 ?    &	 b    &	 �    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7 	 �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $
 true��6/   #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   "	 ��6+   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 0q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      "
 ��6&   .R�5(      �� $ border��6!   $ 20��61   #��z��6C   #��z��6o   #��z��6�   $
 true��6�   ._�5)      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted$
 true��6=   . �5-   "   �� $ border��6@    � �� �#ffcd086T   5.      P� 5/       �@J�IsMouseOver$
 true��6=   . �50   "   �� $ border��6?    � �� �	#FFFFDC506S   �� 51   "   $ border��6@    � �� �#ffcd086T   52      P� 53       � ��$
 true��6;   . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {�$ false��6;   . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8   � ��6i   5;      5=      5?      5@      5A      .��5B      � .+�5C   
   �� $��Center=�6   $	��253��6.   $	��Top=�6;   $	��948��6S   ���	#FFE0E0E0.+�5D      �� $��Enter Member Name��6   $
��Left=�60   $��	71,83,0,0q�6K   $	��Top=�6^   $��Century Gothic)�6v   $��18(�6�   $��40��6�   $	��202��6�   $
��Bold"�6�   �� 5F      -   5         ��Name$ MemberNameSearch��5F      $
��Left=�60   $��40��6K   $��
39,134,0,0q�6W   $��16(�6k   $��Century Gothic)�6y   $��8q�6�   $	��248��6�   
�������$	��Top=�6�   6�   &   System.Windows.Controls.DataGrid  5G      -   5          Name$ dataGridView1��5G      $
��Left=�6/   $	��160��6J   $��
360,54,0,0q�6W   $	��Top=�6k   $	��558��6�   $��Century Gothic)�6�    � Cursor$ Arrow��6�   ���	#FFF0F0F0
���   ����	#FFFFD104   GridLinesVisibility$	 All=�6�      HorizontalGridLinesBrush �	#FF535252   VerticalGridLinesBrush �	#FF8B8B8B$��16(�6^  6l  5I      �� 5J   
   $��
First Name��6   $
��Left=�6%   $��28,0,0,0q�6@   $��Center=�6R   $��Century Gothic)�6m   $��16(�6�   $��29��6�   $	��100��6�   $
��Bold"�6�   �� 5K   
   -   5        $ NewMemberFNameTxt��5K      $
��Left=�6-   $��37��6H   $��
36,315,0,0q�6T   $��16(�6h   $��Century Gothic)�6v   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5L   
   $��Email��6   $
��Left=�6    $��
28,362,0,0q�6;   $	��Top=�6O   $��Century Gothic)�6g   $��16(�6�   $��29��6�   $	��100��6�   $
��Bold"�6�   �� 5M   
   -   5        $ NewMemberEmailTxt��5M      $
��Left=�6-   $��37��6H   $��
36,401,0,0q�6T   $��16(�6h   $��Century Gothic)�6v   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5N   
   $��Phone Number��6   $
��Left=�6'   $��636,274,0,0q�6B   $	��Top=�6W   $��Century Gothic)�6o   $��16(�6�   $��29��6�   $	��139��6�   $
��Bold"�6�   �� 5O   
   -   5        $ NewMemberPhoneNumberTxt��5O      $
��Left=�63   $��37��6N   $��643,313,0,0q�6Z   $��16(�6o   $��Century Gothic)�6}   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5P   
   -   5        $ NewMemberLNameTxt��5P      $
��Left=�6-   $��37��6H   $��340,315,0,0q�6T   $��16(�6i   $��Century Gothic)�6w   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5Q   
   $��	Last Name��6   $
��Left=�6$   $��	336,0,0,0q�6?   $��Center=�6R   $��Century Gothic)�6m   $��16(�6�   $��29��6�   $��99��6�   $
��Bold"�6�   �� 5R   
   $
��NIC ��6   $
��Left=�6   $��336,364,0,0q�6:   $	��Top=�6O   $��Century Gothic)�6g   $��16(�6�   $��29��6�   $��99��6�   $
��Bold"�6�   �� 5S   
   -   5        $ NewMemberNICTxt��5S      $��Center=�6+   $��37��6H   $��	0,401,0,0q�6T   $��16(�6g   $��Century Gothic)�6u   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5T   
   $��Instructor ID��6   $
��Left=�6(   $��
31,462,0,0q�6C   $	��Top=�6W   $��Century Gothic)�6o   $��16(�6�   $��29��6�   $	��101��6�   $
��Bold"�6�   �� 5U   
   -   5        $ NewMemberInstructorID��5U      $
��Left=�61   $��37��6L   $��
39,504,0,0q�6X   $��16(�6l   $��Century Gothic)�6z   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5V   
   $��Instructor Name��6   $
��Left=�6*   $��336,462,0,0q�6E   $	��Top=�6Z   $��Century Gothic)�6r   $��16(�6�   $��29��6�   $	��152��6�   $
��Bold"�6�   �� 5W   
   -	   5        $ NewMemberInstructorName��5W      $��Center=�63   $��37��6P   $��	0,504,0,0q�6\   $��16(�6o   $��Century Gothic)�6}   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5X   
   -
   5         ��Name$ Delete_Member��5X      #��� 
 6(   $��Delete��6U   $
��Left=�6f   $��675,396,0,0q�6�   $	��Top=�6�   $	��200��6�   $��54��6�   $��Century Gothic)�6�    � UseLayoutRounding$ False��6�   
����������	#FFFFD104
���   �$
 Hand��6;  $��Normal"�6I  $��22(�6]  6k  �� 5Y   
   -   5        $ 
BackButton��5Y      #��� 
 6%   $
��Back��6R   $
��Left=�6a   $��675,482,0,0q�6|   $	��Top=�6�   $	��200��6�   $��54��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFD3CDB6
���   �$
 Hand��66  $��Normal"�6D  $��22(�6X  6f  5Z      5[      