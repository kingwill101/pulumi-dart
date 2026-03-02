// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_group_get_group_args_doc}
class GetGroupArgs {
  /// The display name for the group.
  final pulumi.Input<String>? displayName;
  /// Whether to include transitive members (a flat list of all nested members). Defaults to `false`.
  final pulumi.Input<bool>? includeTransitiveMembers;
  /// Whether the group is mail-enabled.
  final pulumi.Input<bool>? mailEnabled;
  /// The mail alias for the group, unique in the organisation.
  final pulumi.Input<String>? mailNickname;
  /// Specifies the object ID of the group.
  final pulumi.Input<String>? objectId;
  /// Whether the group is a security group.
  ///
  /// > One of `display_name`, `object_id` or `mail_nickname` must be specified.
  final pulumi.Input<bool>? securityEnabled;

  /// Creates a new [GetGroupArgs].
  /// [displayName] The display name for the group.
  /// [includeTransitiveMembers] Whether to include transitive members (a flat list of all nested members). Defaults to `false`.
  /// [mailEnabled] Whether the group is mail-enabled.
  /// [mailNickname] The mail alias for the group, unique in the organisation.
  /// [objectId] Specifies the object ID of the group.
  /// [securityEnabled] Whether the group is a security group.
  GetGroupArgs({
    this.displayName,
    this.includeTransitiveMembers,
    this.mailEnabled,
    this.mailNickname,
    this.objectId,
    this.securityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'includeTransitiveMembers': ?includeTransitiveMembers,
      'mailEnabled': ?mailEnabled,
      'mailNickname': ?mailNickname,
      'objectId': ?objectId,
      'securityEnabled': ?securityEnabled,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      includeTransitiveMembers: map['includeTransitiveMembers'] == null ? null : (map['includeTransitiveMembers'] as bool).input(),
      mailEnabled: map['mailEnabled'] == null ? null : (map['mailEnabled'] as bool).input(),
      mailNickname: map['mailNickname'] == null ? null : (map['mailNickname'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      securityEnabled: map['securityEnabled'] == null ? null : (map['securityEnabled'] as bool).input(),
    );
  }
}

