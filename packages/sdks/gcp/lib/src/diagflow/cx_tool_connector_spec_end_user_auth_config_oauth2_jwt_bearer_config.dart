// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig {
  /// Client key value or parameter name to pass it through.
  final pulumi.Input<String> clientKey;
  /// Issuer value or parameter name to pass it through.
  final pulumi.Input<String> issuer;
  /// Subject value or parameter name to pass it through.
  final pulumi.Input<String> subject;

  /// Creates a new [CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig].
  /// [clientKey] Client key value or parameter name to pass it through.
  /// [issuer] Issuer value or parameter name to pass it through.
  /// [subject] Subject value or parameter name to pass it through.
  CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig({
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

  factory CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig.fromMap(Map<String, dynamic> map) {
    return CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig(
      clientKey: (map['clientKey'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      subject: (map['subject'] as String).input(),
    );
  }
}

