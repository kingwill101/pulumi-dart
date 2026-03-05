// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_cx_version_cx_version_args_doc}
/// The set of arguments for CxVersion.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_version_cx_version_args_doc}
class CxVersionArgs {
  /// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the version. Limit of 64 characters.
  final pulumi.Input<String> displayName;
  /// The Flow to create an Version for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  final pulumi.Input<String>? parent;

  /// Creates a new [CxVersionArgs].
  /// [description] The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the version. Limit of 64 characters.
  /// [parent] The Flow to create an Version for.
  CxVersionArgs({
    this.description,
    required this.displayName,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'parent': ?parent,
    };
  }

  factory CxVersionArgs.fromMap(Map<String, dynamic> map) {
    return CxVersionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

