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
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
    );
  }
}

