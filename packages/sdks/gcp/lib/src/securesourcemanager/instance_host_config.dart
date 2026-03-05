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
      api: (() { final guardedValue = map['api']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitHttp: (() { final guardedValue = map['gitHttp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitSsh: (() { final guardedValue = map['gitSsh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      html: (() { final guardedValue = map['html']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

