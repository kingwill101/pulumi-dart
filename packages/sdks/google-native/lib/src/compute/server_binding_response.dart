// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerBindingResponse {
  final pulumi.Input<String> type;

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
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

