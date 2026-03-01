// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesIoapic {
  /// Specifies the driver to be used for the I/O APIC feature.
  final String? driver;

  /// Creates a new [DomainFeaturesIoapic].
  /// [driver] Specifies the driver to be used for the I/O APIC feature.
  DomainFeaturesIoapic({
    this.driver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
    };
  }

  factory DomainFeaturesIoapic.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesIoapic(
      driver: map['driver'] == null ? null : map['driver'] as String,
    );
  }
}

