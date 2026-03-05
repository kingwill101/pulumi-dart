import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_response.dart';
import 'basic_service_response.dart';
import 'cloud_endpoints_response.dart';
import 'cloud_run_response.dart';
import 'cluster_istio_response.dart';
import 'gke_namespace_response.dart';
import 'gke_service_response.dart';
import 'gke_workload_response.dart';
import 'istio_canonical_service_response.dart';
import 'mesh_istio_response.dart';
import 'service_args.dart';
import 'telemetry_response.dart';

/// Create a Service.
/// Auto-naming is currently not supported for this resource.
class Service extends pulumi.CustomResource {
  /// Type used for App Engine services.
  late final pulumi.Output<AppEngineResponse> appEngine;

  /// Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  late final pulumi.Output<BasicServiceResponse> basicService;

  /// Type used for Cloud Endpoints services.
  late final pulumi.Output<CloudEndpointsResponse> cloudEndpoints;

  /// Type used for Cloud Run services.
  late final pulumi.Output<CloudRunResponse> cloudRun;

  /// Type used for Istio services that live in a Kubernetes cluster.
  late final pulumi.Output<ClusterIstioResponse> clusterIstio;

  /// Custom service type.
  late final pulumi.Output<Map<String, dynamic>> custom;

  /// Name used for UI elements listing this Service.
  late final pulumi.Output<String> displayName;

  /// Type used for GKE Namespaces.
  late final pulumi.Output<GkeNamespaceResponse> gkeNamespace;

  /// Type used for GKE Services (the Kubernetes concept of a service).
  late final pulumi.Output<GkeServiceResponse> gkeService;

  /// Type used for GKE Workloads.
  late final pulumi.Output<GkeWorkloadResponse> gkeWorkload;

  /// Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)
  late final pulumi.Output<IstioCanonicalServiceResponse> istioCanonicalService;

  /// Type used for Istio services scoped to an Istio mesh.
  late final pulumi.Output<MeshIstioResponse> meshIstio;

  /// Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
  late final pulumi.Output<String> name;

  /// Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\-]+
  late final pulumi.Output<String?> serviceId;

  /// Configuration for how to query telemetry on a Service.
  late final pulumi.Output<TelemetryResponse> telemetry;

  /// Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  late final pulumi.Output<Map<String, String>> userLabels;
  late final pulumi.Output<String> v3Id;
  late final pulumi.Output<String> v3Id1;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_monitoring_v3_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:monitoring/v3:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appEngine = registerOutput<AppEngineResponse>(
      'appEngine',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AppEngineResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    basicService = registerOutput<BasicServiceResponse>(
      'basicService',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BasicServiceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    cloudEndpoints = registerOutput<CloudEndpointsResponse>(
      'cloudEndpoints',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CloudEndpointsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    cloudRun = registerOutput<CloudRunResponse>(
      'cloudRun',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CloudRunResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clusterIstio = registerOutput<ClusterIstioResponse>(
      'clusterIstio',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterIstioResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    custom = registerOutput<Map<String, dynamic>>('custom');
    displayName = registerOutput<String>('displayName');
    gkeNamespace = registerOutput<GkeNamespaceResponse>(
      'gkeNamespace',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GkeNamespaceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gkeService = registerOutput<GkeServiceResponse>(
      'gkeService',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GkeServiceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gkeWorkload = registerOutput<GkeWorkloadResponse>(
      'gkeWorkload',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GkeWorkloadResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    istioCanonicalService = registerOutput<IstioCanonicalServiceResponse>(
      'istioCanonicalService',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IstioCanonicalServiceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    meshIstio = registerOutput<MeshIstioResponse>(
      'meshIstio',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MeshIstioResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    serviceId = registerOutput<String?>('serviceId');
    telemetry = registerOutput<TelemetryResponse>(
      'telemetry',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TelemetryResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    userLabels = registerOutput<Map<String, String>>('userLabels');
    v3Id = registerOutput<String>('v3Id');
    v3Id1 = registerOutput<String>('v3Id1');
  }
}
