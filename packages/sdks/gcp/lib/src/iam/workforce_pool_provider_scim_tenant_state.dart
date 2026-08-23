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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const WorkforcePoolProviderScimTenantState({
    this.baseUri,
    this.claimMapping,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      baseUri: (() { final guardedValue = map['baseUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      claimMapping: (() { final guardedValue = map['claimMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardDelete: (() { final guardedValue = map['hardDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerId: (() { final guardedValue = map['providerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purgeTime: (() { final guardedValue = map['purgeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scimTenantId: (() { final guardedValue = map['scimTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAgent: (() { final guardedValue = map['serviceAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforcePoolId: (() { final guardedValue = map['workforcePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
