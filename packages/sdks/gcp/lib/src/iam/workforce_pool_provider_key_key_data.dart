// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforcePoolProviderKeyKeyData {
  /// (Output)
  /// The format of the key.
  final pulumi.Input<String>? format;
  /// (Output)
  /// The key data. The format of the key is represented by the format field.
  final pulumi.Input<String>? key;
  /// The specifications for the key.
  /// Possible values are: `RSA_2048`, `RSA_3072`, `RSA_4096`.
  final pulumi.Input<String> keySpec;
  /// (Output)
  /// Latest timestamp when this key is valid. Attempts to use this key after this time will fail.
  /// Only present if the key data represents a X.509 certificate.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? notAfterTime;
  /// (Output)
  /// Earliest timestamp when this key is valid. Attempts to use this key before this time will fail.
  /// Only present if the key data represents a X.509 certificate.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? notBeforeTime;

  /// Creates a new [WorkforcePoolProviderKeyKeyData].
  /// [format] (Output)
  /// [key] (Output)
  /// [keySpec] The specifications for the key.
  /// [notAfterTime] (Output)
  /// [notBeforeTime] (Output)
  WorkforcePoolProviderKeyKeyData({
    this.format,
    this.key,
    required this.keySpec,
    this.notAfterTime,
    this.notBeforeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'key': ?key,
      'keySpec': keySpec,
      'notAfterTime': ?notAfterTime,
      'notBeforeTime': ?notBeforeTime,
    };
  }

  factory WorkforcePoolProviderKeyKeyData.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderKeyKeyData(
      format: map['format'] == null ? null : (map['format'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      keySpec: (map['keySpec'] as String).input(),
      notAfterTime: map['notAfterTime'] == null ? null : (map['notAfterTime'] as String).input(),
      notBeforeTime: map['notBeforeTime'] == null ? null : (map['notBeforeTime'] as String).input(),
    );
  }
}

