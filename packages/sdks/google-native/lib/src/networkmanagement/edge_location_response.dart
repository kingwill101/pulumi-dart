// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of a network edge location as per https://cloud.google.com/vpc/docs/edge-locations.
class EdgeLocationResponse {
  /// Name of the metropolitan area.
  final pulumi.Input<String> metropolitanArea;

  /// Creates a new [EdgeLocationResponse].
  /// [metropolitanArea] Name of the metropolitan area.
  const EdgeLocationResponse({
    required this.metropolitanArea,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metropolitanArea': metropolitanArea,
    };
  }

  factory EdgeLocationResponse.fromMap(Map<String, dynamic> map) {
    return EdgeLocationResponse(
      metropolitanArea: pulumi.Input.fromValue(map['metropolitanArea'] as String),
    );
  }
}

