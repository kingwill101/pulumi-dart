// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vision_v1_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_get_product_args_doc}
class GetProductArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProductArgs].
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  GetProductArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'productId': productId,
      'project': ?project,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

