// ignore_for_file: unused_element, unnecessary_cast


/// The service properties when target service type is ConfluentSchemaRegistry
class ConfluentSchemaRegistry {
  /// The endpoint of service.
  final String? endpoint;
  /// The target service type.
  /// Expected value is 'ConfluentSchemaRegistry'.
  final String type;

  /// Creates a new [ConfluentSchemaRegistry].
  /// [endpoint] The endpoint of service.
  /// [type] The target service type.
  ConfluentSchemaRegistry({
    this.endpoint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'type': type,
    };
  }

  factory ConfluentSchemaRegistry.fromMap(Map<String, dynamic> map) {
    return ConfluentSchemaRegistry(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      type: map['type'] as String,
    );
  }
}

