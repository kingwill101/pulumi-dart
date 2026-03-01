// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_get_product_args_doc}
class GetProductArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProductArgs].
  /// [branchId] Required.
  /// [catalogId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  GetProductArgs({
    required pulumi.Output<String> branchId,
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
  }) :
      branchId = pulumi.Input.asInput<String>(branchId),
      catalogId = pulumi.Input.asInput<String>(catalogId),
      location = pulumi.Input.asInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchId': branchId,
      'catalogId': catalogId,
      'location': location,
      'productId': productId,
      'project': ?project,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      branchId: pulumi.Output.create<String>(map['branchId'] as String),
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

