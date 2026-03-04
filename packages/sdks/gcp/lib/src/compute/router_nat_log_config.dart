// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterNatLogConfig {
  /// Indicates whether or not to export logs.
  final pulumi.Input<bool> enable;

  /// Specifies the desired filtering of logs on this NAT.
  /// Possible values are: `ERRORS_ONLY`, `TRANSLATIONS_ONLY`, `ALL`.
  final pulumi.Input<String> filter;

  /// Creates a new [RouterNatLogConfig].
  /// [enable] Indicates whether or not to export logs.
  /// [filter] Specifies the desired filtering of logs on this NAT.
  RouterNatLogConfig({required this.enable, required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enable': enable, 'filter': filter};
  }

  factory RouterNatLogConfig.fromMap(Map<String, dynamic> map) {
    return RouterNatLogConfig(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
