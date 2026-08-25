// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_workforce_pool_provider_scim_token_workforce_pool_provider_scim_token_args_doc}
/// The set of arguments for WorkforcePoolProviderScimToken.
/// {@endtemplate}
/// {@macro pulumi_iam_workforce_pool_provider_scim_token_workforce_pool_provider_scim_token_args_doc}
class WorkforcePoolProviderScimTokenArgs {
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
  final pulumi.Input<String> location;
  /// The ID of the Provider.
  final pulumi.Input<String> providerId;
  /// The ID of the SCIM Tenant.
  final pulumi.Input<String> scimTenantId;
  /// The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  final pulumi.Input<String> scimTokenId;
  /// The ID of the Workforce Pool.
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [WorkforcePoolProviderScimTokenArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A user-specified display name for the scim token. Cannot exceed 32 characters.
  /// [location] The location for the resource.
  /// [providerId] The ID of the Provider.
  /// [scimTenantId] The ID of the SCIM Tenant.
  /// [scimTokenId] The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  /// [workforcePoolId] The ID of the Workforce Pool.
  const WorkforcePoolProviderScimTokenArgs({
    this.deletionPolicy,
    this.displayName,
    required this.location,
    required this.providerId,
    required this.scimTenantId,
    required this.scimTokenId,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'location': location,
      'providerId': providerId,
      'scimTenantId': scimTenantId,
      'scimTokenId': scimTokenId,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory WorkforcePoolProviderScimTokenArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderScimTokenArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      providerId: pulumi.Input.fromValue(map['providerId'] as String),
      scimTenantId: pulumi.Input.fromValue(map['scimTenantId'] as String),
      scimTokenId: pulumi.Input.fromValue(map['scimTokenId'] as String),
      workforcePoolId: pulumi.Input.fromValue(map['workforcePoolId'] as String),
    );
  }
}
