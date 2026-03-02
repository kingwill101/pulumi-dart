// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesChannelProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  DomainDevicesChannelProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesChannelProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelProtocol(
      type: (map['type'] as String).input(),
    );
  }
}

