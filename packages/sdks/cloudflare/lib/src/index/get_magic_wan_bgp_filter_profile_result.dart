// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMagicWanBgpFilterProfile.
class GetMagicWanBgpFilterProfileResult {
  /// Identifier
  final String? accountId;
  final String? createdOn;
  /// Description of the filter profile
  final String? description;
  /// Identifier
  final String? id;
  /// Action to take when a route matches one of the targets in this profile
  /// Available values: "allow", "deny".
  final String? matchAction;
  final String? modifiedOn;
  /// Friendly name for the filter profile
  final String? name;
  /// Identifier
  final String? profileId;
  /// List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  final List<String>? targets;

  /// Creates a new [GetMagicWanBgpFilterProfileResult].
  /// [accountId] Identifier
  /// [createdOn] Optional.
  /// [description] Description of the filter profile
  /// [id] Identifier
  /// [matchAction] Action to take when a route matches one of the targets in this profile
  /// [modifiedOn] Optional.
  /// [name] Friendly name for the filter profile
  /// [profileId] Identifier
  /// [targets] List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  const GetMagicWanBgpFilterProfileResult({
    this.accountId,
    this.createdOn,
    this.description,
    this.id,
    this.matchAction,
    this.modifiedOn,
    this.name,
    this.profileId,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'id': ?id,
      'matchAction': ?matchAction,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'profileId': ?profileId,
      'targets': ?targets,
    };
  }

  factory GetMagicWanBgpFilterProfileResult.fromMap(Map<String, dynamic> map) {
    return GetMagicWanBgpFilterProfileResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      matchAction: (() { final guardedValue = map['matchAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
