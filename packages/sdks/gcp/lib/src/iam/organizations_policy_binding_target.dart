// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationsPolicyBindingTarget {
  /// Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// Examples for each one of the following supported principal set types:
  /// * Organization `//cloudresourcemanager.googleapis.com/organizations/ORGANIZATION_ID`
  /// * Workforce Identity: `//iam.googleapis.com/locations/global/workforcePools/WORKFORCE_POOL_ID`
  /// * Workspace Identity: `//iam.googleapis.com/locations/global/workspace/WORKSPACE_ID`
  /// It must be parent by the policy binding's parent (the organization).
  final pulumi.Input<String>? principalSet;

  /// Creates a new [OrganizationsPolicyBindingTarget].
  /// [principalSet] Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  OrganizationsPolicyBindingTarget({
    this.principalSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalSet': ?principalSet,
    };
  }

  factory OrganizationsPolicyBindingTarget.fromMap(Map<String, dynamic> map) {
    return OrganizationsPolicyBindingTarget(
      principalSet: map['principalSet'] == null ? null : (map['principalSet'] as String).input(),
    );
  }
}

