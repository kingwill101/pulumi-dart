// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization_response.dart';
import 'google_cloud_run_v2_condition_response.dart';
import 'google_cloud_run_v2_revision_template_response.dart';
import 'google_cloud_run_v2_service_scaling_response.dart';
import 'google_cloud_run_v2_traffic_target_response.dart';
import 'google_cloud_run_v2_traffic_target_status_response.dart';

/// Result data returned by getService.
class GetServiceRunV2Result {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String>? annotations;
  /// Settings for the Binary Authorization feature.
  final GoogleCloudRunV2BinaryAuthorizationResponse? binaryAuthorization;
  /// Arbitrary identifier for the API client.
  final String? client;
  /// Arbitrary version identifier for the API client.
  final String? clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  final List<GoogleCloudRunV2ConditionResponse>? conditions;
  /// The creation time.
  final String? createTime;
  /// Email address of the authenticated creator.
  final String? creator;
  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  final List<String>? customAudiences;
  /// The deletion time.
  final String? deleteTime;
  /// User-provided description of the Service. This field currently has a 512-character limit.
  final String? description;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  final String? etag;
  /// For a deleted resource, the time after which it will be permamently deleted.
  final String? expireTime;
  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  final String? generation;
  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  final String? ingress;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  final Map<String, String>? labels;
  /// Email address of the last authenticated modifier.
  final String? lastModifier;
  /// Name of the last created revision. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  final String? latestCreatedRevision;
  /// Name of the latest revision that is serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  final String? latestReadyRevision;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final String? launchStage;
  /// The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  final String? name;
  /// The generation of this Service currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  final String? observedGeneration;
  /// Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation`, `latest_ready_revison`, `traffic_statuses`, and `uri` will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `traffic` and `traffic_statuses`, `observed_generation` and `generation`, `latest_ready_revision` and `latest_created_revision`. If reconciliation failed, `traffic_statuses`, `observed_generation`, and `latest_ready_revision` will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  final bool? reconciling;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// Optional. Specifies service-level scaling settings
  final GoogleCloudRunV2ServiceScalingResponse? scaling;
  /// The template used to create revisions for this Service.
  final GoogleCloudRunV2RevisionTemplateResponse? template;
  /// The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  final GoogleCloudRunV2ConditionResponse? terminalCondition;
  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  final List<GoogleCloudRunV2TrafficTargetResponse>? traffic;
  /// Detailed status information for corresponding traffic targets. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  final List<GoogleCloudRunV2TrafficTargetStatusResponse>? trafficStatuses;
  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final String? uid;
  /// The last-modified time.
  final String? updateTime;
  /// The main URI in which this Service is serving traffic.
  final String? uri;

  /// Creates a new [GetServiceRunV2Result].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [conditions] The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  /// [createTime] The creation time.
  /// [creator] Email address of the authenticated creator.
  /// [customAudiences] One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  /// [deleteTime] The deletion time.
  /// [description] User-provided description of the Service. This field currently has a 512-character limit.
  /// [etag] A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  /// [expireTime] For a deleted resource, the time after which it will be permamently deleted.
  /// [generation] A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  /// [ingress] Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  /// [lastModifier] Email address of the last authenticated modifier.
  /// [latestCreatedRevision] Name of the last created revision. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  /// [latestReadyRevision] Name of the latest revision that is serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// [name] The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  /// [observedGeneration] The generation of this Service currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  /// [reconciling] Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation`, `latest_ready_revison`, `traffic_statuses`, and `uri` will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `traffic` and `traffic_statuses`, `observed_generation` and `generation`, `latest_ready_revision` and `latest_created_revision`. If reconciliation failed, `traffic_statuses`, `observed_generation`, and `latest_ready_revision` will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  /// [satisfiesPzs] Reserved for future use.
  /// [scaling] Optional. Specifies service-level scaling settings
  /// [template] The template used to create revisions for this Service.
  /// [terminalCondition] The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  /// [traffic] Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  /// [trafficStatuses] Detailed status information for corresponding traffic targets. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  /// [uid] Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  /// [uri] The main URI in which this Service is serving traffic.
  const GetServiceRunV2Result({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.customAudiences,
    this.deleteTime,
    this.description,
    this.etag,
    this.expireTime,
    this.generation,
    this.ingress,
    this.labels,
    this.lastModifier,
    this.latestCreatedRevision,
    this.latestReadyRevision,
    this.launchStage,
    this.name,
    this.observedGeneration,
    this.reconciling,
    this.satisfiesPzs,
    this.scaling,
    this.template,
    this.terminalCondition,
    this.traffic,
    this.trafficStatuses,
    this.uid,
    this.updateTime,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization': ?binaryAuthorization?.toMap(),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudRunV2ConditionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'creator': ?creator,
      'customAudiences': ?customAudiences,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'ingress': ?ingress,
      'labels': ?labels,
      'lastModifier': ?lastModifier,
      'latestCreatedRevision': ?latestCreatedRevision,
      'latestReadyRevision': ?latestReadyRevision,
      'launchStage': ?launchStage,
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'reconciling': ?reconciling,
      'satisfiesPzs': ?satisfiesPzs,
      'scaling': ?scaling?.toMap(),
      'template': ?template?.toMap(),
      'terminalCondition': ?terminalCondition?.toMap(),
      'traffic': ?(() { final guardedValue = traffic; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudRunV2TrafficTargetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'trafficStatuses': ?(() { final guardedValue = trafficStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudRunV2TrafficTargetStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'uri': ?uri,
    };
  }

  factory GetServiceRunV2Result.fromMap(Map<String, dynamic> map) {
    return GetServiceRunV2Result(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return GoogleCloudRunV2BinaryAuthorizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudRunV2ConditionResponse>(guardedValue, (value) => GoogleCloudRunV2ConditionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customAudiences: (() { final guardedValue = map['customAudiences']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastModifier: (() { final guardedValue = map['lastModifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestCreatedRevision: (() { final guardedValue = map['latestCreatedRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestReadyRevision: (() { final guardedValue = map['latestReadyRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      scaling: (() { final guardedValue = map['scaling']; if (guardedValue == null) return null; return GoogleCloudRunV2ServiceScalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return GoogleCloudRunV2RevisionTemplateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      terminalCondition: (() { final guardedValue = map['terminalCondition']; if (guardedValue == null) return null; return GoogleCloudRunV2ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      traffic: (() { final guardedValue = map['traffic']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudRunV2TrafficTargetResponse>(guardedValue, (value) => GoogleCloudRunV2TrafficTargetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      trafficStatuses: (() { final guardedValue = map['trafficStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudRunV2TrafficTargetStatusResponse>(guardedValue, (value) => GoogleCloudRunV2TrafficTargetStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
