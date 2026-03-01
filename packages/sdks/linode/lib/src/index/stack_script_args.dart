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
  StackScriptArgs({
    required pulumi.Output<String> description,
    required pulumi.Output<List<String>> images,
    pulumi.Output<bool>? isPublic,
    required pulumi.Output<String> label,
    pulumi.Output<String>? revNote,
    required pulumi.Output<String> script,
  }) :
      description = pulumi.Input.asInput<String>(description),
      images = pulumi.Input.asInput<List<String>>(images),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      label = pulumi.Input.asInput<String>(label),
      revNote = pulumi.Input.asOptionalInput<String>(revNote),
      script = pulumi.Input.asInput<String>(script);

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
      description: pulumi.Output.create<String>(map['description'] as String),
      images: pulumi.Output.create<List<String>>((map['images'] as List).cast<String>()),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      label: pulumi.Output.create<String>(map['label'] as String),
      revNote: map['revNote'] == null ? null : pulumi.Output.create<String>(map['revNote'] as String),
      script: pulumi.Output.create<String>(map['script'] as String),
    );
  }
}

