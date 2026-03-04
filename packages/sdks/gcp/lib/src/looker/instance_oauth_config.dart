// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceOauthConfig {
  /// The client ID for the Oauth config.
  final pulumi.Input<String> clientId;

  /// The client secret for the Oauth config.
  final pulumi.Input<String> clientSecret;

  /// Creates a new [InstanceOauthConfig].
  /// [clientId] The client ID for the Oauth config.
  /// [clientSecret] The client secret for the Oauth config.
  InstanceOauthConfig({required this.clientId, required this.clientSecret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory InstanceOauthConfig.fromMap(Map<String, dynamic> map) {
    return InstanceOauthConfig(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
    );
  }
}
