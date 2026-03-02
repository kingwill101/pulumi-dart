// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addressable_response.dart';
import 'google_cloud_run_v1_condition_response.dart';
import 'traffic_target_response.dart';

/// The current state of the Service. Output only.
class ServiceStatusResponse {
  /// Similar to url, information on where the service is available on HTTP.
  final pulumi.Input<AddressableResponse> address;
  /// Conditions communicate information about ongoing/complete reconciliation processes that bring the `spec` inline with the observed state of the world. Service-specific conditions include: * `ConfigurationsReady`: `True` when the underlying Configuration is ready. * `RoutesReady`: `True` when the underlying Route is ready. * `Ready`: `True` when all underlying resources are ready.
  final pulumi.Input<List<GoogleCloudRunV1ConditionResponse>> conditions;
  /// Name of the last revision that was created from this Service's Configuration. It might not be ready yet, for that use LatestReadyRevisionName.
  final pulumi.Input<String> latestCreatedRevisionName;
  /// Name of the latest Revision from this Service's Configuration that has had its `Ready` condition become `True`.
  final pulumi.Input<String> latestReadyRevisionName;
  /// Returns the generation last seen by the system. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  final pulumi.Input<int> observedGeneration;
  /// Holds the configured traffic distribution. These entries will always contain RevisionName references. When ConfigurationName appears in the spec, this will hold the LatestReadyRevisionName that we last observed.
  final pulumi.Input<List<TrafficTargetResponse>> traffic;
  /// URL that will distribute traffic over the provided traffic targets. It generally has the form `https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app`
  final pulumi.Input<String> url;

  /// Creates a new [ServiceStatusResponse].
  /// [address] Similar to url, information on where the service is available on HTTP.
  /// [conditions] Conditions communicate information about ongoing/complete reconciliation processes that bring the `spec` inline with the observed state of the world. Service-specific conditions include: * `ConfigurationsReady`: `True` when the underlying Configuration is ready. * `RoutesReady`: `True` when the underlying Route is ready. * `Ready`: `True` when all underlying resources are ready.
  /// [latestCreatedRevisionName] Name of the last revision that was created from this Service's Configuration. It might not be ready yet, for that use LatestReadyRevisionName.
  /// [latestReadyRevisionName] Name of the latest Revision from this Service's Configuration that has had its `Ready` condition become `True`.
  /// [observedGeneration] Returns the generation last seen by the system. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  /// [traffic] Holds the configured traffic distribution. These entries will always contain RevisionName references. When ConfigurationName appears in the spec, this will hold the LatestReadyRevisionName that we last observed.
  /// [url] URL that will distribute traffic over the provided traffic targets. It generally has the form `https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app`
  ServiceStatusResponse({
    required this.address,
    required this.conditions,
    required this.latestCreatedRevisionName,
    required this.latestReadyRevisionName,
    required this.observedGeneration,
    required this.traffic,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': pulumi.Input.mapInputValue<AddressableResponse, Map<String, dynamic>>(address, (value) => value.toMap()),
      'conditions': pulumi.Input.mapInputValue<List<GoogleCloudRunV1ConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GoogleCloudRunV1ConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latestCreatedRevisionName': latestCreatedRevisionName,
      'latestReadyRevisionName': latestReadyRevisionName,
      'observedGeneration': observedGeneration,
      'traffic': pulumi.Input.mapInputValue<List<TrafficTargetResponse>, List<Map<String, dynamic>>>(traffic, (value) => pulumi.Input.encodeList<TrafficTargetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': url,
    };
  }

  factory ServiceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServiceStatusResponse(
      address: (AddressableResponse.fromMap((map['address'] as Map).cast<String, dynamic>())).input(),
      conditions: (pulumi.Input.decodeList<GoogleCloudRunV1ConditionResponse>(map['conditions'], (value) => GoogleCloudRunV1ConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      latestCreatedRevisionName: (map['latestCreatedRevisionName'] as String).input(),
      latestReadyRevisionName: (map['latestReadyRevisionName'] as String).input(),
      observedGeneration: (map['observedGeneration'] as int).input(),
      traffic: (pulumi.Input.decodeList<TrafficTargetResponse>(map['traffic'], (value) => TrafficTargetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      url: (map['url'] as String).input(),
    );
  }
}

