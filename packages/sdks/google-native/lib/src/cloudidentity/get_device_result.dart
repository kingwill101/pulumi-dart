// ignore_for_file: unused_element, unnecessary_cast

import 'google_apps_cloudidentity_devices_v1_android_attributes_response.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// Attributes specific to Android devices.
  final GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse androidSpecificAttributes;
  /// Asset tag of the device.
  final String assetTag;
  /// Baseband version of the device.
  final String basebandVersion;
  /// Device bootloader version. Example: 0.6.7.
  final String bootloaderVersion;
  /// Device brand. Example: Samsung.
  final String brand;
  /// Build number of the device.
  final String buildNumber;
  /// Represents whether the Device is compromised.
  final String compromisedState;
  /// When the Company-Owned device was imported. This field is empty for BYOD devices.
  final String createTime;
  /// Unique identifier for the device.
  final String deviceId;
  /// Type of device.
  final String deviceType;
  /// Whether developer options is enabled on device.
  final bool enabledDeveloperOptions;
  /// Whether USB debugging is enabled on device.
  final bool enabledUsbDebugging;
  /// Device encryption state.
  final String encryptionState;
  /// Host name of the device.
  final String hostname;
  /// IMEI number of device if GSM device; empty otherwise.
  final String imei;
  /// Kernel version of the device.
  final String kernelVersion;
  /// Most recent time when device synced with this service.
  final String lastSyncTime;
  /// Management state of the device
  final String managementState;
  /// Device manufacturer. Example: Motorola.
  final String manufacturer;
  /// MEID number of device if CDMA device; empty otherwise.
  final String meid;
  /// Model name of device. Example: Pixel 3.
  final String model;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique id assigned to the Device.
  final String name;
  /// Mobile or network operator of device, if available.
  final String networkOperator;
  /// OS version of the device. Example: Android 8.1.0.
  final String osVersion;
  /// Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: "com.example", "xyz.com".
  final List<String> otherAccounts;
  /// Whether the device is owned by the company or an individual
  final String ownerType;
  /// OS release version. Example: 6.0.
  final String releaseVersion;
  /// OS security patch update time on device.
  final String securityPatchTime;
  /// Serial Number of device. Example: HT82V1A01076.
  final String serialNumber;
  /// WiFi MAC addresses of device.
  final List<String> wifiMacAddresses;

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
    required this.androidSpecificAttributes,
    required this.assetTag,
    required this.basebandVersion,
    required this.bootloaderVersion,
    required this.brand,
    required this.buildNumber,
    required this.compromisedState,
    required this.createTime,
    required this.deviceId,
    required this.deviceType,
    required this.enabledDeveloperOptions,
    required this.enabledUsbDebugging,
    required this.encryptionState,
    required this.hostname,
    required this.imei,
    required this.kernelVersion,
    required this.lastSyncTime,
    required this.managementState,
    required this.manufacturer,
    required this.meid,
    required this.model,
    required this.name,
    required this.networkOperator,
    required this.osVersion,
    required this.otherAccounts,
    required this.ownerType,
    required this.releaseVersion,
    required this.securityPatchTime,
    required this.serialNumber,
    required this.wifiMacAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidSpecificAttributes': androidSpecificAttributes.toMap(),
      'assetTag': assetTag,
      'basebandVersion': basebandVersion,
      'bootloaderVersion': bootloaderVersion,
      'brand': brand,
      'buildNumber': buildNumber,
      'compromisedState': compromisedState,
      'createTime': createTime,
      'deviceId': deviceId,
      'deviceType': deviceType,
      'enabledDeveloperOptions': enabledDeveloperOptions,
      'enabledUsbDebugging': enabledUsbDebugging,
      'encryptionState': encryptionState,
      'hostname': hostname,
      'imei': imei,
      'kernelVersion': kernelVersion,
      'lastSyncTime': lastSyncTime,
      'managementState': managementState,
      'manufacturer': manufacturer,
      'meid': meid,
      'model': model,
      'name': name,
      'networkOperator': networkOperator,
      'osVersion': osVersion,
      'otherAccounts': otherAccounts,
      'ownerType': ownerType,
      'releaseVersion': releaseVersion,
      'securityPatchTime': securityPatchTime,
      'serialNumber': serialNumber,
      'wifiMacAddresses': wifiMacAddresses,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      androidSpecificAttributes: GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse.fromMap((map['androidSpecificAttributes']! as Map).cast<String, dynamic>()),
      assetTag: map['assetTag'] as String,
      basebandVersion: map['basebandVersion'] as String,
      bootloaderVersion: map['bootloaderVersion'] as String,
      brand: map['brand'] as String,
      buildNumber: map['buildNumber'] as String,
      compromisedState: map['compromisedState'] as String,
      createTime: map['createTime'] as String,
      deviceId: map['deviceId'] as String,
      deviceType: map['deviceType'] as String,
      enabledDeveloperOptions: map['enabledDeveloperOptions'] as bool,
      enabledUsbDebugging: map['enabledUsbDebugging'] as bool,
      encryptionState: map['encryptionState'] as String,
      hostname: map['hostname'] as String,
      imei: map['imei'] as String,
      kernelVersion: map['kernelVersion'] as String,
      lastSyncTime: map['lastSyncTime'] as String,
      managementState: map['managementState'] as String,
      manufacturer: map['manufacturer'] as String,
      meid: map['meid'] as String,
      model: map['model'] as String,
      name: map['name'] as String,
      networkOperator: map['networkOperator'] as String,
      osVersion: map['osVersion'] as String,
      otherAccounts: (map['otherAccounts'] as List).cast<String>(),
      ownerType: map['ownerType'] as String,
      releaseVersion: map['releaseVersion'] as String,
      securityPatchTime: map['securityPatchTime'] as String,
      serialNumber: map['serialNumber'] as String,
      wifiMacAddresses: (map['wifiMacAddresses'] as List).cast<String>(),
    );
  }
}

