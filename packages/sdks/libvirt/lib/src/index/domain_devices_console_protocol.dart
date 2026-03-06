// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesConsoleProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesConsoleProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  const DomainDevicesConsoleProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesConsoleProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleProtocol(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

