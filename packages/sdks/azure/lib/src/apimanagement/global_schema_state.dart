// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalSchema resources.
class GlobalSchemaState {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? apiManagementName;
  /// The description of the schema.
  final pulumi.Input<String?>? description;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A unique identifier for this Schema. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? schemaId;
  /// The content type of the Schema. Possible values are `xml` and `json`.
  final pulumi.Input<String?>? type;
  /// The string defining the document representing the Schema.
  final pulumi.Input<String?>? value;

  /// Creates a new [GlobalSchemaState].
  /// [apiManagementName] The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  /// [description] The description of the schema.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [schemaId] A unique identifier for this Schema. Changing this forces a new resource to be created.
  /// [type] The content type of the Schema. Possible values are `xml` and `json`.
  /// [value] The string defining the document representing the Schema.
  const GlobalSchemaState({
    this.apiManagementName,
    this.description,
    this.resourceGroupName,
    this.schemaId,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'description': ?description,
      'resourceGroupName': ?resourceGroupName,
      'schemaId': ?schemaId,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GlobalSchemaState.fromMap(Map<String, dynamic> map) {
    return GlobalSchemaState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
