// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_transit_site_acl_lan1.dart';
import 'get_magic_transit_site_acl_lan2.dart';

/// Result data returned by getMagicTransitSiteAcl.
class GetMagicTransitSiteAclResult {
  /// Identifier
  final String? accountId;
  /// Identifier
  final String? aclId;
  /// Description for the ACL.
  final String? description;
  /// The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
  final bool? forwardLocally;
  /// Identifier
  final String? id;
  final GetMagicTransitSiteAclLan1? lan1;
  final GetMagicTransitSiteAclLan2? lan2;
  /// The name of the ACL.
  final String? name;
  final List<String>? protocols;
  /// Identifier
  final String? siteId;
  /// The desired traffic direction for this ACL policy. If set to "false", the policy will allow bidirectional traffic. If set to "true", the policy will only allow traffic in one direction. If not included in request, will default to false.
  final bool? unidirectional;

  /// Creates a new [GetMagicTransitSiteAclResult].
  /// [accountId] Identifier
  /// [aclId] Identifier
  /// [description] Description for the ACL.
  /// [forwardLocally] The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
  /// [id] Identifier
  /// [lan1] Optional.
  /// [lan2] Optional.
  /// [name] The name of the ACL.
  /// [protocols] Optional.
  /// [siteId] Identifier
  /// [unidirectional] The desired traffic direction for this ACL policy. If set to "false", the policy will allow bidirectional traffic. If set to "true", the policy will only allow traffic in one direction. If not included in request, will default to false.
  const GetMagicTransitSiteAclResult({
    this.accountId,
    this.aclId,
    this.description,
    this.forwardLocally,
    this.id,
    this.lan1,
    this.lan2,
    this.name,
    this.protocols,
    this.siteId,
    this.unidirectional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aclId': ?aclId,
      'description': ?description,
      'forwardLocally': ?forwardLocally,
      'id': ?id,
      'lan1': ?lan1?.toMap(),
      'lan2': ?lan2?.toMap(),
      'name': ?name,
      'protocols': ?protocols,
      'siteId': ?siteId,
      'unidirectional': ?unidirectional,
    };
  }

  factory GetMagicTransitSiteAclResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteAclResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aclId: (() { final guardedValue = map['aclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardLocally: (() { final guardedValue = map['forwardLocally']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lan1: (() { final guardedValue = map['lan1']; if (guardedValue == null) return null; return GetMagicTransitSiteAclLan1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lan2: (() { final guardedValue = map['lan2']; if (guardedValue == null) return null; return GetMagicTransitSiteAclLan2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unidirectional: (() { final guardedValue = map['unidirectional']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
