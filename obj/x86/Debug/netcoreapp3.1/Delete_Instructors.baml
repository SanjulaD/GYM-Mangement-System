   M S B A M L   `   `   `  ����P  LGym Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Gym_Management_SystemGym_Management_System  5   	   .    (Gym_Management_System.Delete_Instructors   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:Gym_Management_System     5   	     � Title$  Delete_Instructors��5   	   $	��600��6$   $	��950��61    � WindowStartupLocation$ CenterScreen=�6=    � 
ResizeMode$ NoResize=�6b    � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
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
   �� $
��Left=�6   $	��253��6,   $	��Top=�69   $	��948��6Q   ���	#FFE0E0E0$��2,0,0,0q�6t   .+�5D      �� $��Enter Instructor Name��6   $
��Left=�64   $��	71,83,0,0q�6O   $	��Top=�6b   $��Century Gothic)�6z   $��18(�6�   $��40��6�   $	��202��6�   $
��Bold"�6�   �� 5F      -   5         ��Name$ InsNameSearch��5F      $
��Left=�6-   $��40��6H   $��
39,134,0,0q�6T   $��16(�6h   $��Century Gothic)�6v   $��8q�6�   $	��248��6�   
�������$	��Top=�6�   6�   &   System.Windows.Controls.DataGrid  5G      -   5          Name$ dataGridView1��5G      $
��Left=�6/   $	��160��6J   $��
360,54,0,0q�6W   $	��Top=�6k   $	��558��6�   $��Century Gothic)�6�    � Cursor$ Arrow��6�   ���	#FFF0F0F0
���   ����	#FFFFD104   GridLinesVisibility$	 All=�6�      HorizontalGridLinesBrush �	#FF535252   VerticalGridLinesBrush �	#FF8B8B8B$��16(�6^  6l  5I      �� 5J   
   -   5         ��Name$ Delete_Member��5J      #��� 
 6(   $��Delete��6U   $
��Left=�6f   $��372,482,0,0q�6�   $	��Top=�6�   $	��200��6�   $��54��6�   $��Century Gothic)�6�    � UseLayoutRounding$ False��6�   
����������	#FFFFD104
���   �$
 Hand��6;  $��Normal"�6I  $��22(�6]  6k  �� 5K   
   -   5        $ 
BackButton��5K      #��� 
 6%   $
��Back��6R   $
��Left=�6a   $��675,483,0,0q�6|   $	��Top=�6�   $	��200��6�   $��54��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFD3CDB6
���   �$
 Hand��66  $��Normal"�6D  $��22(�6X  6f  �� 5L   
   $
��Name��6   $
��Left=�6   $��34,0,0,0q�6:   $��Center=�6L   $��Century Gothic)�6g   $��16(�6�   $��29��6�   $	��100��6�   $
��Bold"�6�   �� 5M   
   -   5        $ NewInsNameTxt��5M      $
��Left=�6)   $��37��6D   $��
36,313,0,0q�6P   $��16(�6d   $��Century Gothic)�6r   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5N   
   $��Phone Number��6   $
��Left=�6'   $��636,274,0,0q�6B   $	��Top=�6W   $��Century Gothic)�6o   $��16(�6�   $��29��6�   $	��139��6�   $
��Bold"�6�   �� 5O   
   -   5        $ NewMemberPhoneNumberTxt��5O      $
��Left=�63   $��37��6N   $��643,311,0,0q�6Z   $��16(�6o   $��Century Gothic)�6}   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5P   
   -   5        $ NewInsGenderTxt��5P      $
��Left=�6+   $��37��6F   $��340,313,0,0q�6R   $��16(�6g   $��Century Gothic)�6u   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5Q   
   $��Gender��6   $
��Left=�6!   $��	336,0,0,0q�6<   $��Center=�6O   $��Century Gothic)�6j   $��16(�6�   $��29��6�   $��99��6�   $
��Bold"�6�   �� 5R   
   $
��NIC ��6   $
��Left=�6   $��338,371,0,0q�6:   $	��Top=�6O   $��Century Gothic)�6g   $��16(�6�   $��28��6�   $��98��6�   $
��Bold"�6�   �� 5S   
   -   5        $ NewInsNICTxt��5S      $
��Left=�6(   $��38��6C   $��340,407,0,0q�6O   $��16(�6d   $��Century Gothic)�6r   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5T   
   $��Username��6   $
��Left=�6#   $��637,371,0,0q�6>   $	��Top=�6S   $��Century Gothic)�6k   $��16(�6�   $��29��6�   $	��100��6�   $
��Bold"�6�   �� 5U   
   -	   5        $ NewInsUnameTxt��5U      $
��Left=�6*   $��37��6E   $��643,408,0,0q�6Q   $��16(�6f   $��Century Gothic)�6t   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5V   
   $��Email ��6   $
��Left=�6!   $��
33,371,0,0q�6<   $	��Top=�6P   $��Century Gothic)�6h   $��16(�6�   $��28��6�   $��98��6�   $
��Bold"�6�   �� 5W   
   -
   5        $ NewInsEmailTxt��5W      $
��Left=�6*   $��38��6E   $��
35,407,0,0q�6Q   $��16(�6e   $��Century Gothic)�6s   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   �� 5X   
   $��Password��6   $
��Left=�6#   $��
30,469,0,0q�6>   $	��Top=�6R   $��Century Gothic)�6j   $��16(�6�   $��29��6�   $	��100��6�   $
��Bold"�6�   �� 5Y   
   -   5        $ NewInspasswordTxt��5Y      $
��Left=�6-   $��37��6H   $��
36,506,0,0q�6T   $��16(�6h   $��Century Gothic)�6v   $��8q�6�   $	��264��6�   
�������$	��Top=�6�   5Z      5[      