// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_qos_association_v3_qos_association_v3_args_doc}
/// The set of arguments for QosAssociationV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_qos_association_v3_qos_association_v3_args_doc}
class QosAssociationV3Args {
  /// ID of the qos to associate. Changing this creates
  /// a new qos association.
  final pulumi.Input<String> qosId;
  /// The region in which to create the qos association.
  /// If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new qos association.
  final pulumi.Input<String>? region;
  /// ID of the volume_type to associate.
  /// Changing this creates a new qos association.
  final pulumi.Input<String> volumeTypeId;

  /// Creates a new [QosAssociationV3Args].
  /// [qosId] ID of the qos to associate. Changing this creates
  /// [region] The region in which to create the qos association.
  /// [volumeTypeId] ID of the volume_type to associate.
  QosAssociationV3Args({
    required pulumi.Output<String> qosId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> volumeTypeId,
  }) :
      qosId = pulumi.Input.asInput<String>(qosId),
      region = pulumi.Input.asOptionalInput<String>(region),
      volumeTypeId = pulumi.Input.asInput<String>(volumeTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qosId': qosId,
      'region': ?region,
      'volumeTypeId': volumeTypeId,
    };
  }

  factory QosAssociationV3Args.fromMap(Map<String, dynamic> map) {
    return QosAssociationV3Args(
      qosId: pulumi.Output.create<String>(map['qosId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      volumeTypeId: pulumi.Output.create<String>(map['volumeTypeId'] as String),
    );
  }
}

