// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_config_auth.dart';

/// Configuration options for Istio addon.
class IstioConfig {
  /// The specified Istio auth mode, either none, or mutual TLS.
  final pulumi.Input<IstioConfigAuth>? auth;
  /// Whether Istio is enabled for this cluster.
  final pulumi.Input<bool>? disabled;

  /// Creates a new [IstioConfig].
  /// [auth] The specified Istio auth mode, either none, or mutual TLS.
  /// [disabled] Whether Istio is enabled for this cluster.
  IstioConfig({
    this.auth,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<IstioConfigAuth, String>(auth, (value) => value.value),
      'disabled': ?disabled,
    };
  }

  factory IstioConfig.fromMap(Map<String, dynamic> map) {
    return IstioConfig(
      auth: map['auth'] == null ? null : (IstioConfigAuth.fromValue(map['auth']! as String)).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
    );
  }
}

