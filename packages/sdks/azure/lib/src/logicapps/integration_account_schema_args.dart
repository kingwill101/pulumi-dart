// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_integration_account_schema_integration_account_schema_args_doc}
/// The set of arguments for IntegrationAccountSchema.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_schema_integration_account_schema_args_doc}
class IntegrationAccountSchemaArgs {
  /// The content of the Logic App Integration Account Schema.
  final pulumi.Input<String> content;
  /// The file name of the Logic App Integration Account Schema.
  final pulumi.Input<String>? fileName;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created.
  final pulumi.Input<String> integrationAccountName;
  /// The metadata of the Logic App Integration Account Schema.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountSchemaArgs].
  /// [content] The content of the Logic App Integration Account Schema.
  /// [fileName] The file name of the Logic App Integration Account Schema.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created.
  /// [metadata] The metadata of the Logic App Integration Account Schema.
  /// [name] The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created.
  IntegrationAccountSchemaArgs({
    required pulumi.Output<String> content,
    pulumi.Output<String>? fileName,
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      content = pulumi.Input.asInput<String>(content),
      fileName = pulumi.Input.asOptionalInput<String>(fileName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fileName': ?fileName,
      'integrationAccountName': integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountSchemaArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSchemaArgs(
      content: pulumi.Output.create<String>(map['content'] as String),
      fileName: map['fileName'] == null ? null : pulumi.Output.create<String>(map['fileName'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

