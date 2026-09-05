// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_data_collection_rule_association_data_collection_rule_association_args_doc}
/// The set of arguments for DataCollectionRuleAssociation.
/// {@endtemplate}
/// {@macro pulumi_monitoring_data_collection_rule_association_data_collection_rule_association_args_doc}
class DataCollectionRuleAssociationArgs {
  /// The ID of the Data Collection Endpoint which will be associated to the target resource.
  final pulumi.Input<String?>? dataCollectionEndpointId;
  /// The ID of the Data Collection Rule which will be associated to the target resource.
  ///
  /// &gt; **Note:** Exactly one of `dataCollectionEndpointId` and `dataCollectionRuleId` blocks must be specified.
  final pulumi.Input<String?>? dataCollectionRuleId;
  /// The description of the Data Collection Rule Association.
  final pulumi.Input<String?>? description;
  /// The name which should be used for this Data Collection Rule Association. Changing this forces a new Data Collection Rule Association to be created. Defaults to `configurationAccessEndpoint`.
  ///
  /// &gt; **Note:** `name` is required when `dataCollectionRuleId` is specified. And when `dataCollectionEndpointId` is specified, the `name` is populated with `configurationAccessEndpoint`.
  final pulumi.Input<String?>? name;
  /// The ID of the Azure Resource which to associate to a Data Collection Rule or a Data Collection Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [DataCollectionRuleAssociationArgs].
  /// [dataCollectionEndpointId] The ID of the Data Collection Endpoint which will be associated to the target resource.
  /// [dataCollectionRuleId] The ID of the Data Collection Rule which will be associated to the target resource.
  /// [description] The description of the Data Collection Rule Association.
  /// [name] The name which should be used for this Data Collection Rule Association. Changing this forces a new Data Collection Rule Association to be created. Defaults to `configurationAccessEndpoint`.
  /// [targetResourceId] The ID of the Azure Resource which to associate to a Data Collection Rule or a Data Collection Endpoint. Changing this forces a new resource to be created.
  const DataCollectionRuleAssociationArgs({
    this.dataCollectionEndpointId,
    this.dataCollectionRuleId,
    this.description,
    this.name,
    required this.targetResourceId,
  });

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
      dataCollectionEndpointId: (() { final guardedValue = map['dataCollectionEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCollectionRuleId: (() { final guardedValue = map['dataCollectionRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
    );
  }
}
