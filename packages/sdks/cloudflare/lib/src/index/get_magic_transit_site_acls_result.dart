// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_acls_result_lan1.dart';
import 'get_magic_transit_site_acls_result_lan2.dart';

class GetMagicTransitSiteAclsResult {
  /// Description for the ACL.
  final pulumi.Input<String> description;
  /// The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
  final pulumi.Input<bool> forwardLocally;
  /// Identifier
  final pulumi.Input<String> id;
  final pulumi.Input<GetMagicTransitSiteAclsResultLan1> lan1;
  final pulumi.Input<GetMagicTransitSiteAclsResultLan2> lan2;
  /// The name of the ACL.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> protocols;
  /// The desired traffic direction for this ACL policy. If set to "false", the policy will allow bidirectional traffic. If set to "true", the policy will only allow traffic in one direction. If not included in request, will default to false.
  final pulumi.Input<bool> unidirectional;

  /// Creates a new [GetMagicTransitSiteAclsResult].
  /// [description] Description for the ACL.
  /// [forwardLocally] The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
  /// [id] Identifier
  /// [lan1] Required.
  /// [lan2] Required.
  /// [name] The name of the ACL.
  /// [protocols] Required.
  /// [unidirectional] The desired traffic direction for this ACL policy. If set to "false", the policy will allow bidirectional traffic. If set to "true", the policy will only allow traffic in one direction. If not included in request, will default to false.
  const GetMagicTransitSiteAclsResult({
    required this.description,
    required this.forwardLocally,
    required this.id,
    required this.lan1,
    required this.lan2,
    required this.name,
    required this.protocols,
    required this.unidirectional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'forwardLocally': forwardLocally,
      'id': id,
      'lan1': pulumi.Input.mapInputValue<GetMagicTransitSiteAclsResultLan1, Map<String, dynamic>>(lan1, (value) => value.toMap()),
      'lan2': pulumi.Input.mapInputValue<GetMagicTransitSiteAclsResultLan2, Map<String, dynamic>>(lan2, (value) => value.toMap()),
      'name': name,
      'protocols': protocols,
      'unidirectional': unidirectional,
    };
  }

  factory GetMagicTransitSiteAclsResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteAclsResult(
      description: pulumi.Input.fromValue(map['description'] as String),
      forwardLocally: pulumi.Input.fromValue(map['forwardLocally'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      lan1: pulumi.Input.fromValue(GetMagicTransitSiteAclsResultLan1.fromMap((map['lan1']! as Map).cast<String, dynamic>())),
      lan2: pulumi.Input.fromValue(GetMagicTransitSiteAclsResultLan2.fromMap((map['lan2']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      unidirectional: pulumi.Input.fromValue(map['unidirectional'] as bool),
    );
  }
}
