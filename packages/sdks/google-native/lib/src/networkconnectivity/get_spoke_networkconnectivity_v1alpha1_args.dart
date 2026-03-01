// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1alpha1_get_spoke_networkconnectivity_v1alpha1_args_doc}
/// Arguments for getSpoke.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_get_spoke_networkconnectivity_v1alpha1_args_doc}
class GetSpokeNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> spokeId;

  /// Creates a new [GetSpokeNetworkconnectivityV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [spokeId] Required.
  GetSpokeNetworkconnectivityV1alpha1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> spokeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      spokeId = pulumi.Input.asInput<String>(spokeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'spokeId': spokeId,
    };
  }

  factory GetSpokeNetworkconnectivityV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetSpokeNetworkconnectivityV1alpha1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      spokeId: pulumi.Output.create<String>(map['spokeId'] as String),
    );
  }
}

