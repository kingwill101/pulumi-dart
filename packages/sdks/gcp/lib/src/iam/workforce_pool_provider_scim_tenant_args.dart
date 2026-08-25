// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_workforce_pool_provider_scim_tenant_workforce_pool_provider_scim_tenant_args_doc}
/// The set of arguments for WorkforcePoolProviderScimTenant.
/// {@endtemplate}
/// {@macro pulumi_iam_workforce_pool_provider_scim_tenant_workforce_pool_provider_scim_tenant_args_doc}
class WorkforcePoolProviderScimTenantArgs {
  /// Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  final pulumi.Input<Map<String, String>?>? claimMapping;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  final pulumi.Input<String?>? description;
  /// A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  final pulumi.Input<String?>? displayName;
  /// Deletes the SCIM tenant immediately. This operation cannot be undone.
  final pulumi.Input<bool?>? hardDelete;
  /// The location for the resource.
  final pulumi.Input<String> location;
  /// The ID of the provider.
  final pulumi.Input<String> providerId;
  /// The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> scimTenantId;
  /// The ID of the workforce pool.
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [WorkforcePoolProviderScimTenantArgs].
  /// [claimMapping] Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A user-specified description of the provider. Cannot exceed 256 characters.
  /// [displayName] A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  /// [hardDelete] Deletes the SCIM tenant immediately. This operation cannot be undone.
  /// [location] The location for the resource.
  /// [providerId] The ID of the provider.
  /// [scimTenantId] The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// [workforcePoolId] The ID of the workforce pool.
  const WorkforcePoolProviderScimTenantArgs({
    this.claimMapping,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.hardDelete,
    required this.location,
    required this.providerId,
    required this.scimTenantId,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMapping': ?claimMapping,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'hardDelete': ?hardDelete,
      'location': location,
      'providerId': providerId,
      'scimTenantId': scimTenantId,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory WorkforcePoolProviderScimTenantArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderScimTenantArgs(
      claimMapping: (() { final guardedValue = map['claimMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardDelete: (() { final guardedValue = map['hardDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      providerId: pulumi.Input.fromValue(map['providerId'] as String),
      scimTenantId: pulumi.Input.fromValue(map['scimTenantId'] as String),
      workforcePoolId: pulumi.Input.fromValue(map['workforcePoolId'] as String),
    );
  }
}
