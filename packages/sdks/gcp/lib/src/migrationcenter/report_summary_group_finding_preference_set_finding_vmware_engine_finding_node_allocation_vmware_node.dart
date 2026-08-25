// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode {
  /// (Output)
  /// Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based
  /// on the displayName of
  /// cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  final pulumi.Input<String?>? code;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode].
  /// [code] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
