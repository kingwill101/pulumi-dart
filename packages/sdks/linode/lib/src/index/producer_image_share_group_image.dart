// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProducerImageShareGroupImage {
  /// The description of the Image Share Group
  ///
  /// * `images` - (Optional) A list of Images to include in the Image Share Group.
  final pulumi.Input<String>? description;
  /// (Required) The ID of the Image to share. This must be in the format `private/<image_id>`.
  final pulumi.Input<String> id;
  /// The label of the Image Share Group.
  final pulumi.Input<String>? label;

  /// Creates a new [ProducerImageShareGroupImage].
  /// [description] The description of the Image Share Group
  /// [id] (Required) The ID of the Image to share. This must be in the format `private/<image_id>`.
  /// [label] The label of the Image Share Group.
  ProducerImageShareGroupImage({
    this.description,
    required this.id,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': id,
      'label': ?label,
    };
  }

  factory ProducerImageShareGroupImage.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupImage(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
    );
  }
}

