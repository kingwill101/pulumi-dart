// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bounding_poly_response.dart';

/// Result data returned by getReferenceImage.
class GetReferenceImageResult {
  /// Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
  final List<BoundingPolyResponse> boundingPolys;
  /// The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.
  final String name;
  /// The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.
  final String uri;

  /// Creates a new [GetReferenceImageResult].
  /// [boundingPolys] Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
  /// [name] The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.
  /// [uri] The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.
  const GetReferenceImageResult({
    required this.boundingPolys,
    required this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPolys': pulumi.Input.encodeList<BoundingPolyResponse, Map<String, dynamic>>(boundingPolys, (value) => value.toMap()),
      'name': name,
      'uri': uri,
    };
  }

  factory GetReferenceImageResult.fromMap(Map<String, dynamic> map) {
    return GetReferenceImageResult(
      boundingPolys: pulumi.Input.decodeList<BoundingPolyResponse>(map['boundingPolys']!, (value) => BoundingPolyResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      uri: map['uri'] as String,
    );
  }
}
