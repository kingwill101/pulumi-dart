// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_api_product_args_doc}
/// Arguments for getApiProduct.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_api_product_args_doc}
class GetApiProductArgs {
  final pulumi.Input<String> apiproductId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetApiProductArgs].
  /// [apiproductId] Required.
  /// [organizationId] Required.
  GetApiProductArgs({
    required pulumi.Output<String> apiproductId,
    required pulumi.Output<String> organizationId,
  }) :
      apiproductId = pulumi.Input.asInput<String>(apiproductId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproductId': apiproductId,
      'organizationId': organizationId,
    };
  }

  factory GetApiProductArgs.fromMap(Map<String, dynamic> map) {
    return GetApiProductArgs(
      apiproductId: pulumi.Output.create<String>(map['apiproductId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

