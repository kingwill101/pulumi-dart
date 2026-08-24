// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicWanIpsecTunnelBgp {
  /// ASN used on the customer end of the BGP session
  final pulumi.Input<int> customerAsn;
  /// Prefixes in this list will be advertised to the customer device, in addition to the routes in the Magic routing table.
  final pulumi.Input<List<String>?>? extraPrefixes;
  /// MD5 key to use for session authentication.
  final pulumi.Input<String?>? md5Key;

  /// Creates a new [MagicWanIpsecTunnelBgp].
  /// [customerAsn] ASN used on the customer end of the BGP session
  /// [extraPrefixes] Prefixes in this list will be advertised to the customer device, in addition to the routes in the Magic routing table.
  /// [md5Key] MD5 key to use for session authentication.
  const MagicWanIpsecTunnelBgp({
    required this.customerAsn,
    this.extraPrefixes,
    this.md5Key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerAsn': customerAsn,
      'extraPrefixes': ?extraPrefixes,
      'md5Key': ?md5Key,
    };
  }

  factory MagicWanIpsecTunnelBgp.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelBgp(
      customerAsn: pulumi.Input.fromValue((map['customerAsn'] as num).toInt()),
      extraPrefixes: (() { final guardedValue = map['extraPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      md5Key: (() { final guardedValue = map['md5Key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
