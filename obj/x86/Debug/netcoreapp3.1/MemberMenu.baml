   M S B A M L   `   `   `  ����P  LGym Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Gym_Management_SystemGym_Management_System  5   	   &     Gym_Management_System.MemberMenu   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:Gym_Management_System     5   	     � Title$  
MemberMenu��5   	   $	��500��6   $	��350��6)    � ShowInTaskbar$ False��66    � WindowStartupLocation$ CenterScreen=�6L    � 
ResizeMode$ NoResize=�6q    � AllowsTransparency$
 True��6�    � WindowStyle$
 None=�6�    � 	Resources 5	         FocusVisual �� Property �� Value	 J� SnapsToDevicePixels
 �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 RoundedButtonStyle �� 
TargetType �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	 �     &	 �     &	 �     &	     &	 ?    &	 b    &	 �    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7 	 �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $
	 true��6/   #��� ��6J   $��1��6�   $	
 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6+   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 0q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      " ��6&   .R�5(      �� $ border��6!   $ 20��61   #��z��6C   #��z��6o   #��z��6�   $
	 true��6�   ._�5)      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   #	 z	 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted$
 true��6=   . �5-   "   �� $ border��6@    � �� �#ffcd086T   5.      P� 5/       �@J�IsMouseOver$
 true��6=   . �50   "   �� $ border��6?    � �� �	#FFFFDC506S   �� 51   "   $ border��6@    � ��
 �   �6T   52      P� 53       � ��$
 true��6;   . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {�$ false��6;   . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8   � ��6i   5;      5=      5?      5@      5A      .��5B      �� $	��0.3q�6   $ 20��6$   ���#F8F9F2._�5C   
   �  � Cursor$
 Hand��6   ���	#FFE0E0E0$��0,59,0,0q�64   .+�5D      A� $��Center=�6   $	��356��63   $	��Top=�6@   $	��478��6X   ���	#FFFFD104$��
0,-180,0,0q�6u   �� 5G      -   5         ��Name$ 	CardNumOn��5G      #��� 
 6(   $
��Left=�6U   $��
28,117,0,0q�6p   $	��Top=�6�   $	��141��6�   $	��103��6�   $��18(�6�   $��Century Gothic)�6�    � UseLayoutRounding$ False��6�   $
 Hand��6�   $��Normal"�6  
���������6  Z� ��63  Z� .��5H      �� $��View 
Members��6   $��57��64   $	��104��6@   $��20(�6L   $
 Hand��6Z   5I      �� 5J      -   5        $ 
CardNumTwo��5J      #��� 
 6)   $
��Left=�6V   $��188,117,0,0q�6q   $	��Top=�6�   $	��141��6�   $	��103��6�   $��18(�6�   $��Century Gothic)�6�   $ False��6�   $
 Hand��6�   $��Normal"�6
  
���������6  Z� ��6G  Z� .��5K      �� $��Register
Members��6   $��57��67   $	��104��6C   $��20(�6O   $
 Hand��6]   5L      �� 5M      -   5        $ Card4��5M      #��� 
 6$   $
��Left=�6Q   $��
28,265,0,0q�6l   $	��Top=�6�   $	��141��6�   $	��103��6�   $��18(�6�   $��Century Gothic)�6�   $ False��6�   $
 Hand��6�   $��Normal"�6  
���������6  Z� ��6/  Z� .��5N      �� $��Delete
Members��6   $��57��65   $	��104��6A   $��20(�6M   $
 Hand��6[   5O      �� 5P      -   5        $ Card5��5P      #��� 
 6$   $
��Left=�6Q   $��188,265,0,0q�6l   $	��Top=�6�   $	��141��6�   $	��103��6�   $��18(�6�   $��Century Gothic)�6�   $ False��6�   $
 Hand��6�   $��Normal"�6  
���������6  Z� ��60  Z� .��5Q      �� $��Update
Members��6   $��57��65   $	��104��6A   $��20(�6M   $
 Hand��6[   5R      �� 5S      $��MEMBER��6   $
��Left=�6%   $��122,0,0,374q�6@   $��Bottom=�6U   $��Century Gothic)�6p   $��26(�6�   $��61��6�   $	��121��6�   $��Normal"�6�   �� 5T      $
��MENU��6   $
��Left=�6#   $��
140,36,0,0q�6>   $	��Top=�6R   $��Century Gothic)�6j   $��22(�6�   $��52��6�   $��78��6�   $��Normal"�6�   
���   ����	#FF6363636�   �� 5U      -   5        $ Back_btn��5U      #��� 
 6'   $��<��6T   $
��Left=�6c   $��	32,-6,0,0q�6~   $	��Top=�6�   $��42��6�   $��42��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFE0E0E0
���   �$
 Hand��65  $
��Bold"�6C  $��24(�6U  6c  5V      5W      5X      