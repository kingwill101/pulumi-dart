// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QosAssociationV3 resources.
class QosAssociationV3State {
  /// ID of the qos to associate. Changing this creates
  /// a new qos association.
  final pulumi.Input<String>? qosId;
  /// The region in which to create the qos association.
  /// If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new qos association.
  final pulumi.Input<String>? region;
  /// ID of the volume_type to associate.
  /// Changing this creates a new qos association.
  final pulumi.Input<String>? volumeTypeId;

  /// Creates a new [QosAssociationV3State].
  /// [qosId] ID of the qos to associate. Changing this creates
  /// [region] The region in which to create the qos association.
  /// [volumeTypeId] ID of the volume_type to associate.
  const QosAssociationV3State({
    this.qosId,
    this.region,
    this.volumeTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qosId': ?qosId,
      'region': ?region,
      'volumeTypeId': ?volumeTypeId,
    };
  }

  factory QosAssociationV3State.fromMap(Map<String, dynamic> map) {
    return QosAssociationV3State(
      qosId: (() { final guardedValue = map['qosId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeTypeId: (() { final guardedValue = map['volumeTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

