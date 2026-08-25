// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_source_source_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_source_source_args_doc}
class SourceArgs {
  /// The description of the source (max of 1024 characters).
  final pulumi.Input<String?>? description;
  /// The source’s display name. A source’s display name must be unique
  /// amongst its siblings, for example, two sources with the same parent
  /// can't share the same display name. The display name must start and end
  /// with a letter or digit, may contain letters, digits, spaces, hyphens,
  /// and underscores, and can be no longer than 32 characters.
  final pulumi.Input<String> displayName;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;

  /// Creates a new [SourceArgs].
  /// [description] The description of the source (max of 1024 characters).
  /// [displayName] The source’s display name. A source’s display name must be unique
  /// [organization] The organization whose Cloud Security Command Center the Source
  const SourceArgs({
    this.description,
    required this.displayName,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'organization': organization,
    };
  }

  factory SourceArgs.fromMap(Map<String, dynamic> map) {
    return SourceArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
    );
  }
}
