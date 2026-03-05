// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowAccessControlAction {
  /// A list of the allowed caller IP address ranges.
  final pulumi.Input<List<String>> allowedCallerIpAddressRanges;

  /// Creates a new [WorkflowAccessControlAction].
  /// [allowedCallerIpAddressRanges] A list of the allowed caller IP address ranges.
  WorkflowAccessControlAction({
    required this.allowedCallerIpAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddressRanges': allowedCallerIpAddressRanges,
    };
  }

  factory WorkflowAccessControlAction.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControlAction(
      allowedCallerIpAddressRanges: pulumi.Input.fromValue((map['allowedCallerIpAddressRanges'] as List).cast<String>()),
    );
  }
}

