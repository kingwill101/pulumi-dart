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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> modelingName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      modelingName = pulumi.Input.asInput<String>(modelingName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'modelingName': modelingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetModelingArgs.fromMap(Map<String, dynamic> map) {
    return GetModelingArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      modelingName: pulumi.Output.create<String>(map['modelingName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

