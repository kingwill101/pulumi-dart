// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetServerSSlInfoCommonName {
  /// The TLS Common Name string of the certificate.
  final pulumi.Input<String>? value;
  /// Indicates whether the cert should be matched against as a wildcard cert.
  final pulumi.Input<bool>? wildcardMatch;

  /// Creates a new [TargetServerSSlInfoCommonName].
  /// [value] The TLS Common Name string of the certificate.
  /// [wildcardMatch] Indicates whether the cert should be matched against as a wildcard cert.
  TargetServerSSlInfoCommonName({
    this.value,
    this.wildcardMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'wildcardMatch': ?wildcardMatch,
    };
  }

  factory TargetServerSSlInfoCommonName.fromMap(Map<String, dynamic> map) {
    return TargetServerSSlInfoCommonName(
      value: map['value'] == null ? null : (map['value'] as String).input(),
      wildcardMatch: map['wildcardMatch'] == null ? null : (map['wildcardMatch'] as bool).input(),
    );
  }
}

