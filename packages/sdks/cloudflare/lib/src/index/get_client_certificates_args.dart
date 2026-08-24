// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_client_certificates_get_client_certificates_args_doc}
/// Arguments for getClientCertificates.
/// {@endtemplate}
/// {@macro pulumi_index_get_client_certificates_get_client_certificates_args_doc}
class GetClientCertificatesArgs {
  /// Limit to the number of records returned.
  final pulumi.Input<int?>? limit;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Offset the results.
  final pulumi.Input<int?>? offset;
  /// Client Certitifcate Status to filter results by.
  /// Available values: "all", "active", "pending*reactivation", "pending*revocation", "revoked".
  final pulumi.Input<String?>? status;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetClientCertificatesArgs].
  /// [limit] Limit to the number of records returned.
  /// [maxItems] Max items to fetch, default: 1000
  /// [offset] Offset the results.
  /// [status] Client Certitifcate Status to filter results by.
  /// [zoneId] Identifier.
  const GetClientCertificatesArgs({
    this.limit,
    this.maxItems,
    this.offset,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'maxItems': ?maxItems,
      'offset': ?offset,
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetClientCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetClientCertificatesArgs(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
