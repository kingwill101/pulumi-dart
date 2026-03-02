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
    this.sourceImage,
    this.sourceImageId,
    this.tagTriggers,
    this.targetImage,
  });

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
      sourceImage: map['sourceImage'] == null ? null : (map['sourceImage'] as String).input(),
      sourceImageId: map['sourceImageId'] == null ? null : (map['sourceImageId'] as String).input(),
      tagTriggers: map['tagTriggers'] == null ? null : ((map['tagTriggers'] as List).cast<String>()).input(),
      targetImage: map['targetImage'] == null ? null : (map['targetImage'] as String).input(),
    );
  }
}

