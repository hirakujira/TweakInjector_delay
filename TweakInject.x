#import <dlfcn.h>
#import <objc/runtime.h>

%ctor
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        void *dl = dlopen([@"/usr/lib/TweakInject2.dylib" UTF8String], RTLD_LAZY | RTLD_GLOBAL);
        if (dl == NULL) {
            NSLog(@"Injection failed: '%s'", dlerror());
        }
    });
}
