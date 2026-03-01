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
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? hiddenMembershipEnabled,
    pulumi.Output<List<String>>? members,
    pulumi.Output<bool>? preventDuplicateNames,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      hiddenMembershipEnabled = pulumi.Input.asOptionalInput<bool>(hiddenMembershipEnabled),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      preventDuplicateNames = pulumi.Input.asOptionalInput<bool>(preventDuplicateNames);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      hiddenMembershipEnabled: map['hiddenMembershipEnabled'] == null ? null : pulumi.Output.create<bool>(map['hiddenMembershipEnabled'] as bool),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      preventDuplicateNames: map['preventDuplicateNames'] == null ? null : pulumi.Output.create<bool>(map['preventDuplicateNames'] as bool),
    );
  }
}

