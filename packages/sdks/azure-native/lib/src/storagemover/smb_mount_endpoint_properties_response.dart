// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_smb_credentials_response.dart';

/// The properties of SMB share endpoint.
class SmbMountEndpointPropertiesResponse {
  /// The Azure Key Vault secret URIs which store the required credentials to access the SMB share.
  final AzureKeyVaultSmbCredentialsResponse? credentials;
  /// A description for the Endpoint.
  final String? description;
  /// The Endpoint resource type.
  /// Expected value is 'SmbMount'.
  final String endpointType;
  /// The host name or IP address of the server exporting the file system.
  final String host;
  /// The provisioning state of this resource.
  final String provisioningState;
  /// The name of the SMB share being exported from the server.
  final String shareName;

  /// Creates a new [SmbMountEndpointPropertiesResponse].
  /// [credentials] The Azure Key Vault secret URIs which store the required credentials to access the SMB share.
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [host] The host name or IP address of the server exporting the file system.
  /// [provisioningState] The provisioning state of this resource.
  /// [shareName] The name of the SMB share being exported from the server.
  SmbMountEndpointPropertiesResponse({
    this.credentials,
    this.description,
    required this.endpointType,
    required this.host,
    required this.provisioningState,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'description': ?description,
      'endpointType': endpointType,
      'host': host,
      'provisioningState': provisioningState,
      'shareName': shareName,
    };
  }

  factory SmbMountEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SmbMountEndpointPropertiesResponse(
      credentials: map['credentials'] == null ? null : AzureKeyVaultSmbCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      endpointType: map['endpointType'] as String,
      host: map['host'] as String,
      provisioningState: map['provisioningState'] as String,
      shareName: map['shareName'] as String,
    );
  }
}

