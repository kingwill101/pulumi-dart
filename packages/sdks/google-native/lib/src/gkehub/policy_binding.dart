// ignore_for_file: unused_element, unnecessary_cast


/// Binauthz policy that applies to this cluster.
class PolicyBinding {
  /// The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final String? name;

  /// Creates a new [PolicyBinding].
  /// [name] The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  PolicyBinding({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PolicyBinding.fromMap(Map<String, dynamic> map) {
    return PolicyBinding(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

