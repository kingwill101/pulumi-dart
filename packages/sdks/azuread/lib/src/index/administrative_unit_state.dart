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
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? hiddenMembershipEnabled,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? objectId,
    pulumi.Output<bool>? preventDuplicateNames,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      hiddenMembershipEnabled = pulumi.Input.asOptionalInput<bool>(hiddenMembershipEnabled),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      preventDuplicateNames = pulumi.Input.asOptionalInput<bool>(preventDuplicateNames);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      hiddenMembershipEnabled: map['hiddenMembershipEnabled'] == null ? null : pulumi.Output.create<bool>(map['hiddenMembershipEnabled'] as bool),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      preventDuplicateNames: map['preventDuplicateNames'] == null ? null : pulumi.Output.create<bool>(map['preventDuplicateNames'] as bool),
    );
  }
}

