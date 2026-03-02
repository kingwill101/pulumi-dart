// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceLink {
  /// Configures the operational state of the network link (up or down).
  final pulumi.Input<String> state;

  /// Creates a new [DomainDevicesInterfaceLink].
  /// [state] Configures the operational state of the network link (up or down).
  DomainDevicesInterfaceLink({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory DomainDevicesInterfaceLink.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceLink(
      state: (map['state'] as String).input(),
    );
  }
}

