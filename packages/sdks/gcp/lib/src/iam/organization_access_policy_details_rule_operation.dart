// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationAccessPolicyDetailsRuleOperation {
  /// Specifies the permissions that this rule excludes from the set of
  /// affected permissions given by `permissions`. If a permission appears in
  /// `permissions` _and_ in `excludedPermissions` then it will _not_ be
  /// subject to the policy effect.
  /// The excluded permissions can be specified using the same syntax as
  /// `permissions`.
  final pulumi.Input<List<String>>? excludedPermissions;
  /// The permissions that are explicitly affected by this rule. Each
  /// permission uses the format `{service_fqdn}/{resource}.{verb}`, where
  /// `{service_fqdn}` is the fully qualified domain name for the service.
  /// Currently supported permissions are as follows:
  /// * `eventarc.googleapis.com/messageBuses.publish`.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [OrganizationAccessPolicyDetailsRuleOperation].
  /// [excludedPermissions] Specifies the permissions that this rule excludes from the set of
  /// [permissions] The permissions that are explicitly affected by this rule. Each
  const OrganizationAccessPolicyDetailsRuleOperation({
    this.excludedPermissions,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedPermissions': ?excludedPermissions,
      'permissions': permissions,
    };
  }

  factory OrganizationAccessPolicyDetailsRuleOperation.fromMap(Map<String, dynamic> map) {
    return OrganizationAccessPolicyDetailsRuleOperation(
      excludedPermissions: (() { final guardedValue = map['excludedPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
    );
  }
}
