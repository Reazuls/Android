//
//  OsBuildVersionCodes.swift
//  Android
//
//  Created by Marco Estrella on 7/5/18.
//

import Foundation
import java_swift
import java_util

public extension AndroidBuild {
    
    public typealias VersionCodes = AndroidBuildVersionCodes
}

public struct AndroidBuildVersionCodes: RawRepresentable {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    /// October 2008: The original, first, version of Android. Yay!
    public static let base = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.BASE)
    
    /// February 2009: First Android update, officially called 1.1.
    public static let base11 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.BASE_1_1)
    
    /// May 2009: Android 1.5.
    public static let cupcake = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.CUPCAKE)
    
    /// Magic version number for a current development build, which has not yet turned into an official release.
    public static let CurDevelopment = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.CUR_DEVELOPMENT)
    
    /// September 2009: Android 1.6.
    public static let donut = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.DONUT)
    
    /// November 2009: Android 2.0
    public static let eclair = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.ECLAIR)
    
    /// December 2009: Android 2.0.1
    public static let eclair01 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.ECLAIR_0_1)
    
    /// January 2010: Android 2.1
    public static let eclairMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.ECLAIR_MR1)
    
    /// June 2010: Android 2.2
    public static let froyo = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.FROYO)
    
    /// November 2010: Android 2.3
    public static let gingerbread = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.GINGERBREAD)
    
    /// February 2011: Android 2.3.3.
    public static let gingerbreadMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.GINGERBREAD_MR1)
    
    /// February 2011: Android 3.0.
    public static let honeycomb = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.HONEYCOMB)
    
    /// May 2011: Android 3.1.
    public static let honeycombMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.HONEYCOMB_MR1)
    
    /// June 2011: Android 3.2.
    public static let honeycombMr2 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.HONEYCOMB_MR2)
    
    /// October 2011: Android 4.0.
    public static let iceCreamSandwich = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.ICE_CREAM_SANDWICH)
    
    /// December 2011: Android 4.0.3.
    public static let iceCreamSandwichMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.ICE_CREAM_SANDWICH_MR1)
    
    /// June 2012: Android 4.1.
    public static let jellyBean = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.JELLY_BEAN)
    
    /// November 2012: Android 4.2, Moar jelly beans!
    public static let jellyBeanMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.JELLY_BEAN_MR1)
    
    /// July 2013: Android 4.3, the revenge of the beans.
    public static let jellyBeanMr2 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.JELLY_BEAN_MR2)
    
    /// October 2013: Android 4.4, KitKat, another tasty treat.
    public static let kitkat = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.KITKAT)
    
    /// June 2014: Android 4.4W. KitKat for watches, snacks on the run.
    public static let kitkatWatch = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.KITKAT_WATCH)
    
    /// November 2014: Lollipop. A flat one with beautiful shadows. But still tasty.
    public static let lollipop = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.LOLLIPOP)
    
    /// March 2015: Lollipop with an extra sugar coating on the outside!
    public static let lollipopMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.LOLLIPOP_MR1)
    
    /// M is for Marshmallow!
    public static let m = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.M)
    
    /// N is for Nougat.
    public static let n = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.N)
    
    /// N MR1: Nougat++.
    public static let nMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.N_MR1)
    
    /// O.
    public static let o = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.O)
    
    /// O MR1.
    public static let oMr1 = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.O_MR1)
    
    /// P.
    public static let p = Android.OS.Build.VersionCodes(rawValue: AndroidBuildVersionCodesConstants.P)
}

fileprivate class AndroidBuildVersionCodesConstants: JavaObject {
    
    // MARK: - Initialization
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
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
}

// MARK: Constants

fileprivate extension AndroidBuildVersionCodesConstants {
    
    fileprivate static var BASE: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "BASE",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.BASE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var BASE_1_1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "BASE_1_1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.BASE_1_1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var CUPCAKE: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "CUPCAKE",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.CUPCAKE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var CUR_DEVELOPMENT: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "CUR_DEVELOPMENT",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.CUR_DEVELOPMENT,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var DONUT: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "DONUT",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.DONUT,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var ECLAIR: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ECLAIR",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.ECLAIR,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var ECLAIR_0_1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ECLAIR_0_1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.ECLAIR_0_1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var ECLAIR_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ECLAIR_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.ECLAIR_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var FROYO: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "FROYO",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.FROYO,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var GINGERBREAD: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "GINGERBREAD",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.GINGERBREAD,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var GINGERBREAD_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "GINGERBREAD_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.GINGERBREAD_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var HONEYCOMB: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "HONEYCOMB",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.HONEYCOMB,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var HONEYCOMB_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "HONEYCOMB_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.HONEYCOMB_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var HONEYCOMB_MR2: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "HONEYCOMB_MR2",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.HONEYCOMB_MR2,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var ICE_CREAM_SANDWICH: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ICE_CREAM_SANDWICH",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.ICE_CREAM_SANDWICH,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var ICE_CREAM_SANDWICH_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ICE_CREAM_SANDWICH_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.ICE_CREAM_SANDWICH_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var JELLY_BEAN: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "JELLY_BEAN",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.JELLY_BEAN,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var JELLY_BEAN_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "JELLY_BEAN_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.JELLY_BEAN_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var JELLY_BEAN_MR2: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "JELLY_BEAN_MR2",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.JELLY_BEAN_MR2,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var KITKAT: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "KITKAT",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.KITKAT,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var KITKAT_WATCH: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "KITKAT_WATCH",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.KITKAT_WATCH,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var LOLLIPOP: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "LOLLIPOP",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.LOLLIPOP,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var LOLLIPOP_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "LOLLIPOP_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.LOLLIPOP_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var M: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "M",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.M
,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var N: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "N",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.N,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var N_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "N_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.N_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var O: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "O",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.O,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var O_MR1: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "O_MR1",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.O_MR1,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    fileprivate static var P: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "P",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.P,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
}

// MARK: - JNI

fileprivate extension AndroidBuildVersionCodesConstants {
    
    /// JNI Cache
    struct JNICache {
        
        /// JNI Java class name
        static let className = "android/os/Build$VERSION_CODES"
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Field ID cache
        struct FieldID {
            
            static var BASE: jfieldID?
            static var BASE_1_1: jfieldID?
            static var CUPCAKE: jfieldID?
            static var CUR_DEVELOPMENT: jfieldID?
            static var DONUT: jfieldID?
            static var ECLAIR: jfieldID? //deprecated in Api 4
            static var ECLAIR_0_1: jfieldID?
            static var ECLAIR_MR1: jfieldID?
            static var FROYO: jfieldID?
            static var GINGERBREAD: jfieldID?
            static var GINGERBREAD_MR1: jfieldID?
            static var HONEYCOMB: jfieldID?
            static var HONEYCOMB_MR1: jfieldID?
            static var HONEYCOMB_MR2: jfieldID?
            static var ICE_CREAM_SANDWICH: jfieldID?
            static var ICE_CREAM_SANDWICH_MR1: jfieldID?
            static var JELLY_BEAN: jfieldID?
            static var JELLY_BEAN_MR1: jfieldID?
            static var JELLY_BEAN_MR2: jfieldID?
            static var KITKAT: jfieldID?
            static var KITKAT_WATCH: jfieldID?
            static var LOLLIPOP: jfieldID?
            static var LOLLIPOP_MR1: jfieldID?
            static var M: jfieldID?
            static var N: jfieldID?
            static var N_MR1: jfieldID?
            static var O: jfieldID?
            static var O_MR1: jfieldID?
            static var P: jfieldID?
        }
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var init_method1: jmethodID?
        }
    }
}
