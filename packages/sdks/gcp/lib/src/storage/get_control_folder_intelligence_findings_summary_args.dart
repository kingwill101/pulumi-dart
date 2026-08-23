// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_folder_intelligence_findings_summary_get_control_folder_intelligence_findings_summary_args_doc}
/// Arguments for getControlFolderIntelligenceFindingsSummary.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_folder_intelligence_findings_summary_get_control_folder_intelligence_findings_summary_args_doc}
class GetControlFolderIntelligenceFindingsSummaryArgs {
  /// The filter expression. Supports filtering by FindingType.
  final pulumi.Input<String>? filter;
  /// The ID of the Google Cloud Folder.
  final pulumi.Input<String> folder;
  /// The location of the intelligence findings summary. Currently default value is global and users cannot use for input for now.
  final pulumi.Input<String>? location;
  /// Determines the granularity of the findings when the parent is an organization or folder. Only supported when parent is an organization or folder. Possible values are PARENT and PROJECT. Default value is PARENT.
  final pulumi.Input<String>? resourceScope;

  /// Creates a new [GetControlFolderIntelligenceFindingsSummaryArgs].
  /// [filter] The filter expression. Supports filtering by FindingType.
  /// [folder] The ID of the Google Cloud Folder.
  /// [location] The location of the intelligence findings summary. Currently default value is global and users cannot use for input for now.
  /// [resourceScope] Determines the granularity of the findings when the parent is an organization or folder. Only supported when parent is an organization or folder. Possible values are PARENT and PROJECT. Default value is PARENT.
  const GetControlFolderIntelligenceFindingsSummaryArgs({
    this.filter,
    required this.folder,
    this.location,
    this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'folder': folder,
      'location': ?location,
      'resourceScope': ?resourceScope,
    };
  }

  factory GetControlFolderIntelligenceFindingsSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceFindingsSummaryArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceScope: (() { final guardedValue = map['resourceScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
