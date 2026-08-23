// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo {
  /// (Output)
  /// The logical grouping to which the "reason" belongs. The error domain is typically the registered service name of the tool or product that generates the error. Example: "pubsub.googleapis.com".
  final pulumi.Input<String>? domain;
  /// (Output)
  /// Additional structured details about this error.
  final pulumi.Input<Map<String, String>>? metadatas;
  /// (Output)
  /// The reason of the error. This is a constant value that identifies the proximate cause of the error. Error reasons are unique within a particular domain of errors.
  final pulumi.Input<String>? reason;

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo].
  /// [domain] (Output)
  /// [metadatas] (Output)
  /// [reason] (Output)
  const RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo({
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

  factory RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
