// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ID of the ExpressRouteConnection.
class ExpressRouteConnectionIdResponse {
  /// The ID of the ExpressRouteConnection.
  final pulumi.Input<String> id;

  /// Creates a new [ExpressRouteConnectionIdResponse].
  /// [id] The ID of the ExpressRouteConnection.
  const ExpressRouteConnectionIdResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ExpressRouteConnectionIdResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionIdResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

