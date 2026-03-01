// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1alpha1_get_internal_range_networkconnectivity_v1alpha1_args_doc}
/// Arguments for getInternalRange.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_get_internal_range_networkconnectivity_v1alpha1_args_doc}
class GetInternalRangeNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> internalRangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInternalRangeNetworkconnectivityV1alpha1Args].
  /// [internalRangeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetInternalRangeNetworkconnectivityV1alpha1Args({
    required pulumi.Output<String> internalRangeId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      internalRangeId = pulumi.Input.asInput<String>(internalRangeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalRangeId': internalRangeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInternalRangeNetworkconnectivityV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeNetworkconnectivityV1alpha1Args(
      internalRangeId: pulumi.Output.create<String>(map['internalRangeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

