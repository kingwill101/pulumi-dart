// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceConnectionPolicyPscConnectionErrorInfo {
  /// The logical grouping to which the "reason" belongs.
  final pulumi.Input<String>? domain;
  /// Additional structured details about this error.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The reason of the error.
  final pulumi.Input<String>? reason;

  /// Creates a new [ServiceConnectionPolicyPscConnectionErrorInfo].
  /// [domain] The logical grouping to which the "reason" belongs.
  /// [metadata] Additional structured details about this error.
  /// [reason] The reason of the error.
  ServiceConnectionPolicyPscConnectionErrorInfo({
    this.domain,
    this.metadata,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'metadata': ?metadata,
      'reason': ?reason,
    };
  }

  factory ServiceConnectionPolicyPscConnectionErrorInfo.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyPscConnectionErrorInfo(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
    );
  }
}

