// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectsPolicyBindingTarget {
  /// Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// Examples for each one of the following supported principal set types:
  /// * Project:
  /// * `//cloudresourcemanager.googleapis.com/projects/PROJECT_NUMBER`
  /// * `//cloudresourcemanager.googleapis.com/projects/PROJECT_ID`
  /// * Workload Identity Pool: `//iam.googleapis.com/projects/PROJECT_NUMBER/locations/LOCATION/workloadIdentityPools/WORKLOAD_POOL_ID`
  /// It must be parent by the policy binding's parent (the project).
  final pulumi.Input<String>? principalSet;

  /// Creates a new [ProjectsPolicyBindingTarget].
  /// [principalSet] Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  ProjectsPolicyBindingTarget({
    this.principalSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalSet': ?principalSet,
    };
  }

  factory ProjectsPolicyBindingTarget.fromMap(Map<String, dynamic> map) {
    return ProjectsPolicyBindingTarget(
      principalSet: map['principalSet'] == null ? null : (map['principalSet'] as String).input(),
    );
  }
}

