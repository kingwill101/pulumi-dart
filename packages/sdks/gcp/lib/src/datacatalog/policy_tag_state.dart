// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyTag resources.
class PolicyTagState {
  /// Resource names of child policy tags of this policy tag.
  final pulumi.Input<List<String>>? childPolicyTags;
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
  /// [description] Description of this policy tag. It must: contain only unicode characters, tabs,
  /// [displayName] User defined name of this policy tag. It must: be unique within the parent
  /// [name] Resource name of this policy tag, whose format is:
  /// [parentPolicyTag] Resource name of this policy tag's parent policy tag.
  /// [taxonomy] Taxonomy the policy tag is associated with
  PolicyTagState({
    pulumi.Output<List<String>>? childPolicyTags,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentPolicyTag,
    pulumi.Output<String>? taxonomy,
  }) :
      childPolicyTags = pulumi.Input.asOptionalInput<List<String>>(childPolicyTags),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentPolicyTag = pulumi.Input.asOptionalInput<String>(parentPolicyTag),
      taxonomy = pulumi.Input.asOptionalInput<String>(taxonomy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childPolicyTags': ?childPolicyTags,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'parentPolicyTag': ?parentPolicyTag,
      'taxonomy': ?taxonomy,
    };
  }

  factory PolicyTagState.fromMap(Map<String, dynamic> map) {
    return PolicyTagState(
      childPolicyTags: map['childPolicyTags'] == null ? null : pulumi.Output.create<List<String>>((map['childPolicyTags'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentPolicyTag: map['parentPolicyTag'] == null ? null : pulumi.Output.create<String>(map['parentPolicyTag'] as String),
      taxonomy: map['taxonomy'] == null ? null : pulumi.Output.create<String>(map['taxonomy'] as String),
    );
  }
}

