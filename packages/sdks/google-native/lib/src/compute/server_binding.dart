// ignore_for_file: unused_element, unnecessary_cast

import 'server_binding_type.dart';

class ServerBinding {
  final ServerBindingType? type;

  /// Creates a new [ServerBinding].
  /// [type] Optional.
  ServerBinding({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ServerBinding.fromMap(Map<String, dynamic> map) {
    return ServerBinding(
      type: map['type'] == null ? null : ServerBindingType.fromValue(map['type'] as String),
    );
  }
}

