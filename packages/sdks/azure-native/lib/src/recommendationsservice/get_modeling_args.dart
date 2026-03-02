// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recommendationsservice_get_modeling_args_doc}
/// Arguments for getModeling.
/// {@endtemplate}
/// {@macro pulumi_recommendationsservice_get_modeling_args_doc}
class GetModelingArgs {
  /// The name of the RecommendationsService Account resource.
  final pulumi.Input<String> accountName;
  /// The name of the Modeling resource.
  final pulumi.Input<String> modelingName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetModelingArgs].
  /// [accountName] The name of the RecommendationsService Account resource.
  /// [modelingName] The name of the Modeling resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetModelingArgs({
    required this.accountName,
    required this.modelingName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'modelingName': modelingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetModelingArgs.fromMap(Map<String, dynamic> map) {
    return GetModelingArgs(
      accountName: (map['accountName'] as String).input(),
      modelingName: (map['modelingName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

