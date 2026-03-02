// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Zone details data.
class A2AZoneDetailsResponse {
  /// Source zone info.
  final pulumi.Input<String>? source;
  /// The target zone info.
  final pulumi.Input<String>? target;

  /// Creates a new [A2AZoneDetailsResponse].
  /// [source] Source zone info.
  /// [target] The target zone info.
  A2AZoneDetailsResponse({
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source,
      'target': ?target,
    };
  }

  factory A2AZoneDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AZoneDetailsResponse(
      source: map['source'] == null ? null : (map['source']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

