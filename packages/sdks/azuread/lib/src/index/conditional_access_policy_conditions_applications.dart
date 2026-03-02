// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConditionalAccessPolicyConditionsApplications {
  /// A list of application IDs explicitly excluded from the policy. Can also be set to `Office365`.
  final pulumi.Input<List<String>>? excludedApplications;
  /// A list of application IDs the policy applies to, unless explicitly excluded (in `excluded_applications`). Can also be set to `All`, `None` or `Office365`. Cannot be specified with `included_user_actions`. One of `included_applications` or `included_user_actions` must be specified.
  final pulumi.Input<List<String>>? includedApplications;
  /// A list of user actions to include. Supported values are `urn:user:registerdevice` and `urn:user:registersecurityinfo`. Cannot be specified with `included_applications`. One of `included_applications` or `included_user_actions` must be specified.
  final pulumi.Input<List<String>>? includedUserActions;

  /// Creates a new [ConditionalAccessPolicyConditionsApplications].
  /// [excludedApplications] A list of application IDs explicitly excluded from the policy. Can also be set to `Office365`.
  /// [includedApplications] A list of application IDs the policy applies to, unless explicitly excluded (in `excluded_applications`). Can also be set to `All`, `None` or `Office365`. Cannot be specified with `included_user_actions`. One of `included_applications` or `included_user_actions` must be specified.
  /// [includedUserActions] A list of user actions to include. Supported values are `urn:user:registerdevice` and `urn:user:registersecurityinfo`. Cannot be specified with `included_applications`. One of `included_applications` or `included_user_actions` must be specified.
  ConditionalAccessPolicyConditionsApplications({
    this.excludedApplications,
    this.includedApplications,
    this.includedUserActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedApplications': ?excludedApplications,
      'includedApplications': ?includedApplications,
      'includedUserActions': ?includedUserActions,
    };
  }

  factory ConditionalAccessPolicyConditionsApplications.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsApplications(
      excludedApplications: map['excludedApplications'] == null ? null : ((map['excludedApplications']! as List).cast<String>()).input(),
      includedApplications: map['includedApplications'] == null ? null : ((map['includedApplications']! as List).cast<String>()).input(),
      includedUserActions: map['includedUserActions'] == null ? null : ((map['includedUserActions']! as List).cast<String>()).input(),
    );
  }
}

