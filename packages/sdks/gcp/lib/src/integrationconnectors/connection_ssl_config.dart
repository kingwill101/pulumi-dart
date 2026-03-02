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
  final pulumi.Input<List<ConnectionSslConfigAdditionalVariable>>? additionalVariables;
  /// Type of Client Cert (PEM/JKS/.. etc.)
  /// Possible values are: `PEM`.
  final pulumi.Input<String>? clientCertType;
  /// Client Certificate
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfigClientCertificate>? clientCertificate;
  /// Client Private Key
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfigClientPrivateKey>? clientPrivateKey;
  /// Secret containing the passphrase protecting the Client Private Key
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfigClientPrivateKeyPass>? clientPrivateKeyPass;
  /// Private Server Certificate. Needs to be specified if trust model is PRIVATE.
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfigPrivateServerCertificate>? privateServerCertificate;
  /// Type of Server Cert (PEM/JKS/.. etc.)
  /// Possible values are: `PEM`.
  final pulumi.Input<String>? serverCertType;
  /// Enum for Trust Model
  /// Possible values are: `PUBLIC`, `PRIVATE`, `INSECURE`.
  final pulumi.Input<String>? trustModel;
  /// Enum for controlling the SSL Type (TLS/MTLS)
  /// Possible values are: `TLS`, `MTLS`.
  final pulumi.Input<String> type;
  /// Bool for enabling SSL
  final pulumi.Input<bool>? useSsl;

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
      'additionalVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionSslConfigAdditionalVariable>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConnectionSslConfigAdditionalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCertType': ?clientCertType,
      'clientCertificate': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfigClientCertificate, Map<String, dynamic>>(clientCertificate, (value) => value.toMap()),
      'clientPrivateKey': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfigClientPrivateKey, Map<String, dynamic>>(clientPrivateKey, (value) => value.toMap()),
      'clientPrivateKeyPass': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfigClientPrivateKeyPass, Map<String, dynamic>>(clientPrivateKeyPass, (value) => value.toMap()),
      'privateServerCertificate': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfigPrivateServerCertificate, Map<String, dynamic>>(privateServerCertificate, (value) => value.toMap()),
      'serverCertType': ?serverCertType,
      'trustModel': ?trustModel,
      'type': type,
      'useSsl': ?useSsl,
    };
  }

  factory ConnectionSslConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfig(
      additionalVariables: map['additionalVariables'] == null ? null : (pulumi.Input.decodeList<ConnectionSslConfigAdditionalVariable>(map['additionalVariables'], (value) => ConnectionSslConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientCertType: map['clientCertType'] == null ? null : (map['clientCertType'] as String).input(),
      clientCertificate: map['clientCertificate'] == null ? null : (ConnectionSslConfigClientCertificate.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>())).input(),
      clientPrivateKey: map['clientPrivateKey'] == null ? null : (ConnectionSslConfigClientPrivateKey.fromMap((map['clientPrivateKey'] as Map).cast<String, dynamic>())).input(),
      clientPrivateKeyPass: map['clientPrivateKeyPass'] == null ? null : (ConnectionSslConfigClientPrivateKeyPass.fromMap((map['clientPrivateKeyPass'] as Map).cast<String, dynamic>())).input(),
      privateServerCertificate: map['privateServerCertificate'] == null ? null : (ConnectionSslConfigPrivateServerCertificate.fromMap((map['privateServerCertificate'] as Map).cast<String, dynamic>())).input(),
      serverCertType: map['serverCertType'] == null ? null : (map['serverCertType'] as String).input(),
      trustModel: map['trustModel'] == null ? null : (map['trustModel'] as String).input(),
      type: (map['type'] as String).input(),
      useSsl: map['useSsl'] == null ? null : (map['useSsl'] as bool).input(),
    );
  }
}

