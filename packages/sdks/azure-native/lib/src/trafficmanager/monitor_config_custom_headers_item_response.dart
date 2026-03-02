// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom header name and value.
class MonitorConfigCustomHeadersItemResponse {
  /// Header name.
  final pulumi.Input<String>? name;
  /// Header value.
  final pulumi.Input<String>? value;

  /// Creates a new [MonitorConfigCustomHeadersItemResponse].
  /// [name] Header name.
  /// [value] Header value.
  MonitorConfigCustomHeadersItemResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MonitorConfigCustomHeadersItemResponse.fromMap(Map<String, dynamic> map) {
    return MonitorConfigCustomHeadersItemResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

