// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_magic_wan_bgp_filter_profile_magic_wan_bgp_filter_profile_args_doc}
/// The set of arguments for MagicWanBgpFilterProfile.
/// {@endtemplate}
/// {@macro pulumi_index_magic_wan_bgp_filter_profile_magic_wan_bgp_filter_profile_args_doc}
class MagicWanBgpFilterProfileArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Description of the filter profile
  final pulumi.Input<String?>? description;
  /// Action to take when a route matches one of the targets in this profile
  /// Available values: "allow", "deny".
  final pulumi.Input<String> matchAction;
  /// Friendly name for the filter profile
  final pulumi.Input<String> name;
  /// List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  final pulumi.Input<List<String>> targets;

  /// Creates a new [MagicWanBgpFilterProfileArgs].
  /// [accountId] Identifier
  /// [description] Description of the filter profile
  /// [matchAction] Action to take when a route matches one of the targets in this profile
  /// [name] Friendly name for the filter profile
  /// [targets] List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  const MagicWanBgpFilterProfileArgs({
    required this.accountId,
    this.description,
    required this.matchAction,
    required this.name,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'matchAction': matchAction,
      'name': name,
      'targets': targets,
    };
  }

  factory MagicWanBgpFilterProfileArgs.fromMap(Map<String, dynamic> map) {
    return MagicWanBgpFilterProfileArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchAction: pulumi.Input.fromValue(map['matchAction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      targets: pulumi.Input.fromValue((map['targets'] as List).cast<String>()),
    );
  }
}
