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
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

