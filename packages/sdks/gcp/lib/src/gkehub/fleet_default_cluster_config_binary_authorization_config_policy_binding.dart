// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding {
  /// The relative resource name of the binauthz platform policy to audit. GKE
  /// platform policies have the following format:
  /// `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final pulumi.Input<String>? name;

  /// Creates a new [FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding].
  /// [name] The relative resource name of the binauthz platform policy to audit. GKE
  const FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding.fromMap(Map<String, dynamic> map) {
    return FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

