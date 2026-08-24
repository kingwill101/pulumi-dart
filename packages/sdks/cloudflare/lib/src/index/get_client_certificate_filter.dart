// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClientCertificateFilter {
  /// Limit to the number of records returned.
  final pulumi.Input<int?>? limit;
  /// Offset the results.
  final pulumi.Input<int?>? offset;
  /// Client Certitifcate Status to filter results by.
  /// Available values: "all", "active", "pending*reactivation", "pending*revocation", "revoked".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetClientCertificateFilter].
  /// [limit] Limit to the number of records returned.
  /// [offset] Offset the results.
  /// [status] Client Certitifcate Status to filter results by.
  const GetClientCertificateFilter({
    this.limit,
    this.offset,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'offset': ?offset,
      'status': ?status,
    };
  }

  factory GetClientCertificateFilter.fromMap(Map<String, dynamic> map) {
    return GetClientCertificateFilter(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
