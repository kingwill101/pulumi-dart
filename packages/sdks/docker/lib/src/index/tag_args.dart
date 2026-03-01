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
    required pulumi.Output<String> sourceImage,
    pulumi.Output<List<String>>? tagTriggers,
    required pulumi.Output<String> targetImage,
  }) :
      sourceImage = pulumi.Input.asInput<String>(sourceImage),
      tagTriggers = pulumi.Input.asOptionalInput<List<String>>(tagTriggers),
      targetImage = pulumi.Input.asInput<String>(targetImage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImage': sourceImage,
      'tagTriggers': ?tagTriggers,
      'targetImage': targetImage,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      sourceImage: pulumi.Output.create<String>(map['sourceImage'] as String),
      tagTriggers: map['tagTriggers'] == null ? null : pulumi.Output.create<List<String>>((map['tagTriggers'] as List).cast<String>()),
      targetImage: pulumi.Output.create<String>(map['targetImage'] as String),
    );
  }
}

