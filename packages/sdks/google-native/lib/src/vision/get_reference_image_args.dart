// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vision_v1_get_reference_image_args_doc}
/// Arguments for getReferenceImage.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_get_reference_image_args_doc}
class GetReferenceImageArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> referenceImageId;

  /// Creates a new [GetReferenceImageArgs].
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [referenceImageId] Required.
  const GetReferenceImageArgs({
    required this.location,
    required this.productId,
    this.project,
    required this.referenceImageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'productId': productId,
      'project': ?project,
      'referenceImageId': referenceImageId,
    };
  }

  factory GetReferenceImageArgs.fromMap(Map<String, dynamic> map) {
    return GetReferenceImageArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceImageId: pulumi.Input.fromValue(map['referenceImageId'] as String),
    );
  }
}
