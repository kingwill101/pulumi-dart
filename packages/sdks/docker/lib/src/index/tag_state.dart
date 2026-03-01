// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Name of the source image.
  final pulumi.Input<String>? sourceImage;
  /// ImageID of the source image in the format of `sha256:<<ID>>`
  final pulumi.Input<String>? sourceImageId;
  /// List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  final pulumi.Input<List<String>>? tagTriggers;
  /// Name of the target image.
  final pulumi.Input<String>? targetImage;

  /// Creates a new [TagState].
  /// [sourceImage] Name of the source image.
  /// [sourceImageId] ImageID of the source image in the format of `sha256:<<ID>>`
  /// [tagTriggers] List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  /// [targetImage] Name of the target image.
  TagState({
    pulumi.Output<String>? sourceImage,
    pulumi.Output<String>? sourceImageId,
    pulumi.Output<List<String>>? tagTriggers,
    pulumi.Output<String>? targetImage,
  }) :
      sourceImage = pulumi.Input.asOptionalInput<String>(sourceImage),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      tagTriggers = pulumi.Input.asOptionalInput<List<String>>(tagTriggers),
      targetImage = pulumi.Input.asOptionalInput<String>(targetImage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImage': ?sourceImage,
      'sourceImageId': ?sourceImageId,
      'tagTriggers': ?tagTriggers,
      'targetImage': ?targetImage,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      sourceImage: map['sourceImage'] == null ? null : pulumi.Output.create<String>(map['sourceImage'] as String),
      sourceImageId: map['sourceImageId'] == null ? null : pulumi.Output.create<String>(map['sourceImageId'] as String),
      tagTriggers: map['tagTriggers'] == null ? null : pulumi.Output.create<List<String>>((map['tagTriggers'] as List).cast<String>()),
      targetImage: map['targetImage'] == null ? null : pulumi.Output.create<String>(map['targetImage'] as String),
    );
  }
}

