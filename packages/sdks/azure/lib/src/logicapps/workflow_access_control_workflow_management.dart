// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowAccessControlWorkflowManagement {
  /// A list of the allowed caller IP address ranges.
  final pulumi.Input<List<String>> allowedCallerIpAddressRanges;

  /// Creates a new [WorkflowAccessControlWorkflowManagement].
  /// [allowedCallerIpAddressRanges] A list of the allowed caller IP address ranges.
  WorkflowAccessControlWorkflowManagement({
    required this.allowedCallerIpAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddressRanges': allowedCallerIpAddressRanges,
    };
  }

  factory WorkflowAccessControlWorkflowManagement.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControlWorkflowManagement(
      allowedCallerIpAddressRanges: ((map['allowedCallerIpAddressRanges'] as List).cast<String>()).input(),
    );
  }
}

