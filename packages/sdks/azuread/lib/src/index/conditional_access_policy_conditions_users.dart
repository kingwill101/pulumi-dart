// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_users_excluded_guests_or_external_user.dart';
import 'conditional_access_policy_conditions_users_included_guests_or_external_user.dart';

class ConditionalAccessPolicyConditionsUsers {
  /// A list of group IDs excluded from scope of policy.
  final pulumi.Input<List<String>>? excludedGroups;
  /// A `guestsOrExternalUsers` block as documented below, which specifies internal guests and external users excluded from scope of policy.
  final pulumi.Input<List<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser>>? excludedGuestsOrExternalUsers;
  /// A list of role IDs excluded from scope of policy.
  final pulumi.Input<List<String>>? excludedRoles;
  /// A list of user IDs excluded from scope of policy and/or `GuestsOrExternalUsers`.
  final pulumi.Input<List<String>>? excludedUsers;
  /// A list of group IDs in scope of policy unless explicitly excluded.
  final pulumi.Input<List<String>>? includedGroups;
  /// A `guestsOrExternalUsers` block as documented below, which specifies internal guests and external users in scope of policy.
  final pulumi.Input<List<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser>>? includedGuestsOrExternalUsers;
  /// A list of role IDs in scope of policy unless explicitly excluded.
  final pulumi.Input<List<String>>? includedRoles;
  /// A list of user IDs in scope of policy unless explicitly excluded, or `None` or `All` or `GuestsOrExternalUsers`.
  ///
  /// &gt; At least one of `includedGroups`, `includedGuestsOrExternalUsers`, `includedRoles` or `includedUsers` must be specified.
  final pulumi.Input<List<String>>? includedUsers;

  /// Creates a new [ConditionalAccessPolicyConditionsUsers].
  /// [excludedGroups] A list of group IDs excluded from scope of policy.
  /// [excludedGuestsOrExternalUsers] A `guestsOrExternalUsers` block as documented below, which specifies internal guests and external users excluded from scope of policy.
  /// [excludedRoles] A list of role IDs excluded from scope of policy.
  /// [excludedUsers] A list of user IDs excluded from scope of policy and/or `GuestsOrExternalUsers`.
  /// [includedGroups] A list of group IDs in scope of policy unless explicitly excluded.
  /// [includedGuestsOrExternalUsers] A `guestsOrExternalUsers` block as documented below, which specifies internal guests and external users in scope of policy.
  /// [includedRoles] A list of role IDs in scope of policy unless explicitly excluded.
  /// [includedUsers] A list of user IDs in scope of policy unless explicitly excluded, or `None` or `All` or `GuestsOrExternalUsers`.
  const ConditionalAccessPolicyConditionsUsers({
    this.excludedGroups,
    this.excludedGuestsOrExternalUsers,
    this.excludedRoles,
    this.excludedUsers,
    this.includedGroups,
    this.includedGuestsOrExternalUsers,
    this.includedRoles,
    this.includedUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedGroups': ?excludedGroups,
      'excludedGuestsOrExternalUsers': ?pulumi.Input.mapOptionalInputValue<List<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser>, List<Map<String, dynamic>>>(excludedGuestsOrExternalUsers, (value) => pulumi.Input.encodeList<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedRoles': ?excludedRoles,
      'excludedUsers': ?excludedUsers,
      'includedGroups': ?includedGroups,
      'includedGuestsOrExternalUsers': ?pulumi.Input.mapOptionalInputValue<List<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser>, List<Map<String, dynamic>>>(includedGuestsOrExternalUsers, (value) => pulumi.Input.encodeList<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedRoles': ?includedRoles,
      'includedUsers': ?includedUsers,
    };
  }

  factory ConditionalAccessPolicyConditionsUsers.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsUsers(
      excludedGroups: (() { final guardedValue = map['excludedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedGuestsOrExternalUsers: (() { final guardedValue = map['excludedGuestsOrExternalUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser>(guardedValue, (value) => ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludedRoles: (() { final guardedValue = map['excludedRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedUsers: (() { final guardedValue = map['excludedUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedGroups: (() { final guardedValue = map['includedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedGuestsOrExternalUsers: (() { final guardedValue = map['includedGuestsOrExternalUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser>(guardedValue, (value) => ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includedRoles: (() { final guardedValue = map['includedRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedUsers: (() { final guardedValue = map['includedUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
