import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_definition_healthcare_v1beta1_args.dart';

/// Creates a new Attribute definition in the parent consent store.
class AttributeDefinitionHealthcareV1beta1 extends pulumi.CustomResource {
  /// Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  late final pulumi.Output<List<String>> allowedValues;

  /// Required. The ID of the Attribute definition to create. The string must match the following regex: `_a-zA-Z{0,255}` and must not be a reserved keyword within the Common Expression Language as listed on https://github.com/google/cel-spec/blob/master/doc/langdef.md.
  late final pulumi.Output<String> attributeDefinitionId;

  /// The category of the attribute. The value of this field cannot be changed after creation.
  late final pulumi.Output<String> category;

  /// Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  late final pulumi.Output<List<String>> consentDefaultValues;
  late final pulumi.Output<String> consentStoreId;

  /// Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  late final pulumi.Output<String> dataMappingDefaultValue;
  late final pulumi.Output<String> datasetId;

  /// Optional. A description of the attribute.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;

  /// Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [AttributeDefinitionHealthcareV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttributeDefinitionHealthcareV1beta1]. {@macro pulumi_healthcare_v1beta1_attribute_definition_healthcare_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttributeDefinitionHealthcareV1beta1(
    String name, {
    AttributeDefinitionHealthcareV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:healthcare/v1beta1:AttributeDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedValues = registerOutput<List<String>>('allowedValues');
    attributeDefinitionId = registerOutput<String>('attributeDefinitionId');
    category = registerOutput<String>('category');
    consentDefaultValues = registerOutput<List<String>>('consentDefaultValues');
    consentStoreId = registerOutput<String>('consentStoreId');
    dataMappingDefaultValue = registerOutput<String>('dataMappingDefaultValue');
    datasetId = registerOutput<String>('datasetId');
    description = registerOutput<String>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
