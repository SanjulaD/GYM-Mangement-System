   M S B A M L   `   `   `  ����P  LGym Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Gym_Management_SystemGym_Management_System  5   	   !    Gym_Management_System.Login   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:Gym_Management_System     5   	     � Title$!  GYM MANAGEMENT SYSTEM LOGIN��5   	   $	��450��6-    � WindowStartupLocation$ CenterScreen=�6:   $	��700��6_    � 
ResizeMode$ NoResize=�6�   ��6k   Z�  � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
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
 true��6;   . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {�$ false��6;   . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8   � ��6i   5;      5=      5?      5@      5A      .��5B      �  J� RenderTransformOrigin$ 0.256,0.587&�6   
������� � ColumnDefinitions 5C   
   �� 5D      .+�5F   
   �� $��Instructor Login��6   $
��Left=�6+   $	��Top=�6F   $��
383,46,0,0q�6^   $��48��6r   $	��231��6~   $��28(�6�   $��Century Gothic)�6�   
���   �$
��Bold"�6�   $��Normal$�6�   ��6�   Z� 6�   �� 5G   
   -   5         ��Name$ LoginButton��5G      #��� 
 6&   $��LOGIN��6S   $
��Left=�6c   $��360,332,0,0q�6~   $	��Top=�6�   $	��277��6�   $��39��6�   $��18(�6�   $��Century Gothic)�6�    � UseLayoutRounding$ False��6�   
����������	#FFFFD104
���   � � Cursor$
 Hand��6F  $��Normal"�6T  6h  �� 5H   
   -   5         ��Name$ loginNameTxt��5H      $
��Left=�6(   $��41��6C   $��362,154,0,0q�6O   $��16(�6d   $��Century Gothic)�6r   $��8q�6�   $	��276��6�   
�������$	��Top=�6�   G� 5I   
   -   5         G�Name$ loginPasswordTxt��5I      $
��Left=�60   $��41��6K   $��361,231,0,0q�6W   $	��Top=�6l   $��16(�6�   $��Century Gothic)�6�   $	��276��6�   $��8q�6�   �� 5J   
   -   5        $ RegisterButton��5J      #��� 
 6)   $��Register��6V   $
��Left=�6i   $��553,286,0,0q�6�   $	��Top=�6�   $��84��6�   $��29��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFFFD104
���   �$
 Hand��6=  6K  �� 5K   
   $��Password��6   $
��Left=�6#   $	��Top=�6>   $��362,200,0,0q�6V   $��28��6k   $��90��6w   $��16(�6�   $��Century Gothic)�6�   
���   ���6�   Z� 6�   �� 5L   
   $��Username��6   $
��Left=�6#   $	��Top=�6>   $��362,115,0,0q�6V   $��34��6k   $	��104��6w   $��16(�6�   $��Century Gothic)�6�   
���   ���6�   Z� �� 5M   
   -   5        $ ForgotPWButton��5M      #��� 
 6)   $��Forgot Password?��6V   $
��Left=�6q   $��361,286,0,0q�6�   $	��Top=�6�   $	��126��6�   $��28��6�   $��Century Gothic)�6�   $ False��6�   
����������	#FFD3CDB6
���   �$
 Hand��6F  $��Normal"�6T  6h  �� 5N   
   $��/images/login_bg_img.png��6   $
��Left=�62   $	��344��6M   $��0,71,0,0q�6Z   $	��Top=�6l   $	��347��6�   5O      5P      