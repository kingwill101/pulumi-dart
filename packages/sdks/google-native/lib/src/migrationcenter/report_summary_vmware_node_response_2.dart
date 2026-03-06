// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A VMWare Engine Node
class ReportSummaryVmwareNodeResponse {
  /// Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based on the displayName of cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  final pulumi.Input<String> code;

  /// Creates a new [ReportSummaryVmwareNodeResponse].
  /// [code] Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based on the displayName of cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  const ReportSummaryVmwareNodeResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory ReportSummaryVmwareNodeResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryVmwareNodeResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

