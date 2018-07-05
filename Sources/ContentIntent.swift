//
//  ContentIntent.swift
//  Android
//
//  Created by Killian Greene on 6/21/18.
//

import Foundation
import java_swift
import java_util

public extension Android.Content {
    public typealias Intent = AndroidIntent
}

public final class AndroidIntent: JavaObject {
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString =  #file,
                              _ line: Int = #line) {
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public convenience init(){
        
        var __locals = [jobject]()
        var __args = [jvalue](repeating: jvalue(), count: 0)
        
        let __object = JNIMethod.NewObject(
            className: JNICache.className,
            classCache: &JNICache.jniClass,
            methodSig: "()V",
            methodCache: &JNICache.MethodID.init_method1,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public convenience init(o: Android.Content.Intent){
        var __locals = [jobject]()
        
        var __args: [jvalue] = [
            JNIType.toJava(value: o, locals: &__locals)
        ]
        
        let __object = JNIMethod.NewObject(
            className: JNICache.className,
            classCache: &JNICache.jniClass,
            methodSig: "(Landroid/content/Intent;)V",
            methodCache: &JNICache.MethodID.init_method2,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public convenience init(action: String){
        var __locals = [jobject]()
        
        var __args: [jvalue] = [
            JNIType.toJava(value: action, locals: &__locals)
        ]
        
        let __object = JNIMethod.NewObject(
            className: JNICache.className,
            classCache: &JNICache.jniClass,
            methodSig: "(Ljava/lang/String;)V",
            methodCache: &JNICache.MethodID.init_method3,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
}

public extension Android.Content.Intent {
    
    /**
     * Retrieve extended data from the intent.
     */
    public func getBooleanExtra(name: String, defaultValue: Bool) -> Bool {
        var __locals = [jobject]()
        
        var __args: [jvalue] = [
            jvalue(z: jboolean(defaultValue ? JNI_TRUE : JNI_FALSE)),
            JNIType.toJava(value: name, locals: &__locals)
        ]
        
        let __return = JNIMethod.CallBooleanMethod(object: javaObject,
                                                   methodName: "getBooleanExtra",
                                                   methodSig: "(Ljava/lang/String;Z)Z",
                                                   methodCache: &JNICache.MethodID.getBooleanExtra,
                                                   args: &__args,
                                                   locals: &__locals)
        
        return __return != jboolean(JNI_FALSE)
    }
    
    /**
     * Add extended data to the intent. (byte)
     */
    public func putExtra(name: String, value: Int8) -> Android.Content.Intent {
        
        var __locals = [jobject]()
    
        var __args: [jvalue] = [
            JNIType.toJava(value: name, locals: &__locals),
            jvalue(b: jbyte(value))
        ]
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "putExtra",
                                                  methodSig: "(Ljava/lang/String;B)Landroid/content/Intent;",
                                                  methodCache: &JNICache.MethodID.putExtra,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef(__return) }
        
        return Android.Content.Intent(javaObject: __return)
    }
    
    /**
     * Add extended data to the intent. (String)
     */
    public func putExtra(name: String, value: String) -> Android.Content.Intent {
        
        var __locals = [jobject]()
        
        var __args: [jvalue] = [
            JNIType.toJava(value: name, locals: &__locals),
            JNIType.toJava(value: value, locals: &__locals)
        ]
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "putExtra",
                                                  methodSig: "(Ljava/lang/String;Ljava/land/String;)Landroid/content/Intent;",
                                                  methodCache: &JNICache.MethodID.putExtra2,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef(__return) }
        
        return Android.Content.Intent(javaObject: __return)
    }
    
    /**
     * Add extended data to the intent. (int)
     */
    public func putExtra(name: String, value: Int) -> Android.Content.Intent {
        var __locals = [jobject]()
        
        var __args: [jvalue] = [
            JNIType.toJava(value:name, locals: &__locals),
            jvalue(i: jint(value))
        ]
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "putExtra",
                                                  methodSig: "(Ljava/lang/String;I)Landroid/content/Intent;",
                                                  methodCache: &JNICache.MethodID.putExtra3,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef(__return) }
        
        return Android.Content.Intent(javaObject: __return)
    }
    
    
}

private extension Android.Content.Intent {
    // JNI Cache
    struct JNICache {
        
        static let classSignature = Android.Content.className(["Intent"])
        
        // JNI Java class name
        static let className = classSignature.rawValue
        
        // JNI Java class
        static var jniClass: jclass?
        
        // JNI Field ID cache
        struct FieldID {
            
        }
        
        // JNI Method ID cache
        struct MethodID {
            
            
            static var init_method1: jmethodID?
            static var init_method2: jmethodID?
            static var init_method3: jmethodID?
            static var getBooleanExtra: jmethodID?
            static var putExtra: jmethodID?
            static var putExtra2: jmethodID?
            static var putExtra3: jmethodID?
        }
    }
}














