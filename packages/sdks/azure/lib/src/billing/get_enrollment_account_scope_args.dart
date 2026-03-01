// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_enrollment_account_scope_get_enrollment_account_scope_args_doc}
/// Arguments for getEnrollmentAccountScope.
/// {@endtemplate}
/// {@macro pulumi_billing_get_enrollment_account_scope_get_enrollment_account_scope_args_doc}
class GetEnrollmentAccountScopeArgs {
  /// The Billing Account Name of the Enterprise Account.
  final pulumi.Input<String> billingAccountName;
  /// The Enrollment Account Name in the above Enterprise Account.
  final pulumi.Input<String> enrollmentAccountName;

  /// Creates a new [GetEnrollmentAccountScopeArgs].
  /// [billingAccountName] The Billing Account Name of the Enterprise Account.
  /// [enrollmentAccountName] The Enrollment Account Name in the above Enterprise Account.
  GetEnrollmentAccountScopeArgs({
    required pulumi.Output<String> billingAccountName,
    required pulumi.Output<String> enrollmentAccountName,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      enrollmentAccountName = pulumi.Input.asInput<String>(enrollmentAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'enrollmentAccountName': enrollmentAccountName,
    };
  }

  factory GetEnrollmentAccountScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetEnrollmentAccountScopeArgs(
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      enrollmentAccountName: pulumi.Output.create<String>(map['enrollmentAccountName'] as String),
    );
  }
}

