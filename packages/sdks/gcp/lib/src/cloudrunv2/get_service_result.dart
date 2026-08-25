// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_binary_authorization.dart';
import 'get_service_build_config.dart';
import 'get_service_condition.dart';
import 'get_service_multi_region_setting.dart';
import 'get_service_scaling.dart';
import 'get_service_template.dart';
import 'get_service_terminal_condition.dart';
import 'get_service_traffic.dart';
import 'get_service_traffic_status.dart';

/// Result data returned by getService.
class GetServiceResult {
  final Map<String, String>? annotations;
  final List<GetServiceBinaryAuthorization>? binaryAuthorizations;
  final List<GetServiceBuildConfig>? buildConfigs;
  final String? client;
  final String? clientVersion;
  final List<GetServiceCondition>? conditions;
  final String? createTime;
  final String? creator;
  final List<String>? customAudiences;
  final bool? defaultUriDisabled;
  final String? deleteTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? description;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final String? etag;
  final String? expireTime;
  final String? generation;
  final bool? iapEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ingress;
  final bool? invokerIamDisabled;
  final Map<String, String>? labels;
  final String? lastModifier;
  final String? latestCreatedRevision;
  final String? latestReadyRevision;
  final String? launchStage;
  final String? location;
  final List<GetServiceMultiRegionSetting>? multiRegionSettings;
  final String? name;
  final String? observedGeneration;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final bool? reconciling;
  final List<GetServiceScaling>? scalings;
  final Map<String, String>? tags;
  final List<GetServiceTemplate>? templates;
  final List<GetServiceTerminalCondition>? terminalConditions;
  final List<GetServiceTrafficStatus>? trafficStatuses;
  final List<GetServiceTraffic>? traffics;
  final String? uid;
  final String? updateTime;
  final String? uri;
  final List<String>? urls;

  /// Creates a new [GetServiceResult].
  /// [annotations] Optional.
  /// [binaryAuthorizations] Optional.
  /// [buildConfigs] Optional.
  /// [client] Optional.
  /// [clientVersion] Optional.
  /// [conditions] Optional.
  /// [createTime] Optional.
  /// [creator] Optional.
  /// [customAudiences] Optional.
  /// [defaultUriDisabled] Optional.
  /// [deleteTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [description] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [etag] Optional.
  /// [expireTime] Optional.
  /// [generation] Optional.
  /// [iapEnabled] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingress] Optional.
  /// [invokerIamDisabled] Optional.
  /// [labels] Optional.
  /// [lastModifier] Optional.
  /// [latestCreatedRevision] Optional.
  /// [latestReadyRevision] Optional.
  /// [launchStage] Optional.
  /// [location] Optional.
  /// [multiRegionSettings] Optional.
  /// [name] Optional.
  /// [observedGeneration] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [reconciling] Optional.
  /// [scalings] Optional.
  /// [tags] Optional.
  /// [templates] Optional.
  /// [terminalConditions] Optional.
  /// [trafficStatuses] Optional.
  /// [traffics] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [uri] Optional.
  /// [urls] Optional.
  const GetServiceResult({
    this.annotations,
    this.binaryAuthorizations,
    this.buildConfigs,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.customAudiences,
    this.defaultUriDisabled,
    this.deleteTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.expireTime,
    this.generation,
    this.iapEnabled,
    this.id,
    this.ingress,
    this.invokerIamDisabled,
    this.labels,
    this.lastModifier,
    this.latestCreatedRevision,
    this.latestReadyRevision,
    this.launchStage,
    this.location,
    this.multiRegionSettings,
    this.name,
    this.observedGeneration,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.scalings,
    this.tags,
    this.templates,
    this.terminalConditions,
    this.trafficStatuses,
    this.traffics,
    this.uid,
    this.updateTime,
    this.uri,
    this.urls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorizations': ?(() { final guardedValue = binaryAuthorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceBinaryAuthorization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'buildConfigs': ?(() { final guardedValue = buildConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceBuildConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceCondition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'creator': ?creator,
      'customAudiences': ?customAudiences,
      'defaultUriDisabled': ?defaultUriDisabled,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'iapEnabled': ?iapEnabled,
      'id': ?id,
      'ingress': ?ingress,
      'invokerIamDisabled': ?invokerIamDisabled,
      'labels': ?labels,
      'lastModifier': ?lastModifier,
      'latestCreatedRevision': ?latestCreatedRevision,
      'latestReadyRevision': ?latestReadyRevision,
      'launchStage': ?launchStage,
      'location': ?location,
      'multiRegionSettings': ?(() { final guardedValue = multiRegionSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceMultiRegionSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'scalings': ?(() { final guardedValue = scalings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceScaling, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'terminalConditions': ?(() { final guardedValue = terminalConditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTerminalCondition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'trafficStatuses': ?(() { final guardedValue = trafficStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTrafficStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'traffics': ?(() { final guardedValue = traffics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTraffic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'uri': ?uri,
      'urls': ?urls,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      binaryAuthorizations: (() { final guardedValue = map['binaryAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceBinaryAuthorization>(guardedValue, (value) => GetServiceBinaryAuthorization.fromMap((value as Map).cast<String, dynamic>())); })(),
      buildConfigs: (() { final guardedValue = map['buildConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceBuildConfig>(guardedValue, (value) => GetServiceBuildConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceCondition>(guardedValue, (value) => GetServiceCondition.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customAudiences: (() { final guardedValue = map['customAudiences']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      defaultUriDisabled: (() { final guardedValue = map['defaultUriDisabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iapEnabled: (() { final guardedValue = map['iapEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invokerIamDisabled: (() { final guardedValue = map['invokerIamDisabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastModifier: (() { final guardedValue = map['lastModifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestCreatedRevision: (() { final guardedValue = map['latestCreatedRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestReadyRevision: (() { final guardedValue = map['latestReadyRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiRegionSettings: (() { final guardedValue = map['multiRegionSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceMultiRegionSetting>(guardedValue, (value) => GetServiceMultiRegionSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      scalings: (() { final guardedValue = map['scalings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceScaling>(guardedValue, (value) => GetServiceScaling.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTemplate>(guardedValue, (value) => GetServiceTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      terminalConditions: (() { final guardedValue = map['terminalConditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTerminalCondition>(guardedValue, (value) => GetServiceTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); })(),
      trafficStatuses: (() { final guardedValue = map['trafficStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTrafficStatus>(guardedValue, (value) => GetServiceTrafficStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      traffics: (() { final guardedValue = map['traffics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTraffic>(guardedValue, (value) => GetServiceTraffic.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
