// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkforcePoolProviderScimTenant resources.
class WorkforcePoolProviderScimTenantState {
  /// Represents the base URI as defined in [RFC 7644, Section
  /// 1.3](https://datatracker.ietf.org/doc/html/rfc7644#section-1.3). Clients
  /// must use this as the root address for managing resources under the tenant.
  /// Format:
  /// https://iamscim.googleapis.com/{version}/{tenant_id}/
  final pulumi.Input<String>? baseUri;
  /// Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  final pulumi.Input<Map<String, String>>? claimMapping;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// Deletes the SCIM tenant immediately. This operation cannot be undone.
  final pulumi.Input<bool>? hardDelete;
  /// The location for the resource.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the scim tenant.
  /// Format: `locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}
  final pulumi.Input<String>? name;
  /// The ID of the provider.
  final pulumi.Input<String>? providerId;
  /// The timestamp that represents the time when the SCIM tenant is purged.
  final pulumi.Input<String>? purgeTime;
  /// The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String>? scimTenantId;
  /// Service Agent created by SCIM Tenant API. SCIM tokens created under
  /// this tenant will be attached to this service agent.
  final pulumi.Input<String>? serviceAgent;
  /// The current state of the scim tenant.
  /// * ACTIVE: The scim tenant is active and may be used to validate authentication credentials.
  /// * DELETED: The scim tenant is soft-deleted. Soft-deleted scim tenants are permanently
  /// deleted after approximately 30 days.
  final pulumi.Input<String>? state;
  /// The ID of the workforce pool.
  final pulumi.Input<String>? workforcePoolId;

  /// Creates a new [WorkforcePoolProviderScimTenantState].
  /// [baseUri] Represents the base URI as defined in [RFC 7644, Section
  /// [claimMapping] Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  /// [description] A user-specified description of the provider. Cannot exceed 256 characters.
  /// [displayName] A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  /// [hardDelete] Deletes the SCIM tenant immediately. This operation cannot be undone.
  /// [location] The location for the resource.
  /// [name] Identifier. The resource name of the scim tenant.
  /// [providerId] The ID of the provider.
  /// [purgeTime] The timestamp that represents the time when the SCIM tenant is purged.
  /// [scimTenantId] The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// [serviceAgent] Service Agent created by SCIM Tenant API. SCIM tokens created under
  /// [state] The current state of the scim tenant.
  /// [workforcePoolId] The ID of the workforce pool.
  WorkforcePoolProviderScimTenantState({
    this.baseUri,
    this.claimMapping,
    this.description,
    this.displayName,
    this.hardDelete,
    this.location,
    this.name,
    this.providerId,
    this.purgeTime,
    this.scimTenantId,
    this.serviceAgent,
    this.state,
    this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUri': ?baseUri,
      'claimMapping': ?claimMapping,
      'description': ?description,
      'displayName': ?displayName,
      'hardDelete': ?hardDelete,
      'location': ?location,
      'name': ?name,
      'providerId': ?providerId,
      'purgeTime': ?purgeTime,
      'scimTenantId': ?scimTenantId,
      'serviceAgent': ?serviceAgent,
      'state': ?state,
      'workforcePoolId': ?workforcePoolId,
    };
  }

  factory WorkforcePoolProviderScimTenantState.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderScimTenantState(
      baseUri: map['baseUri'] == null ? null : (map['baseUri'] as String).input(),
      claimMapping: map['claimMapping'] == null ? null : ((map['claimMapping'] as Map).cast<String, String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      hardDelete: map['hardDelete'] == null ? null : (map['hardDelete'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      providerId: map['providerId'] == null ? null : (map['providerId'] as String).input(),
      purgeTime: map['purgeTime'] == null ? null : (map['purgeTime'] as String).input(),
      scimTenantId: map['scimTenantId'] == null ? null : (map['scimTenantId'] as String).input(),
      serviceAgent: map['serviceAgent'] == null ? null : (map['serviceAgent'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      workforcePoolId: map['workforcePoolId'] == null ? null : (map['workforcePoolId'] as String).input(),
    );
  }
}

