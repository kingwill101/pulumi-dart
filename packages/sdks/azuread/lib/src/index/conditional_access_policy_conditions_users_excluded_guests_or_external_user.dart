// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_users_excluded_guests_or_external_user_external_tenant.dart';

class ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser {
  /// An `external_tenants` block as documented below, which specifies external tenants in a policy scope.
  final pulumi.Input<List<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant>>? externalTenants;
  /// A list of guest or external user types. Possible values are: `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest`, `none`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue`.
  final pulumi.Input<List<String>> guestOrExternalUserTypes;

  /// Creates a new [ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser].
  /// [externalTenants] An `external_tenants` block as documented below, which specifies external tenants in a policy scope.
  /// [guestOrExternalUserTypes] A list of guest or external user types. Possible values are: `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest`, `none`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue`.
  ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser({
    this.externalTenants,
    required this.guestOrExternalUserTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalTenants': ?pulumi.Input.mapOptionalInputValue<List<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant>, List<Map<String, dynamic>>>(externalTenants, (value) => pulumi.Input.encodeList<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guestOrExternalUserTypes': guestOrExternalUserTypes,
    };
  }

  factory ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser(
      externalTenants: map['externalTenants'] == null ? null : (pulumi.Input.decodeList<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant>(map['externalTenants'], (value) => ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      guestOrExternalUserTypes: ((map['guestOrExternalUserTypes'] as List).cast<String>()).input(),
    );
  }
}

