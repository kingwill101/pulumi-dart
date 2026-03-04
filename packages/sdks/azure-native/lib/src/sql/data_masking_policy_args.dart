// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_state.dart';

/// {@template pulumi_sql_data_masking_policy_args_doc}
/// The set of arguments for DataMaskingPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_data_masking_policy_args_doc}
class DataMaskingPolicyArgs {
  /// The name of the database for which the data masking policy applies.
  final pulumi.Input<String>? dataMaskingPolicyName;

  /// The state of the data masking policy.
  final pulumi.Input<DataMaskingState> dataMaskingState;

  /// The name of the database.
  final pulumi.Input<String> databaseName;

  /// The list of the exempt principals. Specifies the semicolon-separated list of database users for which the data masking policy does not apply. The specified users receive data results without masking for all of the database queries.
  final pulumi.Input<String>? exemptPrincipals;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [DataMaskingPolicyArgs].
  /// [dataMaskingPolicyName] The name of the database for which the data masking policy applies.
  /// [dataMaskingState] The state of the data masking policy.
  /// [databaseName] The name of the database.
  /// [exemptPrincipals] The list of the exempt principals. Specifies the semicolon-separated list of database users for which the data masking policy does not apply. The specified users receive data results without masking for all of the database queries.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  DataMaskingPolicyArgs({
    this.dataMaskingPolicyName,
    required this.dataMaskingState,
    required this.databaseName,
    this.exemptPrincipals,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicyName': ?dataMaskingPolicyName,
      'dataMaskingState': pulumi.Input.mapInputValue<DataMaskingState, String>(
        dataMaskingState,
        (value) => value.wireValue,
      ),
      'databaseName': databaseName,
      'exemptPrincipals': ?exemptPrincipals,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory DataMaskingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataMaskingPolicyArgs(
      dataMaskingPolicyName: (() {
        final guardedValue = map['dataMaskingPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataMaskingState: pulumi.Input.fromValue(
        DataMaskingState.fromValue(map['dataMaskingState']! as String),
      ),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      exemptPrincipals: (() {
        final guardedValue = map['exemptPrincipals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
