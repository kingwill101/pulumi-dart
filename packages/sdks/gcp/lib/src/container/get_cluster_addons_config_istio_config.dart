// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigIstioConfig {
  /// The authentication type between services in Istio. Available options include AUTH_MUTUAL_TLS.
  final pulumi.Input<String> auth;
  /// The status of the Istio addon, which makes it easy to set up Istio for services in a cluster. It is disabled by default. Set disabled = false to enable.
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterAddonsConfigIstioConfig].
  /// [auth] The authentication type between services in Istio. Available options include AUTH_MUTUAL_TLS.
  /// [disabled] The status of the Istio addon, which makes it easy to set up Istio for services in a cluster. It is disabled by default. Set disabled = false to enable.
  const GetClusterAddonsConfigIstioConfig({
    required this.auth,
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': auth,
      'disabled': disabled,
    };
  }

  factory GetClusterAddonsConfigIstioConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigIstioConfig(
      auth: pulumi.Input.fromValue(map['auth'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
