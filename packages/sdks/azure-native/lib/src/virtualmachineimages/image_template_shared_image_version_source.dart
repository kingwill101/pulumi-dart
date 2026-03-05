// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an image source that is an image version in an Azure Compute Gallery or a Direct Shared Gallery.
class ImageTemplateSharedImageVersionSource {
  /// ARM resource id of the image version. When image version name is 'latest', the version is evaluated when the image build takes place.
  final pulumi.Input<String> imageVersionId;
  /// Specifies the type of source image you want to start with.
  /// Expected value is 'SharedImageVersion'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateSharedImageVersionSource].
  /// [imageVersionId] ARM resource id of the image version. When image version name is 'latest', the version is evaluated when the image build takes place.
  /// [type] Specifies the type of source image you want to start with.
  ImageTemplateSharedImageVersionSource({
    required this.imageVersionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersionId': imageVersionId,
      'type': type,
    };
  }

  factory ImageTemplateSharedImageVersionSource.fromMap(Map<String, dynamic> map) {
    return ImageTemplateSharedImageVersionSource(
      imageVersionId: pulumi.Input.fromValue(map['imageVersionId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

