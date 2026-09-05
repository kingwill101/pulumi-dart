// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_snowflake_key_vault_password.dart';

/// Input properties used for looking up and filtering LinkedServiceSnowflake resources.
class LinkedServiceSnowflakeState {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>?>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>?>? annotations;
  /// The connection string in which to authenticate with Snowflake.
  final pulumi.Input<String?>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String?>? dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String?>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String?>? integrationRuntimeName;
  /// A `keyVaultPassword` block as defined below. Use this argument to store Snowflake password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceSnowflakeKeyVaultPassword?>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String?>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>?>? parameters;

  /// Creates a new [LinkedServiceSnowflakeState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [connectionString] The connection string in which to authenticate with Snowflake.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [keyVaultPassword] A `keyVaultPassword` block as defined below. Use this argument to store Snowflake password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  const LinkedServiceSnowflakeState({
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.keyVaultPassword,
    this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSnowflakeKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceSnowflakeState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSnowflakeState(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultPassword: (() { final guardedValue = map['keyVaultPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceSnowflakeKeyVaultPassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
