// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_feature_config_auto_annotate_config.dart';
import 'control_project_feature_config_filter.dart';

/// {@template pulumi_storage_control_project_feature_config_control_project_feature_config_args_doc}
/// The set of arguments for ControlProjectFeatureConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_control_project_feature_config_control_project_feature_config_args_doc}
class ControlProjectFeatureConfigArgs {
  /// The configuration for the Auto Annotate feature, which uses AI models to generate
  /// annotations for objects in Cloud Storage buckets.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectFeatureConfigAutoAnnotateConfig> autoAnnotateConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the feature configuration. The description can be up to 256 characters long.
  final pulumi.Input<String?>? description;
  /// The ID of the feature configuration, which becomes the final component of its resource name.
  /// The ID must be 1 to 63 characters long, start with a lowercase letter, and contain only
  /// lowercase letters, digits, and dashes. The last character can't be a dash.
  final pulumi.Input<String> featureConfigId;
  /// A filter that limits the feature configuration to specific Cloud Storage buckets.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectFeatureConfigFilter?>? filter;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ControlProjectFeatureConfigArgs].
  /// [autoAnnotateConfig] The configuration for the Auto Annotate feature, which uses AI models to generate
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the feature configuration. The description can be up to 256 characters long.
  /// [featureConfigId] The ID of the feature configuration, which becomes the final component of its resource name.
  /// [filter] A filter that limits the feature configuration to specific Cloud Storage buckets.
  /// [project] The ID of the project in which the resource belongs.
  const ControlProjectFeatureConfigArgs({
    required this.autoAnnotateConfig,
    this.deletionPolicy,
    this.description,
    required this.featureConfigId,
    this.filter,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAnnotateConfig': pulumi.Input.mapInputValue<ControlProjectFeatureConfigAutoAnnotateConfig, Map<String, dynamic>>(autoAnnotateConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'featureConfigId': featureConfigId,
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlProjectFeatureConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory ControlProjectFeatureConfigArgs.fromMap(Map<String, dynamic> map) {
    return ControlProjectFeatureConfigArgs(
      autoAnnotateConfig: pulumi.Input.fromValue(ControlProjectFeatureConfigAutoAnnotateConfig.fromMap((map['autoAnnotateConfig']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureConfigId: pulumi.Input.fromValue(map['featureConfigId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlProjectFeatureConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
