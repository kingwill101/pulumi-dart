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

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The domains the user has permissions access to.
  final pulumi.Input<List<UserDomainGrant>>? domainGrants;
  /// The email address of the user.
  final pulumi.Input<String>? email;
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
  /// A list of the User's SSH keys.
  final pulumi.Input<List<String>>? sshKeys;
  /// The StackScripts the user has permissions access to.
  final pulumi.Input<List<UserStackscriptGrant>>? stackscriptGrants;
  /// Whether the user has two-factor-authentication enabled.
  final pulumi.Input<bool>? tfaEnabled;
  /// The type of this user.
  final pulumi.Input<String>? userType;
  /// The username of the user.
  final pulumi.Input<String>? username;
  /// The volumes the user has permissions access to.
  final pulumi.Input<List<UserVolumeGrant>>? volumeGrants;
  /// The Virtual Private Clouds (VPCs) the user has permissions access to.
  final pulumi.Input<List<UserVpcGrant>>? vpcGrants;

  /// Creates a new [UserState].
  /// [domainGrants] The domains the user has permissions access to.
  /// [email] The email address of the user.
  /// [firewallGrants] The firewalls the user has permissions access to.
  /// [globalGrants] A structure containing the Account-level grants a User has.
  /// [imageGrants] The images the user has permissions access to.
  /// [linodeGrants] The Linodes the user has permissions access to.
  /// [longviewGrants] The longview the user has permissions access to.
  /// [nodebalancerGrants] The NodeBalancers the user has permissions access to.
  /// [restricted] If true, this user will only have explicit permissions granted.
  /// [sshKeys] A list of the User's SSH keys.
  /// [stackscriptGrants] The StackScripts the user has permissions access to.
  /// [tfaEnabled] Whether the user has two-factor-authentication enabled.
  /// [userType] The type of this user.
  /// [username] The username of the user.
  /// [volumeGrants] The volumes the user has permissions access to.
  /// [vpcGrants] The Virtual Private Clouds (VPCs) the user has permissions access to.
  UserState({
    this.domainGrants,
    this.email,
    this.firewallGrants,
    this.globalGrants,
    this.imageGrants,
    this.linodeGrants,
    this.longviewGrants,
    this.nodebalancerGrants,
    this.restricted,
    this.sshKeys,
    this.stackscriptGrants,
    this.tfaEnabled,
    this.userType,
    this.username,
    this.volumeGrants,
    this.vpcGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainGrants': ?pulumi.Input.mapOptionalInputValue<List<UserDomainGrant>, List<Map<String, dynamic>>>(domainGrants, (value) => pulumi.Input.encodeList<UserDomainGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'email': ?email,
      'firewallGrants': ?pulumi.Input.mapOptionalInputValue<List<UserFirewallGrant>, List<Map<String, dynamic>>>(firewallGrants, (value) => pulumi.Input.encodeList<UserFirewallGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalGrants': ?pulumi.Input.mapOptionalInputValue<UserGlobalGrants, Map<String, dynamic>>(globalGrants, (value) => value.toMap()),
      'imageGrants': ?pulumi.Input.mapOptionalInputValue<List<UserImageGrant>, List<Map<String, dynamic>>>(imageGrants, (value) => pulumi.Input.encodeList<UserImageGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linodeGrants': ?pulumi.Input.mapOptionalInputValue<List<UserLinodeGrant>, List<Map<String, dynamic>>>(linodeGrants, (value) => pulumi.Input.encodeList<UserLinodeGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'longviewGrants': ?pulumi.Input.mapOptionalInputValue<List<UserLongviewGrant>, List<Map<String, dynamic>>>(longviewGrants, (value) => pulumi.Input.encodeList<UserLongviewGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodebalancerGrants': ?pulumi.Input.mapOptionalInputValue<List<UserNodebalancerGrant>, List<Map<String, dynamic>>>(nodebalancerGrants, (value) => pulumi.Input.encodeList<UserNodebalancerGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restricted': ?restricted,
      'sshKeys': ?sshKeys,
      'stackscriptGrants': ?pulumi.Input.mapOptionalInputValue<List<UserStackscriptGrant>, List<Map<String, dynamic>>>(stackscriptGrants, (value) => pulumi.Input.encodeList<UserStackscriptGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tfaEnabled': ?tfaEnabled,
      'userType': ?userType,
      'username': ?username,
      'volumeGrants': ?pulumi.Input.mapOptionalInputValue<List<UserVolumeGrant>, List<Map<String, dynamic>>>(volumeGrants, (value) => pulumi.Input.encodeList<UserVolumeGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcGrants': ?pulumi.Input.mapOptionalInputValue<List<UserVpcGrant>, List<Map<String, dynamic>>>(vpcGrants, (value) => pulumi.Input.encodeList<UserVpcGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      domainGrants: map['domainGrants'] == null ? null : (pulumi.Input.decodeList<UserDomainGrant>(map['domainGrants']!, (value) => UserDomainGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      firewallGrants: map['firewallGrants'] == null ? null : (pulumi.Input.decodeList<UserFirewallGrant>(map['firewallGrants']!, (value) => UserFirewallGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      globalGrants: map['globalGrants'] == null ? null : (UserGlobalGrants.fromMap((map['globalGrants']! as Map).cast<String, dynamic>())).input(),
      imageGrants: map['imageGrants'] == null ? null : (pulumi.Input.decodeList<UserImageGrant>(map['imageGrants']!, (value) => UserImageGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linodeGrants: map['linodeGrants'] == null ? null : (pulumi.Input.decodeList<UserLinodeGrant>(map['linodeGrants']!, (value) => UserLinodeGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      longviewGrants: map['longviewGrants'] == null ? null : (pulumi.Input.decodeList<UserLongviewGrant>(map['longviewGrants']!, (value) => UserLongviewGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodebalancerGrants: map['nodebalancerGrants'] == null ? null : (pulumi.Input.decodeList<UserNodebalancerGrant>(map['nodebalancerGrants']!, (value) => UserNodebalancerGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      restricted: map['restricted'] == null ? null : (map['restricted']! as bool).input(),
      sshKeys: map['sshKeys'] == null ? null : ((map['sshKeys']! as List).cast<String>()).input(),
      stackscriptGrants: map['stackscriptGrants'] == null ? null : (pulumi.Input.decodeList<UserStackscriptGrant>(map['stackscriptGrants']!, (value) => UserStackscriptGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tfaEnabled: map['tfaEnabled'] == null ? null : (map['tfaEnabled']! as bool).input(),
      userType: map['userType'] == null ? null : (map['userType']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
      volumeGrants: map['volumeGrants'] == null ? null : (pulumi.Input.decodeList<UserVolumeGrant>(map['volumeGrants']!, (value) => UserVolumeGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcGrants: map['vpcGrants'] == null ? null : (pulumi.Input.decodeList<UserVpcGrant>(map['vpcGrants']!, (value) => UserVpcGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

