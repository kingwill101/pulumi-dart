// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_site_acls_get_magic_transit_site_acls_args_doc}
/// Arguments for getMagicTransitSiteAcls.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_site_acls_get_magic_transit_site_acls_args_doc}
class GetMagicTransitSiteAclsArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier
  final pulumi.Input<String> siteId;

  /// Creates a new [GetMagicTransitSiteAclsArgs].
  /// [accountId] Identifier
  /// [maxItems] Max items to fetch, default: 1000
  /// [siteId] Identifier
  const GetMagicTransitSiteAclsArgs({
    this.accountId,
    this.maxItems,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'siteId': siteId,
    };
  }

  factory GetMagicTransitSiteAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteAclsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
