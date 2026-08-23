// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;
import 'package:pulumi_aws/providers.dart' as pulumi_aws_providers;

/// Contains the AWS Role and Provider necessary to override the `[system:master]` entity ARN. This is an optional argument used when creating `Cluster`. Read more: https://docs.aws.amazon.com/eks/latest/userguide/add-user-role.html
///
/// Note: This option is only supported with Pulumi nodejs programs. Please use `ProviderCredentialOpts` as an alternative instead.
class CreationRoleProvider {
  final pulumi.Input<pulumi_aws_providers.ProviderProvider> provider;
  final pulumi.Input<pulumi_aws_iam.Role> role;

  /// Creates a new [CreationRoleProvider].
  /// [provider] Required.
  /// [role] Required.
  const CreationRoleProvider({
    required this.provider,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': provider,
      'role': role,
    };
  }

  factory CreationRoleProvider.fromMap(Map<String, dynamic> map) {
    return CreationRoleProvider(
      provider: pulumi.Input.fromValue(map['provider'] as pulumi_aws_providers.ProviderProvider),
      role: pulumi.Input.fromValue(map['role'] as pulumi_aws_iam.Role),
    );
  }
}
