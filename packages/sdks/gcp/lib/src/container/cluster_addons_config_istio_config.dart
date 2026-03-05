// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigIstioConfig {
  /// The authentication type between services in Istio. Available options include `AUTH_MUTUAL_TLS`.
  final pulumi.Input<String>? auth;
  /// The status of the Istio addon, which makes it easy to set up Istio for services in a
  /// cluster. It is disabled by default. Set `disabled = false` to enable.
  final pulumi.Input<bool> disabled;

  /// Creates a new [ClusterAddonsConfigIstioConfig].
  /// [auth] The authentication type between services in Istio. Available options include `AUTH_MUTUAL_TLS`.
  /// [disabled] The status of the Istio addon, which makes it easy to set up Istio for services in a
  ClusterAddonsConfigIstioConfig({
    this.auth,
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth,
      'disabled': disabled,
    };
  }

  factory ClusterAddonsConfigIstioConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigIstioConfig(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}

