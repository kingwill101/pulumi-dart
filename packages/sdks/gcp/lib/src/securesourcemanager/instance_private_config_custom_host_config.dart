// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePrivateConfigCustomHostConfig {
  /// API hostname.
  final pulumi.Input<String> api;
  /// Git HTTP hostname.
  final pulumi.Input<String> gitHttp;
  /// Git SSH hostname.
  final pulumi.Input<String> gitSsh;
  /// HTML hostname.
  final pulumi.Input<String> html;

  /// Creates a new [InstancePrivateConfigCustomHostConfig].
  /// [api] API hostname.
  /// [gitHttp] Git HTTP hostname.
  /// [gitSsh] Git SSH hostname.
  /// [html] HTML hostname.
  const InstancePrivateConfigCustomHostConfig({
    required this.api,
    required this.gitHttp,
    required this.gitSsh,
    required this.html,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': api,
      'gitHttp': gitHttp,
      'gitSsh': gitSsh,
      'html': html,
    };
  }

  factory InstancePrivateConfigCustomHostConfig.fromMap(Map<String, dynamic> map) {
    return InstancePrivateConfigCustomHostConfig(
      api: pulumi.Input.fromValue(map['api'] as String),
      gitHttp: pulumi.Input.fromValue(map['gitHttp'] as String),
      gitSsh: pulumi.Input.fromValue(map['gitSsh'] as String),
      html: pulumi.Input.fromValue(map['html'] as String),
    );
  }
}
