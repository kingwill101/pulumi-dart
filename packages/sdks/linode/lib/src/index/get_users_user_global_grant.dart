// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUserGlobalGrant {
  /// The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users. (`read_only`, `read_write`)
  final pulumi.Input<String> accountAccess;
  /// If true, this User may add Managed Databases.
  final pulumi.Input<bool> addDatabases;
  /// If true, this User may add Domains.
  final pulumi.Input<bool> addDomains;
  /// If true, this User may add Firewalls.
  final pulumi.Input<bool> addFirewalls;
  /// If true, this User may add Images.
  final pulumi.Input<bool> addImages;
  /// If true, this User may create Linodes.
  final pulumi.Input<bool> addLinodes;
  /// If true, this User may create Longview clients and view the current plan.
  final pulumi.Input<bool> addLongview;
  /// If true, this User may add NodeBalancers.
  final pulumi.Input<bool> addNodebalancers;
  final pulumi.Input<bool> addStackscripts;
  /// If true, this User may add Volumes.
  final pulumi.Input<bool> addVolumes;
  /// If true, this User may add Virtual Private Clouds (VPCs).
  final pulumi.Input<bool> addVpcs;
  /// If true, this User may cancel the entire Account.
  final pulumi.Input<bool> cancelAccount;
  /// If true, this User may manage the Account’s Longview subscription.
  final pulumi.Input<bool> longviewSubscription;

  /// Creates a new [GetUsersUserGlobalGrant].
  /// [accountAccess] The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users. (`read_only`, `read_write`)
  /// [addDatabases] If true, this User may add Managed Databases.
  /// [addDomains] If true, this User may add Domains.
  /// [addFirewalls] If true, this User may add Firewalls.
  /// [addImages] If true, this User may add Images.
  /// [addLinodes] If true, this User may create Linodes.
  /// [addLongview] If true, this User may create Longview clients and view the current plan.
  /// [addNodebalancers] If true, this User may add NodeBalancers.
  /// [addStackscripts] Required.
  /// [addVolumes] If true, this User may add Volumes.
  /// [addVpcs] If true, this User may add Virtual Private Clouds (VPCs).
  /// [cancelAccount] If true, this User may cancel the entire Account.
  /// [longviewSubscription] If true, this User may manage the Account’s Longview subscription.
  GetUsersUserGlobalGrant({
    required this.accountAccess,
    required this.addDatabases,
    required this.addDomains,
    required this.addFirewalls,
    required this.addImages,
    required this.addLinodes,
    required this.addLongview,
    required this.addNodebalancers,
    required this.addStackscripts,
    required this.addVolumes,
    required this.addVpcs,
    required this.cancelAccount,
    required this.longviewSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccess': accountAccess,
      'addDatabases': addDatabases,
      'addDomains': addDomains,
      'addFirewalls': addFirewalls,
      'addImages': addImages,
      'addLinodes': addLinodes,
      'addLongview': addLongview,
      'addNodebalancers': addNodebalancers,
      'addStackscripts': addStackscripts,
      'addVolumes': addVolumes,
      'addVpcs': addVpcs,
      'cancelAccount': cancelAccount,
      'longviewSubscription': longviewSubscription,
    };
  }

  factory GetUsersUserGlobalGrant.fromMap(Map<String, dynamic> map) {
    return GetUsersUserGlobalGrant(
      accountAccess: pulumi.Input.fromValue(map['accountAccess'] as String),
      addDatabases: pulumi.Input.fromValue(map['addDatabases'] as bool),
      addDomains: pulumi.Input.fromValue(map['addDomains'] as bool),
      addFirewalls: pulumi.Input.fromValue(map['addFirewalls'] as bool),
      addImages: pulumi.Input.fromValue(map['addImages'] as bool),
      addLinodes: pulumi.Input.fromValue(map['addLinodes'] as bool),
      addLongview: pulumi.Input.fromValue(map['addLongview'] as bool),
      addNodebalancers: pulumi.Input.fromValue(map['addNodebalancers'] as bool),
      addStackscripts: pulumi.Input.fromValue(map['addStackscripts'] as bool),
      addVolumes: pulumi.Input.fromValue(map['addVolumes'] as bool),
      addVpcs: pulumi.Input.fromValue(map['addVpcs'] as bool),
      cancelAccount: pulumi.Input.fromValue(map['cancelAccount'] as bool),
      longviewSubscription: pulumi.Input.fromValue(map['longviewSubscription'] as bool),
    );
  }
}

