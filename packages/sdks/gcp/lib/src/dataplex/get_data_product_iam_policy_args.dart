// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_get_data_product_iam_policy_get_data_product_iam_policy_args_doc}
/// Arguments for getDataProductIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_get_data_product_iam_policy_get_data_product_iam_policy_args_doc}
class GetDataProductIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataProductId;
  /// The location for the data product.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataProductIamPolicyArgs].
  /// [dataProductId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location for the data product.
  /// [project] The ID of the project in which the resource belongs.
  const GetDataProductIamPolicyArgs({
    required this.dataProductId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProductId': dataProductId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDataProductIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataProductIamPolicyArgs(
      dataProductId: pulumi.Input.fromValue(map['dataProductId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
