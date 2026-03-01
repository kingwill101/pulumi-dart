// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceLink {
  /// Configures the operational state of the network link (up or down).
  final String state;

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
      state: map['state'] as String,
    );
  }
}

