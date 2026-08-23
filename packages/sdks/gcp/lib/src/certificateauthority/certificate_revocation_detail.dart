// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateRevocationDetail {
  /// (Output)
  /// Indicates why a Certificate was revoked.
  final pulumi.Input<String>? revocationState;
  /// (Output)
  /// The time at which this Certificate was revoked.
  final pulumi.Input<String>? revocationTime;

  /// Creates a new [CertificateRevocationDetail].
  /// [revocationState] (Output)
  /// [revocationTime] (Output)
  const CertificateRevocationDetail({
    this.revocationState,
    this.revocationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revocationState': ?revocationState,
      'revocationTime': ?revocationTime,
    };
  }

  factory CertificateRevocationDetail.fromMap(Map<String, dynamic> map) {
    return CertificateRevocationDetail(
      revocationState: (() { final guardedValue = map['revocationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revocationTime: (() { final guardedValue = map['revocationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
