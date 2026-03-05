// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'producer_image_share_group_image.dart';

/// {@template pulumi_index_producer_image_share_group_producer_image_share_group_args_doc}
/// The set of arguments for ProducerImageShareGroup.
/// {@endtemplate}
/// {@macro pulumi_index_producer_image_share_group_producer_image_share_group_args_doc}
class ProducerImageShareGroupArgs {
  /// The description of the Image Share Group
  ///
  /// * `images` - (Optional) A list of Images to include in the Image Share Group.
  final pulumi.Input<String>? description;
  /// The images to be shared using this Image Share Group.
  final pulumi.Input<List<ProducerImageShareGroupImage>>? images;
  /// The label of the Image Share Group.
  final pulumi.Input<String> label;

  /// Creates a new [ProducerImageShareGroupArgs].
  /// [description] The description of the Image Share Group
  /// [images] The images to be shared using this Image Share Group.
  /// [label] The label of the Image Share Group.
  ProducerImageShareGroupArgs({
    this.description,
    this.images,
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'images': ?pulumi.Input.mapOptionalInputValue<List<ProducerImageShareGroupImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<ProducerImageShareGroupImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
    };
  }

  factory ProducerImageShareGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProducerImageShareGroupImage>(guardedValue, (value) => ProducerImageShareGroupImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
    );
  }
}

