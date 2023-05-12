/*
 * Navigataur: A pure CSS responsive navigation menu
 * Author: Mike King (@micjamking)
 */

/*--------------------------------
 Functional Styles (Required)
---------------------------------*/
/* Tim Pietrusky advanced checkbox hack (Android <= 4.1.2) */
body {
  -webkit-animation: bugfix infinite 1s;
}
@-webkit-keyframes bugfix {
  from {
    padding: 0;
  }
  to {
    padding: 0;
  }
}

.header {
  position: relative;
}
#toggle,
.toggle {
  display: none;
}
.menu li {
  list-style: none;
  float: left;
}

$menu-collapse: 1024px;
