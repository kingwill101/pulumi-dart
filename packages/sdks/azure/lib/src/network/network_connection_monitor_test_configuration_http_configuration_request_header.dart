// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader {
  /// The name of the HTTP header.
  final pulumi.Input<String> name;
  /// The value of the HTTP header.
  final pulumi.Input<String> value;

  /// Creates a new [NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader].
  /// [name] The name of the HTTP header.
  /// [value] The value of the HTTP header.
  const NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
