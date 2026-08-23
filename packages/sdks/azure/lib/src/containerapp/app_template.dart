// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_azure_queue_scale_rule.dart';
import 'app_template_container.dart';
import 'app_template_custom_scale_rule.dart';
import 'app_template_http_scale_rule.dart';
import 'app_template_init_container.dart';
import 'app_template_tcp_scale_rule.dart';
import 'app_template_volume.dart';

class AppTemplate {
  /// One or more `azureQueueScaleRule` blocks as defined below.
  final pulumi.Input<List<AppTemplateAzureQueueScaleRule>>? azureQueueScaleRules;
  /// One or more `container` blocks as detailed below.
  final pulumi.Input<List<AppTemplateContainer>> containers;
  /// The number of seconds to wait before scaling down the number of instances again. Defaults to `300`.
  final pulumi.Input<int>? cooldownPeriodInSeconds;
  /// One or more `customScaleRule` blocks as defined below.
  final pulumi.Input<List<AppTemplateCustomScaleRule>>? customScaleRules;
  /// One or more `httpScaleRule` blocks as defined below.
  final pulumi.Input<List<AppTemplateHttpScaleRule>>? httpScaleRules;
  /// The definition of an init container that is part of the group as documented in the `initContainer` block below.
  final pulumi.Input<List<AppTemplateInitContainer>>? initContainers;
  /// The maximum number of replicas for this container.
  final pulumi.Input<int>? maxReplicas;
  /// The minimum number of replicas for this container.
  final pulumi.Input<int>? minReplicas;
  /// The interval in seconds used for polling KEDA. Defaults to `30`.
  final pulumi.Input<int>? pollingIntervalInSeconds;
  /// The suffix for the revision. This value must be unique for the lifetime of the Resource. If omitted the service will use a hash function to create one.
  final pulumi.Input<String>? revisionSuffix;
  /// One or more `tcpScaleRule` blocks as defined below.
  final pulumi.Input<List<AppTemplateTcpScaleRule>>? tcpScaleRules;
  /// The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  final pulumi.Input<int>? terminationGracePeriodSeconds;
  /// A `volume` block as detailed below.
  final pulumi.Input<List<AppTemplateVolume>>? volumes;

  /// Creates a new [AppTemplate].
  /// [azureQueueScaleRules] One or more `azureQueueScaleRule` blocks as defined below.
  /// [containers] One or more `container` blocks as detailed below.
  /// [cooldownPeriodInSeconds] The number of seconds to wait before scaling down the number of instances again. Defaults to `300`.
  /// [customScaleRules] One or more `customScaleRule` blocks as defined below.
  /// [httpScaleRules] One or more `httpScaleRule` blocks as defined below.
  /// [initContainers] The definition of an init container that is part of the group as documented in the `initContainer` block below.
  /// [maxReplicas] The maximum number of replicas for this container.
  /// [minReplicas] The minimum number of replicas for this container.
  /// [pollingIntervalInSeconds] The interval in seconds used for polling KEDA. Defaults to `30`.
  /// [revisionSuffix] The suffix for the revision. This value must be unique for the lifetime of the Resource. If omitted the service will use a hash function to create one.
  /// [tcpScaleRules] One or more `tcpScaleRule` blocks as defined below.
  /// [terminationGracePeriodSeconds] The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  /// [volumes] A `volume` block as detailed below.
  const AppTemplate({
    this.azureQueueScaleRules,
    required this.containers,
    this.cooldownPeriodInSeconds,
    this.customScaleRules,
    this.httpScaleRules,
    this.initContainers,
    this.maxReplicas,
    this.minReplicas,
    this.pollingIntervalInSeconds,
    this.revisionSuffix,
    this.tcpScaleRules,
    this.terminationGracePeriodSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueueScaleRules': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateAzureQueueScaleRule>, List<Map<String, dynamic>>>(azureQueueScaleRules, (value) => pulumi.Input.encodeList<AppTemplateAzureQueueScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containers': pulumi.Input.mapInputValue<List<AppTemplateContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<AppTemplateContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cooldownPeriodInSeconds': ?cooldownPeriodInSeconds,
      'customScaleRules': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateCustomScaleRule>, List<Map<String, dynamic>>>(customScaleRules, (value) => pulumi.Input.encodeList<AppTemplateCustomScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpScaleRules': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateHttpScaleRule>, List<Map<String, dynamic>>>(httpScaleRules, (value) => pulumi.Input.encodeList<AppTemplateHttpScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateInitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<AppTemplateInitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'pollingIntervalInSeconds': ?pollingIntervalInSeconds,
      'revisionSuffix': ?revisionSuffix,
      'tcpScaleRules': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateTcpScaleRule>, List<Map<String, dynamic>>>(tcpScaleRules, (value) => pulumi.Input.encodeList<AppTemplateTcpScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<AppTemplateVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppTemplate.fromMap(Map<String, dynamic> map) {
    return AppTemplate(
      azureQueueScaleRules: (() { final guardedValue = map['azureQueueScaleRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateAzureQueueScaleRule>(guardedValue, (value) => AppTemplateAzureQueueScaleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateContainer>(map['containers']!, (value) => AppTemplateContainer.fromMap((value as Map).cast<String, dynamic>()))),
      cooldownPeriodInSeconds: (() { final guardedValue = map['cooldownPeriodInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customScaleRules: (() { final guardedValue = map['customScaleRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateCustomScaleRule>(guardedValue, (value) => AppTemplateCustomScaleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpScaleRules: (() { final guardedValue = map['httpScaleRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateHttpScaleRule>(guardedValue, (value) => AppTemplateHttpScaleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateInitContainer>(guardedValue, (value) => AppTemplateInitContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pollingIntervalInSeconds: (() { final guardedValue = map['pollingIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revisionSuffix: (() { final guardedValue = map['revisionSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpScaleRules: (() { final guardedValue = map['tcpScaleRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateTcpScaleRule>(guardedValue, (value) => AppTemplateTcpScaleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateVolume>(guardedValue, (value) => AppTemplateVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
