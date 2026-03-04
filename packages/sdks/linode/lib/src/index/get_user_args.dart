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
      'databaseGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserDatabaseGrant>,
            List<Map<String, dynamic>>
          >(
            databaseGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserDatabaseGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'domainGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserDomainGrant>,
            List<Map<String, dynamic>>
          >(
            domainGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserDomainGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'firewallGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserFirewallGrant>,
            List<Map<String, dynamic>>
          >(
            firewallGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserFirewallGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'imageGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserImageGrant>,
            List<Map<String, dynamic>>
          >(
            imageGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserImageGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'linodeGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserLinodeGrant>,
            List<Map<String, dynamic>>
          >(
            linodeGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserLinodeGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'longviewGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserLongviewGrant>,
            List<Map<String, dynamic>>
          >(
            longviewGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserLongviewGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodebalancerGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserNodebalancerGrant>,
            List<Map<String, dynamic>>
          >(
            nodebalancerGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserNodebalancerGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stackscriptGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserStackscriptGrant>,
            List<Map<String, dynamic>>
          >(
            stackscriptGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserStackscriptGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'username': username,
      'volumeGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserVolumeGrant>,
            List<Map<String, dynamic>>
          >(
            volumeGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserVolumeGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetUserVpcGrant>,
            List<Map<String, dynamic>>
          >(
            vpcGrants,
            (value) =>
                pulumi.Input.encodeList<GetUserVpcGrant, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      databaseGrants: (() {
        final guardedValue = map['databaseGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserDatabaseGrant>(
            guardedValue,
            (value) => GetUserDatabaseGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      domainGrants: (() {
        final guardedValue = map['domainGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserDomainGrant>(
            guardedValue,
            (value) => GetUserDomainGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      firewallGrants: (() {
        final guardedValue = map['firewallGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserFirewallGrant>(
            guardedValue,
            (value) => GetUserFirewallGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      imageGrants: (() {
        final guardedValue = map['imageGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserImageGrant>(
            guardedValue,
            (value) => GetUserImageGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      linodeGrants: (() {
        final guardedValue = map['linodeGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserLinodeGrant>(
            guardedValue,
            (value) => GetUserLinodeGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      longviewGrants: (() {
        final guardedValue = map['longviewGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserLongviewGrant>(
            guardedValue,
            (value) => GetUserLongviewGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      nodebalancerGrants: (() {
        final guardedValue = map['nodebalancerGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserNodebalancerGrant>(
            guardedValue,
            (value) => GetUserNodebalancerGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      stackscriptGrants: (() {
        final guardedValue = map['stackscriptGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserStackscriptGrant>(
            guardedValue,
            (value) => GetUserStackscriptGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      username: pulumi.Input.fromValue(map['username'] as String),
      volumeGrants: (() {
        final guardedValue = map['volumeGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserVolumeGrant>(
            guardedValue,
            (value) => GetUserVolumeGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vpcGrants: (() {
        final guardedValue = map['vpcGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetUserVpcGrant>(
            guardedValue,
            (value) =>
                GetUserVpcGrant.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
