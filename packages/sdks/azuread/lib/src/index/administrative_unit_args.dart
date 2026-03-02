// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_administrative_unit_administrative_unit_args_doc}
/// The set of arguments for AdministrativeUnit.
/// {@endtemplate}
/// {@macro pulumi_index_administrative_unit_administrative_unit_args_doc}
class AdministrativeUnitArgs {
  /// The description of the administrative unit.
  final pulumi.Input<String>? description;
  /// The display name of the administrative unit.
  final pulumi.Input<String> displayName;
  /// Whether the administrative unit and its members are hidden or publicly viewable in the directory.
  final pulumi.Input<bool>? hiddenMembershipEnabled;
  /// A set of object IDs of members who should be present in this administrative unit. Supported object types are Users or Groups.
  ///
  /// > **Caution** When using the `members` property of the azuread.AdministrativeUnit resource, to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  ///
  /// !> **Warning** Do not use the `members` property at the same time as the azuread.AdministrativeUnitMember resource for the same administrative unit. Doing so will cause a conflict and administrative unit members will be removed.
  final pulumi.Input<List<String>>? members;
  /// If `true`, will return an error if an existing administrative unit is found with the same name
  final pulumi.Input<bool>? preventDuplicateNames;

  /// Creates a new [AdministrativeUnitArgs].
  /// [description] The description of the administrative unit.
  /// [displayName] The display name of the administrative unit.
  /// [hiddenMembershipEnabled] Whether the administrative unit and its members are hidden or publicly viewable in the directory.
  /// [members] A set of object IDs of members who should be present in this administrative unit. Supported object types are Users or Groups.
  /// [preventDuplicateNames] If `true`, will return an error if an existing administrative unit is found with the same name
  AdministrativeUnitArgs({
    this.description,
    required this.displayName,
    this.hiddenMembershipEnabled,
    this.members,
    this.preventDuplicateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'hiddenMembershipEnabled': ?hiddenMembershipEnabled,
      'members': ?members,
      'preventDuplicateNames': ?preventDuplicateNames,
    };
  }

  factory AdministrativeUnitArgs.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      hiddenMembershipEnabled: map['hiddenMembershipEnabled'] == null ? null : (map['hiddenMembershipEnabled']! as bool).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      preventDuplicateNames: map['preventDuplicateNames'] == null ? null : (map['preventDuplicateNames']! as bool).input(),
    );
  }
}

