// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_data_masking_policy_args_doc}
/// Arguments for getDataMaskingPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_data_masking_policy_args_doc}
class GetDataMaskingPolicyArgs {
  /// The name of the database for which the data masking policy applies.
  final pulumi.Input<String> dataMaskingPolicyName;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetDataMaskingPolicyArgs].
  /// [dataMaskingPolicyName] The name of the database for which the data masking policy applies.
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetDataMaskingPolicyArgs({
    required pulumi.Output<String> dataMaskingPolicyName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      dataMaskingPolicyName = pulumi.Input.asInput<String>(dataMaskingPolicyName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicyName': dataMaskingPolicyName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetDataMaskingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataMaskingPolicyArgs(
      dataMaskingPolicyName: pulumi.Output.create<String>(map['dataMaskingPolicyName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

