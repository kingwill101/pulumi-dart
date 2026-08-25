// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_destination_cloud_run_service.dart';
import 'trigger_destination_gke.dart';
import 'trigger_destination_http_endpoint.dart';
import 'trigger_destination_network_config.dart';

class TriggerDestination {
  /// (Output)
  /// The Cloud Function resource name. Only Cloud Functions V2 is supported. Format projects/{project}/locations/{location}/functions/{function} This is a read-only field. [WARNING] Creating Cloud Functions V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  final pulumi.Input<String?>? cloudFunction;
  /// Cloud Run fully-managed service that receives the events. The service should be running in the same project of the trigger.
  /// Structure is documented below.
  final pulumi.Input<TriggerDestinationCloudRunService?>? cloudRunService;
  /// A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  /// Structure is documented below.
  final pulumi.Input<TriggerDestinationGke?>? gke;
  /// An HTTP endpoint destination described by an URI.
  /// Structure is documented below.
  final pulumi.Input<TriggerDestinationHttpEndpoint?>? httpEndpoint;
  /// Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  /// Structure is documented below.
  final pulumi.Input<TriggerDestinationNetworkConfig?>? networkConfig;
  /// The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  final pulumi.Input<String?>? workflow;

  /// Creates a new [TriggerDestination].
  /// [cloudFunction] (Output)
  /// [cloudRunService] Cloud Run fully-managed service that receives the events. The service should be running in the same project of the trigger.
  /// [gke] A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  /// [httpEndpoint] An HTTP endpoint destination described by an URI.
  /// [networkConfig] Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  /// [workflow] The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  const TriggerDestination({
    this.cloudFunction,
    this.cloudRunService,
    this.gke,
    this.httpEndpoint,
    this.networkConfig,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunction': ?cloudFunction,
      'cloudRunService': ?pulumi.Input.mapOptionalInputValue<TriggerDestinationCloudRunService, Map<String, dynamic>>(cloudRunService, (value) => value.toMap()),
      'gke': ?pulumi.Input.mapOptionalInputValue<TriggerDestinationGke, Map<String, dynamic>>(gke, (value) => value.toMap()),
      'httpEndpoint': ?pulumi.Input.mapOptionalInputValue<TriggerDestinationHttpEndpoint, Map<String, dynamic>>(httpEndpoint, (value) => value.toMap()),
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<TriggerDestinationNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'workflow': ?workflow,
    };
  }

  factory TriggerDestination.fromMap(Map<String, dynamic> map) {
    return TriggerDestination(
      cloudFunction: (() { final guardedValue = map['cloudFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudRunService: (() { final guardedValue = map['cloudRunService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerDestinationCloudRunService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gke: (() { final guardedValue = map['gke']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerDestinationGke.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpEndpoint: (() { final guardedValue = map['httpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerDestinationHttpEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerDestinationNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workflow: (() { final guardedValue = map['workflow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
