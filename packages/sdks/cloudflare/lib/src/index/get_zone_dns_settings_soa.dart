// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneDnsSettingsSoa {
  /// Time in seconds of being unable to query the primary server after which secondary servers should stop serving the zone.
  final pulumi.Input<double> expire;
  /// The time to live (TTL) for negative caching of records within the zone.
  final pulumi.Input<double> minTtl;
  /// The primary nameserver, which may be used for outbound zone transfers. If null, a Cloudflare-assigned value will be used.
  final pulumi.Input<String> mname;
  /// Time in seconds after which secondary servers should re-check the SOA record to see if the zone has been updated.
  final pulumi.Input<double> refresh;
  /// Time in seconds after which secondary servers should retry queries after the primary server was unresponsive.
  final pulumi.Input<double> retry;
  /// The email address of the zone administrator, with the first label representing the local part of the email address.
  final pulumi.Input<String> rname;
  /// The time to live (TTL) of the SOA record itself.
  final pulumi.Input<double> ttl;

  /// Creates a new [GetZoneDnsSettingsSoa].
  /// [expire] Time in seconds of being unable to query the primary server after which secondary servers should stop serving the zone.
  /// [minTtl] The time to live (TTL) for negative caching of records within the zone.
  /// [mname] The primary nameserver, which may be used for outbound zone transfers. If null, a Cloudflare-assigned value will be used.
  /// [refresh] Time in seconds after which secondary servers should re-check the SOA record to see if the zone has been updated.
  /// [retry] Time in seconds after which secondary servers should retry queries after the primary server was unresponsive.
  /// [rname] The email address of the zone administrator, with the first label representing the local part of the email address.
  /// [ttl] The time to live (TTL) of the SOA record itself.
  const GetZoneDnsSettingsSoa({
    required this.expire,
    required this.minTtl,
    required this.mname,
    required this.refresh,
    required this.retry,
    required this.rname,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expire': expire,
      'minTtl': minTtl,
      'mname': mname,
      'refresh': refresh,
      'retry': retry,
      'rname': rname,
      'ttl': ttl,
    };
  }

  factory GetZoneDnsSettingsSoa.fromMap(Map<String, dynamic> map) {
    return GetZoneDnsSettingsSoa(
      expire: pulumi.Input.fromValue((map['expire'] as num).toDouble()),
      minTtl: pulumi.Input.fromValue((map['minTtl'] as num).toDouble()),
      mname: pulumi.Input.fromValue(map['mname'] as String),
      refresh: pulumi.Input.fromValue((map['refresh'] as num).toDouble()),
      retry: pulumi.Input.fromValue((map['retry'] as num).toDouble()),
      rname: pulumi.Input.fromValue(map['rname'] as String),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toDouble()),
    );
  }
}
