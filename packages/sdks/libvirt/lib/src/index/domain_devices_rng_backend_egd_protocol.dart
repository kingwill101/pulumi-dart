// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngBackendEgdProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesRngBackendEgdProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  DomainDevicesRngBackendEgdProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesRngBackendEgdProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdProtocol(
      type: (map['type'] as String).input(),
    );
  }
}

