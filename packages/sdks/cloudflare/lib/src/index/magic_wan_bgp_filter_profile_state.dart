// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MagicWanBgpFilterProfile resources.
class MagicWanBgpFilterProfileState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdOn;
  /// Description of the filter profile
  final pulumi.Input<String?>? description;
  /// Action to take when a route matches one of the targets in this profile
  /// Available values: "allow", "deny".
  final pulumi.Input<String?>? matchAction;
  final pulumi.Input<String?>? modifiedOn;
  /// Friendly name for the filter profile
  final pulumi.Input<String?>? name;
  /// List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  final pulumi.Input<List<String>?>? targets;

  /// Creates a new [MagicWanBgpFilterProfileState].
  /// [accountId] Identifier
  /// [createdOn] Optional.
  /// [description] Description of the filter profile
  /// [matchAction] Action to take when a route matches one of the targets in this profile
  /// [modifiedOn] Optional.
  /// [name] Friendly name for the filter profile
  /// [targets] List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  const MagicWanBgpFilterProfileState({
    this.accountId,
    this.createdOn,
    this.description,
    this.matchAction,
    this.modifiedOn,
    this.name,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'matchAction': ?matchAction,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'targets': ?targets,
    };
  }

  factory MagicWanBgpFilterProfileState.fromMap(Map<String, dynamic> map) {
    return MagicWanBgpFilterProfileState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchAction: (() { final guardedValue = map['matchAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
