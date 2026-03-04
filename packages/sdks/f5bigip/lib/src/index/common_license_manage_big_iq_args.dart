// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_common_license_manage_big_iq_common_license_manage_big_iq_args_doc}
/// The set of arguments for CommonLicenseManageBigIq.
/// {@endtemplate}
/// {@macro pulumi_index_common_license_manage_big_iq_common_license_manage_big_iq_args_doc}
class CommonLicenseManageBigIqArgs {
  /// The type of assignment, which is determined by whether the BIG-IP is unreachable, unmanaged, or managed by BIG-IQ. Possible values: “UNREACHABLE”, “UNMANAGED”, or “MANAGED”.
  final pulumi.Input<String> assignmentType;

  /// BIGIQ License Manager IP Address, variable type `string`
  final pulumi.Input<String> bigiqAddress;

  /// BIGIQ Login reference for token authentication
  final pulumi.Input<String>? bigiqLoginRef;

  /// BIGIQ License Manager password.  variable type `string`
  final pulumi.Input<String> bigiqPassword;

  /// type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  final pulumi.Input<String>? bigiqPort;

  /// type `bool`, if set to `true` enables Token based Authentication,default is `false`
  final pulumi.Input<bool>? bigiqTokenAuth;

  /// BIGIQ License Manager username, variable type `string`
  final pulumi.Input<String> bigiqUser;

  /// Status of Licence Assignment
  final pulumi.Input<String>? deviceLicenseStatus;

  /// Identifies the platform running the BIG-IP VE. Possible values: “aws”, “azure”, “gce”, “vmware”, “hyperv”, “kvm”, or “xen”. type `string`
  final pulumi.Input<String>? hypervisor;

  /// License Assignment is done with specified `key`, supported only with RegKeypool type License assignement. type `string`
  final pulumi.Input<String>? key;

  /// A name given to the license pool. type `string`
  final pulumi.Input<String> licensePoolname;

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

  /// Creates a new [CommonLicenseManageBigIqArgs].
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
  CommonLicenseManageBigIqArgs({
    required this.assignmentType,
    required this.bigiqAddress,
    this.bigiqLoginRef,
    required this.bigiqPassword,
    this.bigiqPort,
    this.bigiqTokenAuth,
    required this.bigiqUser,
    this.deviceLicenseStatus,
    this.hypervisor,
    this.key,
    required this.licensePoolname,
    this.macAddress,
    this.skukeyword1,
    this.skukeyword2,
    this.tenant,
    this.unitOfMeasure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': assignmentType,
      'bigiqAddress': bigiqAddress,
      'bigiqLoginRef': ?bigiqLoginRef,
      'bigiqPassword': bigiqPassword,
      'bigiqPort': ?bigiqPort,
      'bigiqTokenAuth': ?bigiqTokenAuth,
      'bigiqUser': bigiqUser,
      'deviceLicenseStatus': ?deviceLicenseStatus,
      'hypervisor': ?hypervisor,
      'key': ?key,
      'licensePoolname': licensePoolname,
      'macAddress': ?macAddress,
      'skukeyword1': ?skukeyword1,
      'skukeyword2': ?skukeyword2,
      'tenant': ?tenant,
      'unitOfMeasure': ?unitOfMeasure,
    };
  }

  factory CommonLicenseManageBigIqArgs.fromMap(Map<String, dynamic> map) {
    return CommonLicenseManageBigIqArgs(
      assignmentType: pulumi.Input.fromValue(map['assignmentType'] as String),
      bigiqAddress: pulumi.Input.fromValue(map['bigiqAddress'] as String),
      bigiqLoginRef: (() {
        final guardedValue = map['bigiqLoginRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigiqPassword: pulumi.Input.fromValue(map['bigiqPassword'] as String),
      bigiqPort: (() {
        final guardedValue = map['bigiqPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigiqTokenAuth: (() {
        final guardedValue = map['bigiqTokenAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      bigiqUser: pulumi.Input.fromValue(map['bigiqUser'] as String),
      deviceLicenseStatus: (() {
        final guardedValue = map['deviceLicenseStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hypervisor: (() {
        final guardedValue = map['hypervisor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licensePoolname: pulumi.Input.fromValue(map['licensePoolname'] as String),
      macAddress: (() {
        final guardedValue = map['macAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skukeyword1: (() {
        final guardedValue = map['skukeyword1'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skukeyword2: (() {
        final guardedValue = map['skukeyword2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenant: (() {
        final guardedValue = map['tenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      unitOfMeasure: (() {
        final guardedValue = map['unitOfMeasure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
