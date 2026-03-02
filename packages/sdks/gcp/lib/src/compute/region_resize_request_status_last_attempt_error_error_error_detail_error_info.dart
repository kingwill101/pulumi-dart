// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo {
  /// (Output)
  /// The logical grouping to which the "reason" belongs. The error domain is typically the registered service name of the tool or product that generates the error. Example: "pubsub.googleapis.com".
  final pulumi.Input<String>? domain;
  /// (Output)
  /// Additional structured details about this error.
  final pulumi.Input<Map<String, String>>? metadatas;
  /// (Output)
  /// The reason of the error. This is a constant value that identifies the proximate cause of the error. Error reasons are unique within a particular domain of errors.
  final pulumi.Input<String>? reason;

  /// Creates a new [RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo].
  /// [domain] (Output)
  /// [metadatas] (Output)
  /// [reason] (Output)
  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo({
    this.domain,
    this.metadatas,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'metadatas': ?metadatas,
      'reason': ?reason,
    };
  }

  factory RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      metadatas: map['metadatas'] == null ? null : ((map['metadatas']! as Map).cast<String, String>()).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
    );
  }
}

