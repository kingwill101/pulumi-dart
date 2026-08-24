// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_account.dart';

/// {@template pulumi_index_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_index_zone_zone_args_doc}
class ZoneArgs {
  final pulumi.Input<ZoneAccount> account;
  /// The domain name. Per [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035#section-2.3.4) the overall zone name can be up to 253 characters, with each segment ("label") not exceeding 63 characters.
  final pulumi.Input<String> name;
  /// Indicates whether the zone is only using Cloudflare DNS services. A
  /// true value means the zone will not receive security or performance
  /// benefits.
  final pulumi.Input<bool?>? paused;
  /// A full zone implies that DNS is hosted with Cloudflare. A partial zone is
  /// typically a partner-hosted zone or a CNAME setup.
  /// Available values: "full", "partial", "secondary", "internal".
  final pulumi.Input<String?>? type;
  /// An array of domains used for custom name servers. This is only
  /// available for Business and Enterprise plans.
  final pulumi.Input<List<String>?>? vanityNameServers;

  /// Creates a new [ZoneArgs].
  /// [account] Required.
  /// [name] The domain name. Per [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035#section-2.3.4) the overall zone name can be up to 253 characters, with each segment ("label") not exceeding 63 characters.
  /// [paused] Indicates whether the zone is only using Cloudflare DNS services. A
  /// [type] A full zone implies that DNS is hosted with Cloudflare. A partial zone is
  /// [vanityNameServers] An array of domains used for custom name servers. This is only
  const ZoneArgs({
    required this.account,
    required this.name,
    this.paused,
    this.type,
    this.vanityNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': pulumi.Input.mapInputValue<ZoneAccount, Map<String, dynamic>>(account, (value) => value.toMap()),
      'name': name,
      'paused': ?paused,
      'type': ?type,
      'vanityNameServers': ?vanityNameServers,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      account: pulumi.Input.fromValue(ZoneAccount.fromMap((map['account']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vanityNameServers: (() { final guardedValue = map['vanityNameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
