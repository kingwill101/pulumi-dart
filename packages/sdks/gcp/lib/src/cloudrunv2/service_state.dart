// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_binary_authorization.dart';
import 'service_build_config.dart';
import 'service_condition.dart';
import 'service_multi_region_settings.dart';
import 'service_scaling.dart';
import 'service_template.dart';
import 'service_terminal_condition.dart';
import 'service_traffic.dart';
import 'service_traffic_status.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Service.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  final pulumi.Input<ServiceBinaryAuthorization>? binaryAuthorization;
  /// Configuration for building a Cloud Run function.
  /// Structure is documented below.
  final pulumi.Input<ServiceBuildConfig>? buildConfig;
  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;
  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceCondition>>? conditions;
  /// The creation time.
  final pulumi.Input<String>? createTime;
  /// Email address of the authenticated creator.
  final pulumi.Input<String>? creator;
  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  final pulumi.Input<List<String>>? customAudiences;
  /// Disables public resolution of the default URI of this service.
  final pulumi.Input<bool>? defaultUriDisabled;
  /// The deletion time.
  final pulumi.Input<String>? deleteTime;
  final pulumi.Input<bool>? deletionProtection;
  /// User-provided description of the Service. This field currently has a 512-character limit.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  final pulumi.Input<String>? etag;
  /// For a deleted resource, the time after which it will be permanently deleted.
  final pulumi.Input<String>? expireTime;
  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String>? generation;
  /// Used to enable/disable IAP for the service.
  final pulumi.Input<bool>? iapEnabled;
  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible values are: `INGRESS_TRAFFIC_ALL`, `INGRESS_TRAFFIC_INTERNAL_ONLY`, `INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER`.
  final pulumi.Input<String>? ingress;
  /// Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  final pulumi.Input<bool>? invokerIamDisabled;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Email address of the last authenticated modifier.
  final pulumi.Input<String>? lastModifier;
  /// Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  final pulumi.Input<String>? latestCreatedRevision;
  /// Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  final pulumi.Input<String>? latestReadyRevision;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String>? launchStage;
  /// The location of the cloud run service
  final pulumi.Input<String>? location;
  /// Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// Structure is documented below.
  final pulumi.Input<ServiceMultiRegionSettings>? multiRegionSettings;
  /// Name of the Service.
  final pulumi.Input<String>? name;
  /// The generation of this Service currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String>? observedGeneration;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Returns true if the Service is currently being acted upon by the system to bring it into the desired state.
  /// When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration, latest_ready_revison, trafficStatuses, and uri will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: traffic and trafficStatuses, observedGeneration and generation, latestReadyRevision and latestCreatedRevision.
  /// If reconciliation failed, trafficStatuses, observedGeneration, and latestReadyRevision will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in terminalCondition and conditions.
  final pulumi.Input<bool>? reconciling;
  /// Scaling settings that apply to the whole service
  /// Structure is documented below.
  final pulumi.Input<ServiceScaling>? scaling;
  /// The template used to create revisions for this Service.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplate>? template;
  /// The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTerminalCondition>>? terminalConditions;
  /// Detailed status information for corresponding traffic targets. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTrafficStatus>>? trafficStatuses;
  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTraffic>>? traffics;
  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String>? uid;
  /// The last-modified time.
  final pulumi.Input<String>? updateTime;
  /// (Output)
  /// Displays the target URI.
  final pulumi.Input<String>? uri;
  /// All URLs serving traffic for this Service.
  final pulumi.Input<List<String>>? urls;

  /// Creates a new [ServiceState].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [buildConfig] Configuration for building a Cloud Run function.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [conditions] The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [createTime] The creation time.
  /// [creator] Email address of the authenticated creator.
  /// [customAudiences] One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// [defaultUriDisabled] Disables public resolution of the default URI of this service.
  /// [deleteTime] The deletion time.
  /// [deletionProtection] Optional.
  /// [description] User-provided description of the Service. This field currently has a 512-character limit.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  /// [expireTime] For a deleted resource, the time after which it will be permanently deleted.
  /// [generation] A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [iapEnabled] Used to enable/disable IAP for the service.
  /// [ingress] Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [invokerIamDisabled] Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [lastModifier] Email address of the last authenticated modifier.
  /// [latestCreatedRevision] Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [latestReadyRevision] Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// [location] The location of the cloud run service
  /// [multiRegionSettings] Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// [name] Name of the Service.
  /// [observedGeneration] The generation of this Service currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Returns true if the Service is currently being acted upon by the system to bring it into the desired state.
  /// [scaling] Scaling settings that apply to the whole service
  /// [template] The template used to create revisions for this Service.
  /// [terminalConditions] The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [trafficStatuses] Detailed status information for corresponding traffic targets. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [traffics] Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  /// [uid] Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  /// [uri] (Output)
  /// [urls] All URLs serving traffic for this Service.
  ServiceState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<ServiceBinaryAuthorization>? binaryAuthorization,
    pulumi.Output<ServiceBuildConfig>? buildConfig,
    pulumi.Output<String>? client,
    pulumi.Output<String>? clientVersion,
    pulumi.Output<List<ServiceCondition>>? conditions,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creator,
    pulumi.Output<List<String>>? customAudiences,
    pulumi.Output<bool>? defaultUriDisabled,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? generation,
    pulumi.Output<bool>? iapEnabled,
    pulumi.Output<String>? ingress,
    pulumi.Output<bool>? invokerIamDisabled,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lastModifier,
    pulumi.Output<String>? latestCreatedRevision,
    pulumi.Output<String>? latestReadyRevision,
    pulumi.Output<String>? launchStage,
    pulumi.Output<String>? location,
    pulumi.Output<ServiceMultiRegionSettings>? multiRegionSettings,
    pulumi.Output<String>? name,
    pulumi.Output<String>? observedGeneration,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<ServiceScaling>? scaling,
    pulumi.Output<ServiceTemplate>? template,
    pulumi.Output<List<ServiceTerminalCondition>>? terminalConditions,
    pulumi.Output<List<ServiceTrafficStatus>>? trafficStatuses,
    pulumi.Output<List<ServiceTraffic>>? traffics,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? uri,
    pulumi.Output<List<String>>? urls,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      binaryAuthorization = pulumi.Input.asOptionalInput<ServiceBinaryAuthorization>(binaryAuthorization),
      buildConfig = pulumi.Input.asOptionalInput<ServiceBuildConfig>(buildConfig),
      client = pulumi.Input.asOptionalInput<String>(client),
      clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
      conditions = pulumi.Input.asOptionalInput<List<ServiceCondition>>(conditions),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creator = pulumi.Input.asOptionalInput<String>(creator),
      customAudiences = pulumi.Input.asOptionalInput<List<String>>(customAudiences),
      defaultUriDisabled = pulumi.Input.asOptionalInput<bool>(defaultUriDisabled),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      generation = pulumi.Input.asOptionalInput<String>(generation),
      iapEnabled = pulumi.Input.asOptionalInput<bool>(iapEnabled),
      ingress = pulumi.Input.asOptionalInput<String>(ingress),
      invokerIamDisabled = pulumi.Input.asOptionalInput<bool>(invokerIamDisabled),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lastModifier = pulumi.Input.asOptionalInput<String>(lastModifier),
      latestCreatedRevision = pulumi.Input.asOptionalInput<String>(latestCreatedRevision),
      latestReadyRevision = pulumi.Input.asOptionalInput<String>(latestReadyRevision),
      launchStage = pulumi.Input.asOptionalInput<String>(launchStage),
      location = pulumi.Input.asOptionalInput<String>(location),
      multiRegionSettings = pulumi.Input.asOptionalInput<ServiceMultiRegionSettings>(multiRegionSettings),
      name = pulumi.Input.asOptionalInput<String>(name),
      observedGeneration = pulumi.Input.asOptionalInput<String>(observedGeneration),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      scaling = pulumi.Input.asOptionalInput<ServiceScaling>(scaling),
      template = pulumi.Input.asOptionalInput<ServiceTemplate>(template),
      terminalConditions = pulumi.Input.asOptionalInput<List<ServiceTerminalCondition>>(terminalConditions),
      trafficStatuses = pulumi.Input.asOptionalInput<List<ServiceTrafficStatus>>(trafficStatuses),
      traffics = pulumi.Input.asOptionalInput<List<ServiceTraffic>>(traffics),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      urls = pulumi.Input.asOptionalInput<List<String>>(urls);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<ServiceBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<ServiceBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ServiceCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ServiceCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creator': ?creator,
      'customAudiences': ?customAudiences,
      'defaultUriDisabled': ?defaultUriDisabled,
      'deleteTime': ?deleteTime,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'iapEnabled': ?iapEnabled,
      'ingress': ?ingress,
      'invokerIamDisabled': ?invokerIamDisabled,
      'labels': ?labels,
      'lastModifier': ?lastModifier,
      'latestCreatedRevision': ?latestCreatedRevision,
      'latestReadyRevision': ?latestReadyRevision,
      'launchStage': ?launchStage,
      'location': ?location,
      'multiRegionSettings': ?pulumi.Input.mapOptionalInputValue<ServiceMultiRegionSettings, Map<String, dynamic>>(multiRegionSettings, (value) => value.toMap()),
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'scaling': ?pulumi.Input.mapOptionalInputValue<ServiceScaling, Map<String, dynamic>>(scaling, (value) => value.toMap()),
      'template': ?pulumi.Input.mapOptionalInputValue<ServiceTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'terminalConditions': ?pulumi.Input.mapOptionalInputValue<List<ServiceTerminalCondition>, List<Map<String, dynamic>>>(terminalConditions, (value) => pulumi.Input.encodeList<ServiceTerminalCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trafficStatuses': ?pulumi.Input.mapOptionalInputValue<List<ServiceTrafficStatus>, List<Map<String, dynamic>>>(trafficStatuses, (value) => pulumi.Input.encodeList<ServiceTrafficStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'traffics': ?pulumi.Input.mapOptionalInputValue<List<ServiceTraffic>, List<Map<String, dynamic>>>(traffics, (value) => pulumi.Input.encodeList<ServiceTraffic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'uri': ?uri,
      'urls': ?urls,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<ServiceBinaryAuthorization>(ServiceBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      buildConfig: map['buildConfig'] == null ? null : pulumi.Output.create<ServiceBuildConfig>(ServiceBuildConfig.fromMap((map['buildConfig'] as Map).cast<String, dynamic>())),
      client: map['client'] == null ? null : pulumi.Output.create<String>(map['client'] as String),
      clientVersion: map['clientVersion'] == null ? null : pulumi.Output.create<String>(map['clientVersion'] as String),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<ServiceCondition>>(pulumi.Input.decodeList<ServiceCondition>(map['conditions'], (value) => ServiceCondition.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creator: map['creator'] == null ? null : pulumi.Output.create<String>(map['creator'] as String),
      customAudiences: map['customAudiences'] == null ? null : pulumi.Output.create<List<String>>((map['customAudiences'] as List).cast<String>()),
      defaultUriDisabled: map['defaultUriDisabled'] == null ? null : pulumi.Output.create<bool>(map['defaultUriDisabled'] as bool),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      generation: map['generation'] == null ? null : pulumi.Output.create<String>(map['generation'] as String),
      iapEnabled: map['iapEnabled'] == null ? null : pulumi.Output.create<bool>(map['iapEnabled'] as bool),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<String>(map['ingress'] as String),
      invokerIamDisabled: map['invokerIamDisabled'] == null ? null : pulumi.Output.create<bool>(map['invokerIamDisabled'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lastModifier: map['lastModifier'] == null ? null : pulumi.Output.create<String>(map['lastModifier'] as String),
      latestCreatedRevision: map['latestCreatedRevision'] == null ? null : pulumi.Output.create<String>(map['latestCreatedRevision'] as String),
      latestReadyRevision: map['latestReadyRevision'] == null ? null : pulumi.Output.create<String>(map['latestReadyRevision'] as String),
      launchStage: map['launchStage'] == null ? null : pulumi.Output.create<String>(map['launchStage'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multiRegionSettings: map['multiRegionSettings'] == null ? null : pulumi.Output.create<ServiceMultiRegionSettings>(ServiceMultiRegionSettings.fromMap((map['multiRegionSettings'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      observedGeneration: map['observedGeneration'] == null ? null : pulumi.Output.create<String>(map['observedGeneration'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      scaling: map['scaling'] == null ? null : pulumi.Output.create<ServiceScaling>(ServiceScaling.fromMap((map['scaling'] as Map).cast<String, dynamic>())),
      template: map['template'] == null ? null : pulumi.Output.create<ServiceTemplate>(ServiceTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())),
      terminalConditions: map['terminalConditions'] == null ? null : pulumi.Output.create<List<ServiceTerminalCondition>>(pulumi.Input.decodeList<ServiceTerminalCondition>(map['terminalConditions'], (value) => ServiceTerminalCondition.fromMap((value as Map).cast<String, dynamic>()))),
      trafficStatuses: map['trafficStatuses'] == null ? null : pulumi.Output.create<List<ServiceTrafficStatus>>(pulumi.Input.decodeList<ServiceTrafficStatus>(map['trafficStatuses'], (value) => ServiceTrafficStatus.fromMap((value as Map).cast<String, dynamic>()))),
      traffics: map['traffics'] == null ? null : pulumi.Output.create<List<ServiceTraffic>>(pulumi.Input.decodeList<ServiceTraffic>(map['traffics'], (value) => ServiceTraffic.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      urls: map['urls'] == null ? null : pulumi.Output.create<List<String>>((map['urls'] as List).cast<String>()),
    );
  }
}

