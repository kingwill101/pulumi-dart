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
  final Map<String, String> annotations;
  final List<GetServiceBinaryAuthorization> binaryAuthorizations;
  final List<GetServiceBuildConfig> buildConfigs;
  final String client;
  final String clientVersion;
  final List<GetServiceCondition> conditions;
  final String createTime;
  final String creator;
  final List<String> customAudiences;
  final bool defaultUriDisabled;
  final String deleteTime;
  final bool deletionProtection;
  final String description;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String etag;
  final String expireTime;
  final String generation;
  final bool iapEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ingress;
  final bool invokerIamDisabled;
  final Map<String, String> labels;
  final String lastModifier;
  final String latestCreatedRevision;
  final String latestReadyRevision;
  final String launchStage;
  final String? location;
  final List<GetServiceMultiRegionSetting> multiRegionSettings;
  final String name;
  final String observedGeneration;
  final String? project;
  final Map<String, String> pulumiLabels;
  final bool reconciling;
  final List<GetServiceScaling> scalings;
  final List<GetServiceTemplate> templates;
  final List<GetServiceTerminalCondition> terminalConditions;
  final List<GetServiceTrafficStatus> trafficStatuses;
  final List<GetServiceTraffic> traffics;
  final String uid;
  final String updateTime;
  final String uri;
  final List<String> urls;

  /// Creates a new [GetServiceResult].
  /// [annotations] Required.
  /// [binaryAuthorizations] Required.
  /// [buildConfigs] Required.
  /// [client] Required.
  /// [clientVersion] Required.
  /// [conditions] Required.
  /// [createTime] Required.
  /// [creator] Required.
  /// [customAudiences] Required.
  /// [defaultUriDisabled] Required.
  /// [deleteTime] Required.
  /// [deletionProtection] Required.
  /// [description] Required.
  /// [effectiveAnnotations] Required.
  /// [effectiveLabels] Required.
  /// [etag] Required.
  /// [expireTime] Required.
  /// [generation] Required.
  /// [iapEnabled] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingress] Required.
  /// [invokerIamDisabled] Required.
  /// [labels] Required.
  /// [lastModifier] Required.
  /// [latestCreatedRevision] Required.
  /// [latestReadyRevision] Required.
  /// [launchStage] Required.
  /// [location] Optional.
  /// [multiRegionSettings] Required.
  /// [name] Required.
  /// [observedGeneration] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [reconciling] Required.
  /// [scalings] Required.
  /// [templates] Required.
  /// [terminalConditions] Required.
  /// [trafficStatuses] Required.
  /// [traffics] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  /// [uri] Required.
  /// [urls] Required.
  GetServiceResult({
    required this.annotations,
    required this.binaryAuthorizations,
    required this.buildConfigs,
    required this.client,
    required this.clientVersion,
    required this.conditions,
    required this.createTime,
    required this.creator,
    required this.customAudiences,
    required this.defaultUriDisabled,
    required this.deleteTime,
    required this.deletionProtection,
    required this.description,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.etag,
    required this.expireTime,
    required this.generation,
    required this.iapEnabled,
    required this.id,
    required this.ingress,
    required this.invokerIamDisabled,
    required this.labels,
    required this.lastModifier,
    required this.latestCreatedRevision,
    required this.latestReadyRevision,
    required this.launchStage,
    this.location,
    required this.multiRegionSettings,
    required this.name,
    required this.observedGeneration,
    this.project,
    required this.pulumiLabels,
    required this.reconciling,
    required this.scalings,
    required this.templates,
    required this.terminalConditions,
    required this.trafficStatuses,
    required this.traffics,
    required this.uid,
    required this.updateTime,
    required this.uri,
    required this.urls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'binaryAuthorizations': pulumi.Input.encodeList<GetServiceBinaryAuthorization, Map<String, dynamic>>(binaryAuthorizations, (value) => value.toMap()),
      'buildConfigs': pulumi.Input.encodeList<GetServiceBuildConfig, Map<String, dynamic>>(buildConfigs, (value) => value.toMap()),
      'client': client,
      'clientVersion': clientVersion,
      'conditions': pulumi.Input.encodeList<GetServiceCondition, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'createTime': createTime,
      'creator': creator,
      'customAudiences': customAudiences,
      'defaultUriDisabled': defaultUriDisabled,
      'deleteTime': deleteTime,
      'deletionProtection': deletionProtection,
      'description': description,
      'effectiveAnnotations': effectiveAnnotations,
      'effectiveLabels': effectiveLabels,
      'etag': etag,
      'expireTime': expireTime,
      'generation': generation,
      'iapEnabled': iapEnabled,
      'id': id,
      'ingress': ingress,
      'invokerIamDisabled': invokerIamDisabled,
      'labels': labels,
      'lastModifier': lastModifier,
      'latestCreatedRevision': latestCreatedRevision,
      'latestReadyRevision': latestReadyRevision,
      'launchStage': launchStage,
      'location': ?location,
      'multiRegionSettings': pulumi.Input.encodeList<GetServiceMultiRegionSetting, Map<String, dynamic>>(multiRegionSettings, (value) => value.toMap()),
      'name': name,
      'observedGeneration': observedGeneration,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'reconciling': reconciling,
      'scalings': pulumi.Input.encodeList<GetServiceScaling, Map<String, dynamic>>(scalings, (value) => value.toMap()),
      'templates': pulumi.Input.encodeList<GetServiceTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
      'terminalConditions': pulumi.Input.encodeList<GetServiceTerminalCondition, Map<String, dynamic>>(terminalConditions, (value) => value.toMap()),
      'trafficStatuses': pulumi.Input.encodeList<GetServiceTrafficStatus, Map<String, dynamic>>(trafficStatuses, (value) => value.toMap()),
      'traffics': pulumi.Input.encodeList<GetServiceTraffic, Map<String, dynamic>>(traffics, (value) => value.toMap()),
      'uid': uid,
      'updateTime': updateTime,
      'uri': uri,
      'urls': urls,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorizations: pulumi.Input.decodeList<GetServiceBinaryAuthorization>(map['binaryAuthorizations']!, (value) => GetServiceBinaryAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      buildConfigs: pulumi.Input.decodeList<GetServiceBuildConfig>(map['buildConfigs']!, (value) => GetServiceBuildConfig.fromMap((value as Map).cast<String, dynamic>())),
      client: map['client'] as String,
      clientVersion: map['clientVersion'] as String,
      conditions: pulumi.Input.decodeList<GetServiceCondition>(map['conditions']!, (value) => GetServiceCondition.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      customAudiences: (map['customAudiences'] as List).cast<String>(),
      defaultUriDisabled: map['defaultUriDisabled'] as bool,
      deleteTime: map['deleteTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      effectiveAnnotations: (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      generation: map['generation'] as String,
      iapEnabled: map['iapEnabled'] as bool,
      id: map['id'] as String,
      ingress: map['ingress'] as String,
      invokerIamDisabled: map['invokerIamDisabled'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifier: map['lastModifier'] as String,
      latestCreatedRevision: map['latestCreatedRevision'] as String,
      latestReadyRevision: map['latestReadyRevision'] as String,
      launchStage: map['launchStage'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiRegionSettings: pulumi.Input.decodeList<GetServiceMultiRegionSetting>(map['multiRegionSettings']!, (value) => GetServiceMultiRegionSetting.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      observedGeneration: map['observedGeneration'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reconciling: map['reconciling'] as bool,
      scalings: pulumi.Input.decodeList<GetServiceScaling>(map['scalings']!, (value) => GetServiceScaling.fromMap((value as Map).cast<String, dynamic>())),
      templates: pulumi.Input.decodeList<GetServiceTemplate>(map['templates']!, (value) => GetServiceTemplate.fromMap((value as Map).cast<String, dynamic>())),
      terminalConditions: pulumi.Input.decodeList<GetServiceTerminalCondition>(map['terminalConditions']!, (value) => GetServiceTerminalCondition.fromMap((value as Map).cast<String, dynamic>())),
      trafficStatuses: pulumi.Input.decodeList<GetServiceTrafficStatus>(map['trafficStatuses']!, (value) => GetServiceTrafficStatus.fromMap((value as Map).cast<String, dynamic>())),
      traffics: pulumi.Input.decodeList<GetServiceTraffic>(map['traffics']!, (value) => GetServiceTraffic.fromMap((value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      uri: map['uri'] as String,
      urls: (map['urls'] as List).cast<String>(),
    );
  }
}

