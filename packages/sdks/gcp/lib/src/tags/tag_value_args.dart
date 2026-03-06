// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_tag_value_tag_value_args_doc}
/// The set of arguments for TagValue.
/// {@endtemplate}
/// {@macro pulumi_tags_tag_value_tag_value_args_doc}
class TagValueArgs {
  /// User-assigned description of the TagValue. Must not exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}.
  final pulumi.Input<String> parent;
  /// Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  final pulumi.Input<String> shortName;

  /// Creates a new [TagValueArgs].
  /// [description] User-assigned description of the TagValue. Must not exceed 256 characters.
  /// [parent] Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}.
  /// [shortName] Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  const TagValueArgs({
    this.description,
    required this.parent,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'parent': parent,
      'shortName': shortName,
    };
  }

  factory TagValueArgs.fromMap(Map<String, dynamic> map) {
    return TagValueArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      shortName: pulumi.Input.fromValue(map['shortName'] as String),
    );
  }
}

