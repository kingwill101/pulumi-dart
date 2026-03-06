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
  const DomainDevicesInterfaceVirtualPortParamsVepa8021qbg({
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
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managerId: (() { final guardedValue = map['managerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      typeId: (() { final guardedValue = map['typeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      typeIdVersion: (() { final guardedValue = map['typeIdVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

