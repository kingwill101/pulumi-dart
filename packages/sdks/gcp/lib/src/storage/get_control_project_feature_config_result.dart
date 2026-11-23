// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_feature_config_auto_annotate_config.dart';
import 'get_control_project_feature_config_filter.dart';

/// Result data returned by getControlProjectFeatureConfig.
class GetControlProjectFeatureConfigResult {
  final List<GetControlProjectFeatureConfigAutoAnnotateConfig>? autoAnnotateConfigs;
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final String? featureConfigId;
  final List<GetControlProjectFeatureConfigFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  final String? type;
  final String? updateTime;

  /// Creates a new [GetControlProjectFeatureConfigResult].
  /// [autoAnnotateConfigs] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [featureConfigId] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [type] Optional.
  /// [updateTime] Optional.
  const GetControlProjectFeatureConfigResult({
    this.autoAnnotateConfigs,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.featureConfigId,
    this.filters,
    this.id,
    this.name,
    this.project,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAnnotateConfigs': ?(() { final guardedValue = autoAnnotateConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectFeatureConfigAutoAnnotateConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'featureConfigId': ?featureConfigId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectFeatureConfigFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetControlProjectFeatureConfigResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectFeatureConfigResult(
      autoAnnotateConfigs: (() { final guardedValue = map['autoAnnotateConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectFeatureConfigAutoAnnotateConfig>(guardedValue, (value) => GetControlProjectFeatureConfigAutoAnnotateConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      featureConfigId: (() { final guardedValue = map['featureConfigId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectFeatureConfigFilter>(guardedValue, (value) => GetControlProjectFeatureConfigFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
