// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Binauthz policy that applies to this cluster.
class PolicyBindingResponseGkehubV1beta {
  /// The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final pulumi.Input<String> name;

  /// Creates a new [PolicyBindingResponseGkehubV1beta].
  /// [name] The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  PolicyBindingResponseGkehubV1beta({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PolicyBindingResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return PolicyBindingResponseGkehubV1beta(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
