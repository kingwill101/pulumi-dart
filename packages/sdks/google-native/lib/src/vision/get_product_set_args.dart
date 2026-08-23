// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vision_v1_get_product_set_args_doc}
/// Arguments for getProductSet.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_get_product_set_args_doc}
class GetProductSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProductSetArgs].
  /// [location] Required.
  /// [productSetId] Required.
  /// [project] Optional.
  const GetProductSetArgs({
    required this.location,
    required this.productSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'productSetId': productSetId,
      'project': ?project,
    };
  }

  factory GetProductSetArgs.fromMap(Map<String, dynamic> map) {
    return GetProductSetArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      productSetId: pulumi.Input.fromValue(map['productSetId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
