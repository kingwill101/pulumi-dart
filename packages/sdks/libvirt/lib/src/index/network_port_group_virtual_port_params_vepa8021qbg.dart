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

  factory NetworkPortGroupVirtualPortParamsVepa8021qbg.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPortParamsVepa8021qbg(
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      managerId: map['managerId'] == null ? null : (map['managerId']! as double).input(),
      typeId: map['typeId'] == null ? null : (map['typeId']! as double).input(),
      typeIdVersion: map['typeIdVersion'] == null ? null : (map['typeIdVersion']! as double).input(),
    );
  }
}

