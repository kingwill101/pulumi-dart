// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_version_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_diagflow_version_version_args_doc}
class VersionArgs {
  /// The developer-provided description of this version.
  final pulumi.Input<String>? description;
  /// The Flow to create an Version for.
  /// Format: projects/&lt;Project ID&gt;/agent.
  final pulumi.Input<String>? parent;

  /// Creates a new [VersionArgs].
  /// [description] The developer-provided description of this version.
  /// [parent] The Flow to create an Version for.
  VersionArgs({
    this.description,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'parent': ?parent,
    };
  }

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

