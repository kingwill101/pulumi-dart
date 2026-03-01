// ignore_for_file: unused_element, unnecessary_cast


class DomainOsBios {
  /// Defines the timeout duration for rebooting the domain, controlling wait time before action is taken.
  final double? rebootTimeout;
  /// Configures whether the BIOS should use the serial console for output.
  final String? useSerial;

  /// Creates a new [DomainOsBios].
  /// [rebootTimeout] Defines the timeout duration for rebooting the domain, controlling wait time before action is taken.
  /// [useSerial] Configures whether the BIOS should use the serial console for output.
  DomainOsBios({
    this.rebootTimeout,
    this.useSerial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rebootTimeout': ?rebootTimeout,
      'useSerial': ?useSerial,
    };
  }

  factory DomainOsBios.fromMap(Map<String, dynamic> map) {
    return DomainOsBios(
      rebootTimeout: map['rebootTimeout'] == null ? null : map['rebootTimeout'] as double,
      useSerial: map['useSerial'] == null ? null : map['useSerial'] as String,
    );
  }
}

