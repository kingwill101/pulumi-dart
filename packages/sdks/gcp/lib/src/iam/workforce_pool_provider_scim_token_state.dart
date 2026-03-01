// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkforcePoolProviderScimToken resources.
class WorkforcePoolProviderScimTokenState {
  /// A user-specified display name for the scim token. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// The location for the resource.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the scim token.
  /// Format: `locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}/tokens/{scim_token_id}`
  final pulumi.Input<String>? name;
  /// The ID of the Provider.
  final pulumi.Input<String>? providerId;
  /// The ID of the SCIM Tenant.
  final pulumi.Input<String>? scimTenantId;
  /// The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  final pulumi.Input<String>? scimTokenId;
  /// The token string provided to the IdP for authentication and will be set only during creation.
  final pulumi.Input<String>? securityToken;
  /// The current state of the scim token.
  /// * ACTIVE: The token is active and may be used to provision users and groups.
  /// * DELETED: The token is soft-deleted. Soft-deleted tokens are permanently deleted after approximately 30 days.
  final pulumi.Input<String>? state;
  /// The ID of the Workforce Pool.
  final pulumi.Input<String>? workforcePoolId;

  /// Creates a new [WorkforcePoolProviderScimTokenState].
  /// [displayName] A user-specified display name for the scim token. Cannot exceed 32 characters.
  /// [location] The location for the resource.
  /// [name] Identifier. The resource name of the scim token.
  /// [providerId] The ID of the Provider.
  /// [scimTenantId] The ID of the SCIM Tenant.
  /// [scimTokenId] The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  /// [securityToken] The token string provided to the IdP for authentication and will be set only during creation.
  /// [state] The current state of the scim token.
  /// [workforcePoolId] The ID of the Workforce Pool.
  WorkforcePoolProviderScimTokenState({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? providerId,
    pulumi.Output<String>? scimTenantId,
    pulumi.Output<String>? scimTokenId,
    pulumi.Output<String>? securityToken,
    pulumi.Output<String>? state,
    pulumi.Output<String>? workforcePoolId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      providerId = pulumi.Input.asOptionalInput<String>(providerId),
      scimTenantId = pulumi.Input.asOptionalInput<String>(scimTenantId),
      scimTokenId = pulumi.Input.asOptionalInput<String>(scimTokenId),
      securityToken = pulumi.Input.asOptionalInput<String>(securityToken),
      state = pulumi.Input.asOptionalInput<String>(state),
      workforcePoolId = pulumi.Input.asOptionalInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'providerId': ?providerId,
      'scimTenantId': ?scimTenantId,
      'scimTokenId': ?scimTokenId,
      'securityToken': ?securityToken,
      'state': ?state,
      'workforcePoolId': ?workforcePoolId,
    };
  }

  factory WorkforcePoolProviderScimTokenState.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderScimTokenState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      providerId: map['providerId'] == null ? null : pulumi.Output.create<String>(map['providerId'] as String),
      scimTenantId: map['scimTenantId'] == null ? null : pulumi.Output.create<String>(map['scimTenantId'] as String),
      scimTokenId: map['scimTokenId'] == null ? null : pulumi.Output.create<String>(map['scimTokenId'] as String),
      securityToken: map['securityToken'] == null ? null : pulumi.Output.create<String>(map['securityToken'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      workforcePoolId: map['workforcePoolId'] == null ? null : pulumi.Output.create<String>(map['workforcePoolId'] as String),
    );
  }
}

