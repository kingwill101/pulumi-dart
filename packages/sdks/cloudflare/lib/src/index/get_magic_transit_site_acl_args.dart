// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_site_acl_get_magic_transit_site_acl_args_doc}
/// Arguments for getMagicTransitSiteAcl.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_site_acl_get_magic_transit_site_acl_args_doc}
class GetMagicTransitSiteAclArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Identifier
  final pulumi.Input<String> aclId;
  /// Identifier
  final pulumi.Input<String> siteId;

  /// Creates a new [GetMagicTransitSiteAclArgs].
  /// [accountId] Identifier
  /// [aclId] Identifier
  /// [siteId] Identifier
  const GetMagicTransitSiteAclArgs({
    required this.accountId,
    required this.aclId,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aclId': aclId,
      'siteId': siteId,
    };
  }

  factory GetMagicTransitSiteAclArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteAclArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
