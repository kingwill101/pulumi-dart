// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_acl_lan1.dart';
import 'magic_transit_site_acl_lan2.dart';

/// {@template pulumi_index_magic_transit_site_acl_magic_transit_site_acl_args_doc}
/// The set of arguments for MagicTransitSiteAcl.
/// {@endtemplate}
/// {@macro pulumi_index_magic_transit_site_acl_magic_transit_site_acl_args_doc}
class MagicTransitSiteAclArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Description for the ACL.
  final pulumi.Input<String?>? description;
  /// The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
  final pulumi.Input<bool?>? forwardLocally;
  final pulumi.Input<MagicTransitSiteAclLan1> lan1;
  final pulumi.Input<MagicTransitSiteAclLan2> lan2;
  /// The name of the ACL.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>?>? protocols;
  /// Identifier
  final pulumi.Input<String> siteId;
  /// The desired traffic direction for this ACL policy. If set to "false", the policy will allow bidirectional traffic. If set to "true", the policy will only allow traffic in one direction. If not included in request, will default to false.
  final pulumi.Input<bool?>? unidirectional;

  /// Creates a new [MagicTransitSiteAclArgs].
  /// [accountId] Identifier
  /// [description] Description for the ACL.
  /// [forwardLocally] The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
  /// [lan1] Required.
  /// [lan2] Required.
  /// [name] The name of the ACL.
  /// [protocols] Optional.
  /// [siteId] Identifier
  /// [unidirectional] The desired traffic direction for this ACL policy. If set to "false", the policy will allow bidirectional traffic. If set to "true", the policy will only allow traffic in one direction. If not included in request, will default to false.
  const MagicTransitSiteAclArgs({
    required this.accountId,
    this.description,
    this.forwardLocally,
    required this.lan1,
    required this.lan2,
    required this.name,
    this.protocols,
    required this.siteId,
    this.unidirectional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'forwardLocally': ?forwardLocally,
      'lan1': pulumi.Input.mapInputValue<MagicTransitSiteAclLan1, Map<String, dynamic>>(lan1, (value) => value.toMap()),
      'lan2': pulumi.Input.mapInputValue<MagicTransitSiteAclLan2, Map<String, dynamic>>(lan2, (value) => value.toMap()),
      'name': name,
      'protocols': ?protocols,
      'siteId': siteId,
      'unidirectional': ?unidirectional,
    };
  }

  factory MagicTransitSiteAclArgs.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteAclArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardLocally: (() { final guardedValue = map['forwardLocally']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lan1: pulumi.Input.fromValue(MagicTransitSiteAclLan1.fromMap((map['lan1']! as Map).cast<String, dynamic>())),
      lan2: pulumi.Input.fromValue(MagicTransitSiteAclLan2.fromMap((map['lan2']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      unidirectional: (() { final guardedValue = map['unidirectional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
