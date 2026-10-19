// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  final String? displayNamePrefix;
  /// The display names of the groups.
  final List<String>? displayNames;
  /// A list of groups. Each `group` object provides the attributes documented below.
  final List<GetGroupsGroup>? groups;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? ignoreMissing;
  /// Whether the group is mail-enabled.
  final bool? mailEnabled;
  /// The object IDs of the groups.
  final List<String>? objectIds;
  final bool? returnAll;
  /// Whether the group is security-enabled.
  final bool? securityEnabled;

  /// Creates a new [GetGroupsResult].
  /// [displayNamePrefix] Optional.
  /// [displayNames] The display names of the groups.
  /// [groups] A list of groups. Each `group` object provides the attributes documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreMissing] Optional.
  /// [mailEnabled] Whether the group is mail-enabled.
  /// [objectIds] The object IDs of the groups.
  /// [returnAll] Optional.
  /// [securityEnabled] Whether the group is security-enabled.
  const GetGroupsResult({
    this.displayNamePrefix,
    this.displayNames,
    this.groups,
    this.id,
    this.ignoreMissing,
    this.mailEnabled,
    this.objectIds,
    this.returnAll,
    this.securityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayNamePrefix': ?displayNamePrefix,
      'displayNames': ?displayNames,
      'groups': ?(() { final guardedValue = groups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ignoreMissing': ?ignoreMissing,
      'mailEnabled': ?mailEnabled,
      'objectIds': ?objectIds,
      'returnAll': ?returnAll,
      'securityEnabled': ?securityEnabled,
    };
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      displayNamePrefix: (() { final guardedValue = map['displayNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayNames: (() { final guardedValue = map['displayNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupsGroup>(guardedValue, (value) => GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ignoreMissing: (() { final guardedValue = map['ignoreMissing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mailEnabled: (() { final guardedValue = map['mailEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      objectIds: (() { final guardedValue = map['objectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      returnAll: (() { final guardedValue = map['returnAll']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      securityEnabled: (() { final guardedValue = map['securityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
