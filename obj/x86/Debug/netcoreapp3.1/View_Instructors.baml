   M S B A M L   `   `   `  ����P  LGym Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Gym_Management_SystemGym_Management_System  5   	   ,    &Gym_Management_System.View_Instructors   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:Gym_Management_System     5   	     � Title$  View_Instructors��5   	   $	��600��6#   $	��950��60    � WindowStartupLocation$ CenterScreen=�6<    � 
ResizeMode$ NoResize=�6a    � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
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
   �� -   5         ��Name$ 
BackButton��5C      #��� 
 6%   $
��Back��6R   $
��Left=�6a   $��
784,36,0,0q�6|   $	��Top=�6�   $	��112��6�   $��37��6�   $��16(�6�   $��Century Gothic)�6�    � UseLayoutRounding$ False��6�   
����������	#FFD3CDB6
���   � � Cursor$
 Hand��6C  $��Normal"�6Q  6e  &   System.Windows.Controls.DataGrid  5D   
   -   5          Name$ dataGridView1��5D      $
��Left=�6*   $	��440��6E   $��
333,97,0,0q�6R   $	��Top=�6f   $	��570��6~   $��Century Gothic)�6�   $ Arrow��6�   ���	#FFF0F0F0
���   ����	#FFFFD104   GridLinesVisibility$	 All=�6�      HorizontalGridLinesBrush �	#FF535252   VerticalGridLinesBrush �	#FF8B8B8B$��16(�6Y     ColumnHeaderStyle 5E      �� 5F         	CellStyle 5H      �� 5I         RowStyleSelector 5K      +  %System.Windows.Controls.StyleSelector  5L      5N      �� 5O   
   $��Enter Instructor Name��6   $
��Left=�60   $��
67,112,0,0q�6K   $	��Top=�6_   $��Century Gothic)�6w   $��18(�6�   $��40��6�   $	��202��6�   $
��Bold"�6�   �� 5P   
   -   5         ��Name$ InsNameSearch��5P      $
��Left=�6)   $��40��6D   $��
35,169,0,0q�6P   $��16(�6d   $��Century Gothic)�6r   $��8q�6�   $	��248��6�   
�������$	��Top=�6�   6�   �� 5Q   
   -   5        $ Member_Search��5Q      #��� 
 6(   $��Search��6U   $
��Left=�6f   $��103,238,0,0q�6�   $	��Top=�6�   $	��112��6�   $��37��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFFFD104
���   �$
 Hand��6;  $��Normal"�6I  $��18(�6]  6k  �� 5R   
   $��Enter NIC Number��6   $
��Left=�6+   $��
75,324,0,0q�6F   $	��Top=�6Z   $��Century Gothic)�6r   $��18(�6�   $��41��6�   $	��168��6�   $
��Bold"�6�   �� 5S   
   -   5        $ InsNIC_Search��5S      $
��Left=�6)   $��40��6D   $��
35,378,0,0q�6P   $��16(�6d   $��Century Gothic)�6r   $��8q�6�   $	��248��6�   
�������$	��Top=�6�   6�   �� 5T   
   -   5        $ 
NIC_Search��5T      #��� 
 6%   $��Search��6R   $
��Left=�6c   $��103,441,0,0q�6~   $	��Top=�6�   $	��112��6�   $��37��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFFFD104
���   �$
 Hand��68  $��Normal"�6F  $��18(�6Z  6h  5V      5W      