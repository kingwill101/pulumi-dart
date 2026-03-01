// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine.dart';
import 'basic_service.dart';
import 'cloud_endpoints.dart';
import 'cloud_run.dart';
import 'cluster_istio.dart';
import 'gke_namespace.dart';
import 'gke_service.dart';
import 'gke_workload.dart';
import 'istio_canonical_service.dart';
import 'mesh_istio.dart';
import 'telemetry.dart';

/// {@template pulumi_monitoring_v3_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_service_args_doc}
class ServiceArgs {
  /// Type used for App Engine services.
  final pulumi.Input<AppEngine>? appEngine;
  /// Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  final pulumi.Input<BasicService>? basicService;
  /// Type used for Cloud Endpoints services.
  final pulumi.Input<CloudEndpoints>? cloudEndpoints;
  /// Type used for Cloud Run services.
  final pulumi.Input<CloudRun>? cloudRun;
  /// Type used for Istio services that live in a Kubernetes cluster.
  final pulumi.Input<ClusterIstio>? clusterIstio;
  /// Custom service type.
  final pulumi.Input<Map<String, dynamic>>? custom;
  /// Name used for UI elements listing this Service.
  final pulumi.Input<String>? displayName;
  /// Type used for GKE Namespaces.
  final pulumi.Input<GkeNamespace>? gkeNamespace;
  /// Type used for GKE Services (the Kubernetes concept of a service).
  final pulumi.Input<GkeService>? gkeService;
  /// Type used for GKE Workloads.
  final pulumi.Input<GkeWorkload>? gkeWorkload;
  /// Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)
  final pulumi.Input<IstioCanonicalService>? istioCanonicalService;
  /// Type used for Istio services scoped to an Istio mesh.
  final pulumi.Input<MeshIstio>? meshIstio;
  /// Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
  final pulumi.Input<String>? name;
  /// Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\-]+
  final pulumi.Input<String>? serviceId;
  /// Configuration for how to query telemetry on a Service.
  final pulumi.Input<Telemetry>? telemetry;
  /// Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;

