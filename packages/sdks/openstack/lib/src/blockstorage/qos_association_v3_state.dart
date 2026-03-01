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
  QosAssociationV3State({
    pulumi.Output<String>? qosId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? volumeTypeId,
  }) :
      qosId = pulumi.Input.asOptionalInput<String>(qosId),
      region = pulumi.Input.asOptionalInput<String>(region),
      volumeTypeId = pulumi.Input.asOptionalInput<String>(volumeTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qosId': ?qosId,
      'region': ?region,
      'volumeTypeId': ?volumeTypeId,
    };
  }

  factory QosAssociationV3State.fromMap(Map<String, dynamic> map) {
    return QosAssociationV3State(
      qosId: map['qosId'] == null ? null : pulumi.Output.create<String>(map['qosId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      volumeTypeId: map['volumeTypeId'] == null ? null : pulumi.Output.create<String>(map['volumeTypeId'] as String),
    );
  }
}

