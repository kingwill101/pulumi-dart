// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization.dart';
import 'google_cloud_run_v2_revision_template.dart';
import 'google_cloud_run_v2_service_scaling.dart';
import 'google_cloud_run_v2_traffic_target.dart';
import 'service_ingress.dart';
import 'service_launch_stage.dart';

/// {@template pulumi_run_v2_service_run_v2_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_run_v2_service_run_v2_args_doc}
class ServiceRunV2Args {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  final pulumi.Input<GoogleCloudRunV2BinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;

  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  final pulumi.Input<List<String>>? customAudiences;

  /// User-provided description of the Service. This field currently has a 512-character limit.
  final pulumi.Input<String>? description;

  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  final pulumi.Input<ServiceIngress>? ingress;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  final pulumi.Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final pulumi.Input<ServiceLaunchStage>? launchStage;
  final pulumi.Input<String>? location;

  /// The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Specifies service-level scaling settings
  final pulumi.Input<GoogleCloudRunV2ServiceScaling>? scaling;

  /// Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}/services/{service_id}.
  final pulumi.Input<String> serviceId;

  /// The template used to create revisions for this Service.
  final pulumi.Input<GoogleCloudRunV2RevisionTemplate> template;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  final pulumi.Input<List<GoogleCloudRunV2TrafficTarget>>? traffic;

  /// Creates a new [ServiceRunV2Args].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [customAudiences] One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  /// [description] User-provided description of the Service. This field currently has a 512-character limit.
  /// [ingress] Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// [location] Optional.
  /// [name] The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  /// [project] Optional.
  /// [scaling] Optional. Specifies service-level scaling settings
  /// [serviceId] Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}/services/{service_id}.
  /// [template] The template used to create revisions for this Service.
  /// [traffic] Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  ServiceRunV2Args({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.customAudiences,
    this.description,
    this.ingress,
    this.labels,
    this.launchStage,
    this.location,
    this.name,
    this.project,
    this.scaling,
    required this.serviceId,
    required this.template,
    this.traffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRunV2BinaryAuthorization,
            Map<String, dynamic>
          >(binaryAuthorization, (value) => value.toMap()),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'customAudiences': ?customAudiences,
      'description': ?description,
      'ingress': ?pulumi.Input.mapOptionalInputValue<ServiceIngress, String>(
        ingress,
        (value) => value.wireValue,
      ),
      'labels': ?labels,
      'launchStage':
          ?pulumi.Input.mapOptionalInputValue<ServiceLaunchStage, String>(
            launchStage,
            (value) => value.wireValue,
          ),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'scaling':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRunV2ServiceScaling,
            Map<String, dynamic>
          >(scaling, (value) => value.toMap()),
      'serviceId': serviceId,
      'template':
          pulumi.Input.mapInputValue<
            GoogleCloudRunV2RevisionTemplate,
            Map<String, dynamic>
          >(template, (value) => value.toMap()),
      'traffic':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudRunV2TrafficTarget>,
            List<Map<String, dynamic>>
          >(
            traffic,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudRunV2TrafficTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ServiceRunV2Args.fromMap(Map<String, dynamic> map) {
    return ServiceRunV2Args(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      binaryAuthorization: (() {
        final guardedValue = map['binaryAuthorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRunV2BinaryAuthorization.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      client: (() {
        final guardedValue = map['client'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientVersion: (() {
        final guardedValue = map['clientVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customAudiences: (() {
        final guardedValue = map['customAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingress: (() {
        final guardedValue = map['ingress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceIngress.fromValue(guardedValue as String),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      launchStage: (() {
        final guardedValue = map['launchStage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceLaunchStage.fromValue(guardedValue as String),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scaling: (() {
        final guardedValue = map['scaling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRunV2ServiceScaling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      template: pulumi.Input.fromValue(
        GoogleCloudRunV2RevisionTemplate.fromMap(
          (map['template']! as Map).cast<String, dynamic>(),
        ),
      ),
      traffic: (() {
        final guardedValue = map['traffic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudRunV2TrafficTarget>(
            guardedValue,
            (value) => GoogleCloudRunV2TrafficTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
