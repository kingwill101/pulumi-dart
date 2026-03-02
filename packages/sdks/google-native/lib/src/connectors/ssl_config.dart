// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_variable.dart';
import 'secret.dart';
import 'ssl_config_client_cert_type.dart';
import 'ssl_config_server_cert_type.dart';
import 'ssl_config_trust_model.dart';
import 'ssl_config_type.dart';

/// SSL Configuration of a connection
class SslConfig {
  /// Additional SSL related field values
  final pulumi.Input<List<ConfigVariable>>? additionalVariables;
  /// Type of Client Cert (PEM/JKS/.. etc.)
  final pulumi.Input<SslConfigClientCertType>? clientCertType;
  /// Client Certificate
  final pulumi.Input<Secret>? clientCertificate;
  /// Client Private Key
  final pulumi.Input<Secret>? clientPrivateKey;
  /// Secret containing the passphrase protecting the Client Private Key
  final pulumi.Input<Secret>? clientPrivateKeyPass;
  /// Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  final pulumi.Input<Secret>? privateServerCertificate;
  /// Type of Server Cert (PEM/JKS/.. etc.)
  final pulumi.Input<SslConfigServerCertType>? serverCertType;
  /// Trust Model of the SSL connection
  final pulumi.Input<SslConfigTrustModel>? trustModel;
  /// Controls the ssl type for the given connector version.
  final pulumi.Input<SslConfigType>? type;
  /// Bool for enabling SSL
  final pulumi.Input<bool>? useSsl;

  /// Creates a new [SslConfig].
  /// [additionalVariables] Additional SSL related field values
  /// [clientCertType] Type of Client Cert (PEM/JKS/.. etc.)
  /// [clientCertificate] Client Certificate
  /// [clientPrivateKey] Client Private Key
  /// [clientPrivateKeyPass] Secret containing the passphrase protecting the Client Private Key
  /// [privateServerCertificate] Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  /// [serverCertType] Type of Server Cert (PEM/JKS/.. etc.)
  /// [trustModel] Trust Model of the SSL connection
  /// [type] Controls the ssl type for the given connector version.
  /// [useSsl] Bool for enabling SSL
  SslConfig({
    this.additionalVariables,
    this.clientCertType,
    this.clientCertificate,
    this.clientPrivateKey,
    this.clientPrivateKeyPass,
    this.privateServerCertificate,
    this.serverCertType,
    this.trustModel,
    this.type,
    this.useSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?pulumi.Input.mapOptionalInputValue<List<ConfigVariable>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCertType': ?pulumi.Input.mapOptionalInputValue<SslConfigClientCertType, String>(clientCertType, (value) => value.value),
      'clientCertificate': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(clientCertificate, (value) => value.toMap()),
      'clientPrivateKey': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(clientPrivateKey, (value) => value.toMap()),
      'clientPrivateKeyPass': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(clientPrivateKeyPass, (value) => value.toMap()),
      'privateServerCertificate': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(privateServerCertificate, (value) => value.toMap()),
      'serverCertType': ?pulumi.Input.mapOptionalInputValue<SslConfigServerCertType, String>(serverCertType, (value) => value.value),
      'trustModel': ?pulumi.Input.mapOptionalInputValue<SslConfigTrustModel, String>(trustModel, (value) => value.value),
      'type': ?pulumi.Input.mapOptionalInputValue<SslConfigType, String>(type, (value) => value.value),
      'useSsl': ?useSsl,
    };
  }

  factory SslConfig.fromMap(Map<String, dynamic> map) {
    return SslConfig(
      additionalVariables: map['additionalVariables'] == null ? null : (pulumi.Input.decodeList<ConfigVariable>(map['additionalVariables'], (value) => ConfigVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientCertType: map['clientCertType'] == null ? null : (SslConfigClientCertType.fromValue(map['clientCertType'] as String)).input(),
      clientCertificate: map['clientCertificate'] == null ? null : (Secret.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>())).input(),
      clientPrivateKey: map['clientPrivateKey'] == null ? null : (Secret.fromMap((map['clientPrivateKey'] as Map).cast<String, dynamic>())).input(),
      clientPrivateKeyPass: map['clientPrivateKeyPass'] == null ? null : (Secret.fromMap((map['clientPrivateKeyPass'] as Map).cast<String, dynamic>())).input(),
      privateServerCertificate: map['privateServerCertificate'] == null ? null : (Secret.fromMap((map['privateServerCertificate'] as Map).cast<String, dynamic>())).input(),
      serverCertType: map['serverCertType'] == null ? null : (SslConfigServerCertType.fromValue(map['serverCertType'] as String)).input(),
      trustModel: map['trustModel'] == null ? null : (SslConfigTrustModel.fromValue(map['trustModel'] as String)).input(),
      type: map['type'] == null ? null : (SslConfigType.fromValue(map['type'] as String)).input(),
      useSsl: map['useSsl'] == null ? null : (map['useSsl'] as bool).input(),
    );
  }
}

