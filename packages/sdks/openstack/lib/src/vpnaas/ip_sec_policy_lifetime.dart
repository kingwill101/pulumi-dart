// ignore_for_file: unused_element, unnecessary_cast


class IpSecPolicyLifetime {
  final String? units;
  /// The value for the lifetime of the security association. Must be a positive integer.
  /// Default is 3600.
  final int? value;

  /// Creates a new [IpSecPolicyLifetime].
  /// [units] Optional.
  /// [value] The value for the lifetime of the security association. Must be a positive integer.
  IpSecPolicyLifetime({
    this.units,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'units': ?units,
      'value': ?value,
    };
  }

  factory IpSecPolicyLifetime.fromMap(Map<String, dynamic> map) {
    return IpSecPolicyLifetime(
      units: map['units'] == null ? null : map['units'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

