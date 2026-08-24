// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_site_lan_get_magic_transit_site_lan_args_doc}
/// Arguments for getMagicTransitSiteLan.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_site_lan_get_magic_transit_site_lan_args_doc}
class GetMagicTransitSiteLanArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Identifier
  final pulumi.Input<String> lanId;
  /// Identifier
  final pulumi.Input<String> siteId;

  /// Creates a new [GetMagicTransitSiteLanArgs].
  /// [accountId] Identifier
  /// [lanId] Identifier
  /// [siteId] Identifier
  const GetMagicTransitSiteLanArgs({
    required this.accountId,
    required this.lanId,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'lanId': lanId,
      'siteId': siteId,
    };
  }

  factory GetMagicTransitSiteLanArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      lanId: pulumi.Input.fromValue(map['lanId'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
