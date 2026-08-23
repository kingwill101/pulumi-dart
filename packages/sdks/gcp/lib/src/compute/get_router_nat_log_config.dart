// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterNatLogConfig {
  /// Indicates whether or not to export logs.
  final pulumi.Input<bool> enable;
  /// Specifies the desired filtering of logs on this NAT. Possible values: ["ERRORS_ONLY", "TRANSLATIONS_ONLY", "ALL"]
  final pulumi.Input<String> filter;

  /// Creates a new [GetRouterNatLogConfig].
  /// [enable] Indicates whether or not to export logs.
  /// [filter] Specifies the desired filtering of logs on this NAT. Possible values: ["ERRORS_ONLY", "TRANSLATIONS_ONLY", "ALL"]
  const GetRouterNatLogConfig({
    required this.enable,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'filter': filter,
    };
  }

  factory GetRouterNatLogConfig.fromMap(Map<String, dynamic> map) {
    return GetRouterNatLogConfig(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
