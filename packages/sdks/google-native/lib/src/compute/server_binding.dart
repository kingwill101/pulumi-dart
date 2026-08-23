// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_binding_type.dart';

class ServerBinding {
  final pulumi.Input<ServerBindingType>? type;

  /// Creates a new [ServerBinding].
  /// [type] Optional.
  const ServerBinding({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ServerBindingType, String>(type, (value) => value.wireValue),
    };
  }

  factory ServerBinding.fromMap(Map<String, dynamic> map) {
    return ServerBinding(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerBindingType.fromValue(guardedValue as String)); })(),
    );
  }
}
