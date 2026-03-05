// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BgpvpnPortAssociateV2Route {
  /// The ID of the BGP VPN to be advertised. Required
  /// if `type` is `bgpvpn`. Conflicts with `prefix`.
  final pulumi.Input<String>? bgpvpnId;
  /// The BGP LOCAL\_PREF value of the routes that will
  /// be advertised.
  final pulumi.Input<int>? localPref;
  /// The CIDR prefix (v4 or v6) to be advertised. Required
  /// if `type` is `prefix`. Conflicts with `bgpvpn_id`.
  final pulumi.Input<String>? prefix;
  /// Can be `prefix` or `bgpvpn`. For the `prefix` type, the
  /// CIDR prefix (v4 or v6) must be specified in the `prefix` key. For the
  /// `bgpvpn` type, the BGP VPN ID must be specified in the `bgpvpn_id` key.
  final pulumi.Input<String> type;

  /// Creates a new [BgpvpnPortAssociateV2Route].
  /// [bgpvpnId] The ID of the BGP VPN to be advertised. Required
  /// [localPref] The BGP LOCAL\_PREF value of the routes that will
  /// [prefix] The CIDR prefix (v4 or v6) to be advertised. Required
  /// [type] Can be `prefix` or `bgpvpn`. For the `prefix` type, the
  BgpvpnPortAssociateV2Route({
    this.bgpvpnId,
    this.localPref,
    this.prefix,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpvpnId': ?bgpvpnId,
      'localPref': ?localPref,
      'prefix': ?prefix,
      'type': type,
    };
  }

  factory BgpvpnPortAssociateV2Route.fromMap(Map<String, dynamic> map) {
    return BgpvpnPortAssociateV2Route(
      bgpvpnId: (() { final guardedValue = map['bgpvpnId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localPref: (() { final guardedValue = map['localPref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

