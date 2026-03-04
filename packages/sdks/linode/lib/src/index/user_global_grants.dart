// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserGlobalGrants {
  /// The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users.
  final pulumi.Input<String>? accountAccess;

  /// If true, this User may add Databases.
  final pulumi.Input<bool>? addDatabases;

  /// If true, this User may add Domains.
  final pulumi.Input<bool>? addDomains;

  /// If true, this User may add Firewalls.
  final pulumi.Input<bool>? addFirewalls;

  /// If true, this User may add Images.
  final pulumi.Input<bool>? addImages;

  /// If true, this User may create Linodes.
  final pulumi.Input<bool>? addLinodes;

  /// If true, this User may create Longview clients and view the current plan.
  final pulumi.Input<bool>? addLongview;

  /// If true, this User may add NodeBalancers.
  final pulumi.Input<bool>? addNodebalancers;

  /// If true, this User may add StackScripts.
  final pulumi.Input<bool>? addStackscripts;

  /// If true, this User may add Volumes.
  final pulumi.Input<bool>? addVolumes;

  /// If true, this User may add Virtual Private Clouds (VPCs).
  final pulumi.Input<bool>? addVpcs;

  /// If true, this User may cancel the entire Account.
  final pulumi.Input<bool>? cancelAccount;

  /// If true, this User may manage the Account’s Longview subscription.
  final pulumi.Input<bool>? longviewSubscription;

  /// Creates a new [UserGlobalGrants].
  /// [accountAccess] The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users.
  /// [addDatabases] If true, this User may add Databases.
  /// [addDomains] If true, this User may add Domains.
  /// [addFirewalls] If true, this User may add Firewalls.
  /// [addImages] If true, this User may add Images.
  /// [addLinodes] If true, this User may create Linodes.
  /// [addLongview] If true, this User may create Longview clients and view the current plan.
  /// [addNodebalancers] If true, this User may add NodeBalancers.
  /// [addStackscripts] If true, this User may add StackScripts.
  /// [addVolumes] If true, this User may add Volumes.
  /// [addVpcs] If true, this User may add Virtual Private Clouds (VPCs).
  /// [cancelAccount] If true, this User may cancel the entire Account.
  /// [longviewSubscription] If true, this User may manage the Account’s Longview subscription.
  UserGlobalGrants({
    this.accountAccess,
    this.addDatabases,
    this.addDomains,
    this.addFirewalls,
    this.addImages,
    this.addLinodes,
    this.addLongview,
    this.addNodebalancers,
    this.addStackscripts,
    this.addVolumes,
    this.addVpcs,
    this.cancelAccount,
    this.longviewSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccess': ?accountAccess,
      'addDatabases': ?addDatabases,
      'addDomains': ?addDomains,
      'addFirewalls': ?addFirewalls,
      'addImages': ?addImages,
      'addLinodes': ?addLinodes,
      'addLongview': ?addLongview,
      'addNodebalancers': ?addNodebalancers,
      'addStackscripts': ?addStackscripts,
      'addVolumes': ?addVolumes,
      'addVpcs': ?addVpcs,
      'cancelAccount': ?cancelAccount,
      'longviewSubscription': ?longviewSubscription,
    };
  }

  factory UserGlobalGrants.fromMap(Map<String, dynamic> map) {
    return UserGlobalGrants(
      accountAccess: (() {
        final guardedValue = map['accountAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addDatabases: (() {
        final guardedValue = map['addDatabases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addDomains: (() {
        final guardedValue = map['addDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addFirewalls: (() {
        final guardedValue = map['addFirewalls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addImages: (() {
        final guardedValue = map['addImages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addLinodes: (() {
        final guardedValue = map['addLinodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addLongview: (() {
        final guardedValue = map['addLongview'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addNodebalancers: (() {
        final guardedValue = map['addNodebalancers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addStackscripts: (() {
        final guardedValue = map['addStackscripts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addVolumes: (() {
        final guardedValue = map['addVolumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      addVpcs: (() {
        final guardedValue = map['addVpcs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cancelAccount: (() {
        final guardedValue = map['cancelAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      longviewSubscription: (() {
        final guardedValue = map['longviewSubscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
