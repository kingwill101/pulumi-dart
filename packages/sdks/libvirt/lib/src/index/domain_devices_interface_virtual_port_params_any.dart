// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceVirtualPortParamsAny {
  /// Sets the instance ID for the virtual port parameter.
  final pulumi.Input<String?>? instanceId;
  /// Specifies the interface ID for the virtual port parameter.
  final pulumi.Input<String?>? interfaceId;
  /// Identifies the manager ID associated with the virtual port parameter.
  final pulumi.Input<double?>? managerId;
  /// Sets the profile ID for the virtual port parameter.
  final pulumi.Input<String?>? profileId;
  /// Specifies the type ID for the virtual port parameter.
  final pulumi.Input<double?>? typeId;
  /// Indicates the version of the type ID for the virtual port parameter.
  final pulumi.Input<double?>? typeIdVersion;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsAny].
  /// [instanceId] Sets the instance ID for the virtual port parameter.
  /// [interfaceId] Specifies the interface ID for the virtual port parameter.
  /// [managerId] Identifies the manager ID associated with the virtual port parameter.
  /// [profileId] Sets the profile ID for the virtual port parameter.
  /// [typeId] Specifies the type ID for the virtual port parameter.
  /// [typeIdVersion] Indicates the version of the type ID for the virtual port parameter.
  const DomainDevicesInterfaceVirtualPortParamsAny({
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
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceId: (() { final guardedValue = map['interfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managerId: (() { final guardedValue = map['managerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeId: (() { final guardedValue = map['typeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      typeIdVersion: (() { final guardedValue = map['typeIdVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
