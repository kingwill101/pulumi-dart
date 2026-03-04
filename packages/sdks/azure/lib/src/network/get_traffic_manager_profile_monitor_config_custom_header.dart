// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficManagerProfileMonitorConfigCustomHeader {
  /// Specifies the name of the Traffic Manager Profile.
  final pulumi.Input<String> name;

  /// The value of custom header. Applicable for HTTP and HTTPS protocol.
  final pulumi.Input<String> value;

  /// Creates a new [GetTrafficManagerProfileMonitorConfigCustomHeader].
  /// [name] Specifies the name of the Traffic Manager Profile.
  /// [value] The value of custom header. Applicable for HTTP and HTTPS protocol.
  GetTrafficManagerProfileMonitorConfigCustomHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetTrafficManagerProfileMonitorConfigCustomHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTrafficManagerProfileMonitorConfigCustomHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
