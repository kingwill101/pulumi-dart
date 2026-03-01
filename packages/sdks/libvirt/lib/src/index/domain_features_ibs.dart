// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesIbs {
  /// Sets the value for the Instruction Based Sampling feature's configuration.
  final String value;

  /// Creates a new [DomainFeaturesIbs].
  /// [value] Sets the value for the Instruction Based Sampling feature's configuration.
  DomainFeaturesIbs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainFeaturesIbs.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesIbs(
      value: map['value'] as String,
    );
  }
}

