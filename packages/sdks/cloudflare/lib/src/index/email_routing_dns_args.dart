// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_routing_dns_email_routing_dns_args_doc}
/// The set of arguments for EmailRoutingDns.
/// {@endtemplate}
/// {@macro pulumi_index_email_routing_dns_email_routing_dns_args_doc}
class EmailRoutingDnsArgs {
  /// Domain of your zone.
  final pulumi.Input<String?>? name;
  /// Deprecated. When supplied, the response shape differs from the documented default and is not modeled in generated SDKs. Do not rely on this parameter.
  final pulumi.Input<String?>? subdomain;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EmailRoutingDnsArgs].
  /// [name] Domain of your zone.
  /// [subdomain] Deprecated. When supplied, the response shape differs from the documented default and is not modeled in generated SDKs. Do not rely on this parameter.
  /// [zoneId] Identifier.
  const EmailRoutingDnsArgs({
    this.name,
    this.subdomain,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subdomain': ?subdomain,
      'zoneId': zoneId,
    };
  }

  factory EmailRoutingDnsArgs.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
