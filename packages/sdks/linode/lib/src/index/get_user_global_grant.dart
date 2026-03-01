// ignore_for_file: unused_element, unnecessary_cast


class GetUserGlobalGrant {
  /// The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users. (`read_only`, `read_write`)
  final String accountAccess;
  /// If true, this User may add Managed Databases.
  final bool addDatabases;
  /// If true, this User may add Domains.
  final bool addDomains;
  /// If true, this User may add Firewalls.
  final bool addFirewalls;
  /// If true, this User may add Images.
  final bool addImages;
  /// If true, this User may create Linodes.
  final bool addLinodes;
  /// If true, this User may create Longview clients and view the current plan.
  final bool addLongview;
  /// If true, this User may add NodeBalancers.
  final bool addNodebalancers;
  final bool addStackscripts;
  /// If true, this User may add Volumes.
  final bool addVolumes;
  /// If true, this User may add Virtual Private Clouds (VPCs).
  final bool addVpcs;
  /// If true, this User may cancel the entire Account.
  final bool cancelAccount;
  /// If true, this User may manage the Account’s Longview subscription.
  final bool longviewSubscription;

  /// Creates a new [GetUserGlobalGrant].
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
  GetUserGlobalGrant({
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

  factory GetUserGlobalGrant.fromMap(Map<String, dynamic> map) {
    return GetUserGlobalGrant(
      accountAccess: map['accountAccess'] as String,
      addDatabases: map['addDatabases'] as bool,
      addDomains: map['addDomains'] as bool,
      addFirewalls: map['addFirewalls'] as bool,
      addImages: map['addImages'] as bool,
      addLinodes: map['addLinodes'] as bool,
      addLongview: map['addLongview'] as bool,
      addNodebalancers: map['addNodebalancers'] as bool,
      addStackscripts: map['addStackscripts'] as bool,
      addVolumes: map['addVolumes'] as bool,
      addVpcs: map['addVpcs'] as bool,
      cancelAccount: map['cancelAccount'] as bool,
      longviewSubscription: map['longviewSubscription'] as bool,
    );
  }
}

