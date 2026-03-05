// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpSecPolicyLifetime {
  final pulumi.Input<String>? units;
  /// The value for the lifetime of the security association. Must be a positive integer.
  /// Default is 3600.
  final pulumi.Input<int>? value;

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
      units: (() { final guardedValue = map['units']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

