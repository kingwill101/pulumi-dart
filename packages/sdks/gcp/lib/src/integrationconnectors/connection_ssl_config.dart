// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_ssl_config_additional_variable.dart';
import 'connection_ssl_config_client_certificate.dart';
import 'connection_ssl_config_client_private_key.dart';
import 'connection_ssl_config_client_private_key_pass.dart';
import 'connection_ssl_config_private_server_certificate.dart';

class ConnectionSslConfig {
  /// Additional SSL related field values.
  /// Structure is documented below.
  final List<ConnectionSslConfigAdditionalVariable>? additionalVariables;
  /// Type of Client Cert (PEM/JKS/.. etc.)
  /// Possible values are: `PEM`.
  final String? clientCertType;
  /// Client Certificate
  /// Structure is documented below.
  final ConnectionSslConfigClientCertificate? clientCertificate;
  /// Client Private Key
  /// Structure is documented below.
  final ConnectionSslConfigClientPrivateKey? clientPrivateKey;
  /// Secret containing the passphrase protecting the Client Private Key
  /// Structure is documented below.
  final ConnectionSslConfigClientPrivateKeyPass? clientPrivateKeyPass;
  /// Private Server Certificate. Needs to be specified if trust model is PRIVATE.
  /// Structure is documented below.
  final ConnectionSslConfigPrivateServerCertificate? privateServerCertificate;
  /// Type of Server Cert (PEM/JKS/.. etc.)
  /// Possible values are: `PEM`.
  final String? serverCertType;
  /// Enum for Trust Model
  /// Possible values are: `PUBLIC`, `PRIVATE`, `INSECURE`.
  final String? trustModel;
  /// Enum for controlling the SSL Type (TLS/MTLS)
  /// Possible values are: `TLS`, `MTLS`.
  final String type;
  /// Bool for enabling SSL
  final bool? useSsl;

  /// Creates a new [ConnectionSslConfig].
  /// [additionalVariables] Additional SSL related field values.
  /// [clientCertType] Type of Client Cert (PEM/JKS/.. etc.)
  /// [clientCertificate] Client Certificate
  /// [clientPrivateKey] Client Private Key
  /// [clientPrivateKeyPass] Secret containing the passphrase protecting the Client Private Key
  /// [privateServerCertificate] Private Server Certificate. Needs to be specified if trust model is PRIVATE.
  /// [serverCertType] Type of Server Cert (PEM/JKS/.. etc.)
  /// [trustModel] Enum for Trust Model
  /// [type] Enum for controlling the SSL Type (TLS/MTLS)
  /// [useSsl] Bool for enabling SSL
  ConnectionSslConfig({
    this.additionalVariables,
    this.clientCertType,
    this.clientCertificate,
    this.clientPrivateKey,
    this.clientPrivateKeyPass,
    this.privateServerCertificate,
    this.serverCertType,
    this.trustModel,
    required this.type,
    this.useSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?additionalVariables == null ? null : pulumi.Input.encodeList<ConnectionSslConfigAdditionalVariable, Map<String, dynamic>>(additionalVariables!, (value) => value.toMap()),
      'clientCertType': ?clientCertType,
      'clientCertificate': ?clientCertificate == null ? null : clientCertificate!.toMap(),
      'clientPrivateKey': ?clientPrivateKey == null ? null : clientPrivateKey!.toMap(),
      'clientPrivateKeyPass': ?clientPrivateKeyPass == null ? null : clientPrivateKeyPass!.toMap(),
      'privateServerCertificate': ?privateServerCertificate == null ? null : privateServerCertificate!.toMap(),
      'serverCertType': ?serverCertType,
      'trustModel': ?trustModel,
      'type': type,
      'useSsl': ?useSsl,
    };
  }

  factory ConnectionSslConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfig(
      additionalVariables: map['additionalVariables'] == null ? null : pulumi.Input.decodeList<ConnectionSslConfigAdditionalVariable>(map['additionalVariables'], (value) => ConnectionSslConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>())),
      clientCertType: map['clientCertType'] == null ? null : map['clientCertType'] as String,
      clientCertificate: map['clientCertificate'] == null ? null : ConnectionSslConfigClientCertificate.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientPrivateKey: map['clientPrivateKey'] == null ? null : ConnectionSslConfigClientPrivateKey.fromMap((map['clientPrivateKey'] as Map).cast<String, dynamic>()),
      clientPrivateKeyPass: map['clientPrivateKeyPass'] == null ? null : ConnectionSslConfigClientPrivateKeyPass.fromMap((map['clientPrivateKeyPass'] as Map).cast<String, dynamic>()),
      privateServerCertificate: map['privateServerCertificate'] == null ? null : ConnectionSslConfigPrivateServerCertificate.fromMap((map['privateServerCertificate'] as Map).cast<String, dynamic>()),
      serverCertType: map['serverCertType'] == null ? null : map['serverCertType'] as String,
      trustModel: map['trustModel'] == null ? null : map['trustModel'] as String,
      type: map['type'] as String,
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
    );
  }
}

