// ignore_for_file: unused_element, unnecessary_cast


class ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant {
  /// A list tenant IDs. Can only be specified if `membership_kind` is `enumerated`.
  final List<String>? members;
  /// The external tenant membership kind. Possible values are: `all`, `enumerated`, `unknownFutureValue`.
  final String membershipKind;

  /// Creates a new [ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant].
  /// [members] A list tenant IDs. Can only be specified if `membership_kind` is `enumerated`.
  /// [membershipKind] The external tenant membership kind. Possible values are: `all`, `enumerated`, `unknownFutureValue`.
  ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant({
    this.members,
    required this.membershipKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
      'membershipKind': membershipKind,
    };
  }

  factory ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUserExternalTenant(
      members: map['members'] == null ? null : (map['members'] as List).cast<String>(),
      membershipKind: map['membershipKind'] as String,
    );
  }
}

