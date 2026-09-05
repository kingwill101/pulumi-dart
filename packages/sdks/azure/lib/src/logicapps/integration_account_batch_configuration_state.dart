// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_batch_configuration_release_criteria.dart';

/// Input properties used for looking up and filtering IntegrationAccountBatchConfiguration resources.
class IntegrationAccountBatchConfigurationState {
  /// The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? batchGroupName;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? integrationAccountName;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `releaseCriteria` block as documented below, which is used to select the criteria to meet before processing each batch.
  final pulumi.Input<IntegrationAccountBatchConfigurationReleaseCriteria?>? releaseCriteria;
  /// The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;

  /// Creates a new [IntegrationAccountBatchConfigurationState].
  /// [batchGroupName] The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration.
  /// [name] The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [releaseCriteria] A `releaseCriteria` block as documented below, which is used to select the criteria to meet before processing each batch.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created.
  const IntegrationAccountBatchConfigurationState({
    this.batchGroupName,
    this.integrationAccountName,
    this.metadata,
    this.name,
    this.releaseCriteria,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchGroupName': ?batchGroupName,
      'integrationAccountName': ?integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'releaseCriteria': ?pulumi.Input.mapOptionalInputValue<IntegrationAccountBatchConfigurationReleaseCriteria, Map<String, dynamic>>(releaseCriteria, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountBatchConfigurationState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationState(
      batchGroupName: (() { final guardedValue = map['batchGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationAccountName: (() { final guardedValue = map['integrationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseCriteria: (() { final guardedValue = map['releaseCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationAccountBatchConfigurationReleaseCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
