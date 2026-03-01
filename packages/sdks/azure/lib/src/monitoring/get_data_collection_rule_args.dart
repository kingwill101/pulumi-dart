// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_data_collection_rule_get_data_collection_rule_args_doc}
/// Arguments for getDataCollectionRule.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_data_collection_rule_get_data_collection_rule_args_doc}
class GetDataCollectionRuleArgs {
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Data Collection Rule is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataCollectionRuleArgs].
  /// [name] Specifies the name of the Data Collection Rule.
  /// [resourceGroupName] Specifies the name of the resource group the Data Collection Rule is located in.
  GetDataCollectionRuleArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataCollectionRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

