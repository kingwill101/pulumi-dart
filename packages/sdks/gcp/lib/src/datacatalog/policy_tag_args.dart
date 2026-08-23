// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_policy_tag_policy_tag_args_doc}
/// The set of arguments for PolicyTag.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_policy_tag_policy_tag_args_doc}
class PolicyTagArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of this policy tag. It must: contain only unicode characters, tabs,
  /// newlines, carriage returns and page breaks; and be at most 2000 bytes long when
  /// encoded in UTF-8. If not set, defaults to an empty description.
  /// If not set, defaults to an empty description.
  final pulumi.Input<String>? description;
  /// User defined name of this policy tag. It must: be unique within the parent
  /// taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;
  /// not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  final pulumi.Input<String> displayName;
  /// Resource name of this policy tag's parent policy tag.
  /// If empty, it means this policy tag is a top level policy tag.
  /// If not set, defaults to an empty string.
  final pulumi.Input<String>? parentPolicyTag;
  /// Taxonomy the policy tag is associated with
  final pulumi.Input<String> taxonomy;

  /// Creates a new [PolicyTagArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this policy tag. It must: contain only unicode characters, tabs,
  /// [displayName] User defined name of this policy tag. It must: be unique within the parent
  /// [parentPolicyTag] Resource name of this policy tag's parent policy tag.
  /// [taxonomy] Taxonomy the policy tag is associated with
  const PolicyTagArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.parentPolicyTag,
    required this.taxonomy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'parentPolicyTag': ?parentPolicyTag,
      'taxonomy': taxonomy,
    };
  }

  factory PolicyTagArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTagArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      parentPolicyTag: (() { final guardedValue = map['parentPolicyTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taxonomy: pulumi.Input.fromValue(map['taxonomy'] as String),
    );
  }
}
