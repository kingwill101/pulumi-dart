// ignore_for_file: unused_element, unnecessary_cast


/// The ID of the ExpressRouteConnection.
class ExpressRouteConnectionIdResponse {
  /// The ID of the ExpressRouteConnection.
  final String id;

  /// Creates a new [ExpressRouteConnectionIdResponse].
  /// [id] The ID of the ExpressRouteConnection.
  ExpressRouteConnectionIdResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ExpressRouteConnectionIdResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionIdResponse(
      id: map['id'] as String,
    );
  }
}

