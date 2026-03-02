// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_workforce_pool_provider_scim_token_workforce_pool_provider_scim_token_args_doc}
/// The set of arguments for WorkforcePoolProviderScimToken.
/// {@endtemplate}
/// {@macro pulumi_iam_workforce_pool_provider_scim_token_workforce_pool_provider_scim_token_args_doc}
class WorkforcePoolProviderScimTokenArgs {
  /// A user-specified display name for the scim token. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
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
  /// [displayName] A user-specified display name for the scim token. Cannot exceed 32 characters.
  /// [location] The location for the resource.
  /// [providerId] The ID of the Provider.
  /// [scimTenantId] The ID of the SCIM Tenant.
  /// [scimTokenId] The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  /// [workforcePoolId] The ID of the Workforce Pool.
  WorkforcePoolProviderScimTokenArgs({
    this.displayName,
    required this.location,
    required this.providerId,
    required this.scimTenantId,
    required this.scimTokenId,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      location: (map['location'] as String).input(),
      providerId: (map['providerId'] as String).input(),
      scimTenantId: (map['scimTenantId'] as String).input(),
      scimTokenId: (map['scimTokenId'] as String).input(),
      workforcePoolId: (map['workforcePoolId'] as String).input(),
    );
  }
}

