// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_routing_dns_email_routing_dns_args_doc}
/// The set of arguments for EmailRoutingDns.
/// {@endtemplate}
/// {@macro pulumi_index_email_routing_dns_email_routing_dns_args_doc}
class EmailRoutingDnsArgs {
  /// Domain of your zone.
  final pulumi.Input<String?>? name;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EmailRoutingDnsArgs].
  /// [name] Domain of your zone.
  /// [zoneId] Identifier.
  const EmailRoutingDnsArgs({
    this.name,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'zoneId': zoneId,
    };
  }

  factory EmailRoutingDnsArgs.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
