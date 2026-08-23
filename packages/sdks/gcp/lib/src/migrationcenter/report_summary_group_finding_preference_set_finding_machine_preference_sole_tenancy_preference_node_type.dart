// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType {
  /// (Output)
  /// Name of the Sole Tenant node. Consult
  /// https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final pulumi.Input<String>? nodeName;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType].
  /// [nodeName] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType({
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceSoleTenancyPreferenceNodeType(
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
