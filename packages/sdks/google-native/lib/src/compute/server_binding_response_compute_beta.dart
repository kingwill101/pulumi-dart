// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerBindingResponseComputeBeta {
  final pulumi.Input<String> type;

  /// Creates a new [ServerBindingResponseComputeBeta].
  /// [type] Required.
  ServerBindingResponseComputeBeta({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServerBindingResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponseComputeBeta(
      type: (map['type'] as String).input(),
    );
  }
}

