// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover {
  /// The display name of the Azure Active Directory Principal for the approver.
  final pulumi.Input<String>? principalDisplayName;

  /// The Principal ID of the Azure Active Directory principal for the approver.
  final pulumi.Input<String> principalId;

  /// Creates a new [DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover].
  /// [principalDisplayName] The display name of the Azure Active Directory Principal for the approver.
  /// [principalId] The Principal ID of the Azure Active Directory principal for the approver.
  DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover({
    this.principalDisplayName,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalDisplayName': ?principalDisplayName,
      'principalId': principalId,
    };
  }

  factory DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover(
      principalDisplayName: (() {
        final guardedValue = map['principalDisplayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
