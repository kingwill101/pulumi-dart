// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig {
  /// Client key value or parameter name to pass it through.
  final pulumi.Input<String> clientKey;
  /// Issuer value or parameter name to pass it through.
  final pulumi.Input<String> issuer;
  /// Subject value or parameter name to pass it through.
  final pulumi.Input<String> subject;

  /// Creates a new [CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig].
  /// [clientKey] Client key value or parameter name to pass it through.
  /// [issuer] Issuer value or parameter name to pass it through.
  /// [subject] Subject value or parameter name to pass it through.
  const CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig({
    required this.clientKey,
    required this.issuer,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientKey': clientKey,
      'issuer': issuer,
      'subject': subject,
    };
  }

  factory CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig(
      clientKey: pulumi.Input.fromValue(map['clientKey'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
    );
  }
}
