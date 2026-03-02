// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2OrganizationSource resources.
class V2OrganizationSourceState {
  /// The description of the source (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// The source’s display name. A source’s display name must be unique
  /// amongst its siblings, for example, two sources with the same parent
  /// can't share the same display name. The display name must start and end
  /// with a letter or digit, may contain letters, digits, spaces, hyphens,
  /// and underscores, and can be no longer than 32 characters.
  final pulumi.Input<String>? displayName;
  /// The resource name of this source, in the format
  /// `organizations/{{organization}}/sources/{{source}}`.
  final pulumi.Input<String>? name;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String>? organization;

  /// Creates a new [V2OrganizationSourceState].
  /// [description] The description of the source (max of 1024 characters).
  /// [displayName] The source’s display name. A source’s display name must be unique
  /// [name] The resource name of this source, in the format
  /// [organization] The organization whose Cloud Security Command Center the Source
  V2OrganizationSourceState({
    this.description,
    this.displayName,
    this.name,
    this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'organization': ?organization,
    };
  }

  factory V2OrganizationSourceState.fromMap(Map<String, dynamic> map) {
    return V2OrganizationSourceState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
    );
  }
}

