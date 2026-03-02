// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationSecurityPolicy resources.
class OrganizationSecurityPolicyState {
  /// A textual description for the organization security policy.
  final pulumi.Input<String>? description;
  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  final pulumi.Input<String>? displayName;
  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  final pulumi.Input<String>? fingerprint;
  /// The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  final pulumi.Input<String>? parent;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? policyId;
  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  final pulumi.Input<String>? shortName;
  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// **NOTE** : 'FIREWALL' type is deprecated and will be removed in a future major release. Please use 'google_compute_firewall_policy' instead."
  /// Possible values are: `FIREWALL`, `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_INTERNAL_SERVICE`, `CLOUD_ARMOR_NETWORK`.
  final pulumi.Input<String>? type;

  /// Creates a new [OrganizationSecurityPolicyState].
  /// [description] A textual description for the organization security policy.
  /// [displayName] User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  /// [fingerprint] Fingerprint of this resource. This field is used internally during
  /// [parent] The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// [policyId] The unique identifier for the resource. This identifier is defined by the server.
  /// [shortName] User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  /// [type] The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  OrganizationSecurityPolicyState({
    this.description,
    this.displayName,
    this.fingerprint,
    this.parent,
    this.policyId,
    this.shortName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'fingerprint': ?fingerprint,
      'parent': ?parent,
      'policyId': ?policyId,
      'shortName': ?shortName,
      'type': ?type,
    };
  }

  factory OrganizationSecurityPolicyState.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
      shortName: map['shortName'] == null ? null : (map['shortName']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

