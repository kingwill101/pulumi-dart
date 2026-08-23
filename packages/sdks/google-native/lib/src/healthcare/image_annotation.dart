// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bounding_poly.dart';

/// Image annotation.
class ImageAnnotation {
  /// The list of polygons outlining the sensitive regions in the image.
  final pulumi.Input<List<BoundingPoly>>? boundingPolys;
  /// 0-based index of the image frame. For example, an image frame in a DICOM instance.
  final pulumi.Input<int>? frameIndex;

  /// Creates a new [ImageAnnotation].
  /// [boundingPolys] The list of polygons outlining the sensitive regions in the image.
  /// [frameIndex] 0-based index of the image frame. For example, an image frame in a DICOM instance.
  const ImageAnnotation({
    this.boundingPolys,
    this.frameIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPolys': ?pulumi.Input.mapOptionalInputValue<List<BoundingPoly>, List<Map<String, dynamic>>>(boundingPolys, (value) => pulumi.Input.encodeList<BoundingPoly, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frameIndex': ?frameIndex,
    };
  }

  factory ImageAnnotation.fromMap(Map<String, dynamic> map) {
    return ImageAnnotation(
      boundingPolys: (() { final guardedValue = map['boundingPolys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BoundingPoly>(guardedValue, (value) => BoundingPoly.fromMap((value as Map).cast<String, dynamic>()))); })(),
      frameIndex: (() { final guardedValue = map['frameIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
