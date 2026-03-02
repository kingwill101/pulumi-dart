// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WireGroupTopologyEndpoint {
  /// (Output)
  final pulumi.Input<String>? city;
  /// (Output)
  final pulumi.Input<String>? label;

  /// Creates a new [WireGroupTopologyEndpoint].
  /// [city] (Output)
  /// [label] (Output)
  WireGroupTopologyEndpoint({
    this.city,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'label': ?label,
    };
  }

  factory WireGroupTopologyEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupTopologyEndpoint(
      city: map['city'] == null ? null : (map['city']! as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
    );
  }
}

