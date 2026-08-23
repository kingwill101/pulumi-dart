// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_smb_credentials.dart';

/// The properties of SMB share endpoint.
class SmbMountEndpointProperties {
  /// The Azure Key Vault secret URIs which store the required credentials to access the SMB share.
  final pulumi.Input<AzureKeyVaultSmbCredentials>? credentials;
  /// A description for the Endpoint.
  final pulumi.Input<String>? description;
  /// The Endpoint resource type.
  /// Expected value is 'SmbMount'.
  final pulumi.Input<String> endpointType;
  /// The host name or IP address of the server exporting the file system.
  final pulumi.Input<String> host;
  /// The name of the SMB share being exported from the server.
  final pulumi.Input<String> shareName;

  /// Creates a new [SmbMountEndpointProperties].
  /// [credentials] The Azure Key Vault secret URIs which store the required credentials to access the SMB share.
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [host] The host name or IP address of the server exporting the file system.
  /// [shareName] The name of the SMB share being exported from the server.
  const SmbMountEndpointProperties({
    this.credentials,
    this.description,
    required this.endpointType,
    required this.host,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSmbCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': ?description,
      'endpointType': endpointType,
      'host': host,
      'shareName': shareName,
    };
  }

  factory SmbMountEndpointProperties.fromMap(Map<String, dynamic> map) {
    return SmbMountEndpointProperties(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSmbCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
    );
  }
}
