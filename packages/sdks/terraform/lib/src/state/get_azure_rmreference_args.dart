// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_state_get_azure_rmreference_args_doc}
/// Arguments for getAzureRMReference.
/// {@endtemplate}
/// {@macro pulumi_state_get_azure_rmreference_args_doc}
class GetAzureRMReferenceArgs {
  /// The access key of the storage account. Falls back to the ARM_ACCESS_KEY environment variable when unset.
  final pulumi.Input<String>? accessKey;
  /// The password for the client certificate specified in clientCertificatePath. Falls back to the ARM_CLIENT_CERTIFICATE_PASSWORD environment variable when unset.
  final pulumi.Input<String>? clientCertificatePassword;
  /// The path to the PFX file used as the client certificate for service principal authentication. Falls back to the ARM_CLIENT_CERTIFICATE_PATH environment variable when unset.
  final pulumi.Input<String>? clientCertificatePath;
  /// The client ID to authenticate as. Falls back to the ARM_CLIENT_ID environment variable when unset.
  final pulumi.Input<String>? clientId;
  /// The client secret used for service principal authentication. Falls back to the ARM_CLIENT_SECRET environment variable when unset.
  final pulumi.Input<String>? clientSecret;
  /// The name of the storage container within the storage account.
  final pulumi.Input<String> containerName;
  /// A custom endpoint for the Azure Resource Manager API. Falls back to the ARM_ENDPOINT environment variable when unset.
  final pulumi.Input<String>? endpoint;
  /// The Azure cloud environment to use: public (default), china, german, stack or usgovernment. Falls back to the ARM_ENVIRONMENT environment variable when unset.
  final pulumi.Input<String>? environment;
  /// The name of the blob holding the Terraform state file inside the storage container.
  final pulumi.Input<String> key;
  /// The hostname of the Azure metadata service used to obtain the cloud environment. Falls back to the ARM_METADATA_HOST environment variable when unset.
  final pulumi.Input<String>? metadataHost;
  /// The endpoint of the Managed Service Identity. Falls back to the ARM_MSI_ENDPOINT environment variable when unset.
  final pulumi.Input<String>? msiEndpoint;
  /// The bearer token for requests to the oidcRequestUrl URL. Falls back to the ARM_OIDC_REQUEST_TOKEN or ACTIONS_ID_TOKEN_REQUEST_TOKEN environment variables when unset.
  final pulumi.Input<String>? oidcRequestToken;
  /// The URL of the OIDC provider to request an ID token from, e.g. in GitHub Actions. Requires oidcRequestToken. Falls back to the ARM_OIDC_REQUEST_URL or ACTIONS_ID_TOKEN_REQUEST_URL environment variables when unset.
  final pulumi.Input<String>? oidcRequestUrl;
  /// A JWT token for OIDC authentication. Conflicts with oidcRequestToken. Falls back to the ARM_OIDC_TOKEN environment variable when unset.
  final pulumi.Input<String>? oidcToken;
  /// The path to a file containing a JWT token for OIDC authentication. Conflicts with oidcRequestToken. Falls back to the ARM_OIDC_TOKEN_FILE_PATH environment variable when unset.
  final pulumi.Input<String>? oidcTokenFilePath;
  /// The name of the resource group holding the storage account. Required when using AzureAD authentication against the Azure Resource Manager API to look up the storage access key.
  final pulumi.Input<String>? resourceGroupName;
  /// A SAS token for accessing the storage container. Falls back to the ARM_SAS_TOKEN environment variable when unset.
  final pulumi.Input<String>? sasToken;
  /// The name of the storage account.
  final pulumi.Input<String> storageAccountName;
  /// The subscription ID holding the storage account. Falls back to the ARM_SUBSCRIPTION_ID environment variable when unset.
  final pulumi.Input<String>? subscriptionId;
  /// The tenant ID to authenticate against. Falls back to the ARM_TENANT_ID environment variable when unset.
  final pulumi.Input<String>? tenantId;
  /// Whether to authenticate against the storage container with AzureAD instead of an access key. Falls back to the ARM_USE_AZUREAD environment variable when unset.
  final pulumi.Input<bool>? useAzureadAuth;
  /// Whether to authenticate using Managed Service Identity. Falls back to the ARM_USE_MSI environment variable when unset.
  final pulumi.Input<bool>? useMsi;
  /// Whether to authenticate using OIDC. Falls back to the ARM_USE_OIDC environment variable when unset.
  final pulumi.Input<bool>? useOidc;
  /// The Terraform workspace to read state from.
  final pulumi.Input<String>? workspace;

