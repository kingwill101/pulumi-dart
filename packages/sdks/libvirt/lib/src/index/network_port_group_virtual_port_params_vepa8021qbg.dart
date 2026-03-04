// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPortGroupVirtualPortParamsVepa8021qbg {
  /// Sets the instance ID for VEPA 802.1Qbg virtual port parameters.
  final pulumi.Input<String>? instanceId;

  /// Configures the manager ID associated with VEPA 802.1Qbg parameters.
  final pulumi.Input<double>? managerId;

  /// Specifies the type ID for VEPA 802.1Qbg virtual port parameters.
  final pulumi.Input<double>? typeId;

  /// Indicates the version of the type ID for VEPA 802.1Qbg parameters.
  final pulumi.Input<double>? typeIdVersion;

  /// Creates a new [NetworkPortGroupVirtualPortParamsVepa8021qbg].
  /// [instanceId] Sets the instance ID for VEPA 802.1Qbg virtual port parameters.
  /// [managerId] Configures the manager ID associated with VEPA 802.1Qbg parameters.
  /// [typeId] Specifies the type ID for VEPA 802.1Qbg virtual port parameters.
  /// [typeIdVersion] Indicates the version of the type ID for VEPA 802.1Qbg parameters.
  NetworkPortGroupVirtualPortParamsVepa8021qbg({
    this.instanceId,
    this.managerId,
    this.typeId,
    this.typeIdVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'managerId': ?managerId,
      'typeId': ?typeId,
      'typeIdVersion': ?typeIdVersion,
    };
  }

  factory NetworkPortGroupVirtualPortParamsVepa8021qbg.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkPortGroupVirtualPortParamsVepa8021qbg(
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managerId: (() {
        final guardedValue = map['managerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
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
