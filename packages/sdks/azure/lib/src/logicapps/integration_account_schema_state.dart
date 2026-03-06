// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationAccountSchema resources.
class IntegrationAccountSchemaState {
  /// The content of the Logic App Integration Account Schema.
  final pulumi.Input<String>? content;
  /// The file name of the Logic App Integration Account Schema.
  final pulumi.Input<String>? fileName;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created.
  final pulumi.Input<String>? integrationAccountName;
  /// The metadata of the Logic App Integration Account Schema.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountSchemaState].
  /// [content] The content of the Logic App Integration Account Schema.
  /// [fileName] The file name of the Logic App Integration Account Schema.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created.
  /// [metadata] The metadata of the Logic App Integration Account Schema.
  /// [name] The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created.
  const IntegrationAccountSchemaState({
    this.content,
    this.fileName,
    this.integrationAccountName,
    this.metadata,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'fileName': ?fileName,
      'integrationAccountName': ?integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountSchemaState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSchemaState(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationAccountName: (() { final guardedValue = map['integrationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

