// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_attribute_definition_healthcare_v1beta1_args_doc}
/// Arguments for getAttributeDefinition.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_attribute_definition_healthcare_v1beta1_args_doc}
class GetAttributeDefinitionHealthcareV1beta1Args {
  final pulumi.Input<String> attributeDefinitionId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAttributeDefinitionHealthcareV1beta1Args].
  /// [attributeDefinitionId] Required.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAttributeDefinitionHealthcareV1beta1Args({
    required pulumi.Output<String> attributeDefinitionId,
    required pulumi.Output<String> consentStoreId,
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      attributeDefinitionId = pulumi.Input.asInput<String>(attributeDefinitionId),
      consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeDefinitionId': attributeDefinitionId,
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAttributeDefinitionHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetAttributeDefinitionHealthcareV1beta1Args(
      attributeDefinitionId: pulumi.Output.create<String>(map['attributeDefinitionId'] as String),
      consentStoreId: pulumi.Output.create<String>(map['consentStoreId'] as String),
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

