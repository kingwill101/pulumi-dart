// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_binary_authorization.dart';
import 'service_build_config.dart';
import 'service_multi_region_settings.dart';
import 'service_scaling.dart';
import 'service_template.dart';
import 'service_traffic.dart';

/// {@template pulumi_cloudrunv2_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_cloudrunv2_service_service_args_doc}
class ServiceArgs {
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
  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  final pulumi.Input<List<String>>? customAudiences;
  /// Disables public resolution of the default URI of this service.
  final pulumi.Input<bool>? defaultUriDisabled;
  final pulumi.Input<bool>? deletionProtection;
  /// User-provided description of the Service. This field currently has a 512-character limit.
  final pulumi.Input<String>? description;
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
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String>? launchStage;
  /// The location of the cloud run service
  final pulumi.Input<String> location;
  /// Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// Structure is documented below.
  final pulumi.Input<ServiceMultiRegionSettings>? multiRegionSettings;
  /// Name of the Service.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Scaling settings that apply to the whole service
  /// Structure is documented below.
  final pulumi.Input<ServiceScaling>? scaling;
  /// The template used to create revisions for this Service.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplate> template;
  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTraffic>>? traffics;

  /// Creates a new [ServiceArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [buildConfig] Configuration for building a Cloud Run function.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [customAudiences] One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// [defaultUriDisabled] Disables public resolution of the default URI of this service.
  /// [deletionProtection] Optional.
  /// [description] User-provided description of the Service. This field currently has a 512-character limit.
  /// [iapEnabled] Used to enable/disable IAP for the service.
  /// [ingress] Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [invokerIamDisabled] Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// [location] The location of the cloud run service
  /// [multiRegionSettings] Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// [name] Name of the Service.
  /// [project] The ID of the project in which the resource belongs.
  /// [scaling] Scaling settings that apply to the whole service
  /// [template] The template used to create revisions for this Service.
  /// [traffics] Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  ServiceArgs({
    this.annotations,
    this.binaryAuthorization,
    this.buildConfig,
    this.client,
    this.clientVersion,
    this.customAudiences,
    this.defaultUriDisabled,
    this.deletionProtection,
    this.description,
    this.iapEnabled,
    this.ingress,
    this.invokerIamDisabled,
    this.labels,
    this.launchStage,
    required this.location,
    this.multiRegionSettings,
    this.name,
    this.project,
    this.scaling,
    required this.template,
    this.traffics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<ServiceBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<ServiceBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'customAudiences': ?customAudiences,
      'defaultUriDisabled': ?defaultUriDisabled,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'iapEnabled': ?iapEnabled,
      'ingress': ?ingress,
      'invokerIamDisabled': ?invokerIamDisabled,
      'labels': ?labels,
      'launchStage': ?launchStage,
      'location': location,
      'multiRegionSettings': ?pulumi.Input.mapOptionalInputValue<ServiceMultiRegionSettings, Map<String, dynamic>>(multiRegionSettings, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'scaling': ?pulumi.Input.mapOptionalInputValue<ServiceScaling, Map<String, dynamic>>(scaling, (value) => value.toMap()),
      'template': pulumi.Input.mapInputValue<ServiceTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'traffics': ?pulumi.Input.mapOptionalInputValue<List<ServiceTraffic>, List<Map<String, dynamic>>>(traffics, (value) => pulumi.Input.encodeList<ServiceTraffic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : (ServiceBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())).input(),
      buildConfig: map['buildConfig'] == null ? null : (ServiceBuildConfig.fromMap((map['buildConfig'] as Map).cast<String, dynamic>())).input(),
      client: map['client'] == null ? null : (map['client'] as String).input(),
      clientVersion: map['clientVersion'] == null ? null : (map['clientVersion'] as String).input(),
      customAudiences: map['customAudiences'] == null ? null : ((map['customAudiences'] as List).cast<String>()).input(),
      defaultUriDisabled: map['defaultUriDisabled'] == null ? null : (map['defaultUriDisabled'] as bool).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      iapEnabled: map['iapEnabled'] == null ? null : (map['iapEnabled'] as bool).input(),
      ingress: map['ingress'] == null ? null : (map['ingress'] as String).input(),
      invokerIamDisabled: map['invokerIamDisabled'] == null ? null : (map['invokerIamDisabled'] as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      launchStage: map['launchStage'] == null ? null : (map['launchStage'] as String).input(),
      location: (map['location'] as String).input(),
      multiRegionSettings: map['multiRegionSettings'] == null ? null : (ServiceMultiRegionSettings.fromMap((map['multiRegionSettings'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scaling: map['scaling'] == null ? null : (ServiceScaling.fromMap((map['scaling'] as Map).cast<String, dynamic>())).input(),
      template: (ServiceTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())).input(),
      traffics: map['traffics'] == null ? null : (pulumi.Input.decodeList<ServiceTraffic>(map['traffics'], (value) => ServiceTraffic.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

