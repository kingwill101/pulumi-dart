// ignore_for_file: unused_element, unnecessary_cast

import 'google_apps_cloudidentity_devices_v1_android_attributes_response.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// Attributes specific to Android devices.
  final GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse? androidSpecificAttributes;
  /// Asset tag of the device.
  final String? assetTag;
  /// Baseband version of the device.
  final String? basebandVersion;
  /// Device bootloader version. Example: 0.6.7.
  final String? bootloaderVersion;
  /// Device brand. Example: Samsung.
  final String? brand;
  /// Build number of the device.
  final String? buildNumber;
  /// Represents whether the Device is compromised.
  final String? compromisedState;
  /// When the Company-Owned device was imported. This field is empty for BYOD devices.
  final String? createTime;
  /// Unique identifier for the device.
  final String? deviceId;
  /// Type of device.
  final String? deviceType;
  /// Whether developer options is enabled on device.
  final bool? enabledDeveloperOptions;
  /// Whether USB debugging is enabled on device.
  final bool? enabledUsbDebugging;
  /// Device encryption state.
  final String? encryptionState;
  /// Host name of the device.
  final String? hostname;
  /// IMEI number of device if GSM device; empty otherwise.
  final String? imei;
  /// Kernel version of the device.
  final String? kernelVersion;
  /// Most recent time when device synced with this service.
  final String? lastSyncTime;
  /// Management state of the device
  final String? managementState;
  /// Device manufacturer. Example: Motorola.
  final String? manufacturer;
  /// MEID number of device if CDMA device; empty otherwise.
  final String? meid;
  /// Model name of device. Example: Pixel 3.
  final String? model;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique id assigned to the Device.
  final String? name;
  /// Mobile or network operator of device, if available.
  final String? networkOperator;
  /// OS version of the device. Example: Android 8.1.0.
  final String? osVersion;
  /// Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: "com.example", "xyz.com".
  final List<String>? otherAccounts;
  /// Whether the device is owned by the company or an individual
  final String? ownerType;
  /// OS release version. Example: 6.0.
  final String? releaseVersion;
  /// OS security patch update time on device.
  final String? securityPatchTime;
  /// Serial Number of device. Example: HT82V1A01076.
  final String? serialNumber;
  /// WiFi MAC addresses of device.
  final List<String>? wifiMacAddresses;

  /// Creates a new [GetDeviceResult].
  /// [androidSpecificAttributes] Attributes specific to Android devices.
  /// [assetTag] Asset tag of the device.
  /// [basebandVersion] Baseband version of the device.
  /// [bootloaderVersion] Device bootloader version. Example: 0.6.7.
  /// [brand] Device brand. Example: Samsung.
  /// [buildNumber] Build number of the device.
  /// [compromisedState] Represents whether the Device is compromised.
  /// [createTime] When the Company-Owned device was imported. This field is empty for BYOD devices.
  /// [deviceId] Unique identifier for the device.
  /// [deviceType] Type of device.
  /// [enabledDeveloperOptions] Whether developer options is enabled on device.
  /// [enabledUsbDebugging] Whether USB debugging is enabled on device.
  /// [encryptionState] Device encryption state.
  /// [hostname] Host name of the device.
  /// [imei] IMEI number of device if GSM device; empty otherwise.
  /// [kernelVersion] Kernel version of the device.
  /// [lastSyncTime] Most recent time when device synced with this service.
  /// [managementState] Management state of the device
  /// [manufacturer] Device manufacturer. Example: Motorola.
  /// [meid] MEID number of device if CDMA device; empty otherwise.
  /// [model] Model name of device. Example: Pixel 3.
  /// [name] [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique id assigned to the Device.
  /// [networkOperator] Mobile or network operator of device, if available.
  /// [osVersion] OS version of the device. Example: Android 8.1.0.
  /// [otherAccounts] Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: "com.example", "xyz.com".
  /// [ownerType] Whether the device is owned by the company or an individual
  /// [releaseVersion] OS release version. Example: 6.0.
  /// [securityPatchTime] OS security patch update time on device.
  /// [serialNumber] Serial Number of device. Example: HT82V1A01076.
  /// [wifiMacAddresses] WiFi MAC addresses of device.
  const GetDeviceResult({
    this.androidSpecificAttributes,
    this.assetTag,
    this.basebandVersion,
    this.bootloaderVersion,
    this.brand,
    this.buildNumber,
    this.compromisedState,
    this.createTime,
    this.deviceId,
    this.deviceType,
    this.enabledDeveloperOptions,
    this.enabledUsbDebugging,
    this.encryptionState,
    this.hostname,
    this.imei,
    this.kernelVersion,
    this.lastSyncTime,
    this.managementState,
    this.manufacturer,
    this.meid,
    this.model,
    this.name,
    this.networkOperator,
    this.osVersion,
    this.otherAccounts,
    this.ownerType,
    this.releaseVersion,
    this.securityPatchTime,
    this.serialNumber,
    this.wifiMacAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidSpecificAttributes': ?androidSpecificAttributes?.toMap(),
      'assetTag': ?assetTag,
      'basebandVersion': ?basebandVersion,
      'bootloaderVersion': ?bootloaderVersion,
      'brand': ?brand,
      'buildNumber': ?buildNumber,
      'compromisedState': ?compromisedState,
      'createTime': ?createTime,
      'deviceId': ?deviceId,
      'deviceType': ?deviceType,
      'enabledDeveloperOptions': ?enabledDeveloperOptions,
      'enabledUsbDebugging': ?enabledUsbDebugging,
      'encryptionState': ?encryptionState,
      'hostname': ?hostname,
      'imei': ?imei,
      'kernelVersion': ?kernelVersion,
      'lastSyncTime': ?lastSyncTime,
      'managementState': ?managementState,
      'manufacturer': ?manufacturer,
      'meid': ?meid,
      'model': ?model,
      'name': ?name,
      'networkOperator': ?networkOperator,
      'osVersion': ?osVersion,
      'otherAccounts': ?otherAccounts,
      'ownerType': ?ownerType,
      'releaseVersion': ?releaseVersion,
      'securityPatchTime': ?securityPatchTime,
      'serialNumber': ?serialNumber,
      'wifiMacAddresses': ?wifiMacAddresses,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      androidSpecificAttributes: (() { final guardedValue = map['androidSpecificAttributes']; if (guardedValue == null) return null; return GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      assetTag: (() { final guardedValue = map['assetTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      basebandVersion: (() { final guardedValue = map['basebandVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootloaderVersion: (() { final guardedValue = map['bootloaderVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      brand: (() { final guardedValue = map['brand']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buildNumber: (() { final guardedValue = map['buildNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      compromisedState: (() { final guardedValue = map['compromisedState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledDeveloperOptions: (() { final guardedValue = map['enabledDeveloperOptions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledUsbDebugging: (() { final guardedValue = map['enabledUsbDebugging']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptionState: (() { final guardedValue = map['encryptionState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imei: (() { final guardedValue = map['imei']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kernelVersion: (() { final guardedValue = map['kernelVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSyncTime: (() { final guardedValue = map['lastSyncTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementState: (() { final guardedValue = map['managementState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meid: (() { final guardedValue = map['meid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkOperator: (() { final guardedValue = map['networkOperator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      otherAccounts: (() { final guardedValue = map['otherAccounts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ownerType: (() { final guardedValue = map['ownerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseVersion: (() { final guardedValue = map['releaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPatchTime: (() { final guardedValue = map['securityPatchTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wifiMacAddresses: (() { final guardedValue = map['wifiMacAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
