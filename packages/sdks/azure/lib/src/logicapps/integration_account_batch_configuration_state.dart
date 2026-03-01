// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_batch_configuration_release_criteria.dart';

/// Input properties used for looking up and filtering IntegrationAccountBatchConfiguration resources.
class IntegrationAccountBatchConfigurationState {
  /// The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? batchGroupName;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? integrationAccountName;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `release_criteria` block as documented below, which is used to select the criteria to meet before processing each batch.
  final pulumi.Input<IntegrationAccountBatchConfigurationReleaseCriteria>? releaseCriteria;
  /// The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountBatchConfigurationState].
  /// [batchGroupName] The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration.
  /// [name] The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [releaseCriteria] A `release_criteria` block as documented below, which is used to select the criteria to meet before processing each batch.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created.
  IntegrationAccountBatchConfigurationState({
    pulumi.Output<String>? batchGroupName,
    pulumi.Output<String>? integrationAccountName,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<IntegrationAccountBatchConfigurationReleaseCriteria>? releaseCriteria,
    pulumi.Output<String>? resourceGroupName,
  }) :
      batchGroupName = pulumi.Input.asOptionalInput<String>(batchGroupName),
      integrationAccountName = pulumi.Input.asOptionalInput<String>(integrationAccountName),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      releaseCriteria = pulumi.Input.asOptionalInput<IntegrationAccountBatchConfigurationReleaseCriteria>(releaseCriteria),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      batchGroupName: map['batchGroupName'] == null ? null : pulumi.Output.create<String>(map['batchGroupName'] as String),
      integrationAccountName: map['integrationAccountName'] == null ? null : pulumi.Output.create<String>(map['integrationAccountName'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      releaseCriteria: map['releaseCriteria'] == null ? null : pulumi.Output.create<IntegrationAccountBatchConfigurationReleaseCriteria>(IntegrationAccountBatchConfigurationReleaseCriteria.fromMap((map['releaseCriteria'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

