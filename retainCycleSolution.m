The solution involves using `weak` properties to break the retain cycle:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, weak) AnotherClass *anotherObject;
@end

@implementation MyClass
// ...
@end

@interface AnotherClass : NSObject
@property (nonatomic, strong) MyClass *myObject; // Remains strong
@end

@implementation AnotherClass
// ...
@end
```

By making the `anotherObject` property in `MyClass` weak, it no longer prevents `AnotherClass` from being deallocated.  The strong reference in `AnotherClass` to `MyClass` remains, ensuring that `MyClass` is retained as long as needed. When `MyClass` is no longer referenced elsewhere, both objects will be deallocated correctly.