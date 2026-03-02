// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_azure_queue_scale_rule.dart';
import 'get_app_template_container.dart';
import 'get_app_template_custom_scale_rule.dart';
import 'get_app_template_http_scale_rule.dart';
import 'get_app_template_init_container.dart';
import 'get_app_template_tcp_scale_rule.dart';
import 'get_app_template_volume.dart';

class GetAppTemplate {
  final pulumi.Input<List<GetAppTemplateAzureQueueScaleRule>> azureQueueScaleRules;
  /// One or more `container` blocks as detailed below.
  final pulumi.Input<List<GetAppTemplateContainer>> containers;
  /// The number of seconds to wait before scaling down the number of instances again.
  final pulumi.Input<int> cooldownPeriodInSeconds;
  final pulumi.Input<List<GetAppTemplateCustomScaleRule>>? customScaleRules;
  final pulumi.Input<List<GetAppTemplateHttpScaleRule>> httpScaleRules;
  /// One or more `init_container` blocks as detailed below.
  final pulumi.Input<List<GetAppTemplateInitContainer>> initContainers;
  /// The maximum number of replicas for this container.
  final pulumi.Input<int> maxReplicas;
  /// The minimum number of replicas for this container.
  final pulumi.Input<int> minReplicas;
  /// The interval in seconds used for polling KEDA.
  final pulumi.Input<int> pollingIntervalInSeconds;
  /// The suffix string to which this `traffic_weight` applies.
  final pulumi.Input<String> revisionSuffix;
  final pulumi.Input<List<GetAppTemplateTcpScaleRule>> tcpScaleRules;
  /// The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  final pulumi.Input<int> terminationGracePeriodSeconds;
  /// A `volume` block as detailed below.
  final pulumi.Input<List<GetAppTemplateVolume>> volumes;

  /// Creates a new [GetAppTemplate].
  /// [azureQueueScaleRules] Required.
  /// [containers] One or more `container` blocks as detailed below.
  /// [cooldownPeriodInSeconds] The number of seconds to wait before scaling down the number of instances again.
  /// [customScaleRules] Optional.
  /// [httpScaleRules] Required.
  /// [initContainers] One or more `init_container` blocks as detailed below.
  /// [maxReplicas] The maximum number of replicas for this container.
  /// [minReplicas] The minimum number of replicas for this container.
  /// [pollingIntervalInSeconds] The interval in seconds used for polling KEDA.
  /// [revisionSuffix] The suffix string to which this `traffic_weight` applies.
  /// [tcpScaleRules] Required.
  /// [terminationGracePeriodSeconds] The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  /// [volumes] A `volume` block as detailed below.
  GetAppTemplate({
    required this.azureQueueScaleRules,
    required this.containers,
    required this.cooldownPeriodInSeconds,
    this.customScaleRules,
    required this.httpScaleRules,
    required this.initContainers,
    required this.maxReplicas,
    required this.minReplicas,
    required this.pollingIntervalInSeconds,
    required this.revisionSuffix,
    required this.tcpScaleRules,
    required this.terminationGracePeriodSeconds,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueueScaleRules': pulumi.Input.mapInputValue<List<GetAppTemplateAzureQueueScaleRule>, List<Map<String, dynamic>>>(azureQueueScaleRules, (value) => pulumi.Input.encodeList<GetAppTemplateAzureQueueScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containers': pulumi.Input.mapInputValue<List<GetAppTemplateContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GetAppTemplateContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cooldownPeriodInSeconds': cooldownPeriodInSeconds,
      'customScaleRules': ?pulumi.Input.mapOptionalInputValue<List<GetAppTemplateCustomScaleRule>, List<Map<String, dynamic>>>(customScaleRules, (value) => pulumi.Input.encodeList<GetAppTemplateCustomScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpScaleRules': pulumi.Input.mapInputValue<List<GetAppTemplateHttpScaleRule>, List<Map<String, dynamic>>>(httpScaleRules, (value) => pulumi.Input.encodeList<GetAppTemplateHttpScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': pulumi.Input.mapInputValue<List<GetAppTemplateInitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<GetAppTemplateInitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxReplicas': maxReplicas,
      'minReplicas': minReplicas,
      'pollingIntervalInSeconds': pollingIntervalInSeconds,
      'revisionSuffix': revisionSuffix,
      'tcpScaleRules': pulumi.Input.mapInputValue<List<GetAppTemplateTcpScaleRule>, List<Map<String, dynamic>>>(tcpScaleRules, (value) => pulumi.Input.encodeList<GetAppTemplateTcpScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'terminationGracePeriodSeconds': terminationGracePeriodSeconds,
      'volumes': pulumi.Input.mapInputValue<List<GetAppTemplateVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GetAppTemplateVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppTemplate.fromMap(Map<String, dynamic> map) {
    return GetAppTemplate(
      azureQueueScaleRules: (pulumi.Input.decodeList<GetAppTemplateAzureQueueScaleRule>(map['azureQueueScaleRules'], (value) => GetAppTemplateAzureQueueScaleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containers: (pulumi.Input.decodeList<GetAppTemplateContainer>(map['containers'], (value) => GetAppTemplateContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cooldownPeriodInSeconds: (map['cooldownPeriodInSeconds'] as int).input(),
      customScaleRules: map['customScaleRules'] == null ? null : (pulumi.Input.decodeList<GetAppTemplateCustomScaleRule>(map['customScaleRules']!, (value) => GetAppTemplateCustomScaleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      httpScaleRules: (pulumi.Input.decodeList<GetAppTemplateHttpScaleRule>(map['httpScaleRules'], (value) => GetAppTemplateHttpScaleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initContainers: (pulumi.Input.decodeList<GetAppTemplateInitContainer>(map['initContainers'], (value) => GetAppTemplateInitContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxReplicas: (map['maxReplicas'] as int).input(),
      minReplicas: (map['minReplicas'] as int).input(),
      pollingIntervalInSeconds: (map['pollingIntervalInSeconds'] as int).input(),
      revisionSuffix: (map['revisionSuffix'] as String).input(),
      tcpScaleRules: (pulumi.Input.decodeList<GetAppTemplateTcpScaleRule>(map['tcpScaleRules'], (value) => GetAppTemplateTcpScaleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      terminationGracePeriodSeconds: (map['terminationGracePeriodSeconds'] as int).input(),
      volumes: (pulumi.Input.decodeList<GetAppTemplateVolume>(map['volumes'], (value) => GetAppTemplateVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

