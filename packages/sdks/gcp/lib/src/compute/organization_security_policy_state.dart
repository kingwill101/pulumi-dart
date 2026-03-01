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
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? shortName,
    pulumi.Output<String>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      shortName = pulumi.Input.asOptionalInput<String>(shortName),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      shortName: map['shortName'] == null ? null : pulumi.Output.create<String>(map['shortName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

