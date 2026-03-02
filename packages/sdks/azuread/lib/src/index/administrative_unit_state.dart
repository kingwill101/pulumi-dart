// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdministrativeUnit resources.
class AdministrativeUnitState {
  /// The description of the administrative unit.
  final pulumi.Input<String>? description;
  /// The display name of the administrative unit.
  final pulumi.Input<String>? displayName;
  /// Whether the administrative unit and its members are hidden or publicly viewable in the directory.
  final pulumi.Input<bool>? hiddenMembershipEnabled;
  /// A set of object IDs of members who should be present in this administrative unit. Supported object types are Users or Groups.
  ///
  /// > **Caution** When using the `members` property of the azuread.AdministrativeUnit resource, to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  ///
  /// !> **Warning** Do not use the `members` property at the same time as the azuread.AdministrativeUnitMember resource for the same administrative unit. Doing so will cause a conflict and administrative unit members will be removed.
  final pulumi.Input<List<String>>? members;
  /// The object ID of the administrative unit.
  final pulumi.Input<String>? objectId;
  /// If `true`, will return an error if an existing administrative unit is found with the same name
  final pulumi.Input<bool>? preventDuplicateNames;

  /// Creates a new [AdministrativeUnitState].
  /// [description] The description of the administrative unit.
  /// [displayName] The display name of the administrative unit.
  /// [hiddenMembershipEnabled] Whether the administrative unit and its members are hidden or publicly viewable in the directory.
  /// [members] A set of object IDs of members who should be present in this administrative unit. Supported object types are Users or Groups.
  /// [objectId] The object ID of the administrative unit.
  /// [preventDuplicateNames] If `true`, will return an error if an existing administrative unit is found with the same name
  AdministrativeUnitState({
    this.description,
    this.displayName,
    this.hiddenMembershipEnabled,
    this.members,
    this.objectId,
    this.preventDuplicateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'hiddenMembershipEnabled': ?hiddenMembershipEnabled,
      'members': ?members,
      'objectId': ?objectId,
      'preventDuplicateNames': ?preventDuplicateNames,
    };
  }

  factory AdministrativeUnitState.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      hiddenMembershipEnabled: map['hiddenMembershipEnabled'] == null ? null : (map['hiddenMembershipEnabled']! as bool).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      preventDuplicateNames: map['preventDuplicateNames'] == null ? null : (map['preventDuplicateNames']! as bool).input(),
    );
  }
}

