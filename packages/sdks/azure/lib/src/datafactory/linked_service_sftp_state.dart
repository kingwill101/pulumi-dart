// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sftp_key_vault_password.dart';
import 'linked_service_sftp_key_vault_private_key_content_base64.dart';
import 'linked_service_sftp_key_vault_private_key_passphrase.dart';

/// Input properties used for looking up and filtering LinkedServiceSftp resources.
class LinkedServiceSftpState {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to SFTP Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The type of authentication used to connect to the SFTP server. Valid options are `MultiFactor`, `Basic` and `SshPublicKey`.
  final pulumi.Input<String>? authenticationType;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The SFTP server hostname.
  final pulumi.Input<String>? host;
  /// The host key fingerprint of the SFTP server.
  final pulumi.Input<String>? hostKeyFingerprint;
  /// The name of the integration runtime to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `keyVaultPassword` block as defined below.
  ///
  /// &gt; **Note:** Either `password` or `keyVaultPassword` is required when `authenticationType` is set to `Basic`.
  final pulumi.Input<List<LinkedServiceSftpKeyVaultPassword>>? keyVaultPasswords;
  /// A `keyVaultPrivateKeyContentBase64` block as defined below.
  final pulumi.Input<LinkedServiceSftpKeyVaultPrivateKeyContentBase64>? keyVaultPrivateKeyContentBase64;
  /// A `keyVaultPrivateKeyPassphrase` block as defined below.
  ///
  /// &gt; **Note:** One of `privateKeyContentBase64` or `privateKeyPath` (or their Key Vault equivalent) is required when `authenticationType` is set to `SshPublicKey`.
  final pulumi.Input<LinkedServiceSftpKeyVaultPrivateKeyPassphrase>? keyVaultPrivateKeyPassphrase;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Password to log on to the SFTP Server for Basic Authentication.
  final pulumi.Input<String>? password;
  /// The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
  final pulumi.Input<int>? port;
  /// The Base64 encoded private key content in OpenSSH format used to log on to the SFTP server.
  final pulumi.Input<String>? privateKeyContentBase64;
  /// The passphrase for the private key if the key is encrypted.
  final pulumi.Input<String>? privateKeyPassphrase;
  /// The absolute path to the private key file that the self-hosted integration runtime can access.
  ///
  /// &gt; **Note:** `privateKeyPath` only applies when using a self-hosted integration runtime (instead of the default Azure provided runtime), as indicated by supplying a value for `integrationRuntimeName`.
  final pulumi.Input<String>? privateKeyPath;
  /// Whether to validate host key fingerprint while connecting. If set to `false`, `hostKeyFingerprint` must also be set.
  final pulumi.Input<bool>? skipHostKeyValidation;
  /// The username used to log on to the SFTP server.
  final pulumi.Input<String>? username;

  /// Creates a new [LinkedServiceSftpState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [authenticationType] The type of authentication used to connect to the SFTP server. Valid options are `MultiFactor`, `Basic` and `SshPublicKey`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [host] The SFTP server hostname.
  /// [hostKeyFingerprint] The host key fingerprint of the SFTP server.
  /// [integrationRuntimeName] The name of the integration runtime to associate with the Data Factory Linked Service.
  /// [keyVaultPasswords] A `keyVaultPassword` block as defined below.
  /// [keyVaultPrivateKeyContentBase64] A `keyVaultPrivateKeyContentBase64` block as defined below.
  /// [keyVaultPrivateKeyPassphrase] A `keyVaultPrivateKeyPassphrase` block as defined below.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [password] Password to log on to the SFTP Server for Basic Authentication.
  /// [port] The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
  /// [privateKeyContentBase64] The Base64 encoded private key content in OpenSSH format used to log on to the SFTP server.
  /// [privateKeyPassphrase] The passphrase for the private key if the key is encrypted.
  /// [privateKeyPath] The absolute path to the private key file that the self-hosted integration runtime can access.
  /// [skipHostKeyValidation] Whether to validate host key fingerprint while connecting. If set to `false`, `hostKeyFingerprint` must also be set.
  /// [username] The username used to log on to the SFTP server.
  const LinkedServiceSftpState({
    this.additionalProperties,
    this.annotations,
    this.authenticationType,
    this.dataFactoryId,
    this.description,
    this.host,
    this.hostKeyFingerprint,
    this.integrationRuntimeName,
    this.keyVaultPasswords,
    this.keyVaultPrivateKeyContentBase64,
    this.keyVaultPrivateKeyPassphrase,
    this.name,
    this.parameters,
    this.password,
    this.port,
    this.privateKeyContentBase64,
    this.privateKeyPassphrase,
    this.privateKeyPath,
    this.skipHostKeyValidation,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'host': ?host,
      'hostKeyFingerprint': ?hostKeyFingerprint,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultPasswords': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceSftpKeyVaultPassword>, List<Map<String, dynamic>>>(keyVaultPasswords, (value) => pulumi.Input.encodeList<LinkedServiceSftpKeyVaultPassword, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultPrivateKeyContentBase64': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSftpKeyVaultPrivateKeyContentBase64, Map<String, dynamic>>(keyVaultPrivateKeyContentBase64, (value) => value.toMap()),
      'keyVaultPrivateKeyPassphrase': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSftpKeyVaultPrivateKeyPassphrase, Map<String, dynamic>>(keyVaultPrivateKeyPassphrase, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'password': ?password,
      'port': ?port,
      'privateKeyContentBase64': ?privateKeyContentBase64,
      'privateKeyPassphrase': ?privateKeyPassphrase,
      'privateKeyPath': ?privateKeyPath,
      'skipHostKeyValidation': ?skipHostKeyValidation,
      'username': ?username,
    };
  }

  factory LinkedServiceSftpState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSftpState(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostKeyFingerprint: (() { final guardedValue = map['hostKeyFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultPasswords: (() { final guardedValue = map['keyVaultPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedServiceSftpKeyVaultPassword>(guardedValue, (value) => LinkedServiceSftpKeyVaultPassword.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keyVaultPrivateKeyContentBase64: (() { final guardedValue = map['keyVaultPrivateKeyContentBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceSftpKeyVaultPrivateKeyContentBase64.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultPrivateKeyPassphrase: (() { final guardedValue = map['keyVaultPrivateKeyPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceSftpKeyVaultPrivateKeyPassphrase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateKeyContentBase64: (() { final guardedValue = map['privateKeyContentBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPassphrase: (() { final guardedValue = map['privateKeyPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPath: (() { final guardedValue = map['privateKeyPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipHostKeyValidation: (() { final guardedValue = map['skipHostKeyValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
