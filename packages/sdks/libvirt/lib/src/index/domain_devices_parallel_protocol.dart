// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesParallelProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesParallelProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  const DomainDevicesParallelProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesParallelProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelProtocol(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
