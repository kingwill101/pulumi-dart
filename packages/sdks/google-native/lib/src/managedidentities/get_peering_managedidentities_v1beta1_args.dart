// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_peering_managedidentities_v1beta1_args_doc}
/// Arguments for getPeering.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_peering_managedidentities_v1beta1_args_doc}
class GetPeeringManagedidentitiesV1beta1Args {
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringManagedidentitiesV1beta1Args].
  /// [peeringId] Required.
  /// [project] Optional.
  GetPeeringManagedidentitiesV1beta1Args({
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory GetPeeringManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPeeringManagedidentitiesV1beta1Args(
      peeringId: (map['peeringId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

