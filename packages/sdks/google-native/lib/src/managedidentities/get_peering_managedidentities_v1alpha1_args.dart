// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_get_peering_managedidentities_v1alpha1_args_doc}
/// Arguments for getPeering.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_get_peering_managedidentities_v1alpha1_args_doc}
class GetPeeringManagedidentitiesV1alpha1Args {
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringManagedidentitiesV1alpha1Args].
  /// [peeringId] Required.
  /// [project] Optional.
  const GetPeeringManagedidentitiesV1alpha1Args({
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory GetPeeringManagedidentitiesV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetPeeringManagedidentitiesV1alpha1Args(
      peeringId: pulumi.Input.fromValue(map['peeringId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

