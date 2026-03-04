// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_index_tag_tag_args_doc}
class TagArgs {
  /// Name of the source image.
  final pulumi.Input<String> sourceImage;

  /// List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  final pulumi.Input<List<String>>? tagTriggers;

  /// Name of the target image.
  final pulumi.Input<String> targetImage;

  /// Creates a new [TagArgs].
  /// [sourceImage] Name of the source image.
  /// [tagTriggers] List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  /// [targetImage] Name of the target image.
  TagArgs({
    required this.sourceImage,
    this.tagTriggers,
    required this.targetImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImage': sourceImage,
      'tagTriggers': ?tagTriggers,
      'targetImage': targetImage,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      sourceImage: pulumi.Input.fromValue(map['sourceImage'] as String),
      tagTriggers: (() {
        final guardedValue = map['tagTriggers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      targetImage: pulumi.Input.fromValue(map['targetImage'] as String),
    );
  }
}
