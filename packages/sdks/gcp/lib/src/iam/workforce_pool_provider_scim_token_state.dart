// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkforcePoolProviderScimToken resources.
class WorkforcePoolProviderScimTokenState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A user-specified display name for the scim token. Cannot exceed 32 characters.
  final pulumi.Input<String?>? displayName;
  /// The location for the resource.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the scim token.
  /// Format: `locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}/tokens/{scim_token_id}`
  final pulumi.Input<String?>? name;
  /// The ID of the Provider.
  final pulumi.Input<String?>? providerId;
  /// The ID of the SCIM Tenant.
  final pulumi.Input<String?>? scimTenantId;
  /// The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  final pulumi.Input<String?>? scimTokenId;
  /// The token string provided to the IdP for authentication and will be set only during creation.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? securityToken;
  /// The current state of the scim token.
  /// * ACTIVE: The token is active and may be used to provision users and groups.
  /// * DELETED: The token is soft-deleted. Soft-deleted tokens are permanently deleted after approximately 30 days.
  final pulumi.Input<String?>? state;
  /// The ID of the Workforce Pool.
  final pulumi.Input<String?>? workforcePoolId;

  /// Creates a new [WorkforcePoolProviderScimTokenState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A user-specified display name for the scim token. Cannot exceed 32 characters.
  /// [location] The location for the resource.
  /// [name] Identifier. The resource name of the scim token.
  /// [providerId] The ID of the Provider.
  /// [scimTenantId] The ID of the SCIM Tenant.
  /// [scimTokenId] The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  /// [securityToken] The token string provided to the IdP for authentication and will be set only during creation.
  /// [state] The current state of the scim token.
  /// [workforcePoolId] The ID of the Workforce Pool.
  const WorkforcePoolProviderScimTokenState({
    this.deletionPolicy,
    this.displayName,
    this.location,
    this.name,
    this.providerId,
    this.scimTenantId,
    this.scimTokenId,
    this.securityToken,
    this.state,
    this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerId: (() { final guardedValue = map['providerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scimTenantId: (() { final guardedValue = map['scimTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scimTokenId: (() { final guardedValue = map['scimTokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityToken: (() { final guardedValue = map['securityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforcePoolId: (() { final guardedValue = map['workforcePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
