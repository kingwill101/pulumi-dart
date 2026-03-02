// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom header name and value.
class EndpointPropertiesCustomHeadersItem {
  /// Header name.
  final pulumi.Input<String>? name;
  /// Header value.
  final pulumi.Input<String>? value;

  /// Creates a new [EndpointPropertiesCustomHeadersItem].
  /// [name] Header name.
  /// [value] Header value.
  EndpointPropertiesCustomHeadersItem({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EndpointPropertiesCustomHeadersItem.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesCustomHeadersItem(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

