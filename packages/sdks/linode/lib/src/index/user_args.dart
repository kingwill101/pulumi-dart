// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_domain_grant.dart';
import 'user_firewall_grant.dart';
import 'user_global_grants.dart';
import 'user_image_grant.dart';
import 'user_linode_grant.dart';
import 'user_longview_grant.dart';
import 'user_nodebalancer_grant.dart';
import 'user_stackscript_grant.dart';
import 'user_volume_grant.dart';
import 'user_vpc_grant.dart';

/// {@template pulumi_index_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_index_user_user_args_doc}
class UserArgs {
  /// The domains the user has permissions access to.
  final pulumi.Input<List<UserDomainGrant>>? domainGrants;

  /// The email address of the user.
  final pulumi.Input<String> email;

  /// The firewalls the user has permissions access to.
  final pulumi.Input<List<UserFirewallGrant>>? firewallGrants;

  /// A structure containing the Account-level grants a User has.
  final pulumi.Input<UserGlobalGrants>? globalGrants;

  /// The images the user has permissions access to.
  final pulumi.Input<List<UserImageGrant>>? imageGrants;

  /// The Linodes the user has permissions access to.
  final pulumi.Input<List<UserLinodeGrant>>? linodeGrants;

  /// The longview the user has permissions access to.
  final pulumi.Input<List<UserLongviewGrant>>? longviewGrants;

  /// The NodeBalancers the user has permissions access to.
  final pulumi.Input<List<UserNodebalancerGrant>>? nodebalancerGrants;

  /// If true, this user will only have explicit permissions granted.
  ///
  /// * `global_grants` - (optional) A structure containing the Account-level grants a User has.
  ///
  /// The following arguments are sets of entity grants:
  final pulumi.Input<bool>? restricted;

  /// The StackScripts the user has permissions access to.
  final pulumi.Input<List<UserStackscriptGrant>>? stackscriptGrants;

  /// The username of the user.
  final pulumi.Input<String> username;

  /// The volumes the user has permissions access to.
  final pulumi.Input<List<UserVolumeGrant>>? volumeGrants;

  /// The Virtual Private Clouds (VPCs) the user has permissions access to.
  final pulumi.Input<List<UserVpcGrant>>? vpcGrants;

  /// Creates a new [UserArgs].
  /// [domainGrants] The domains the user has permissions access to.
  /// [email] The email address of the user.
  /// [firewallGrants] The firewalls the user has permissions access to.
  /// [globalGrants] A structure containing the Account-level grants a User has.
  /// [imageGrants] The images the user has permissions access to.
  /// [linodeGrants] The Linodes the user has permissions access to.
  /// [longviewGrants] The longview the user has permissions access to.
  /// [nodebalancerGrants] The NodeBalancers the user has permissions access to.
  /// [restricted] If true, this user will only have explicit permissions granted.
  /// [stackscriptGrants] The StackScripts the user has permissions access to.
  /// [username] The username of the user.
  /// [volumeGrants] The volumes the user has permissions access to.
  /// [vpcGrants] The Virtual Private Clouds (VPCs) the user has permissions access to.
  UserArgs({
    this.domainGrants,
    required this.email,
    this.firewallGrants,
    this.globalGrants,
    this.imageGrants,
    this.linodeGrants,
    this.longviewGrants,
    this.nodebalancerGrants,
    this.restricted,
    this.stackscriptGrants,
    required this.username,
    this.volumeGrants,
    this.vpcGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserDomainGrant>,
            List<Map<String, dynamic>>
          >(
            domainGrants,
            (value) =>
                pulumi.Input.encodeList<UserDomainGrant, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'email': email,
      'firewallGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserFirewallGrant>,
            List<Map<String, dynamic>>
          >(
            firewallGrants,
            (value) =>
                pulumi.Input.encodeList<
                  UserFirewallGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'globalGrants':
          ?pulumi.Input.mapOptionalInputValue<
            UserGlobalGrants,
            Map<String, dynamic>
          >(globalGrants, (value) => value.toMap()),
      'imageGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserImageGrant>,
            List<Map<String, dynamic>>
          >(
            imageGrants,
            (value) =>
                pulumi.Input.encodeList<UserImageGrant, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'linodeGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserLinodeGrant>,
            List<Map<String, dynamic>>
          >(
            linodeGrants,
            (value) =>
                pulumi.Input.encodeList<UserLinodeGrant, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'longviewGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserLongviewGrant>,
            List<Map<String, dynamic>>
          >(
            longviewGrants,
            (value) =>
                pulumi.Input.encodeList<
                  UserLongviewGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodebalancerGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserNodebalancerGrant>,
            List<Map<String, dynamic>>
          >(
            nodebalancerGrants,
            (value) =>
                pulumi.Input.encodeList<
                  UserNodebalancerGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'restricted': ?restricted,
      'stackscriptGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserStackscriptGrant>,
            List<Map<String, dynamic>>
          >(
            stackscriptGrants,
            (value) =>
                pulumi.Input.encodeList<
                  UserStackscriptGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'username': username,
      'volumeGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserVolumeGrant>,
            List<Map<String, dynamic>>
          >(
            volumeGrants,
            (value) =>
                pulumi.Input.encodeList<UserVolumeGrant, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'vpcGrants':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserVpcGrant>,
            List<Map<String, dynamic>>
          >(
            vpcGrants,
            (value) =>
                pulumi.Input.encodeList<UserVpcGrant, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      domainGrants: (() {
        final guardedValue = map['domainGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserDomainGrant>(
            guardedValue,
            (value) =>
                UserDomainGrant.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      firewallGrants: (() {
        final guardedValue = map['firewallGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserFirewallGrant>(
            guardedValue,
            (value) => UserFirewallGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      globalGrants: (() {
        final guardedValue = map['globalGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserGlobalGrants.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageGrants: (() {
        final guardedValue = map['imageGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserImageGrant>(
            guardedValue,
            (value) =>
                UserImageGrant.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      linodeGrants: (() {
        final guardedValue = map['linodeGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserLinodeGrant>(
            guardedValue,
            (value) =>
                UserLinodeGrant.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      longviewGrants: (() {
        final guardedValue = map['longviewGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserLongviewGrant>(
            guardedValue,
            (value) => UserLongviewGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      nodebalancerGrants: (() {
        final guardedValue = map['nodebalancerGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserNodebalancerGrant>(
            guardedValue,
            (value) => UserNodebalancerGrant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      restricted: (() {
        final guardedValue = map['restricted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      stackscriptGrants: (() {
        final guardedValue = map['stackscriptGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserStackscriptGrant>(
            guardedValue,
            (value) => UserStackscriptGrant.fromMap(
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
          pulumi.Input.decodeList<UserVolumeGrant>(
            guardedValue,
            (value) =>
                UserVolumeGrant.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      vpcGrants: (() {
        final guardedValue = map['vpcGrants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserVpcGrant>(
            guardedValue,
            (value) =>
                UserVpcGrant.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
