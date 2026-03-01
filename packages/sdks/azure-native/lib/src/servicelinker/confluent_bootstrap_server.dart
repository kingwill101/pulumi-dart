// ignore_for_file: unused_element, unnecessary_cast


/// The service properties when target service type is ConfluentBootstrapServer
class ConfluentBootstrapServer {
  /// The endpoint of service.
  final String? endpoint;
  /// The target service type.
  /// Expected value is 'ConfluentBootstrapServer'.
  final String type;

  /// Creates a new [ConfluentBootstrapServer].
  /// [endpoint] The endpoint of service.
  /// [type] The target service type.
  ConfluentBootstrapServer({
    this.endpoint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'type': type,
    };
  }

  factory ConfluentBootstrapServer.fromMap(Map<String, dynamic> map) {
    return ConfluentBootstrapServer(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      type: map['type'] as String,
    );
  }
}

