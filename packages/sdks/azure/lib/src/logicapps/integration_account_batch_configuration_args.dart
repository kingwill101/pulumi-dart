// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_batch_configuration_release_criteria.dart';

/// {@template pulumi_logicapps_integration_account_batch_configuration_integration_account_batch_configuration_args_doc}
/// The set of arguments for IntegrationAccountBatchConfiguration.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_batch_configuration_integration_account_batch_configuration_args_doc}
class IntegrationAccountBatchConfigurationArgs {
  /// The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> batchGroupName;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> integrationAccountName;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `releaseCriteria` block as documented below, which is used to select the criteria to meet before processing each batch.
  final pulumi.Input<IntegrationAccountBatchConfigurationReleaseCriteria> releaseCriteria;
  /// The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountBatchConfigurationArgs].
  /// [batchGroupName] The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration.
  /// [name] The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [releaseCriteria] A `releaseCriteria` block as documented below, which is used to select the criteria to meet before processing each batch.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created.
  const IntegrationAccountBatchConfigurationArgs({
    required this.batchGroupName,
    required this.integrationAccountName,
    this.metadata,
    this.name,
    required this.releaseCriteria,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchGroupName': batchGroupName,
      'integrationAccountName': integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'releaseCriteria': pulumi.Input.mapInputValue<IntegrationAccountBatchConfigurationReleaseCriteria, Map<String, dynamic>>(releaseCriteria, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountBatchConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationArgs(
      batchGroupName: pulumi.Input.fromValue(map['batchGroupName'] as String),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseCriteria: pulumi.Input.fromValue(IntegrationAccountBatchConfigurationReleaseCriteria.fromMap((map['releaseCriteria']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
