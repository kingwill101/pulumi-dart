// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_folder_intelligence_config_filter.dart';

/// {@template pulumi_storage_control_folder_intelligence_config_control_folder_intelligence_config_args_doc}
/// The set of arguments for ControlFolderIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_control_folder_intelligence_config_control_folder_intelligence_config_args_doc}
class ControlFolderIntelligenceConfigArgs {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  final pulumi.Input<String>? editionConfig;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlFolderIntelligenceConfigFilter>? filter;
  /// Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  final pulumi.Input<String>? name;

  /// Creates a new [ControlFolderIntelligenceConfigArgs].
  /// [editionConfig] Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  /// [filter] Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// [name] Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  ControlFolderIntelligenceConfigArgs({
    this.editionConfig,
    this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': ?editionConfig,
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlFolderIntelligenceConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory ControlFolderIntelligenceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigArgs(
      editionConfig: map['editionConfig'] == null ? null : (map['editionConfig'] as String).input(),
      filter: map['filter'] == null ? null : (ControlFolderIntelligenceConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

