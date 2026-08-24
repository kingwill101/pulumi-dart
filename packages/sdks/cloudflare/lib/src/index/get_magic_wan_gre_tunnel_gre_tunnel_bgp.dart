// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicWanGreTunnelGreTunnelBgp {
  /// ASN used on the customer end of the BGP session
  final pulumi.Input<int> customerAsn;
  /// Prefixes in this list will be advertised to the customer device, in addition to the routes in the Magic routing table.
  final pulumi.Input<List<String>> extraPrefixes;
  /// MD5 key to use for session authentication.
  final pulumi.Input<String> md5Key;

  /// Creates a new [GetMagicWanGreTunnelGreTunnelBgp].
  /// [customerAsn] ASN used on the customer end of the BGP session
  /// [extraPrefixes] Prefixes in this list will be advertised to the customer device, in addition to the routes in the Magic routing table.
  /// [md5Key] MD5 key to use for session authentication.
  const GetMagicWanGreTunnelGreTunnelBgp({
    required this.customerAsn,
    required this.extraPrefixes,
    required this.md5Key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerAsn': customerAsn,
      'extraPrefixes': extraPrefixes,
      'md5Key': md5Key,
    };
  }

  factory GetMagicWanGreTunnelGreTunnelBgp.fromMap(Map<String, dynamic> map) {
    return GetMagicWanGreTunnelGreTunnelBgp(
      customerAsn: pulumi.Input.fromValue((map['customerAsn'] as num).toInt()),
      extraPrefixes: pulumi.Input.fromValue((map['extraPrefixes'] as List).cast<String>()),
      md5Key: pulumi.Input.fromValue(map['md5Key'] as String),
    );
  }
}
