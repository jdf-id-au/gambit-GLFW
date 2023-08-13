GLFW_BUILD = "/path/to/glfw/build/src"

glfw.o1:
	gsc  -cc-options "-framework Cocoa -framework OpenGL -lglfw3 -framework CoreVideo -framework IOKit -x objective-c -I/usr/local/include -I/System/Library/Frameworks/CoreVideo.framework -I/System/Library/Frameworks/IOKit.framework -I/System/Library/Frameworks/Cocoa.framework -I/System/Library/Frameworks/OpenGL.framework -L$GLFW_BUILD"  glfw.scm
