// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run.dart';
import 'gke.dart';
import 'http_endpoint.dart';
import 'network_config.dart';

/// Represents a target of an invocation over HTTP.
class Destination {
  /// The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  final pulumi.Input<String>? cloudFunction;
  /// Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  final pulumi.Input<CloudRun>? cloudRun;
  /// A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  final pulumi.Input<GKE>? gke;
  /// An HTTP endpoint destination described by an URI.
  final pulumi.Input<HttpEndpoint>? httpEndpoint;
  /// Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  final pulumi.Input<NetworkConfig>? networkConfig;
  /// The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  final pulumi.Input<String>? workflow;

  /// Creates a new [Destination].
  /// [cloudFunction] The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  /// [cloudRun] Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  /// [gke] A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  /// [httpEndpoint] An HTTP endpoint destination described by an URI.
  /// [networkConfig] Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  /// [workflow] The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  const Destination({
    this.cloudFunction,
    this.cloudRun,
    this.gke,
    this.httpEndpoint,
    this.networkConfig,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunction': ?cloudFunction,
      'cloudRun': ?pulumi.Input.mapOptionalInputValue<CloudRun, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'gke': ?pulumi.Input.mapOptionalInputValue<GKE, Map<String, dynamic>>(gke, (value) => value.toMap()),
      'httpEndpoint': ?pulumi.Input.mapOptionalInputValue<HttpEndpoint, Map<String, dynamic>>(httpEndpoint, (value) => value.toMap()),
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'workflow': ?workflow,
    };
  }

  factory Destination.fromMap(Map<String, dynamic> map) {
    return Destination(
      cloudFunction: (() { final guardedValue = map['cloudFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudRun: (() { final guardedValue = map['cloudRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRun.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gke: (() { final guardedValue = map['gke']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GKE.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpEndpoint: (() { final guardedValue = map['httpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workflow: (() { final guardedValue = map['workflow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

