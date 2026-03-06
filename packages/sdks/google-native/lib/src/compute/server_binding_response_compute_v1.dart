// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerBindingResponseComputeV1 {
  final pulumi.Input<String> type;

  /// Creates a new [ServerBindingResponseComputeV1].
  /// [type] Required.
  const ServerBindingResponseComputeV1({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServerBindingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponseComputeV1(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

