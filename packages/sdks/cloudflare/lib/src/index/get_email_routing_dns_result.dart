// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_dns_dn.dart';

/// Result data returned by getEmailRoutingDns.
class GetEmailRoutingDnsResult {
  final List<GetEmailRoutingDnsDn>? dns;
  /// Identifier.
  final String? id;
  /// Deprecated. When supplied, the response shape differs from the documented default and is not modeled in generated SDKs. Do not rely on this parameter.
  final String? subdomain;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailRoutingDnsResult].
  /// [dns] Optional.
  /// [id] Identifier.
  /// [subdomain] Deprecated. When supplied, the response shape differs from the documented default and is not modeled in generated SDKs. Do not rely on this parameter.
  /// [zoneId] Identifier.
  const GetEmailRoutingDnsResult({
    this.dns,
    this.id,
    this.subdomain,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': ?(() { final guardedValue = dns; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingDnsDn, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'subdomain': ?subdomain,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingDnsResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsResult(
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingDnsDn>(guardedValue, (value) => GetEmailRoutingDnsDn.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