  /// Creates a new [GetAzureRMReferenceArgs].
  /// [accessKey] The access key of the storage account. Falls back to the ARM_ACCESS_KEY environment variable when unset.
  /// [clientCertificatePassword] The password for the client certificate specified in clientCertificatePath. Falls back to the ARM_CLIENT_CERTIFICATE_PASSWORD environment variable when unset.
  /// [clientCertificatePath] The path to the PFX file used as the client certificate for service principal authentication. Falls back to the ARM_CLIENT_CERTIFICATE_PATH environment variable when unset.
  /// [clientId] The client ID to authenticate as. Falls back to the ARM_CLIENT_ID environment variable when unset.
  /// [clientSecret] The client secret used for service principal authentication. Falls back to the ARM_CLIENT_SECRET environment variable when unset.
  /// [containerName] The name of the storage container within the storage account.
  /// [endpoint] A custom endpoint for the Azure Resource Manager API. Falls back to the ARM_ENDPOINT environment variable when unset.
  /// [environment] The Azure cloud environment to use: public (default), china, german, stack or usgovernment. Falls back to the ARM_ENVIRONMENT environment variable when unset.
  /// [key] The name of the blob holding the Terraform state file inside the storage container.
  /// [metadataHost] The hostname of the Azure metadata service used to obtain the cloud environment. Falls back to the ARM_METADATA_HOST environment variable when unset.
  /// [msiEndpoint] The endpoint of the Managed Service Identity. Falls back to the ARM_MSI_ENDPOINT environment variable when unset.
  /// [oidcRequestToken] The bearer token for requests to the oidcRequestUrl URL. Falls back to the ARM_OIDC_REQUEST_TOKEN or ACTIONS_ID_TOKEN_REQUEST_TOKEN environment variables when unset.
  /// [oidcRequestUrl] The URL of the OIDC provider to request an ID token from, e.g. in GitHub Actions. Requires oidcRequestToken. Falls back to the ARM_OIDC_REQUEST_URL or ACTIONS_ID_TOKEN_REQUEST_URL environment variables when unset.
  /// [oidcToken] A JWT token for OIDC authentication. Conflicts with oidcRequestToken. Falls back to the ARM_OIDC_TOKEN environment variable when unset.
  /// [oidcTokenFilePath] The path to a file containing a JWT token for OIDC authentication. Conflicts with oidcRequestToken. Falls back to the ARM_OIDC_TOKEN_FILE_PATH environment variable when unset.
  /// [resourceGroupName] The name of the resource group holding the storage account. Required when using AzureAD authentication against the Azure Resource Manager API to look up the storage access key.
  /// [sasToken] A SAS token for accessing the storage container. Falls back to the ARM_SAS_TOKEN environment variable when unset.
  /// [storageAccountName] The name of the storage account.
  /// [subscriptionId] The subscription ID holding the storage account. Falls back to the ARM_SUBSCRIPTION_ID environment variable when unset.
  /// [tenantId] The tenant ID to authenticate against. Falls back to the ARM_TENANT_ID environment variable when unset.
  /// [useAzureadAuth] Whether to authenticate against the storage container with AzureAD instead of an access key. Falls back to the ARM_USE_AZUREAD environment variable when unset.
  /// [useMsi] Whether to authenticate using Managed Service Identity. Falls back to the ARM_USE_MSI environment variable when unset.
  /// [useOidc] Whether to authenticate using OIDC. Falls back to the ARM_USE_OIDC environment variable when unset.
  /// [workspace] The Terraform workspace to read state from.
  const GetAzureRMReferenceArgs({
    this.accessKey,
    this.clientCertificatePassword,
    this.clientCertificatePath,
    this.clientId,
    this.clientSecret,
    required this.containerName,
    this.endpoint,
    this.environment,
    required this.key,
    this.metadataHost,
    this.msiEndpoint,
    this.oidcRequestToken,
    this.oidcRequestUrl,
    this.oidcToken,
    this.oidcTokenFilePath,
    this.resourceGroupName,
    this.sasToken,
    required this.storageAccountName,
    this.subscriptionId,
    this.tenantId,
    this.useAzureadAuth,
    this.useMsi,
    this.useOidc,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'clientCertificatePassword': ?clientCertificatePassword,
      'clientCertificatePath': ?clientCertificatePath,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'containerName': containerName,
      'endpoint': ?endpoint,
      'environment': ?environment,
      'key': key,
      'metadataHost': ?metadataHost,
      'msiEndpoint': ?msiEndpoint,
      'oidcRequestToken': ?oidcRequestToken,
      'oidcRequestUrl': ?oidcRequestUrl,
      'oidcToken': ?oidcToken,
      'oidcTokenFilePath': ?oidcTokenFilePath,
      'resourceGroupName': ?resourceGroupName,
      'sasToken': ?sasToken,
      'storageAccountName': storageAccountName,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
      'useAzureadAuth': ?useAzureadAuth,
      'useMsi': ?useMsi,
      'useOidc': ?useOidc,
      'workspace': ?workspace,
    };
  }

  factory GetAzureRMReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureRMReferenceArgs(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificatePassword: (() { final guardedValue = map['clientCertificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificatePath: (() { final guardedValue = map['clientCertificatePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      metadataHost: (() { final guardedValue = map['metadataHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msiEndpoint: (() { final guardedValue = map['msiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcRequestToken: (() { final guardedValue = map['oidcRequestToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcRequestUrl: (() { final guardedValue = map['oidcRequestUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcTokenFilePath: (() { final guardedValue = map['oidcTokenFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useAzureadAuth: (() { final guardedValue = map['useAzureadAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useMsi: (() { final guardedValue = map['useMsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useOidc: (() { final guardedValue = map['useOidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workspace: (() { final guardedValue = map['workspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
