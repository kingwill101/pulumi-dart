// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig {
  /// Client parameter name to pass through.
  /// Must be in the format '$context.variables.&lt;name_of_variable&gt;'.
  final pulumi.Input<String> clientKey;
  /// Issuer parameter name to pass through.
  /// Must be in the format '$context.variables.&lt;name_of_variable&gt;'.
  final pulumi.Input<String> issuer;
  /// Subject parameter name to pass through.
  /// Must be in the format '$context.variables.&lt;name_of_variable&gt;'.
  final pulumi.Input<String> subject;

  /// Creates a new [ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig].
  /// [clientKey] Client parameter name to pass through.
  /// [issuer] Issuer parameter name to pass through.
  /// [subject] Subject parameter name to pass through.
  const ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig({
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

  factory ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig(
      clientKey: pulumi.Input.fromValue(map['clientKey'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
    );
  }
}
