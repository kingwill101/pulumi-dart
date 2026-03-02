// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant {
  /// A list tenant IDs. Can only be specified if `membership_kind` is `enumerated`.
  final pulumi.Input<List<String>>? members;
  /// The external tenant membership kind. Possible values are: `all`, `enumerated`, `unknownFutureValue`.
  final pulumi.Input<String> membershipKind;

  /// Creates a new [ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant].
  /// [members] A list tenant IDs. Can only be specified if `membership_kind` is `enumerated`.
  /// [membershipKind] The external tenant membership kind. Possible values are: `all`, `enumerated`, `unknownFutureValue`.
  ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant({
    this.members,
    required this.membershipKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
      'membershipKind': membershipKind,
    };
  }

  factory ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUserExternalTenant(
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      membershipKind: (map['membershipKind'] as String).input(),
    );
  }
}

