// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSerialProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesSerialProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  const DomainDevicesSerialProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesSerialProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialProtocol(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

