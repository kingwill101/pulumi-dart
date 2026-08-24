// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_routing_dns_get_email_routing_dns_args_doc}
/// Arguments for getEmailRoutingDns.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_routing_dns_get_email_routing_dns_args_doc}
class GetEmailRoutingDnsArgs {
  /// Domain of your zone.
  final pulumi.Input<String?>? subdomain;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetEmailRoutingDnsArgs].
  /// [subdomain] Domain of your zone.
  /// [zoneId] Identifier.
  const GetEmailRoutingDnsArgs({
    this.subdomain,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subdomain': ?subdomain,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingDnsArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsArgs(
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
