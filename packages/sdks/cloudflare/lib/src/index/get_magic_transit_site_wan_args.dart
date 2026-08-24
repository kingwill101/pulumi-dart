// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_site_wan_get_magic_transit_site_wan_args_doc}
/// Arguments for getMagicTransitSiteWan.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_site_wan_get_magic_transit_site_wan_args_doc}
class GetMagicTransitSiteWanArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Identifier
  final pulumi.Input<String> siteId;
  /// Identifier
  final pulumi.Input<String> wanId;

  /// Creates a new [GetMagicTransitSiteWanArgs].
  /// [accountId] Identifier
  /// [siteId] Identifier
  /// [wanId] Identifier
  const GetMagicTransitSiteWanArgs({
    required this.accountId,
    required this.siteId,
    required this.wanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'siteId': siteId,
      'wanId': wanId,
    };
  }

  factory GetMagicTransitSiteWanArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteWanArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      wanId: pulumi.Input.fromValue(map['wanId'] as String),
    );
  }
}
