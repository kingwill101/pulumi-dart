// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficManagerNestedEndpointCustomHeader {
  /// The name of the custom header.
  final pulumi.Input<String> name;

  /// The value of custom header. Applicable for HTTP and HTTPS protocol.
  final pulumi.Input<String> value;

  /// Creates a new [TrafficManagerNestedEndpointCustomHeader].
  /// [name] The name of the custom header.
  /// [value] The value of custom header. Applicable for HTTP and HTTPS protocol.
  TrafficManagerNestedEndpointCustomHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory TrafficManagerNestedEndpointCustomHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return TrafficManagerNestedEndpointCustomHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
