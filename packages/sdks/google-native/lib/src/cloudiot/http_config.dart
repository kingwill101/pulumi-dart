// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_config_http_enabled_state.dart';

/// The configuration of the HTTP bridge for a device registry.
class HttpConfig {
  /// If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
  final pulumi.Input<HttpConfigHttpEnabledState>? httpEnabledState;

  /// Creates a new [HttpConfig].
  /// [httpEnabledState] If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
  const HttpConfig({
    this.httpEnabledState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEnabledState': ?pulumi.Input.mapOptionalInputValue<HttpConfigHttpEnabledState, String>(httpEnabledState, (value) => value.wireValue),
    };
  }

  factory HttpConfig.fromMap(Map<String, dynamic> map) {
    return HttpConfig(
      httpEnabledState: (() { final guardedValue = map['httpEnabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpConfigHttpEnabledState.fromValue(guardedValue as String)); })(),
    );
  }
}
