//
//  BluetoothLowEnergyScanRecord.swift
//  PureSwift
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import Foundation
import java_swift

public extension Android.Bluetooth.LE {
    
    public typealias ScanRecord = AndroidBluetoothLowEnergyScanRecord
}

public final class AndroidBluetoothLowEnergyScanRecord: JavaObject {
    
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
    
    /**
     * Returns the advertising flags indicating the discoverable mode and capability of the device.
     */
    public var advertiseFlags: Int {
        
        @inline(__always)
        get { return getAdvertiseFlags() }
    }
    
    /**
     * Returns raw bytes of scan record.
     */
    public var bytes: [Int8]? {
        
        @inline(__always)
        get { return getBytes() }
    }
    
    /**
     * Returns the local name of the BLE device.
     */
    public var deviceName: String? {
        
        @inline(__always)
        get { return getDeviceName() }
    }
    
    /**
     * Returns a sparse array of manufacturer identifier and its corresponding manufacturer specific data.
     */
    public var manufacturerSpecificData: [Int8]? {
        
        @inline(__always)
        get { return __getManufacturerSpecificData() }
    }
    
    /**
     * Returns a map of service UUID and its corresponding service data.
     */
    public var serviceData: AnyObject? {
        
        @inline(__always)
        get {
            fatalError("Not implemented")
            return nil
        }
    }
    
    /**
     * Returns a list of service UUIDs within the advertisement that are used to identify the bluetooth GATT services.
     */
    public var serviceUuids: AnyObject? {
        
        @inline(__always)
        get {
            fatalError("Not implemented")
            return nil
        }
    }
    
    /**
     * Returns the transmission power level of the packet in dBm. Returns MIN_VALUE if the field is not set. This value can be
     * used to calculate the path loss of a received packet using the following equation:
     */
    public var txPowerLevel: Int {
        
        @inline(__always)
        get { return getTxPowerLevel() }
    }
    
    // METHODS
    
    public func getManufacturerSpecificData(manufacturerId: Int) -> [Int8]? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue](repeating: jvalue(), count: 1)
        __args[0] = JNIType.toJava(value: manufacturerId, locals: &__locals)
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "getManufacturerSpecificData",
                                                  methodSig: "(I)[B",
                                                  methodCache: &JNICache.MethodID.getManufacturerSpecificData_param,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }
        
        return JNIType.toSwift( type: [Int8].self, from: __return )
    }
    
    public func getServiceData(){
        fatalError("Not implemented")
    }
}

// MARK: - METHODS

internal extension Android.Bluetooth.LE.ScanRecord {

    @_versioned
    internal func __getManufacturerSpecificData() -> [Int8]? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue](repeating: jvalue(), count: 1)
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "getManufacturerSpecificData",
                                                  methodSig: "()[B",
                                                  methodCache: &JNICache.MethodID.getManufacturerSpecificData,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }
        
        return JNIType.toSwift( type: [Int8].self, from: __return )
    }
    
    @_versioned
    internal func getDeviceName() -> String {
        
        var __locals = [jobject]()
        
        var __args = [jvalue](repeating: jvalue(), count: 1)
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "getDeviceName",
                                                  methodSig: "()Ljava/lang/String;",
                                                  methodCache: &JNICache.MethodID.getDeviceName,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }
        
        return String(javaObject: __return)
    }
    
    @_versioned
    internal func getBytes() -> [Int8]? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue](repeating: jvalue(), count: 1)
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                               methodName: "getBytes",
                                               methodSig: "()[B",
                                               methodCache: &JNICache.MethodID.getBytes,
                                               args: &__args,
                                               locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }
        
        return JNIType.toSwift( type: [Int8].self, from: __return )
    }
    
    @_versioned
    internal func getAdvertiseFlags() -> Int {
        
        var __locals = [jobject]()
        
        var __args = [jvalue](repeating: jvalue(), count: 1)
        
        let __return = JNIMethod.CallIntMethod(object: javaObject,
                                               methodName: "getAdvertiseFlags",
                                               methodSig: "()I",
                                               methodCache: &JNICache.MethodID.getAdvertiseFlags,
                                               args: &__args,
                                               locals: &__locals)
        return Int(__return)
    }
    
    @_versioned
    internal func getTxPowerLevel() -> Int {
        
        var __locals = [jobject]()
        
        var __args = [jvalue](repeating: jvalue(), count: 1)
        
        let __return = JNIMethod.CallIntMethod(object: javaObject,
                                               methodName: "getTxPowerLevel",
                                               methodSig: "()I",
                                               methodCache: &JNICache.MethodID.getTxPowerLevel,
                                               args: &__args,
                                               locals: &__locals)
        return Int(__return)
    }
}

// MARK: - JNI

internal extension Android.Bluetooth.LE.ScanRecord {
    
    /// JNI Cache
    struct JNICache {
        
        static let classSignature = Android.Bluetooth.LE.className(["ScanRecord"])
        
        /// JNI Java class name
        static let className = classSignature.rawValue
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var getAdvertiseFlags: jmethodID?
            static var getBytes: jmethodID?
            static var getDeviceName: jmethodID?
            static var getManufacturerSpecificData: jmethodID?
            static var getManufacturerSpecificData_param: jmethodID?
            static var getServiceData_param: jmethodID?
            static var getServiceData: jmethodID?
            static var getServiceUuids: jmethodID?
            static var getTxPowerLevel: jmethodID?
        }
    }
}

