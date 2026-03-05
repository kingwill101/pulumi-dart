// ignore_for_file: unused_element, unnecessary_cast

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
import 'telemetry_response.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// Type used for App Engine services.
  final AppEngineResponse appEngine;
  /// Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  final BasicServiceResponse basicService;
  /// Type used for Cloud Endpoints services.
  final CloudEndpointsResponse cloudEndpoints;
  /// Type used for Cloud Run services.
  final CloudRunResponse cloudRun;
  /// Type used for Istio services that live in a Kubernetes cluster.
  final ClusterIstioResponse clusterIstio;
  /// Custom service type.
  final Map<String, dynamic> custom;
  /// Name used for UI elements listing this Service.
  final String displayName;
  /// Type used for GKE Namespaces.
  final GkeNamespaceResponse gkeNamespace;
  /// Type used for GKE Services (the Kubernetes concept of a service).
  final GkeServiceResponse gkeService;
  /// Type used for GKE Workloads.
  final GkeWorkloadResponse gkeWorkload;
  /// Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)
  final IstioCanonicalServiceResponse istioCanonicalService;
  /// Type used for Istio services scoped to an Istio mesh.
  final MeshIstioResponse meshIstio;
  /// Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
  final String name;
  /// Configuration for how to query telemetry on a Service.
  final TelemetryResponse telemetry;
  /// Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  final Map<String, String> userLabels;

  /// Creates a new [GetServiceResult].
  /// [appEngine] Type used for App Engine services.
  /// [basicService] Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  /// [cloudEndpoints] Type used for Cloud Endpoints services.
  /// [cloudRun] Type used for Cloud Run services.
  /// [clusterIstio] Type used for Istio services that live in a Kubernetes cluster.
  /// [custom] Custom service type.
  /// [displayName] Name used for UI elements listing this Service.
  /// [gkeNamespace] Type used for GKE Namespaces.
  /// [gkeService] Type used for GKE Services (the Kubernetes concept of a service).
  /// [gkeWorkload] Type used for GKE Workloads.
  /// [istioCanonicalService] Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)
  /// [meshIstio] Type used for Istio services scoped to an Istio mesh.
  /// [name] Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
  /// [telemetry] Configuration for how to query telemetry on a Service.
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  GetServiceResult({
    required this.appEngine,
    required this.basicService,
    required this.cloudEndpoints,
    required this.cloudRun,
    required this.clusterIstio,
    required this.custom,
    required this.displayName,
    required this.gkeNamespace,
    required this.gkeService,
    required this.gkeWorkload,
    required this.istioCanonicalService,
    required this.meshIstio,
    required this.name,
    required this.telemetry,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngine': appEngine.toMap(),
      'basicService': basicService.toMap(),
      'cloudEndpoints': cloudEndpoints.toMap(),
      'cloudRun': cloudRun.toMap(),
      'clusterIstio': clusterIstio.toMap(),
      'custom': custom,
      'displayName': displayName,
      'gkeNamespace': gkeNamespace.toMap(),
      'gkeService': gkeService.toMap(),
      'gkeWorkload': gkeWorkload.toMap(),
      'istioCanonicalService': istioCanonicalService.toMap(),
      'meshIstio': meshIstio.toMap(),
      'name': name,
      'telemetry': telemetry.toMap(),
      'userLabels': userLabels,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      appEngine: AppEngineResponse.fromMap((map['appEngine']! as Map).cast<String, dynamic>()),
      basicService: BasicServiceResponse.fromMap((map['basicService']! as Map).cast<String, dynamic>()),
      cloudEndpoints: CloudEndpointsResponse.fromMap((map['cloudEndpoints']! as Map).cast<String, dynamic>()),
      cloudRun: CloudRunResponse.fromMap((map['cloudRun']! as Map).cast<String, dynamic>()),
      clusterIstio: ClusterIstioResponse.fromMap((map['clusterIstio']! as Map).cast<String, dynamic>()),
      custom: (map['custom']! as Map).cast<String, dynamic>(),
      displayName: map['displayName'] as String,
      gkeNamespace: GkeNamespaceResponse.fromMap((map['gkeNamespace']! as Map).cast<String, dynamic>()),
      gkeService: GkeServiceResponse.fromMap((map['gkeService']! as Map).cast<String, dynamic>()),
      gkeWorkload: GkeWorkloadResponse.fromMap((map['gkeWorkload']! as Map).cast<String, dynamic>()),
      istioCanonicalService: IstioCanonicalServiceResponse.fromMap((map['istioCanonicalService']! as Map).cast<String, dynamic>()),
      meshIstio: MeshIstioResponse.fromMap((map['meshIstio']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      telemetry: TelemetryResponse.fromMap((map['telemetry']! as Map).cast<String, dynamic>()),
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}

