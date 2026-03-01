// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_data_collection_rule_association_data_collection_rule_association_args_doc}
/// The set of arguments for DataCollectionRuleAssociation.
/// {@endtemplate}
/// {@macro pulumi_monitoring_data_collection_rule_association_data_collection_rule_association_args_doc}
class DataCollectionRuleAssociationArgs {
  /// The ID of the Data Collection Endpoint which will be associated to the target resource.
  final pulumi.Input<String>? dataCollectionEndpointId;
  /// The ID of the Data Collection Rule which will be associated to the target resource.
  ///
  /// > **Note:** Exactly one of `data_collection_endpoint_id` and `data_collection_rule_id` blocks must be specified.
  final pulumi.Input<String>? dataCollectionRuleId;
  /// The description of the Data Collection Rule Association.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Data Collection Rule Association. Changing this forces a new Data Collection Rule Association to be created. Defaults to `configurationAccessEndpoint`.
  ///
  /// > **Note:** `name` is required when `data_collection_rule_id` is specified. And when `data_collection_endpoint_id` is specified, the `name` is populated with `configurationAccessEndpoint`.
  final pulumi.Input<String>? name;
  /// The ID of the Azure Resource which to associate to a Data Collection Rule or a Data Collection Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [DataCollectionRuleAssociationArgs].
  /// [dataCollectionEndpointId] The ID of the Data Collection Endpoint which will be associated to the target resource.
  /// [dataCollectionRuleId] The ID of the Data Collection Rule which will be associated to the target resource.
  /// [description] The description of the Data Collection Rule Association.
  /// [name] The name which should be used for this Data Collection Rule Association. Changing this forces a new Data Collection Rule Association to be created. Defaults to `configurationAccessEndpoint`.
  /// [targetResourceId] The ID of the Azure Resource which to associate to a Data Collection Rule or a Data Collection Endpoint. Changing this forces a new resource to be created.
  DataCollectionRuleAssociationArgs({
    pulumi.Output<String>? dataCollectionEndpointId,
    pulumi.Output<String>? dataCollectionRuleId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> targetResourceId,
  }) :
      dataCollectionEndpointId = pulumi.Input.asOptionalInput<String>(dataCollectionEndpointId),
      dataCollectionRuleId = pulumi.Input.asOptionalInput<String>(dataCollectionRuleId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataCollectionRuleId': ?dataCollectionRuleId,
      'description': ?description,
      'name': ?name,
      'targetResourceId': targetResourceId,
    };
  }

  factory DataCollectionRuleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleAssociationArgs(
      dataCollectionEndpointId: map['dataCollectionEndpointId'] == null ? null : pulumi.Output.create<String>(map['dataCollectionEndpointId'] as String),
      dataCollectionRuleId: map['dataCollectionRuleId'] == null ? null : pulumi.Output.create<String>(map['dataCollectionRuleId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      targetResourceId: pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

