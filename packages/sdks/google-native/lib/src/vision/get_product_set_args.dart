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
    required pulumi.Output<String> location,
    required pulumi.Output<String> productSetId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      productSetId = pulumi.Input.asInput<String>(productSetId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'productSetId': productSetId,
      'project': ?project,
    };
  }

  factory GetProductSetArgs.fromMap(Map<String, dynamic> map) {
    return GetProductSetArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      productSetId: pulumi.Output.create<String>(map['productSetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

