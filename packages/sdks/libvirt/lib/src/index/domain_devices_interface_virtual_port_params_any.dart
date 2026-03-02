// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceVirtualPortParamsAny {
  /// Sets the instance ID for the virtual port parameter.
  final pulumi.Input<String>? instanceId;
  /// Specifies the interface ID for the virtual port parameter.
  final pulumi.Input<String>? interfaceId;
  /// Identifies the manager ID associated with the virtual port parameter.
  final pulumi.Input<double>? managerId;
  /// Sets the profile ID for the virtual port parameter.
  final pulumi.Input<String>? profileId;
  /// Specifies the type ID for the virtual port parameter.
  final pulumi.Input<double>? typeId;
  /// Indicates the version of the type ID for the virtual port parameter.
  final pulumi.Input<double>? typeIdVersion;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsAny].
  /// [instanceId] Sets the instance ID for the virtual port parameter.
  /// [interfaceId] Specifies the interface ID for the virtual port parameter.
  /// [managerId] Identifies the manager ID associated with the virtual port parameter.
  /// [profileId] Sets the profile ID for the virtual port parameter.
  /// [typeId] Specifies the type ID for the virtual port parameter.
  /// [typeIdVersion] Indicates the version of the type ID for the virtual port parameter.
  DomainDevicesInterfaceVirtualPortParamsAny({
    this.instanceId,
    this.interfaceId,
    this.managerId,
    this.profileId,
    this.typeId,
    this.typeIdVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'interfaceId': ?interfaceId,
      'managerId': ?managerId,
      'profileId': ?profileId,
      'typeId': ?typeId,
      'typeIdVersion': ?typeIdVersion,
    };
  }

  factory DomainDevicesInterfaceVirtualPortParamsAny.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParamsAny(
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      interfaceId: map['interfaceId'] == null ? null : (map['interfaceId'] as String).input(),
      managerId: map['managerId'] == null ? null : (map['managerId'] as double).input(),
      profileId: map['profileId'] == null ? null : (map['profileId'] as String).input(),
      typeId: map['typeId'] == null ? null : (map['typeId'] as double).input(),
      typeIdVersion: map['typeIdVersion'] == null ? null : (map['typeIdVersion'] as double).input(),
    );
  }
}

