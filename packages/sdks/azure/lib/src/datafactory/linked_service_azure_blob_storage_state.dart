// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_blob_storage_key_vault_sas_token.dart';
import 'linked_service_azure_blob_storage_sas_token_linked_key_vault_key.dart';
import 'linked_service_azure_blob_storage_service_principal_linked_key_vault_key.dart';

/// Input properties used for looking up and filtering LinkedServiceAzureBlobStorage resources.
class LinkedServiceAzureBlobStorageState {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Blob Storage Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`.
  final pulumi.Input<String>? connectionString;
  /// The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`.
  ///
  /// &gt; **Note:** `connection_string` uses the Azure [SecureString](https://learn.microsoft.com/en-us/dotnet/api/microsoft.azure.management.datafactory.models.securestring) to encrypt the contents within the REST payload sent to Azure whilst the `connection_string_insecure` is sent as a regular string. Both properties are still sent using SSL/HTTPS. At this time the portal will not decrypt Secure Strings so the `connection_string` property in the portal will show as `******` whilst `connection_string_insecure` will be viewable in the portal.
  final pulumi.Input<String>? connectionStringInsecure;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  final pulumi.Input<LinkedServiceAzureBlobStorageKeyVaultSasToken>? keyVaultSasToken;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `sas_token_linked_key_vault_key` block as defined below. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required.
  final pulumi.Input<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey>? sasTokenLinkedKeyVaultKey;
  /// The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`.
  final pulumi.Input<String>? sasUri;
  final pulumi.Input<String>? serviceEndpoint;
  final pulumi.Input<String>? servicePrincipalId;
  final pulumi.Input<String>? servicePrincipalKey;
  final pulumi.Input<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey>? servicePrincipalLinkedKeyVaultKey;
  final pulumi.Input<String>? storageKind;
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<bool>? useManagedIdentity;

  /// Creates a new [LinkedServiceAzureBlobStorageState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [connectionString] The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`.
  /// [connectionStringInsecure] The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [keyVaultSasToken] Optional.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [sasTokenLinkedKeyVaultKey] A `sas_token_linked_key_vault_key` block as defined below. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required.
  /// [sasUri] The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`.
  /// [serviceEndpoint] Optional.
  /// [servicePrincipalId] Optional.
  /// [servicePrincipalKey] Optional.
  /// [servicePrincipalLinkedKeyVaultKey] Optional.
  /// [storageKind] Optional.
  /// [tenantId] Optional.
  /// [useManagedIdentity] Optional.
  LinkedServiceAzureBlobStorageState({
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    this.connectionStringInsecure,
    this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.keyVaultSasToken,
    this.name,
    this.parameters,
    this.sasTokenLinkedKeyVaultKey,
    this.sasUri,
    this.serviceEndpoint,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.servicePrincipalLinkedKeyVaultKey,
    this.storageKind,
    this.tenantId,
    this.useManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'connectionStringInsecure': ?connectionStringInsecure,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultSasToken': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureBlobStorageKeyVaultSasToken, Map<String, dynamic>>(keyVaultSasToken, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'sasTokenLinkedKeyVaultKey': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey, Map<String, dynamic>>(sasTokenLinkedKeyVaultKey, (value) => value.toMap()),
      'sasUri': ?sasUri,
      'serviceEndpoint': ?serviceEndpoint,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'servicePrincipalLinkedKeyVaultKey': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey, Map<String, dynamic>>(servicePrincipalLinkedKeyVaultKey, (value) => value.toMap()),
      'storageKind': ?storageKind,
      'tenantId': ?tenantId,
      'useManagedIdentity': ?useManagedIdentity,
    };
  }

  factory LinkedServiceAzureBlobStorageState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureBlobStorageState(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStringInsecure: (() { final guardedValue = map['connectionStringInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultSasToken: (() { final guardedValue = map['keyVaultSasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceAzureBlobStorageKeyVaultSasToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sasTokenLinkedKeyVaultKey: (() { final guardedValue = map['sasTokenLinkedKeyVaultKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sasUri: (() { final guardedValue = map['sasUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalLinkedKeyVaultKey: (() { final guardedValue = map['servicePrincipalLinkedKeyVaultKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageKind: (() { final guardedValue = map['storageKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useManagedIdentity: (() { final guardedValue = map['useManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

