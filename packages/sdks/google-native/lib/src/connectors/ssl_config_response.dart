// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_variable_response.dart';
import 'secret_response.dart';

/// SSL Configuration of a connection
class SslConfigResponse {
  /// Additional SSL related field values
  final pulumi.Input<List<ConfigVariableResponse>> additionalVariables;
  /// Type of Client Cert (PEM/JKS/.. etc.)
  final pulumi.Input<String> clientCertType;
  /// Client Certificate
  final pulumi.Input<SecretResponse> clientCertificate;
  /// Client Private Key
  final pulumi.Input<SecretResponse> clientPrivateKey;
  /// Secret containing the passphrase protecting the Client Private Key
  final pulumi.Input<SecretResponse> clientPrivateKeyPass;
  /// Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  final pulumi.Input<SecretResponse> privateServerCertificate;
  /// Type of Server Cert (PEM/JKS/.. etc.)
  final pulumi.Input<String> serverCertType;
  /// Trust Model of the SSL connection
  final pulumi.Input<String> trustModel;
  /// Controls the ssl type for the given connector version.
  final pulumi.Input<String> type;
  /// Bool for enabling SSL
  final pulumi.Input<bool> useSsl;

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
      'additionalVariables': pulumi.Input.mapInputValue<List<ConfigVariableResponse>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCertType': clientCertType,
      'clientCertificate': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(clientCertificate, (value) => value.toMap()),
      'clientPrivateKey': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(clientPrivateKey, (value) => value.toMap()),
      'clientPrivateKeyPass': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(clientPrivateKeyPass, (value) => value.toMap()),
      'privateServerCertificate': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(privateServerCertificate, (value) => value.toMap()),
      'serverCertType': serverCertType,
      'trustModel': trustModel,
      'type': type,
      'useSsl': useSsl,
    };
  }

  factory SslConfigResponse.fromMap(Map<String, dynamic> map) {
    return SslConfigResponse(
      additionalVariables: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigVariableResponse>(map['additionalVariables']!, (value) => ConfigVariableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      clientCertType: pulumi.Input.fromValue(map['clientCertType'] as String),
      clientCertificate: pulumi.Input.fromValue(SecretResponse.fromMap((map['clientCertificate']! as Map).cast<String, dynamic>())),
      clientPrivateKey: pulumi.Input.fromValue(SecretResponse.fromMap((map['clientPrivateKey']! as Map).cast<String, dynamic>())),
      clientPrivateKeyPass: pulumi.Input.fromValue(SecretResponse.fromMap((map['clientPrivateKeyPass']! as Map).cast<String, dynamic>())),
      privateServerCertificate: pulumi.Input.fromValue(SecretResponse.fromMap((map['privateServerCertificate']! as Map).cast<String, dynamic>())),
      serverCertType: pulumi.Input.fromValue(map['serverCertType'] as String),
      trustModel: pulumi.Input.fromValue(map['trustModel'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      useSsl: pulumi.Input.fromValue(map['useSsl'] as bool),
    );
  }
}

