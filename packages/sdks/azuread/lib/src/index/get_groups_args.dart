// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_groups_get_groups_args_doc}
/// Arguments for getGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_groups_get_groups_args_doc}
class GetGroupsArgs {
  /// A common display name prefix to match when returning groups.
  final pulumi.Input<String>? displayNamePrefix;
  /// The display names of the groups.
  final pulumi.Input<List<String>>? displayNames;
  /// Ignore missing groups and return groups that were found. The data source will still fail if no groups are found. Cannot be specified with `return_all`. Defaults to `false`.
  final pulumi.Input<bool>? ignoreMissing;
  /// Whether the returned groups should be mail-enabled. By itself this does not exclude security-enabled groups. Setting this to `true` ensures all groups are mail-enabled, and setting to `false` ensures that all groups are _not_ mail-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `object_ids`.
  final pulumi.Input<bool>? mailEnabled;
  /// The object IDs of the groups.
  final pulumi.Input<List<String>>? objectIds;
  /// A flag to denote if all groups should be fetched and returned. Cannot be specified wth `ignore_missing`. Defaults to `false`.
  final pulumi.Input<bool>? returnAll;
  /// Whether the returned groups should be security-enabled. By itself this does not exclude mail-enabled groups. Setting this to `true` ensures all groups are security-enabled, and setting to `false` ensures that all groups are _not_ security-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `object_ids`.
  ///
  /// &gt; One of `display_names`, `display_name_prefix`, `object_ids` or `return_all` should be specified. Either `display_name` or `object_ids` _may_ be specified as an empty list, in which case no results will be returned.
  final pulumi.Input<bool>? securityEnabled;

  /// Creates a new [GetGroupsArgs].
  /// [displayNamePrefix] A common display name prefix to match when returning groups.
  /// [displayNames] The display names of the groups.
  /// [ignoreMissing] Ignore missing groups and return groups that were found. The data source will still fail if no groups are found. Cannot be specified with `return_all`. Defaults to `false`.
  /// [mailEnabled] Whether the returned groups should be mail-enabled. By itself this does not exclude security-enabled groups. Setting this to `true` ensures all groups are mail-enabled, and setting to `false` ensures that all groups are _not_ mail-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `object_ids`.
  /// [objectIds] The object IDs of the groups.
  /// [returnAll] A flag to denote if all groups should be fetched and returned. Cannot be specified wth `ignore_missing`. Defaults to `false`.
  /// [securityEnabled] Whether the returned groups should be security-enabled. By itself this does not exclude mail-enabled groups. Setting this to `true` ensures all groups are security-enabled, and setting to `false` ensures that all groups are _not_ security-enabled. To ignore this filter, omit the property or set it to null. Cannot be specified together with `object_ids`.
  GetGroupsArgs({
    this.displayNamePrefix,
    this.displayNames,
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
      'ignoreMissing': ?ignoreMissing,
      'mailEnabled': ?mailEnabled,
      'objectIds': ?objectIds,
      'returnAll': ?returnAll,
      'securityEnabled': ?securityEnabled,
    };
  }

  factory GetGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupsArgs(
      displayNamePrefix: (() { final guardedValue = map['displayNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayNames: (() { final guardedValue = map['displayNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ignoreMissing: (() { final guardedValue = map['ignoreMissing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mailEnabled: (() { final guardedValue = map['mailEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectIds: (() { final guardedValue = map['objectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      returnAll: (() { final guardedValue = map['returnAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityEnabled: (() { final guardedValue = map['securityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

