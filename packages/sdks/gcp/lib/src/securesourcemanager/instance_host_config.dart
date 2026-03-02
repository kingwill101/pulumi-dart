// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceHostConfig {
  /// (Output)
  /// API hostname.
  final pulumi.Input<String>? api;
  /// (Output)
  /// Git HTTP hostname.
  final pulumi.Input<String>? gitHttp;
  /// (Output)
  /// Git SSH hostname.
  final pulumi.Input<String>? gitSsh;
  /// (Output)
  /// HTML hostname.
  final pulumi.Input<String>? html;

  /// Creates a new [InstanceHostConfig].
  /// [api] (Output)
  /// [gitHttp] (Output)
  /// [gitSsh] (Output)
  /// [html] (Output)
  InstanceHostConfig({
    this.api,
    this.gitHttp,
    this.gitSsh,
    this.html,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?api,
      'gitHttp': ?gitHttp,
      'gitSsh': ?gitSsh,
      'html': ?html,
    };
  }

  factory InstanceHostConfig.fromMap(Map<String, dynamic> map) {
    return InstanceHostConfig(
      api: map['api'] == null ? null : (map['api']! as String).input(),
      gitHttp: map['gitHttp'] == null ? null : (map['gitHttp']! as String).input(),
      gitSsh: map['gitSsh'] == null ? null : (map['gitSsh']! as String).input(),
      html: map['html'] == null ? null : (map['html']! as String).input(),
    );
  }
}

