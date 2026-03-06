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
  const ServiceArgs({
    this.appEngine,
    this.basicService,
    this.cloudEndpoints,
    this.cloudRun,
    this.clusterIstio,
    this.custom,
    this.displayName,
    this.gkeNamespace,
    this.gkeService,
    this.gkeWorkload,
    this.istioCanonicalService,
    this.meshIstio,
    this.name,
    this.serviceId,
    this.telemetry,
    this.userLabels,
    required this.v3Id,
    required this.v3Id1,
  });

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
      appEngine: (() { final guardedValue = map['appEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEngine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      basicService: (() { final guardedValue = map['basicService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudEndpoints: (() { final guardedValue = map['cloudEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudRun: (() { final guardedValue = map['cloudRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRun.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterIstio: (() { final guardedValue = map['clusterIstio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterIstio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gkeNamespace: (() { final guardedValue = map['gkeNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeNamespace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeService: (() { final guardedValue = map['gkeService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeWorkload: (() { final guardedValue = map['gkeWorkload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeWorkload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      istioCanonicalService: (() { final guardedValue = map['istioCanonicalService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IstioCanonicalService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      meshIstio: (() { final guardedValue = map['meshIstio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MeshIstio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telemetry: (() { final guardedValue = map['telemetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Telemetry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      v3Id: pulumi.Input.fromValue(map['v3Id'] as String),
      v3Id1: pulumi.Input.fromValue(map['v3Id1'] as String),
    );
  }
}

