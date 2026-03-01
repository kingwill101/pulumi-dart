// ignore_for_file: unused_element, unnecessary_cast


class ServerBindingResponseComputeV1 {
  final String type;

  /// Creates a new [ServerBindingResponseComputeV1].
  /// [type] Required.
  ServerBindingResponseComputeV1({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServerBindingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponseComputeV1(
      type: map['type'] as String,
    );
  }
}

