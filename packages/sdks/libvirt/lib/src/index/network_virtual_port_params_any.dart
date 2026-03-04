// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkVirtualPortParamsAny {
  /// Sets the instance ID for the virtual port parameter.
  final pulumi.Input<String>? instanceId;

  /// Defines the interface ID for the virtual port parameter.
  final pulumi.Input<String>? interfaceId;

  /// Configures the manager ID associated with the virtual port parameter.
  final pulumi.Input<double>? managerId;

  /// Specifies the profile ID for the virtual port parameter.
  final pulumi.Input<String>? profileId;

  /// Sets the type ID for the virtual port parameter.
  final pulumi.Input<double>? typeId;

  /// Indicates the version of the type ID for the virtual port parameter.
  final pulumi.Input<double>? typeIdVersion;

  /// Creates a new [NetworkVirtualPortParamsAny].
  /// [instanceId] Sets the instance ID for the virtual port parameter.
  /// [interfaceId] Defines the interface ID for the virtual port parameter.
  /// [managerId] Configures the manager ID associated with the virtual port parameter.
  /// [profileId] Specifies the profile ID for the virtual port parameter.
  /// [typeId] Sets the type ID for the virtual port parameter.
  /// [typeIdVersion] Indicates the version of the type ID for the virtual port parameter.
  NetworkVirtualPortParamsAny({
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

  factory NetworkVirtualPortParamsAny.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPortParamsAny(
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interfaceId: (() {
        final guardedValue = map['interfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managerId: (() {
        final guardedValue = map['managerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      profileId: (() {
        final guardedValue = map['profileId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      typeId: (() {
        final guardedValue = map['typeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      typeIdVersion: (() {
        final guardedValue = map['typeIdVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
