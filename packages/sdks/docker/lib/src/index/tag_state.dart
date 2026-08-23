// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Name of the source image.
  final pulumi.Input<String>? sourceImage;
  /// ImageID of the source image in the format of `sha256:&lt;&lt;ID&gt;&gt;`
  final pulumi.Input<String>? sourceImageId;
  /// List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  final pulumi.Input<List<String>>? tagTriggers;
  /// Name of the target image.
  final pulumi.Input<String>? targetImage;

  /// Creates a new [TagState].
  /// [sourceImage] Name of the source image.
  /// [sourceImageId] ImageID of the source image in the format of `sha256:&lt;&lt;ID&gt;&gt;`
  /// [tagTriggers] List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  /// [targetImage] Name of the target image.
  const TagState({
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
      sourceImage: (() { final guardedValue = map['sourceImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagTriggers: (() { final guardedValue = map['tagTriggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetImage: (() { final guardedValue = map['targetImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
