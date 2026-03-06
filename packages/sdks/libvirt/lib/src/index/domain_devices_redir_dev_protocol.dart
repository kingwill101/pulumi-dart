// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRedirDevProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesRedirDevProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  const DomainDevicesRedirDevProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesRedirDevProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevProtocol(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

