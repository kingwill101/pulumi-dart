// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroup {
  /// The display name of the group.
  final pulumi.Input<String> displayName;
  /// Whether the returned groups should be mail-enabled. By itself this does not exclude security-enabled groups. Setting this to `true` ensures all groups are mail-enabled, and setting to `false` ensures that all groups are _not_ mail-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `objectIds`.
  final pulumi.Input<bool> mailEnabled;
  /// The object ID of the group.
  final pulumi.Input<String> objectId;
  /// Whether the returned groups should be security-enabled. By itself this does not exclude mail-enabled groups. Setting this to `true` ensures all groups are security-enabled, and setting to `false` ensures that all groups are _not_ security-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `objectIds`.
  ///
  /// &gt; One of `displayNames`, `displayNamePrefix`, `objectIds` or `returnAll` should be specified. Either `displayName` or `objectIds` _may_ be specified as an empty list, in which case no results will be returned.
  final pulumi.Input<bool> securityEnabled;

  /// Creates a new [GetGroupsGroup].
  /// [displayName] The display name of the group.
  /// [mailEnabled] Whether the returned groups should be mail-enabled. By itself this does not exclude security-enabled groups. Setting this to `true` ensures all groups are mail-enabled, and setting to `false` ensures that all groups are _not_ mail-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `objectIds`.
  /// [objectId] The object ID of the group.
  /// [securityEnabled] Whether the returned groups should be security-enabled. By itself this does not exclude mail-enabled groups. Setting this to `true` ensures all groups are security-enabled, and setting to `false` ensures that all groups are _not_ security-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `objectIds`.
  const GetGroupsGroup({
    required this.displayName,
    required this.mailEnabled,
    required this.objectId,
    required this.securityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'mailEnabled': mailEnabled,
      'objectId': objectId,
      'securityEnabled': securityEnabled,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      mailEnabled: pulumi.Input.fromValue(map['mailEnabled'] as bool),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      securityEnabled: pulumi.Input.fromValue(map['securityEnabled'] as bool),
    );
  }
}
