// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_feature_config_auto_annotate_config.dart';
import 'control_project_feature_config_filter.dart';

/// Input properties used for looking up and filtering ControlProjectFeatureConfig resources.
class ControlProjectFeatureConfigState {
  /// The configuration for the Auto Annotate feature, which uses AI models to generate
  /// annotations for objects in Cloud Storage buckets.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectFeatureConfigAutoAnnotateConfig?>? autoAnnotateConfig;
  /// The time at which the feature configuration was created.
  final pulumi.Input<String?>? createTime;
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
  final pulumi.Input<String?>? featureConfigId;
  /// A filter that limits the feature configuration to specific Cloud Storage buckets.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectFeatureConfigFilter?>? filter;
  /// The resource name of the feature configuration, in the format
  /// `projects/{project}/locations/global/featureConfigs/{feature_config_id}`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of the feature configuration, for example `AUTO_ANNOTATE`.
  final pulumi.Input<String?>? type;
  /// The time at which the feature configuration was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ControlProjectFeatureConfigState].
  /// [autoAnnotateConfig] The configuration for the Auto Annotate feature, which uses AI models to generate
  /// [createTime] The time at which the feature configuration was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the feature configuration. The description can be up to 256 characters long.
  /// [featureConfigId] The ID of the feature configuration, which becomes the final component of its resource name.
  /// [filter] A filter that limits the feature configuration to specific Cloud Storage buckets.
  /// [name] The resource name of the feature configuration, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the feature configuration, for example `AUTO_ANNOTATE`.
  /// [updateTime] The time at which the feature configuration was last updated.
  const ControlProjectFeatureConfigState({
    this.autoAnnotateConfig,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.featureConfigId,
    this.filter,
    this.name,
    this.project,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAnnotateConfig': ?pulumi.Input.mapOptionalInputValue<ControlProjectFeatureConfigAutoAnnotateConfig, Map<String, dynamic>>(autoAnnotateConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'featureConfigId': ?featureConfigId,
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlProjectFeatureConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory ControlProjectFeatureConfigState.fromMap(Map<String, dynamic> map) {
    return ControlProjectFeatureConfigState(
      autoAnnotateConfig: (() { final guardedValue = map['autoAnnotateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlProjectFeatureConfigAutoAnnotateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureConfigId: (() { final guardedValue = map['featureConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlProjectFeatureConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
