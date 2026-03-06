// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stack_script_stack_script_args_doc}
/// The set of arguments for StackScript.
/// {@endtemplate}
/// {@macro pulumi_index_stack_script_stack_script_args_doc}
class StackScriptArgs {
  /// A description for the StackScript.
  final pulumi.Input<String> description;
  /// A set of Image IDs representing the Images that this StackScript is compatible for deploying with. `any/all` indicates that all available image distributions, including private images, are accepted. Currently private image IDs are not supported.
  ///
  /// - - -
  final pulumi.Input<List<String>> images;
  /// This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private. *Changing `is_public` forces the creation of a new StackScript*
  final pulumi.Input<bool>? isPublic;
  /// The StackScript's label is for display purposes only.
  final pulumi.Input<String> label;
  /// This field allows you to add notes for the set of revisions made to this StackScript.
  final pulumi.Input<String>? revNote;
  /// The script to execute when provisioning a new Linode with this StackScript.
  final pulumi.Input<String> script;

  /// Creates a new [StackScriptArgs].
  /// [description] A description for the StackScript.
  /// [images] A set of Image IDs representing the Images that this StackScript is compatible for deploying with. `any/all` indicates that all available image distributions, including private images, are accepted. Currently private image IDs are not supported.
  /// [isPublic] This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private. *Changing `is_public` forces the creation of a new StackScript*
  /// [label] The StackScript's label is for display purposes only.
  /// [revNote] This field allows you to add notes for the set of revisions made to this StackScript.
  /// [script] The script to execute when provisioning a new Linode with this StackScript.
  const StackScriptArgs({
    required this.description,
    required this.images,
    this.isPublic,
    required this.label,
    this.revNote,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'images': images,
      'isPublic': ?isPublic,
      'label': label,
      'revNote': ?revNote,
      'script': script,
    };
  }

  factory StackScriptArgs.fromMap(Map<String, dynamic> map) {
    return StackScriptArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      images: pulumi.Input.fromValue((map['images'] as List).cast<String>()),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      revNote: (() { final guardedValue = map['revNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: pulumi.Input.fromValue(map['script'] as String),
    );
  }
}

