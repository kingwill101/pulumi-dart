// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_database_grant.dart';
import 'get_user_domain_grant.dart';
import 'get_user_firewall_grant.dart';
import 'get_user_image_grant.dart';
import 'get_user_linode_grant.dart';
import 'get_user_longview_grant.dart';
import 'get_user_nodebalancer_grant.dart';
import 'get_user_stackscript_grant.dart';
import 'get_user_volume_grant.dart';
import 'get_user_vpc_grant.dart';

/// {@template pulumi_index_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_get_user_args_doc}
class GetUserArgs {
  final pulumi.Input<List<GetUserDatabaseGrant>>? databaseGrants;
  final pulumi.Input<List<GetUserDomainGrant>>? domainGrants;
  final pulumi.Input<List<GetUserFirewallGrant>>? firewallGrants;
  final pulumi.Input<List<GetUserImageGrant>>? imageGrants;
  final pulumi.Input<List<GetUserLinodeGrant>>? linodeGrants;
  final pulumi.Input<List<GetUserLongviewGrant>>? longviewGrants;
  final pulumi.Input<List<GetUserNodebalancerGrant>>? nodebalancerGrants;
  final pulumi.Input<List<GetUserStackscriptGrant>>? stackscriptGrants;
  /// The unique username of this User.
  final pulumi.Input<String> username;
  final pulumi.Input<List<GetUserVolumeGrant>>? volumeGrants;
  final pulumi.Input<List<GetUserVpcGrant>>? vpcGrants;

  /// Creates a new [GetUserArgs].
  /// [databaseGrants] Optional.
  /// [domainGrants] Optional.
  /// [firewallGrants] Optional.
  /// [imageGrants] Optional.
  /// [linodeGrants] Optional.
  /// [longviewGrants] Optional.
  /// [nodebalancerGrants] Optional.
  /// [stackscriptGrants] Optional.
  /// [username] The unique username of this User.
  /// [volumeGrants] Optional.
  /// [vpcGrants] Optional.
  GetUserArgs({
    this.databaseGrants,
    this.domainGrants,
    this.firewallGrants,
    this.imageGrants,
    this.linodeGrants,
    this.longviewGrants,
    this.nodebalancerGrants,
    this.stackscriptGrants,
    required this.username,
    this.volumeGrants,
    this.vpcGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserDatabaseGrant>, List<Map<String, dynamic>>>(databaseGrants, (value) => pulumi.Input.encodeList<GetUserDatabaseGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserDomainGrant>, List<Map<String, dynamic>>>(domainGrants, (value) => pulumi.Input.encodeList<GetUserDomainGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserFirewallGrant>, List<Map<String, dynamic>>>(firewallGrants, (value) => pulumi.Input.encodeList<GetUserFirewallGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserImageGrant>, List<Map<String, dynamic>>>(imageGrants, (value) => pulumi.Input.encodeList<GetUserImageGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linodeGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserLinodeGrant>, List<Map<String, dynamic>>>(linodeGrants, (value) => pulumi.Input.encodeList<GetUserLinodeGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'longviewGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserLongviewGrant>, List<Map<String, dynamic>>>(longviewGrants, (value) => pulumi.Input.encodeList<GetUserLongviewGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodebalancerGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserNodebalancerGrant>, List<Map<String, dynamic>>>(nodebalancerGrants, (value) => pulumi.Input.encodeList<GetUserNodebalancerGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackscriptGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserStackscriptGrant>, List<Map<String, dynamic>>>(stackscriptGrants, (value) => pulumi.Input.encodeList<GetUserStackscriptGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'username': username,
      'volumeGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserVolumeGrant>, List<Map<String, dynamic>>>(volumeGrants, (value) => pulumi.Input.encodeList<GetUserVolumeGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcGrants': ?pulumi.Input.mapOptionalInputValue<List<GetUserVpcGrant>, List<Map<String, dynamic>>>(vpcGrants, (value) => pulumi.Input.encodeList<GetUserVpcGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      databaseGrants: map['databaseGrants'] == null ? null : (pulumi.Input.decodeList<GetUserDatabaseGrant>(map['databaseGrants'], (value) => GetUserDatabaseGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      domainGrants: map['domainGrants'] == null ? null : (pulumi.Input.decodeList<GetUserDomainGrant>(map['domainGrants'], (value) => GetUserDomainGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firewallGrants: map['firewallGrants'] == null ? null : (pulumi.Input.decodeList<GetUserFirewallGrant>(map['firewallGrants'], (value) => GetUserFirewallGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      imageGrants: map['imageGrants'] == null ? null : (pulumi.Input.decodeList<GetUserImageGrant>(map['imageGrants'], (value) => GetUserImageGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linodeGrants: map['linodeGrants'] == null ? null : (pulumi.Input.decodeList<GetUserLinodeGrant>(map['linodeGrants'], (value) => GetUserLinodeGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      longviewGrants: map['longviewGrants'] == null ? null : (pulumi.Input.decodeList<GetUserLongviewGrant>(map['longviewGrants'], (value) => GetUserLongviewGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodebalancerGrants: map['nodebalancerGrants'] == null ? null : (pulumi.Input.decodeList<GetUserNodebalancerGrant>(map['nodebalancerGrants'], (value) => GetUserNodebalancerGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stackscriptGrants: map['stackscriptGrants'] == null ? null : (pulumi.Input.decodeList<GetUserStackscriptGrant>(map['stackscriptGrants'], (value) => GetUserStackscriptGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      username: (map['username'] as String).input(),
      volumeGrants: map['volumeGrants'] == null ? null : (pulumi.Input.decodeList<GetUserVolumeGrant>(map['volumeGrants'], (value) => GetUserVolumeGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcGrants: map['vpcGrants'] == null ? null : (pulumi.Input.decodeList<GetUserVpcGrant>(map['vpcGrants'], (value) => GetUserVpcGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

