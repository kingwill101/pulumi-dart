// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_intelligence_config_filter.dart';

/// {@template pulumi_storage_control_project_intelligence_config_control_project_intelligence_config_args_doc}
/// The set of arguments for ControlProjectIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_control_project_intelligence_config_control_project_intelligence_config_args_doc}
class ControlProjectIntelligenceConfigArgs {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  final pulumi.Input<String>? editionConfig;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectIntelligenceConfigFilter>? filter;
  /// Identifier of the GCP project. For GCP project, this field can be project name or project number.
  final pulumi.Input<String>? name;

  /// Creates a new [ControlProjectIntelligenceConfigArgs].
  /// [editionConfig] Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  /// [filter] Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// [name] Identifier of the GCP project. For GCP project, this field can be project name or project number.
  ControlProjectIntelligenceConfigArgs({
    pulumi.Output<String>? editionConfig,
    pulumi.Output<ControlProjectIntelligenceConfigFilter>? filter,
    pulumi.Output<String>? name,
  }) :
      editionConfig = pulumi.Input.asOptionalInput<String>(editionConfig),
      filter = pulumi.Input.asOptionalInput<ControlProjectIntelligenceConfigFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': ?editionConfig,
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlProjectIntelligenceConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory ControlProjectIntelligenceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigArgs(
      editionConfig: map['editionConfig'] == null ? null : pulumi.Output.create<String>(map['editionConfig'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<ControlProjectIntelligenceConfigFilter>(ControlProjectIntelligenceConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

