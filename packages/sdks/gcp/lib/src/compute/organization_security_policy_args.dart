// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_advanced_options_config.dart';

/// {@template pulumi_compute_organization_security_policy_organization_security_policy_args_doc}
/// The set of arguments for OrganizationSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_organization_security_policy_organization_security_policy_args_doc}
class OrganizationSecurityPolicyArgs {
  /// Additional options for this security policy.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyAdvancedOptionsConfig?>? advancedOptionsConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A textual description for the organization security policy.
  final pulumi.Input<String?>? description;
  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  final pulumi.Input<String?>? displayName;
  /// The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  final pulumi.Input<String> parent;
  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  final pulumi.Input<String?>? shortName;
  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// **NOTE** : 'FIREWALL' type is deprecated and will be removed in a future major release. Please use 'google_compute_firewall_policy' instead."
  /// Possible values are: `FIREWALL`, `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_INTERNAL_SERVICE`, `CLOUD_ARMOR_NETWORK`.
  final pulumi.Input<String?>? type;

  /// Creates a new [OrganizationSecurityPolicyArgs].
  /// [advancedOptionsConfig] Additional options for this security policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A textual description for the organization security policy.
  /// [displayName] User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  /// [parent] The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// [shortName] User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  /// [type] The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  const OrganizationSecurityPolicyArgs({
    this.advancedOptionsConfig,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.parent,
    this.shortName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedOptionsConfig': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(advancedOptionsConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'parent': parent,
      'shortName': ?shortName,
      'type': ?type,
    };
  }

  factory OrganizationSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyArgs(
      advancedOptionsConfig: (() { final guardedValue = map['advancedOptionsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
