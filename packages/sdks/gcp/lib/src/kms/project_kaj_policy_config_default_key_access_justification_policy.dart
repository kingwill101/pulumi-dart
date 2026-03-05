// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy {
  /// A KeyAccessJustificationsPolicy specifies zero or more allowed
  /// AccessReason values for encrypt, decrypt, and sign operations on a
  /// CryptoKey.
  /// Each value may be one of: `CUSTOMER_INITIATED_SUPPORT`, `GOOGLE_INITIATED_SERVICE`, `THIRD_PARTY_DATA_REQUEST`, `GOOGLE_INITIATED_REVIEW`, `CUSTOMER_INITIATED_ACCESS`, `GOOGLE_INITIATED_SYSTEM_OPERATION`, `REASON_NOT_EXPECTED`, `MODIFIED_CUSTOMER_INITIATED_ACCESS`, `MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION`, `GOOGLE_RESPONSE_TO_PRODUCTION_ALERT`, `CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING`.
  final pulumi.Input<List<String>>? allowedAccessReasons;

  /// Creates a new [ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy].
  /// [allowedAccessReasons] A KeyAccessJustificationsPolicy specifies zero or more allowed
  ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy({
    this.allowedAccessReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAccessReasons': ?allowedAccessReasons,
    };
  }

  factory ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap(Map<String, dynamic> map) {
    return ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy(
      allowedAccessReasons: (() { final guardedValue = map['allowedAccessReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

