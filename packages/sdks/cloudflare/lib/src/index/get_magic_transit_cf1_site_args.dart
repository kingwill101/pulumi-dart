// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_cf1_site_get_magic_transit_cf1_site_args_doc}
/// Arguments for getMagicTransitCf1Site.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_cf1_site_get_magic_transit_cf1_site_args_doc}
class GetMagicTransitCf1SiteArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Identifier
  final pulumi.Input<String> cf1SiteId;

  /// Creates a new [GetMagicTransitCf1SiteArgs].
  /// [accountId] Identifier
  /// [cf1SiteId] Identifier
  const GetMagicTransitCf1SiteArgs({
    required this.accountId,
    required this.cf1SiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'cf1SiteId': cf1SiteId,
    };
  }

  factory GetMagicTransitCf1SiteArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitCf1SiteArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      cf1SiteId: pulumi.Input.fromValue(map['cf1SiteId'] as String),
    );
  }
}
