// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_binding_type_compute_beta.dart';

class ServerBindingComputeBeta {
  final pulumi.Input<ServerBindingTypeComputeBeta>? type;

  /// Creates a new [ServerBindingComputeBeta].
  /// [type] Optional.
  ServerBindingComputeBeta({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ServerBindingTypeComputeBeta, String>(type, (value) => value.value),
    };
  }

  factory ServerBindingComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServerBindingComputeBeta(
      type: map['type'] == null ? null : (ServerBindingTypeComputeBeta.fromValue(map['type'] as String)).input(),
    );
  }
}

