// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficManagerExternalEndpointCustomHeader {
  /// The name of the custom header.
  final pulumi.Input<String> name;
  /// The value of custom header. Applicable for HTTP and HTTPS protocol.
  final pulumi.Input<String> value;

  /// Creates a new [TrafficManagerExternalEndpointCustomHeader].
  /// [name] The name of the custom header.
  /// [value] The value of custom header. Applicable for HTTP and HTTPS protocol.
  const TrafficManagerExternalEndpointCustomHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TrafficManagerExternalEndpointCustomHeader.fromMap(Map<String, dynamic> map) {
    return TrafficManagerExternalEndpointCustomHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

