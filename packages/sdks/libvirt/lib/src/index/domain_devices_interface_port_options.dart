// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfacePortOptions {
  /// Sets whether the network port's traffic is isolated from others.
  final String? isolated;

  /// Creates a new [DomainDevicesInterfacePortOptions].
  /// [isolated] Sets whether the network port's traffic is isolated from others.
  DomainDevicesInterfacePortOptions({
    this.isolated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolated': ?isolated,
    };
  }

  factory DomainDevicesInterfacePortOptions.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfacePortOptions(
      isolated: map['isolated'] == null ? null : map['isolated'] as String,
    );
  }
}

