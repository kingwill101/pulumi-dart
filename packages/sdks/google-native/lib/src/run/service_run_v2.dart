import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization_response.dart';
import 'google_cloud_run_v2_condition_response.dart';
import 'google_cloud_run_v2_revision_template_response.dart';
import 'google_cloud_run_v2_service_scaling_response.dart';
import 'service_run_v2_args.dart';

/// Creates a new Service in a given project and location.
class ServiceRunV2 extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Settings for the Binary Authorization feature.
  late final pulumi.Output<GoogleCloudRunV2BinaryAuthorizationResponse>
  binaryAuthorization;

  /// Arbitrary identifier for the API client.
  late final pulumi.Output<String> client;

  /// Arbitrary version identifier for the API client.
  late final pulumi.Output<String> clientVersion;

  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;

  /// The creation time.
  late final pulumi.Output<String> createTime;

  /// Email address of the authenticated creator.
  late final pulumi.Output<String> creator;

  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  late final pulumi.Output<List<String>> customAudiences;

  /// The deletion time.
  late final pulumi.Output<String> deleteTime;

  /// User-provided description of the Service. This field currently has a 512-character limit.
  late final pulumi.Output<String> description;

  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final pulumi.Output<String> etag;

  /// For a deleted resource, the time after which it will be permamently deleted.
  late final pulumi.Output<String> expireTime;

  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  late final pulumi.Output<String> generation;

  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  late final pulumi.Output<String> ingress;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  late final pulumi.Output<Map<String, String>> labels;

  /// Email address of the last authenticated modifier.
  late final pulumi.Output<String> lastModifier;

  /// Name of the last created revision. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> latestCreatedRevision;

  /// Name of the latest revision that is serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> latestReadyRevision;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  late final pulumi.Output<String> launchStage;
  late final pulumi.Output<String> location;

  /// The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  late final pulumi.Output<String> name;

  /// The generation of this Service currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  late final pulumi.Output<String> observedGeneration;
  late final pulumi.Output<String> project;

  /// Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation`, `latest_ready_revison`, `traffic_statuses`, and `uri` will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `traffic` and `traffic_statuses`, `observed_generation` and `generation`, `latest_ready_revision` and `latest_created_revision`. If reconciliation failed, `traffic_statuses`, `observed_generation`, and `latest_ready_revision` will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  late final pulumi.Output<bool> reconciling;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Optional. Specifies service-level scaling settings
  late final pulumi.Output<GoogleCloudRunV2ServiceScalingResponse> scaling;

  /// Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}/services/{service_id}.
  late final pulumi.Output<String> serviceId;

  /// The template used to create revisions for this Service.
  late final pulumi.Output<GoogleCloudRunV2RevisionTemplateResponse> template;

  /// The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<GoogleCloudRunV2ConditionResponse> terminalCondition;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  late final pulumi.Output<List<Map<String, dynamic>>> traffic;

  /// Detailed status information for corresponding traffic targets. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<List<Map<String, dynamic>>> trafficStatuses;

  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// The main URI in which this Service is serving traffic.
  late final pulumi.Output<String> uri;

  /// Creates a new [ServiceRunV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceRunV2]. {@macro pulumi_run_v2_service_run_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceRunV2(
    String name, {
    ServiceRunV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:run/v2:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    binaryAuthorization =
        registerOutput<GoogleCloudRunV2BinaryAuthorizationResponse>(
          'binaryAuthorization',
        );
    client = registerOutput<String>('client');
    clientVersion = registerOutput<String>('clientVersion');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    customAudiences = registerOutput<List<String>>('customAudiences');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    ingress = registerOutput<String>('ingress');
    labels = registerOutput<Map<String, String>>('labels');
    lastModifier = registerOutput<String>('lastModifier');
    latestCreatedRevision = registerOutput<String>('latestCreatedRevision');
    latestReadyRevision = registerOutput<String>('latestReadyRevision');
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    scaling = registerOutput<GoogleCloudRunV2ServiceScalingResponse>('scaling');
    serviceId = registerOutput<String>('serviceId');
    template = registerOutput<GoogleCloudRunV2RevisionTemplateResponse>(
      'template',
    );
    terminalCondition = registerOutput<GoogleCloudRunV2ConditionResponse>(
      'terminalCondition',
    );
    traffic = registerOutput<List<Map<String, dynamic>>>('traffic');
    trafficStatuses = registerOutput<List<Map<String, dynamic>>>(
      'trafficStatuses',
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    uri = registerOutput<String>('uri');
  }
}
