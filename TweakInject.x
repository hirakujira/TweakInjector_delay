#import <dlfcn.h>
#import <objc/runtime.h>

__attribute__ ((constructor))
static void ctor(void) {
    @autoreleasepool {   
	    void *dl = dlopen([@"/usr/lib/TweakInject2.dylib" UTF8String], RTLD_LAZY | RTLD_GLOBAL);
	    if (dl == NULL) {
	        NSLog(@"Injection failed: '%s'", dlerror());
    	}
    }
}
