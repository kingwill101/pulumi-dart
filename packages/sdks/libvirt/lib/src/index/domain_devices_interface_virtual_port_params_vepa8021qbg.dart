// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceVirtualPortParamsVepa8021qbg {
  /// Sets the instance ID for the VEPA8021QBG virtual port parameters.
  final pulumi.Input<String>? instanceId;
  /// Specifies the manager ID for the VEPA8021QBG virtual port parameters.
  final pulumi.Input<double>? managerId;
  /// Sets the type ID for the VEPA8021QBG virtual port parameters.
  final pulumi.Input<double>? typeId;
  /// Indicates the version of the type ID for the VEPA8021QBG virtual port parameters.
  final pulumi.Input<double>? typeIdVersion;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsVepa8021qbg].
  /// [instanceId] Sets the instance ID for the VEPA8021QBG virtual port parameters.
  /// [managerId] Specifies the manager ID for the VEPA8021QBG virtual port parameters.
  /// [typeId] Sets the type ID for the VEPA8021QBG virtual port parameters.
  /// [typeIdVersion] Indicates the version of the type ID for the VEPA8021QBG virtual port parameters.
  DomainDevicesInterfaceVirtualPortParamsVepa8021qbg({
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

  factory DomainDevicesInterfaceVirtualPortParamsVepa8021qbg.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParamsVepa8021qbg(
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      managerId: map['managerId'] == null ? null : (map['managerId']! as double).input(),
      typeId: map['typeId'] == null ? null : (map['typeId']! as double).input(),
      typeIdVersion: map['typeIdVersion'] == null ? null : (map['typeIdVersion']! as double).input(),
    );
  }
}

