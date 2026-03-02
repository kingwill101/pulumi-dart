// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_users_included_guests_or_external_user_external_tenant.dart';

class ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser {
  /// An `external_tenants` block as documented below, which specifies external tenants in a policy scope.
  final pulumi.Input<List<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant>>? externalTenants;
  /// A list of guest or external user types. Possible values are: `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest`, `none`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue`.
  final pulumi.Input<List<String>> guestOrExternalUserTypes;

  /// Creates a new [ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser].
  /// [externalTenants] An `external_tenants` block as documented below, which specifies external tenants in a policy scope.
  /// [guestOrExternalUserTypes] A list of guest or external user types. Possible values are: `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest`, `none`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue`.
  ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser({
    this.externalTenants,
    required this.guestOrExternalUserTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalTenants': ?pulumi.Input.mapOptionalInputValue<List<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant>, List<Map<String, dynamic>>>(externalTenants, (value) => pulumi.Input.encodeList<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guestOrExternalUserTypes': guestOrExternalUserTypes,
    };
  }

  factory ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser(
      externalTenants: map['externalTenants'] == null ? null : (pulumi.Input.decodeList<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant>(map['externalTenants']!, (value) => ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      guestOrExternalUserTypes: ((map['guestOrExternalUserTypes'] as List).cast<String>()).input(),
    );
  }
}

