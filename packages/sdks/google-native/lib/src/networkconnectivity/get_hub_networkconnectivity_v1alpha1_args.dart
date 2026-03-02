// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1alpha1_get_hub_networkconnectivity_v1alpha1_args_doc}
/// Arguments for getHub.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_get_hub_networkconnectivity_v1alpha1_args_doc}
class GetHubNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> hubId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHubNetworkconnectivityV1alpha1Args].
  /// [hubId] Required.
  /// [project] Optional.
  GetHubNetworkconnectivityV1alpha1Args({
    required this.hubId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubId': hubId,
      'project': ?project,
    };
  }

  factory GetHubNetworkconnectivityV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetHubNetworkconnectivityV1alpha1Args(
      hubId: (map['hubId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

