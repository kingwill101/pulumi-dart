// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bounding_poly.dart';

/// {@template pulumi_vision_v1_reference_image_args_doc}
/// The set of arguments for ReferenceImage.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_reference_image_args_doc}
class ReferenceImageArgs {
  /// Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
  final pulumi.Input<List<BoundingPoly>>? boundingPolys;
  final pulumi.Input<String>? location;
  /// The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  /// A user-supplied resource id for the ReferenceImage to be added. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final pulumi.Input<String>? referenceImageId;
  /// The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.
  final pulumi.Input<String> uri;

  /// Creates a new [ReferenceImageArgs].
  /// [boundingPolys] Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
  /// [location] Optional.
  /// [name] The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.
  /// [productId] Required.
  /// [project] Optional.
  /// [referenceImageId] A user-supplied resource id for the ReferenceImage to be added. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  /// [uri] The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.
  ReferenceImageArgs({
    pulumi.Output<List<BoundingPoly>>? boundingPolys,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? referenceImageId,
    required pulumi.Output<String> uri,
  }) :
      boundingPolys = pulumi.Input.asOptionalInput<List<BoundingPoly>>(boundingPolys),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project),
      referenceImageId = pulumi.Input.asOptionalInput<String>(referenceImageId),
      uri = pulumi.Input.asInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPolys': ?pulumi.Input.mapOptionalInputValue<List<BoundingPoly>, List<Map<String, dynamic>>>(boundingPolys, (value) => pulumi.Input.encodeList<BoundingPoly, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'productId': productId,
      'project': ?project,
      'referenceImageId': ?referenceImageId,
      'uri': uri,
    };
  }

  factory ReferenceImageArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceImageArgs(
      boundingPolys: map['boundingPolys'] == null ? null : pulumi.Output.create<List<BoundingPoly>>(pulumi.Input.decodeList<BoundingPoly>(map['boundingPolys'], (value) => BoundingPoly.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      referenceImageId: map['referenceImageId'] == null ? null : pulumi.Output.create<String>(map['referenceImageId'] as String),
      uri: pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

