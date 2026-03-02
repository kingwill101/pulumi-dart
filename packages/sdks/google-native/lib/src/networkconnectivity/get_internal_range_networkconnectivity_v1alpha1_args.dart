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
    required this.internalRangeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalRangeId': internalRangeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInternalRangeNetworkconnectivityV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeNetworkconnectivityV1alpha1Args(
      internalRangeId: (map['internalRangeId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

