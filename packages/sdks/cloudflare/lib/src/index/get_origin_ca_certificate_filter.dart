// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOriginCaCertificateFilter {
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetOriginCaCertificateFilter].
  /// [zoneId] Identifier.
  const GetOriginCaCertificateFilter({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetOriginCaCertificateFilter.fromMap(Map<String, dynamic> map) {
    return GetOriginCaCertificateFilter(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
