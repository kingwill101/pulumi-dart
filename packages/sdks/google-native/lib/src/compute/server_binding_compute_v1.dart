// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_binding_type_compute_v1.dart';

class ServerBindingComputeV1 {
  final pulumi.Input<ServerBindingTypeComputeV1>? type;

  /// Creates a new [ServerBindingComputeV1].
  /// [type] Optional.
  ServerBindingComputeV1({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ServerBindingTypeComputeV1, String>(type, (value) => value.value),
    };
  }

  factory ServerBindingComputeV1.fromMap(Map<String, dynamic> map) {
    return ServerBindingComputeV1(
      type: map['type'] == null ? null : (ServerBindingTypeComputeV1.fromValue(map['type'] as String)).input(),
    );
  }
}

