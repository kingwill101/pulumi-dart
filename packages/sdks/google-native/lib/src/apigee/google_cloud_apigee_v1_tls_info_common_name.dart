// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudApigeeV1TlsInfoCommonName {
  /// The TLS Common Name string of the certificate.
  final pulumi.Input<String>? value;

  /// Indicates whether the cert should be matched against as a wildcard cert.
  final pulumi.Input<bool>? wildcardMatch;

  /// Creates a new [GoogleCloudApigeeV1TlsInfoCommonName].
  /// [value] The TLS Common Name string of the certificate.
  /// [wildcardMatch] Indicates whether the cert should be matched against as a wildcard cert.
  GoogleCloudApigeeV1TlsInfoCommonName({this.value, this.wildcardMatch});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value, 'wildcardMatch': ?wildcardMatch};
  }

  factory GoogleCloudApigeeV1TlsInfoCommonName.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1TlsInfoCommonName(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      wildcardMatch: (() {
        final guardedValue = map['wildcardMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
