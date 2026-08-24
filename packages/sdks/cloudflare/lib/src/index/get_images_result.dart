// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_result_image.dart';

class GetImagesResult {
  final pulumi.Input<List<GetImagesResultImage>> images;

  /// Creates a new [GetImagesResult].
  /// [images] Required.
  const GetImagesResult({
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': pulumi.Input.mapInputValue<List<GetImagesResultImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<GetImagesResultImage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      images: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImagesResultImage>(map['images']!, (value) => GetImagesResultImage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
