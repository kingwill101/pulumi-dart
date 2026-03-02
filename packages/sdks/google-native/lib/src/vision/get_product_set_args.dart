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
  GetProductSetArgs({
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
      location: (map['location'] as String).input(),
      productSetId: (map['productSetId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

