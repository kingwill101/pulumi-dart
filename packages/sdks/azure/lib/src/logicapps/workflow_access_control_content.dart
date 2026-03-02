// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowAccessControlContent {
  /// A list of the allowed caller IP address ranges.
  final pulumi.Input<List<String>> allowedCallerIpAddressRanges;

  /// Creates a new [WorkflowAccessControlContent].
  /// [allowedCallerIpAddressRanges] A list of the allowed caller IP address ranges.
  WorkflowAccessControlContent({
    required this.allowedCallerIpAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddressRanges': allowedCallerIpAddressRanges,
    };
  }

  factory WorkflowAccessControlContent.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControlContent(
      allowedCallerIpAddressRanges: ((map['allowedCallerIpAddressRanges'] as List).cast<String>()).input(),
    );
  }
}

