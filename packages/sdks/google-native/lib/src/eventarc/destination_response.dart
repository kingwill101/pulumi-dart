// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_response.dart';
import 'gkeresponse.dart';
import 'http_endpoint_response.dart';
import 'network_config_response.dart';

/// Represents a target of an invocation over HTTP.
class DestinationResponse {
  /// The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  final pulumi.Input<String> cloudFunction;

  /// Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  final pulumi.Input<CloudRunResponse> cloudRun;

  /// A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  final pulumi.Input<GKEResponse> gke;

  /// An HTTP endpoint destination described by an URI.
  final pulumi.Input<HttpEndpointResponse> httpEndpoint;

  /// Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  final pulumi.Input<NetworkConfigResponse> networkConfig;

  /// The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  final pulumi.Input<String> workflow;

  /// Creates a new [DestinationResponse].
  /// [cloudFunction] The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  /// [cloudRun] Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  /// [gke] A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  /// [httpEndpoint] An HTTP endpoint destination described by an URI.
  /// [networkConfig] Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  /// [workflow] The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  DestinationResponse({
    required this.cloudFunction,
    required this.cloudRun,
    required this.gke,
    required this.httpEndpoint,
    required this.networkConfig,
    required this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunction': cloudFunction,
      'cloudRun':
          pulumi.Input.mapInputValue<CloudRunResponse, Map<String, dynamic>>(
            cloudRun,
            (value) => value.toMap(),
          ),
      'gke': pulumi.Input.mapInputValue<GKEResponse, Map<String, dynamic>>(
        gke,
        (value) => value.toMap(),
      ),
      'httpEndpoint':
          pulumi.Input.mapInputValue<
            HttpEndpointResponse,
            Map<String, dynamic>
          >(httpEndpoint, (value) => value.toMap()),
      'networkConfig':
          pulumi.Input.mapInputValue<
            NetworkConfigResponse,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'workflow': workflow,
    };
  }

  factory DestinationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationResponse(
      cloudFunction: pulumi.Input.fromValue(map['cloudFunction'] as String),
      cloudRun: pulumi.Input.fromValue(
        CloudRunResponse.fromMap(
          (map['cloudRun']! as Map).cast<String, dynamic>(),
        ),
      ),
      gke: pulumi.Input.fromValue(
        GKEResponse.fromMap((map['gke']! as Map).cast<String, dynamic>()),
      ),
      httpEndpoint: pulumi.Input.fromValue(
        HttpEndpointResponse.fromMap(
          (map['httpEndpoint']! as Map).cast<String, dynamic>(),
        ),
      ),
      networkConfig: pulumi.Input.fromValue(
        NetworkConfigResponse.fromMap(
          (map['networkConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      workflow: pulumi.Input.fromValue(map['workflow'] as String),
    );
  }
}
