// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties {
  /// Sets the Azure storage account name.
  final pulumi.Input<String>? account;
  /// Azure storage account key. This property is required when
  /// 'authentication_type' is set to 'SHARED_KEY'.
  final pulumi.Input<String>? accountKeySecret;
  /// Authentication mechanism to access Azure Data Lake Storage.
  /// Possible values:
  /// SHARED_KEY
  /// SHARED_ACCESS_SIGNATURE
  /// AZURE_ACTIVE_DIRECTORY
  final pulumi.Input<String>? authenticationType;
  /// The endpoint used for authentication with Microsoft Entra ID (formerly
  /// Azure Active Directory). Default value:
  /// https://login.microsoftonline.com
  final pulumi.Input<String>? azureAuthorityHost;
  /// Azure tenant ID of the application. This property is required when
  /// 'authentication_type' is set to 'AZURE_ACTIVE_DIRECTORY'.
  final pulumi.Input<String>? azureTenantId;
  /// Azure client ID of the application. This property is required when
  /// 'authentication_type' is set to 'AZURE_ACTIVE_DIRECTORY'.
  final pulumi.Input<String>? clientId;
  /// Azure client secret (aka application password) for authentication.
  final pulumi.Input<String>? clientSecret;
  /// Azure Storage service endpoint.
  /// e.g: https://test.blob.core.windows.net
  final pulumi.Input<String>? endpoint;
  /// Credential that uses a shared access signature (SAS) to authenticate to
  /// an Azure Service.
  final pulumi.Input<String>? sasTokenSecret;
  /// The technology type of AzureDataLakeStorageConnection.
  final pulumi.Input<String>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties].
  /// [account] Sets the Azure storage account name.
  /// [accountKeySecret] Azure storage account key. This property is required when
  /// [authenticationType] Authentication mechanism to access Azure Data Lake Storage.
  /// [azureAuthorityHost] The endpoint used for authentication with Microsoft Entra ID (formerly
  /// [azureTenantId] Azure tenant ID of the application. This property is required when
  /// [clientId] Azure client ID of the application. This property is required when
  /// [clientSecret] Azure client secret (aka application password) for authentication.
  /// [endpoint] Azure Storage service endpoint.
  /// [sasTokenSecret] Credential that uses a shared access signature (SAS) to authenticate to
  /// [technologyType] The technology type of AzureDataLakeStorageConnection.
  const GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties({
    this.account,
    this.accountKeySecret,
    this.authenticationType,
    this.azureAuthorityHost,
    this.azureTenantId,
    this.clientId,
    this.clientSecret,
    this.endpoint,
    this.sasTokenSecret,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'accountKeySecret': ?accountKeySecret,
      'authenticationType': ?authenticationType,
      'azureAuthorityHost': ?azureAuthorityHost,
      'azureTenantId': ?azureTenantId,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'endpoint': ?endpoint,
      'sasTokenSecret': ?sasTokenSecret,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountKeySecret: (() { final guardedValue = map['accountKeySecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureAuthorityHost: (() { final guardedValue = map['azureAuthorityHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureTenantId: (() { final guardedValue = map['azureTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasTokenSecret: (() { final guardedValue = map['sasTokenSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
