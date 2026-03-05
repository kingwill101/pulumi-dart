// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_log_config_filter_compute_beta.dart';

/// Configuration of logging on a NAT.
class RouterNatLogConfigComputeBeta {
  /// Indicates whether or not to export logs. This is false by default.
  final pulumi.Input<bool>? enable;
  /// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  final pulumi.Input<RouterNatLogConfigFilterComputeBeta>? filter;

  /// Creates a new [RouterNatLogConfigComputeBeta].
  /// [enable] Indicates whether or not to export logs. This is false by default.
  /// [filter] Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  RouterNatLogConfigComputeBeta({
    this.enable,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'filter': ?pulumi.Input.mapOptionalInputValue<RouterNatLogConfigFilterComputeBeta, String>(filter, (value) => value.wireValue),
    };
  }

  factory RouterNatLogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterNatLogConfigComputeBeta(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterNatLogConfigFilterComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}

