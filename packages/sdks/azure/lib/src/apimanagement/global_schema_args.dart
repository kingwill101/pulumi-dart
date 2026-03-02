// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_global_schema_global_schema_args_doc}
/// The set of arguments for GlobalSchema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_global_schema_global_schema_args_doc}
class GlobalSchemaArgs {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The description of the schema.
  final pulumi.Input<String>? description;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A unique identifier for this Schema. Changing this forces a new resource to be created.
  final pulumi.Input<String> schemaId;
  /// The content type of the Schema. Possible values are `xml` and `json`.
  final pulumi.Input<String> type;
  /// The string defining the document representing the Schema.
  final pulumi.Input<String> value;

  /// Creates a new [GlobalSchemaArgs].
  /// [apiManagementName] The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  /// [description] The description of the schema.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [schemaId] A unique identifier for this Schema. Changing this forces a new resource to be created.
  /// [type] The content type of the Schema. Possible values are `xml` and `json`.
  /// [value] The string defining the document representing the Schema.
  GlobalSchemaArgs({
    required this.apiManagementName,
    this.description,
    required this.resourceGroupName,
    required this.schemaId,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'description': ?description,
      'resourceGroupName': resourceGroupName,
      'schemaId': schemaId,
      'type': type,
      'value': value,
    };
  }

  factory GlobalSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSchemaArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaId: (map['schemaId'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

