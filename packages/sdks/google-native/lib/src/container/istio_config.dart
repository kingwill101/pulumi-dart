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
  IstioConfig({this.auth, this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<IstioConfigAuth, String>(
        auth,
        (value) => value.wireValue,
      ),
      'disabled': ?disabled,
    };
  }

  factory IstioConfig.fromMap(Map<String, dynamic> map) {
    return IstioConfig(
      auth: (() {
        final guardedValue = map['auth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IstioConfigAuth.fromValue(guardedValue as String),
        );
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