  /// Creates a new [ServiceArgs].
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
  /// [serviceId] Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\-]+
  /// [telemetry] Configuration for how to query telemetry on a Service.
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  /// [v3Id] Required.
  /// [v3Id1] Required.
  ServiceArgs({
    pulumi.Output<AppEngine>? appEngine,
    pulumi.Output<BasicService>? basicService,
    pulumi.Output<CloudEndpoints>? cloudEndpoints,
    pulumi.Output<CloudRun>? cloudRun,
    pulumi.Output<ClusterIstio>? clusterIstio,
    pulumi.Output<Map<String, dynamic>>? custom,
    pulumi.Output<String>? displayName,
    pulumi.Output<GkeNamespace>? gkeNamespace,
    pulumi.Output<GkeService>? gkeService,
    pulumi.Output<GkeWorkload>? gkeWorkload,
    pulumi.Output<IstioCanonicalService>? istioCanonicalService,
    pulumi.Output<MeshIstio>? meshIstio,
    pulumi.Output<String>? name,
    pulumi.Output<String>? serviceId,
    pulumi.Output<Telemetry>? telemetry,
    pulumi.Output<Map<String, String>>? userLabels,
    required pulumi.Output<String> v3Id,
    required pulumi.Output<String> v3Id1,
  }) :
      appEngine = pulumi.Input.asOptionalInput<AppEngine>(appEngine),
      basicService = pulumi.Input.asOptionalInput<BasicService>(basicService),
      cloudEndpoints = pulumi.Input.asOptionalInput<CloudEndpoints>(cloudEndpoints),
      cloudRun = pulumi.Input.asOptionalInput<CloudRun>(cloudRun),
      clusterIstio = pulumi.Input.asOptionalInput<ClusterIstio>(clusterIstio),
      custom = pulumi.Input.asOptionalInput<Map<String, dynamic>>(custom),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gkeNamespace = pulumi.Input.asOptionalInput<GkeNamespace>(gkeNamespace),
      gkeService = pulumi.Input.asOptionalInput<GkeService>(gkeService),
      gkeWorkload = pulumi.Input.asOptionalInput<GkeWorkload>(gkeWorkload),
      istioCanonicalService = pulumi.Input.asOptionalInput<IstioCanonicalService>(istioCanonicalService),
      meshIstio = pulumi.Input.asOptionalInput<MeshIstio>(meshIstio),
      name = pulumi.Input.asOptionalInput<String>(name),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      telemetry = pulumi.Input.asOptionalInput<Telemetry>(telemetry),
      userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(userLabels),
      v3Id = pulumi.Input.asInput<String>(v3Id),
      v3Id1 = pulumi.Input.asInput<String>(v3Id1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngine': ?pulumi.Input.mapOptionalInputValue<AppEngine, Map<String, dynamic>>(appEngine, (value) => value.toMap()),
      'basicService': ?pulumi.Input.mapOptionalInputValue<BasicService, Map<String, dynamic>>(basicService, (value) => value.toMap()),
      'cloudEndpoints': ?pulumi.Input.mapOptionalInputValue<CloudEndpoints, Map<String, dynamic>>(cloudEndpoints, (value) => value.toMap()),
      'cloudRun': ?pulumi.Input.mapOptionalInputValue<CloudRun, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'clusterIstio': ?pulumi.Input.mapOptionalInputValue<ClusterIstio, Map<String, dynamic>>(clusterIstio, (value) => value.toMap()),
      'custom': ?custom,
      'displayName': ?displayName,
      'gkeNamespace': ?pulumi.Input.mapOptionalInputValue<GkeNamespace, Map<String, dynamic>>(gkeNamespace, (value) => value.toMap()),
      'gkeService': ?pulumi.Input.mapOptionalInputValue<GkeService, Map<String, dynamic>>(gkeService, (value) => value.toMap()),
      'gkeWorkload': ?pulumi.Input.mapOptionalInputValue<GkeWorkload, Map<String, dynamic>>(gkeWorkload, (value) => value.toMap()),
      'istioCanonicalService': ?pulumi.Input.mapOptionalInputValue<IstioCanonicalService, Map<String, dynamic>>(istioCanonicalService, (value) => value.toMap()),
      'meshIstio': ?pulumi.Input.mapOptionalInputValue<MeshIstio, Map<String, dynamic>>(meshIstio, (value) => value.toMap()),
      'name': ?name,
      'serviceId': ?serviceId,
      'telemetry': ?pulumi.Input.mapOptionalInputValue<Telemetry, Map<String, dynamic>>(telemetry, (value) => value.toMap()),
      'userLabels': ?userLabels,
      'v3Id': v3Id,
      'v3Id1': v3Id1,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      appEngine: map['appEngine'] == null ? null : pulumi.Output.create<AppEngine>(AppEngine.fromMap((map['appEngine'] as Map).cast<String, dynamic>())),
      basicService: map['basicService'] == null ? null : pulumi.Output.create<BasicService>(BasicService.fromMap((map['basicService'] as Map).cast<String, dynamic>())),
      cloudEndpoints: map['cloudEndpoints'] == null ? null : pulumi.Output.create<CloudEndpoints>(CloudEndpoints.fromMap((map['cloudEndpoints'] as Map).cast<String, dynamic>())),
      cloudRun: map['cloudRun'] == null ? null : pulumi.Output.create<CloudRun>(CloudRun.fromMap((map['cloudRun'] as Map).cast<String, dynamic>())),
      clusterIstio: map['clusterIstio'] == null ? null : pulumi.Output.create<ClusterIstio>(ClusterIstio.fromMap((map['clusterIstio'] as Map).cast<String, dynamic>())),
      custom: map['custom'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['custom'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      gkeNamespace: map['gkeNamespace'] == null ? null : pulumi.Output.create<GkeNamespace>(GkeNamespace.fromMap((map['gkeNamespace'] as Map).cast<String, dynamic>())),
      gkeService: map['gkeService'] == null ? null : pulumi.Output.create<GkeService>(GkeService.fromMap((map['gkeService'] as Map).cast<String, dynamic>())),
      gkeWorkload: map['gkeWorkload'] == null ? null : pulumi.Output.create<GkeWorkload>(GkeWorkload.fromMap((map['gkeWorkload'] as Map).cast<String, dynamic>())),
      istioCanonicalService: map['istioCanonicalService'] == null ? null : pulumi.Output.create<IstioCanonicalService>(IstioCanonicalService.fromMap((map['istioCanonicalService'] as Map).cast<String, dynamic>())),
      meshIstio: map['meshIstio'] == null ? null : pulumi.Output.create<MeshIstio>(MeshIstio.fromMap((map['meshIstio'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      telemetry: map['telemetry'] == null ? null : pulumi.Output.create<Telemetry>(Telemetry.fromMap((map['telemetry'] as Map).cast<String, dynamic>())),
      userLabels: map['userLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['userLabels'] as Map).cast<String, String>()),
      v3Id: pulumi.Output.create<String>(map['v3Id'] as String),
      v3Id1: pulumi.Output.create<String>(map['v3Id1'] as String),
    );
  }
}

