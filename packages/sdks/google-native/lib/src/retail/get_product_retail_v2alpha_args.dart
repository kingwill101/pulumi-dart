// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2alpha_get_product_retail_v2alpha_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_retail_v2alpha_get_product_retail_v2alpha_args_doc}
class GetProductRetailV2alphaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProductRetailV2alphaArgs].
  /// [branchId] Required.
  /// [catalogId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  GetProductRetailV2alphaArgs({
    required this.branchId,
    required this.catalogId,
    required this.location,
    required this.productId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchId': branchId,
      'catalogId': catalogId,
      'location': location,
      'productId': productId,
      'project': ?project,
    };
  }

  factory GetProductRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetProductRetailV2alphaArgs(
      branchId: pulumi.Input.fromValue(map['branchId'] as String),
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
