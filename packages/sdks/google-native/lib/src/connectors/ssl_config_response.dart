// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_variable_response.dart';
import 'secret_response.dart';

/// SSL Configuration of a connection
class SslConfigResponse {
  /// Additional SSL related field values
  final List<ConfigVariableResponse> additionalVariables;
  /// Type of Client Cert (PEM/JKS/.. etc.)
  final String clientCertType;
  /// Client Certificate
  final SecretResponse clientCertificate;
  /// Client Private Key
  final SecretResponse clientPrivateKey;
  /// Secret containing the passphrase protecting the Client Private Key
  final SecretResponse clientPrivateKeyPass;
  /// Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  final SecretResponse privateServerCertificate;
  /// Type of Server Cert (PEM/JKS/.. etc.)
  final String serverCertType;
  /// Trust Model of the SSL connection
  final String trustModel;
  /// Controls the ssl type for the given connector version.
  final String type;
  /// Bool for enabling SSL
  final bool useSsl;

  /// Creates a new [SslConfigResponse].
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
  SslConfigResponse({
    required this.additionalVariables,
    required this.clientCertType,
    required this.clientCertificate,
    required this.clientPrivateKey,
    required this.clientPrivateKeyPass,
    required this.privateServerCertificate,
    required this.serverCertType,
    required this.trustModel,
    required this.type,
    required this.useSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(additionalVariables, (value) => value.toMap()),
      'clientCertType': clientCertType,
      'clientCertificate': clientCertificate.toMap(),
      'clientPrivateKey': clientPrivateKey.toMap(),
      'clientPrivateKeyPass': clientPrivateKeyPass.toMap(),
      'privateServerCertificate': privateServerCertificate.toMap(),
      'serverCertType': serverCertType,
      'trustModel': trustModel,
      'type': type,
      'useSsl': useSsl,
    };
  }

  factory SslConfigResponse.fromMap(Map<String, dynamic> map) {
    return SslConfigResponse(
      additionalVariables: pulumi.Input.decodeList<ConfigVariableResponse>(map['additionalVariables'], (value) => ConfigVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      clientCertType: map['clientCertType'] as String,
      clientCertificate: SecretResponse.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientPrivateKey: SecretResponse.fromMap((map['clientPrivateKey'] as Map).cast<String, dynamic>()),
      clientPrivateKeyPass: SecretResponse.fromMap((map['clientPrivateKeyPass'] as Map).cast<String, dynamic>()),
      privateServerCertificate: SecretResponse.fromMap((map['privateServerCertificate'] as Map).cast<String, dynamic>()),
      serverCertType: map['serverCertType'] as String,
      trustModel: map['trustModel'] as String,
      type: map['type'] as String,
      useSsl: map['useSsl'] as bool,
    );
  }
}

