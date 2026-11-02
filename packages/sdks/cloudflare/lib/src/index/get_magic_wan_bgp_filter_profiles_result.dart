// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicWanBgpFilterProfilesResult {
  final pulumi.Input<String> createdOn;
  /// Description of the filter profile
  final pulumi.Input<String> description;
  /// Identifier
  final pulumi.Input<String> id;
  /// Action to take when a route matches one of the targets in this profile
  /// Available values: "allow", "deny".
  final pulumi.Input<String> matchAction;
  final pulumi.Input<String> modifiedOn;
  /// Friendly name for the filter profile
  final pulumi.Input<String> name;
  /// List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  final pulumi.Input<List<String>> targets;

  /// Creates a new [GetMagicWanBgpFilterProfilesResult].
  /// [createdOn] Required.
  /// [description] Description of the filter profile
  /// [id] Identifier
  /// [matchAction] Action to take when a route matches one of the targets in this profile
  /// [modifiedOn] Required.
  /// [name] Friendly name for the filter profile
  /// [targets] List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  const GetMagicWanBgpFilterProfilesResult({
    required this.createdOn,
    required this.description,
    required this.id,
    required this.matchAction,
    required this.modifiedOn,
    required this.name,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'description': description,
      'id': id,
      'matchAction': matchAction,
      'modifiedOn': modifiedOn,
      'name': name,
      'targets': targets,
    };
  }

  factory GetMagicWanBgpFilterProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetMagicWanBgpFilterProfilesResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      matchAction: pulumi.Input.fromValue(map['matchAction'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      targets: pulumi.Input.fromValue((map['targets'] as List).cast<String>()),
    );
  }
}
