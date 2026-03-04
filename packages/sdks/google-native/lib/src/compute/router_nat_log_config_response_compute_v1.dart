// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of logging on a NAT.
class RouterNatLogConfigResponseComputeV1 {
  /// Indicates whether or not to export logs. This is false by default.
  final pulumi.Input<bool> enable;

  /// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  final pulumi.Input<String> filter;

  /// Creates a new [RouterNatLogConfigResponseComputeV1].
  /// [enable] Indicates whether or not to export logs. This is false by default.
  /// [filter] Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  RouterNatLogConfigResponseComputeV1({
    required this.enable,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enable': enable, 'filter': filter};
  }

  factory RouterNatLogConfigResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouterNatLogConfigResponseComputeV1(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
