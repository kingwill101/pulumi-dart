// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ApprovalConfig describes configuration for manual approval of a build.
class ApprovalConfig {
  /// Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
  final pulumi.Input<bool>? approvalRequired;

  /// Creates a new [ApprovalConfig].
  /// [approvalRequired] Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
  const ApprovalConfig({
    this.approvalRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRequired': ?approvalRequired,
    };
  }

  factory ApprovalConfig.fromMap(Map<String, dynamic> map) {
    return ApprovalConfig(
      approvalRequired: (() { final guardedValue = map['approvalRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
