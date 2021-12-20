// COMPONENT should be defined in the script_component.hpp and included BEFORE this hpp

#define MAINPREFIX z
#define PREFIX brm_ace

#include "script_version.hpp"

#define VERSION MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD

#define BRM_ACE_TAG BRM_ACE

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 1.56
#define REQUIRED_ACE_VERSION {3,14,1}

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(brm_ace - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(brm_ace - COMPONENT)
#endif
