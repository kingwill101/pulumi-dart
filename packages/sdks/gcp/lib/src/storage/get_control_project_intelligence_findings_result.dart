// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding.dart';

/// Result data returned by getControlProjectIntelligenceFindings.
class GetControlProjectIntelligenceFindingsResult {
  final String? filter;
  /// The list of intelligence findings. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingsFinding>? findings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final int? pageSize;
  final String? project;

  /// Creates a new [GetControlProjectIntelligenceFindingsResult].
  /// [filter] Optional.
  /// [findings] The list of intelligence findings. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [pageSize] Optional.
  /// [project] Optional.
  const GetControlProjectIntelligenceFindingsResult({
    this.filter,
    this.findings,
    this.id,
    this.location,
    this.pageSize,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'findings': ?(() { final guardedValue = findings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFinding, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'pageSize': ?pageSize,
      'project': ?project,
    };
  }

  factory GetControlProjectIntelligenceFindingsResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findings: (() { final guardedValue = map['findings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFinding>(guardedValue, (value) => GetControlProjectIntelligenceFindingsFinding.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
