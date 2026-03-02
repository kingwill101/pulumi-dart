// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CommonLicenseManageBigIq resources.
class CommonLicenseManageBigIqState {
  /// The type of assignment, which is determined by whether the BIG-IP is unreachable, unmanaged, or managed by BIG-IQ. Possible values: “UNREACHABLE”, “UNMANAGED”, or “MANAGED”.
  final pulumi.Input<String>? assignmentType;
  /// BIGIQ License Manager IP Address, variable type `string`
  final pulumi.Input<String>? bigiqAddress;
  /// BIGIQ Login reference for token authentication
  final pulumi.Input<String>? bigiqLoginRef;
  /// BIGIQ License Manager password.  variable type `string`
  final pulumi.Input<String>? bigiqPassword;
  /// type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  final pulumi.Input<String>? bigiqPort;
  /// type `bool`, if set to `true` enables Token based Authentication,default is `false`
  final pulumi.Input<bool>? bigiqTokenAuth;
  /// BIGIQ License Manager username, variable type `string`
  final pulumi.Input<String>? bigiqUser;
  /// Status of Licence Assignment
  final pulumi.Input<String>? deviceLicenseStatus;
  /// Identifies the platform running the BIG-IP VE. Possible values: “aws”, “azure”, “gce”, “vmware”, “hyperv”, “kvm”, or “xen”. type `string`
  final pulumi.Input<String>? hypervisor;
  /// License Assignment is done with specified `key`, supported only with RegKeypool type License assignement. type `string`
  final pulumi.Input<String>? key;
  /// A name given to the license pool. type `string`
  final pulumi.Input<String>? licensePoolname;
  /// MAC address of the BIG-IP. type `string`
  final pulumi.Input<String>? macAddress;
  /// An optional offering name. type `string`
  final pulumi.Input<String>? skukeyword1;
  /// An optional offering name. type `string`
  final pulumi.Input<String>? skukeyword2;
  /// For an unreachable BIG-IP, you can provide an optional description for the assignment in this field.
  final pulumi.Input<String>? tenant;
  /// The units used to measure billing. For example, “hourly” or “daily”. Type `string`
  final pulumi.Input<String>? unitOfMeasure;

  /// Creates a new [CommonLicenseManageBigIqState].
  /// [assignmentType] The type of assignment, which is determined by whether the BIG-IP is unreachable, unmanaged, or managed by BIG-IQ. Possible values: “UNREACHABLE”, “UNMANAGED”, or “MANAGED”.
  /// [bigiqAddress] BIGIQ License Manager IP Address, variable type `string`
  /// [bigiqLoginRef] BIGIQ Login reference for token authentication
  /// [bigiqPassword] BIGIQ License Manager password.  variable type `string`
  /// [bigiqPort] type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  /// [bigiqTokenAuth] type `bool`, if set to `true` enables Token based Authentication,default is `false`
  /// [bigiqUser] BIGIQ License Manager username, variable type `string`
  /// [deviceLicenseStatus] Status of Licence Assignment
  /// [hypervisor] Identifies the platform running the BIG-IP VE. Possible values: “aws”, “azure”, “gce”, “vmware”, “hyperv”, “kvm”, or “xen”. type `string`
  /// [key] License Assignment is done with specified `key`, supported only with RegKeypool type License assignement. type `string`
  /// [licensePoolname] A name given to the license pool. type `string`
  /// [macAddress] MAC address of the BIG-IP. type `string`
  /// [skukeyword1] An optional offering name. type `string`
  /// [skukeyword2] An optional offering name. type `string`
  /// [tenant] For an unreachable BIG-IP, you can provide an optional description for the assignment in this field.
  /// [unitOfMeasure] The units used to measure billing. For example, “hourly” or “daily”. Type `string`
  CommonLicenseManageBigIqState({
    this.assignmentType,
    this.bigiqAddress,
    this.bigiqLoginRef,
    this.bigiqPassword,
    this.bigiqPort,
    this.bigiqTokenAuth,
    this.bigiqUser,
    this.deviceLicenseStatus,
    this.hypervisor,
    this.key,
    this.licensePoolname,
    this.macAddress,
    this.skukeyword1,
    this.skukeyword2,
    this.tenant,
    this.unitOfMeasure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
      'bigiqAddress': ?bigiqAddress,
      'bigiqLoginRef': ?bigiqLoginRef,
      'bigiqPassword': ?bigiqPassword,
      'bigiqPort': ?bigiqPort,
      'bigiqTokenAuth': ?bigiqTokenAuth,
      'bigiqUser': ?bigiqUser,
      'deviceLicenseStatus': ?deviceLicenseStatus,
      'hypervisor': ?hypervisor,
      'key': ?key,
      'licensePoolname': ?licensePoolname,
      'macAddress': ?macAddress,
      'skukeyword1': ?skukeyword1,
      'skukeyword2': ?skukeyword2,
      'tenant': ?tenant,
      'unitOfMeasure': ?unitOfMeasure,
    };
  }

  factory CommonLicenseManageBigIqState.fromMap(Map<String, dynamic> map) {
    return CommonLicenseManageBigIqState(
      assignmentType: map['assignmentType'] == null ? null : (map['assignmentType'] as String).input(),
      bigiqAddress: map['bigiqAddress'] == null ? null : (map['bigiqAddress'] as String).input(),
      bigiqLoginRef: map['bigiqLoginRef'] == null ? null : (map['bigiqLoginRef'] as String).input(),
      bigiqPassword: map['bigiqPassword'] == null ? null : (map['bigiqPassword'] as String).input(),
      bigiqPort: map['bigiqPort'] == null ? null : (map['bigiqPort'] as String).input(),
      bigiqTokenAuth: map['bigiqTokenAuth'] == null ? null : (map['bigiqTokenAuth'] as bool).input(),
      bigiqUser: map['bigiqUser'] == null ? null : (map['bigiqUser'] as String).input(),
      deviceLicenseStatus: map['deviceLicenseStatus'] == null ? null : (map['deviceLicenseStatus'] as String).input(),
      hypervisor: map['hypervisor'] == null ? null : (map['hypervisor'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      licensePoolname: map['licensePoolname'] == null ? null : (map['licensePoolname'] as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress'] as String).input(),
      skukeyword1: map['skukeyword1'] == null ? null : (map['skukeyword1'] as String).input(),
      skukeyword2: map['skukeyword2'] == null ? null : (map['skukeyword2'] as String).input(),
      tenant: map['tenant'] == null ? null : (map['tenant'] as String).input(),
      unitOfMeasure: map['unitOfMeasure'] == null ? null : (map['unitOfMeasure'] as String).input(),
    );
  }
}

