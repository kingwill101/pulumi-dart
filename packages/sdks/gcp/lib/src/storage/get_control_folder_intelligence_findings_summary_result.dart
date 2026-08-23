// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_folder_intelligence_findings_summary_finding_summary.dart';

/// Result data returned by getControlFolderIntelligenceFindingsSummary.
class GetControlFolderIntelligenceFindingsSummaryResult {
  final String? filter;
  /// The list of FindingSummary summaries. Structure is documented below.
  final List<GetControlFolderIntelligenceFindingsSummaryFindingSummary> findingSummaries;
  final String folder;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String? resourceScope;

  /// Creates a new [GetControlFolderIntelligenceFindingsSummaryResult].
  /// [filter] Optional.
  /// [findingSummaries] The list of FindingSummary summaries. Structure is documented below.
  /// [folder] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [resourceScope] Optional.
  const GetControlFolderIntelligenceFindingsSummaryResult({
    this.filter,
    required this.findingSummaries,
    required this.folder,
    required this.id,
    this.location,
    this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'findingSummaries': pulumi.Input.encodeList<GetControlFolderIntelligenceFindingsSummaryFindingSummary, Map<String, dynamic>>(findingSummaries, (value) => value.toMap()),
      'folder': folder,
      'id': id,
      'location': ?location,
      'resourceScope': ?resourceScope,
    };
  }

  factory GetControlFolderIntelligenceFindingsSummaryResult.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceFindingsSummaryResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findingSummaries: pulumi.Input.decodeList<GetControlFolderIntelligenceFindingsSummaryFindingSummary>(map['findingSummaries']!, (value) => GetControlFolderIntelligenceFindingsSummaryFindingSummary.fromMap((value as Map).cast<String, dynamic>())),
      folder: map['folder'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceScope: (() { final guardedValue = map['resourceScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
