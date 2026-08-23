// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyTag resources.
class PolicyTagState {
  /// Resource names of child policy tags of this policy tag.
  final pulumi.Input<List<String>>? childPolicyTags;
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
  final pulumi.Input<String>? displayName;
  /// Resource name of this policy tag, whose format is:
  /// "projects/{project}/locations/{region}/taxonomies/{taxonomy}/policyTags/{policytag}"
  final pulumi.Input<String>? name;
  /// Resource name of this policy tag's parent policy tag.
  /// If empty, it means this policy tag is a top level policy tag.
  /// If not set, defaults to an empty string.
  final pulumi.Input<String>? parentPolicyTag;
  /// Taxonomy the policy tag is associated with
  final pulumi.Input<String>? taxonomy;

  /// Creates a new [PolicyTagState].
  /// [childPolicyTags] Resource names of child policy tags of this policy tag.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this policy tag. It must: contain only unicode characters, tabs,
  /// [displayName] User defined name of this policy tag. It must: be unique within the parent
  /// [name] Resource name of this policy tag, whose format is:
  /// [parentPolicyTag] Resource name of this policy tag's parent policy tag.
  /// [taxonomy] Taxonomy the policy tag is associated with
  const PolicyTagState({
    this.childPolicyTags,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.name,
    this.parentPolicyTag,
    this.taxonomy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childPolicyTags': ?childPolicyTags,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'parentPolicyTag': ?parentPolicyTag,
      'taxonomy': ?taxonomy,
    };
  }

  factory PolicyTagState.fromMap(Map<String, dynamic> map) {
    return PolicyTagState(
      childPolicyTags: (() { final guardedValue = map['childPolicyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentPolicyTag: (() { final guardedValue = map['parentPolicyTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taxonomy: (() { final guardedValue = map['taxonomy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
