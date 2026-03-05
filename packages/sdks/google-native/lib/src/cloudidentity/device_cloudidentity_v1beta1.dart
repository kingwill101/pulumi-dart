import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_attributes_response.dart';
import 'device_cloudidentity_v1beta1_args.dart';
import 'endpoint_verification_specific_attributes_response.dart';

/// Creates a device. Only company-owned device may be created. **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium
/// Auto-naming is currently not supported for this resource.
class DeviceCloudidentityV1beta1 extends pulumi.CustomResource {
  /// Attributes specific to Android devices.
  late final pulumi.Output<AndroidAttributesResponse> androidSpecificAttributes;
  /// Asset tag of the device.
  late final pulumi.Output<String> assetTag;
  /// Baseband version of the device.
  late final pulumi.Output<String> basebandVersion;
  /// Device bootloader version. Example: 0.6.7.
  late final pulumi.Output<String> bootloaderVersion;
  /// Device brand. Example: Samsung.
  late final pulumi.Output<String> brand;
  /// Build number of the device.
  late final pulumi.Output<String> buildNumber;
  /// List of the clients the device is reporting to.
  late final pulumi.Output<List<String>> clientTypes;
  /// Represents whether the Device is compromised.
  late final pulumi.Output<String> compromisedState;
  /// When the Company-Owned device was imported. This field is empty for BYOD devices.
  late final pulumi.Output<String> createTime;
  /// Unique identifier for the device.
  late final pulumi.Output<String> deviceId;
  /// Type of device.
  late final pulumi.Output<String> deviceType;
  /// Whether developer options is enabled on device.
  late final pulumi.Output<bool> enabledDeveloperOptions;
  /// Whether USB debugging is enabled on device.
  late final pulumi.Output<bool> enabledUsbDebugging;
  /// Device encryption state.
  late final pulumi.Output<String> encryptionState;
  /// Attributes specific to Endpoint Verification devices.
  late final pulumi.Output<EndpointVerificationSpecificAttributesResponse> endpointVerificationSpecificAttributes;
  /// Host name of the device.
  late final pulumi.Output<String> hostname;
  /// IMEI number of device if GSM device; empty otherwise.
  late final pulumi.Output<String> imei;
  /// Kernel version of the device.
  late final pulumi.Output<String> kernelVersion;
  /// Most recent time when device synced with this service.
  late final pulumi.Output<String> lastSyncTime;
  /// Management state of the device
  late final pulumi.Output<String> managementState;
  /// Device manufacturer. Example: Motorola.
  late final pulumi.Output<String> manufacturer;
  /// MEID number of device if CDMA device; empty otherwise.
  late final pulumi.Output<String> meid;
  /// Model name of device. Example: Pixel 3.
  late final pulumi.Output<String> model;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device_id}`, where device_id is the unique id assigned to the Device.
  late final pulumi.Output<String> name;
  /// Mobile or network operator of device, if available.
  late final pulumi.Output<String> networkOperator;
  /// OS version of the device. Example: Android 8.1.0.
  late final pulumi.Output<String> osVersion;
  /// Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: "com.example", "xyz.com".
  late final pulumi.Output<List<String>> otherAccounts;
  /// Whether the device is owned by the company or an individual
  late final pulumi.Output<String> ownerType;
  /// OS release version. Example: 6.0.
  late final pulumi.Output<String> releaseVersion;
  /// OS security patch update time on device.
  late final pulumi.Output<String> securityPatchTime;
  /// Serial Number of device. Example: HT82V1A01076.
  late final pulumi.Output<String> serialNumber;
  /// WiFi MAC addresses of device.
  late final pulumi.Output<List<String>> wifiMacAddresses;

  /// Creates a new [DeviceCloudidentityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceCloudidentityV1beta1]. {@macro pulumi_cloudidentity_v1beta1_device_cloudidentity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceCloudidentityV1beta1(
    String name, {
    DeviceCloudidentityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1beta1:Device',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    androidSpecificAttributes = registerOutput<AndroidAttributesResponse>('androidSpecificAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AndroidAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assetTag = registerOutput<String>('assetTag');
    basebandVersion = registerOutput<String>('basebandVersion');
    bootloaderVersion = registerOutput<String>('bootloaderVersion');
    brand = registerOutput<String>('brand');
    buildNumber = registerOutput<String>('buildNumber');
    clientTypes = registerOutput<List<String>>('clientTypes');
    compromisedState = registerOutput<String>('compromisedState');
    createTime = registerOutput<String>('createTime');
    deviceId = registerOutput<String>('deviceId');
    deviceType = registerOutput<String>('deviceType');
    enabledDeveloperOptions = registerOutput<bool>('enabledDeveloperOptions');
    enabledUsbDebugging = registerOutput<bool>('enabledUsbDebugging');
    encryptionState = registerOutput<String>('encryptionState');
    endpointVerificationSpecificAttributes = registerOutput<EndpointVerificationSpecificAttributesResponse>('endpointVerificationSpecificAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointVerificationSpecificAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    imei = registerOutput<String>('imei');
    kernelVersion = registerOutput<String>('kernelVersion');
    lastSyncTime = registerOutput<String>('lastSyncTime');
    managementState = registerOutput<String>('managementState');
    manufacturer = registerOutput<String>('manufacturer');
    meid = registerOutput<String>('meid');
    model = registerOutput<String>('model');
    this.name = registerOutput<String>('name');
    networkOperator = registerOutput<String>('networkOperator');
    osVersion = registerOutput<String>('osVersion');
    otherAccounts = registerOutput<List<String>>('otherAccounts');
    ownerType = registerOutput<String>('ownerType');
    releaseVersion = registerOutput<String>('releaseVersion');
    securityPatchTime = registerOutput<String>('securityPatchTime');
    serialNumber = registerOutput<String>('serialNumber');
    wifiMacAddresses = registerOutput<List<String>>('wifiMacAddresses');
  }
}
