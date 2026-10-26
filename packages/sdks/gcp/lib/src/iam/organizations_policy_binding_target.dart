// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationsPolicyBindingTarget {
  /// Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// Examples for each one of the following supported principal set types:
  /// * Organization `//cloudresourcemanager.googleapis.com/organizations/ORGANIZATION_ID`
  /// * Workforce Identity: `//iam.googleapis.com/locations/global/workforcePools/WORKFORCE_POOL_ID`
  /// * Workspace Identity: `//iam.googleapis.com/locations/global/workspace/WORKSPACE_ID`
  /// It must be parent by the policy binding's parent (the organization).
  final pulumi.Input<String?>? principalSet;
  /// Immutable. Full Resource Name of the resource used for access policy bindings.
  /// Use this together with `policyKind = "ACCESS"`. Examples:
  /// * Organization: `//cloudresourcemanager.googleapis.com/organizations/ORGANIZATION_ID`
  /// It must be the policy binding's parent (the organization).
  final pulumi.Input<String?>? resource;

  /// Creates a new [OrganizationsPolicyBindingTarget].
  /// [principalSet] Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// [resource] Immutable. Full Resource Name of the resource used for access policy bindings.
  const OrganizationsPolicyBindingTarget({
    this.principalSet,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalSet': ?principalSet,
      'resource': ?resource,
    };
  }

  factory OrganizationsPolicyBindingTarget.fromMap(Map<String, dynamic> map) {
    return OrganizationsPolicyBindingTarget(
      principalSet: (() { final guardedValue = map['principalSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
