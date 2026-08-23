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
  const ConnectionSslConfig({
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
      additionalVariables: (() { final guardedValue = map['additionalVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionSslConfigAdditionalVariable>(guardedValue, (value) => ConnectionSslConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientCertType: (() { final guardedValue = map['clientCertType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSslConfigClientCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientPrivateKey: (() { final guardedValue = map['clientPrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSslConfigClientPrivateKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientPrivateKeyPass: (() { final guardedValue = map['clientPrivateKeyPass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSslConfigClientPrivateKeyPass.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateServerCertificate: (() { final guardedValue = map['privateServerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSslConfigPrivateServerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverCertType: (() { final guardedValue = map['serverCertType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustModel: (() { final guardedValue = map['trustModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useSsl: (() { final guardedValue = map['useSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
