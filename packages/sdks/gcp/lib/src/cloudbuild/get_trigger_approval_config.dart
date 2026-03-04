// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerApprovalConfig {
  /// Whether or not approval is needed. If this is set on a build, it will become pending when run,
  /// and will need to be explicitly approved to start.
  final pulumi.Input<bool> approvalRequired;

  /// Creates a new [GetTriggerApprovalConfig].
  /// [approvalRequired] Whether or not approval is needed. If this is set on a build, it will become pending when run,
  GetTriggerApprovalConfig({required this.approvalRequired});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'approvalRequired': approvalRequired};
  }

  factory GetTriggerApprovalConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerApprovalConfig(
      approvalRequired: pulumi.Input.fromValue(map['approvalRequired'] as bool),
    );
  }
}
