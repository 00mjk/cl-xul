(in-package :xul)

(defparameter *test-app-2*
  (make-instance 'xul-application
		 :name "TestApp"
		 :xul (with-xul
		       (<:window (:title "Test application"
					 :width "500"
					 :height "500")
			 (<:menu-bar (:id "sample-menubar")
			   (<:menu (:id "action-menu" :label "Action")
			     (<:menu-popup (:id "action-popup")
			       (<:menu-item (:label "New"))
			       (<:menu-item (:label "Save" :disabled "true"))
			       (<:menu-item (:label "Close"))
			       (<:menu-separator ())
			       (<:menu-item (:label "Quit"))))
			   (<:menu (:id "edit-menu" :label "Edit")
			     (<:menu-popup (:id "edit-popup")
			       (<:menu-item (:label "Undo"))
			       (<:menu-item (:label "Redo")))))
			       (<:hbox ()
				 (<:vbox ()
				   (<:label (:control "hello-label"
						      :accesskey "h"
						      :value "Hello"))
				   (<:label (:control "bye-label"
						      :accesskey "b"
						      :value "Bye"))
				   (<:button (:label "Hello"
					       :on-command "alert('Hello!!');"))
				   (<:button (:type "menu-button" :label "New")
				     (<:menu-popup ()
				       (<:menu-item (:label "New Document"))
				       (<:menu-item (:label "New Image"))))
				   (<:checkbox (:label "Enable JavaScript" :checked t))
				   (<:checkbox (:label "Enable Java" :checked nil))
				   (<:date-picker (:value "2007/03/26"))
				   (<:date-picker (:type :grid))
				   (<:date-picker (:type :popup :value "2008/08/24"))
				   (<:color-picker (:color "#FF0000"))
				   (<:color-picker (:type :button :color "#CC0080"))
				   (<:time-picker (:value "12:05"))
				   (<:grid ()
				     (<:columns ()
				       (<:column (:flex "1"))
				       (<:column (:flex "2")))
				     (<:rows ()
				       (<:row ()
					 (<:label (:value "User name"))
					 (<:text-box (:id "user"))
					 (<:row ()
					   (<:label (:value "Group"))
					   (<:menu-list ()
					     (<:menu-popup ()
					       (<:menu-item (:label "Accounts"))
					       (<:menu-item (:label "Sales" :selected t))
					       (<:menu-item (:label "Support"))))))))
				   (<:description (:value "This is a long section of text that will word wrap when displayed.")))
				 (<:vbox ()
				   (<:text-box (:id "your-name" :value "John"))
				   (<:deck (:selected-index "1")
				     (<:description (:value "This is the first page"))
				     (<:button (:label "This is the second page"))
				     (<:box ()
				       (<:description (:value "This is the third page"))
				       (<:button (:label "This is also the third page"))))
				   (<:list-box ()
				     (<:list-item (:label "Butter Pecan"))
				     (<:list-item (:label "Chocolate Chip"))
				     (<:list-item (:label "Raspberry Ripple"))
				     (<:list-item (:label "Squash Swirl")))
				   (<:radio-group ()
				     (<:radio (:id "orange" :label "Red" :accesskey "R"))
				     (<:radio (:id "violet" :label "Green" :accesskey "G" :selected "true"))
				     (<:radio (:id "yellow" :label "Blue" :accesskey "B" :disabled "true")))
				   (<:list-box ()
				     (<:list-head ()
				       (<:list-header (:label "Name"))
				       (<:list-header (:label "Occupation")))
				     (<:list-cols ()
				       (<:list-col ())
				       (<:list-col (:flex "1")))
				     (<:list-item ()
				       (<:list-cell (:label "George"))
				       (<:list-cell (:label "House Painter")))
				     (<:list-item ()
				       (<:list-cell (:label "Mary Ellen"))
				       (<:list-cell (:label "Candle Maker" )))
				     (<:list-item ()
				       (<:list-cell (:label "Roger"))
				       (<:list-cell (:label "Swashbuckler"))))))))
		 :build-id "0001"
		 :id "TestApplication"))

(run-app *test-app-2*)
