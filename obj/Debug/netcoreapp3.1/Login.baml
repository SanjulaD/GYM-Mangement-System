   M S B A M L   `   `   `  ����P  LGym Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Gym_Management_SystemGym_Management_System  5   	   !    Gym_Management_System.Login   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:Gym_Management_System     5   	     � Title$!  GYM MANAGEMENT SYSTEM LOGIN��5   	   $	��500��6-   $	��900��6:    � 
ResizeMode$ NoResize=�6\   ��6F   Z�  � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 RoundedButtonStyle �� 
TargetType	 �� 
TargetType
 ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	 �     &	 �     &	 �     &	     &	 ?    &	 b    &	 �    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7 	 �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $
 true��6/   #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6+   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 0q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      "	 ��6&   .R�5(      �� $
 border��6!   $ 20��61   #��z��6C   #��z��6o   #��z��6�   $
 true��6�   ._�5)      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted$
 true��6=   . �5-   "   �� $ border��6@    � �� �#ffcd086T   5.      P� 5/       �@J�IsMouseOver$
 true��6=   . �50   "   �� $ border��6?    � �� �#ffcd086S   �� 51   "   $ border��6@    � �� �#ffcd086T   52      P� 53       � ��$
 true��6;   . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {�$ false��6;   . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8   � ��6i   5;      5=      5?      5@      5A      .��5B      � 
������� � ColumnDefinitions 5C   
   �� 5D      $
��158* �6   �� 5E      $
��743* �6   .+�5G   
   �� $��Instructor Login��6   $
��Left=�6+   $	��Top=�6F   $��	92,50,0,0q�6^   $��58��6q   $	��325��6}   $��38(�6�   $��Century Gothic)�6�   
���   �$��Normal"�6�   $��Normal$�6�   $��2��6  ��6�   Z� 6  �� 5H   
   $)��#absolutely legendary gym instructor��6   $
��Left=�6>   $	��Top=�6Y   $��
74,107,0,0q�6q   $��36��6�   $	��356��6�   $��20(�6�   $��Century Gothic)�6�   ���	#FF7C7C7C$��2��6�   ��6�   Z� 6�   �� 5I   
   #��� 
 6   $��LOGIN��6>   $
��Left=�6N   $��340,383,0,0q�6i   $	��Top=�6~   $	��343��6�   $��48��6�   $��20(�6�   $��Century Gothic)�6�    � UseLayoutRounding$ False��6�   
����������	#FFFFD104
���   � � Cursor$
 Hand��61  $��Normal"�6?  $��1��6S  �� 5J   
   -   5         ��Name$ loginNameTxt��5J      $
��Left=�6(   $��40��6C   $��341,161,0,0q�6O   $��20(�6d   $��Century Gothic)�6r   $��8q�6�   $	��342��6�   
�������$	��Top=�6�   $��1��6�   G� 5K   
   -   5         G�Name$ loginPasswordTxt��5K      $
��Left=�60   $��40��6K   $��340,260,0,0q�6W   $	��Top=�6l   $��20(�6�   $��Century Gothic)�6�   $	��342��6�   $��8q�6�   $��1��6�   �� 5L   
   $��Forgot Password?��6   $
��Left=�6+   $	��Top=�6F   $��352,323,0,0q�6^   $��41��6s   $	��160��6   $��16(�6�   $��Century Gothic)�6�   ���	#FF7C7C7C$
 Hand��6�   $��1��6�   ��6�   Z� 6�   �� 5M   
   -   5        #��� 
 5M      $��Register��6>   $
��Left=�6Q   $��582,322,0,0q�6l   $	��Top=�6�   $	��101��6�   $��34��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFFFD104
���   �$
 Hand��6&  $��1��64  6D  �� 5N   
   $��Password��6   $
��Left=�6#   $	��Top=�6>   $��340,217,0,0q�6V   $��38��6k   $	��101��6w   $��16(�6�   $��Century Gothic)�6�   ���	#FF7C7C7C$��1��6�   ��6�   Z� 6�   �� 5O   
   $��Username��6   $
��Left=�6#   $	��Top=�6>   $��340,117,0,0q�6V   $��26��6k   $	��101��6w   $��16(�6�   $��Century Gothic)�6�   ���	#FF7C7C7C$��1��6�   ��6�   Z� 6�   �� 5P   
   $��106,186,518,87q�6   $��UniformToFill=�6(    J� RenderTransformOrigin$ 0.5,0.5&�6@   $��2��6`   ��5Q      ��5R      /images/login_img.jpg��65   5T      5U      5V      