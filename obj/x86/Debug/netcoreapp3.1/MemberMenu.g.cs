﻿#pragma checksum "..\..\..\..\MemberMenu.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "44ACBC3FC1711B8FC3070A5740EDA4318CADF685"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Gym_Management_System;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Gym_Management_System {
    
    
    /// <summary>
    /// MemberMenu
    /// </summary>
    public partial class MemberMenu : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 71 "..\..\..\..\MemberMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button CardNumOn;
        
        #line default
        #line hidden
        
        
        #line 74 "..\..\..\..\MemberMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button CardNumTwo;
        
        #line default
        #line hidden
        
        
        #line 77 "..\..\..\..\MemberMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Card4;
        
        #line default
        #line hidden
        
        
        #line 80 "..\..\..\..\MemberMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Card5;
        
        #line default
        #line hidden
        
        
        #line 85 "..\..\..\..\MemberMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Back_btn;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.8.1.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Gym Management System;component/membermenu.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\MemberMenu.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.8.1.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.CardNumOn = ((System.Windows.Controls.Button)(target));
            
            #line 71 "..\..\..\..\MemberMenu.xaml"
            this.CardNumOn.Click += new System.Windows.RoutedEventHandler(this.CardNumOn_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.CardNumTwo = ((System.Windows.Controls.Button)(target));
            
            #line 74 "..\..\..\..\MemberMenu.xaml"
            this.CardNumTwo.Click += new System.Windows.RoutedEventHandler(this.CardNumTwo_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.Card4 = ((System.Windows.Controls.Button)(target));
            return;
            case 4:
            this.Card5 = ((System.Windows.Controls.Button)(target));
            return;
            case 5:
            this.Back_btn = ((System.Windows.Controls.Button)(target));
            
            #line 85 "..\..\..\..\MemberMenu.xaml"
            this.Back_btn.Click += new System.Windows.RoutedEventHandler(this.Back_btn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

