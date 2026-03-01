// ignore_for_file: unused_element, unnecessary_cast


class ServerBindingResponse {
  final String type;

  /// Creates a new [ServerBindingResponse].
  /// [type] Required.
  ServerBindingResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServerBindingResponse.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponse(
      type: map['type'] as String,
    );
  }
}

