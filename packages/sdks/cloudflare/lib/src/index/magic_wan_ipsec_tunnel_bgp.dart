// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicWanIpsecTunnelBgp {
  /// ASN used on the customer end of the BGP session
  final pulumi.Input<int> customerAsn;
  /// UUID of the BGP filter profile to apply to routes advertised by Cloudflare.
  final pulumi.Input<String?>? exportFilterId;
  /// Prefixes in this list will be advertised to the customer device, in addition to the routes in the Magic routing table.
  final pulumi.Input<List<String>?>? extraPrefixes;
  /// UUID of the BGP filter profile to apply to routes advertised to Cloudflare.
  final pulumi.Input<String?>? importFilterId;
  /// MD5 key to use for session authentication.
  final pulumi.Input<String?>? md5Key;

  /// Creates a new [MagicWanIpsecTunnelBgp].
  /// [customerAsn] ASN used on the customer end of the BGP session
  /// [exportFilterId] UUID of the BGP filter profile to apply to routes advertised by Cloudflare.
  /// [extraPrefixes] Prefixes in this list will be advertised to the customer device, in addition to the routes in the Magic routing table.
  /// [importFilterId] UUID of the BGP filter profile to apply to routes advertised to Cloudflare.
  /// [md5Key] MD5 key to use for session authentication.
  const MagicWanIpsecTunnelBgp({
    required this.customerAsn,
    this.exportFilterId,
    this.extraPrefixes,
    this.importFilterId,
    this.md5Key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerAsn': customerAsn,
      'exportFilterId': ?exportFilterId,
      'extraPrefixes': ?extraPrefixes,
      'importFilterId': ?importFilterId,
      'md5Key': ?md5Key,
    };
  }

  factory MagicWanIpsecTunnelBgp.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelBgp(
      customerAsn: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['customerAsn'])),
      exportFilterId: (() { final guardedValue = map['exportFilterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraPrefixes: (() { final guardedValue = map['extraPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      importFilterId: (() { final guardedValue = map['importFilterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      md5Key: (() { final guardedValue = map['md5Key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
