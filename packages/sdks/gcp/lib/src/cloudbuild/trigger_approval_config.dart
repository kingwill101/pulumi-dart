// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerApprovalConfig {
  /// Whether or not approval is needed. If this is set on a build, it will become pending when run,
  /// and will need to be explicitly approved to start.
  final pulumi.Input<bool>? approvalRequired;

  /// Creates a new [TriggerApprovalConfig].
  /// [approvalRequired] Whether or not approval is needed. If this is set on a build, it will become pending when run,
  TriggerApprovalConfig({
    this.approvalRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRequired': ?approvalRequired,
    };
  }

  factory TriggerApprovalConfig.fromMap(Map<String, dynamic> map) {
    return TriggerApprovalConfig(
      approvalRequired: map['approvalRequired'] == null ? null : (map['approvalRequired'] as bool).input(),
    );
  }
}

