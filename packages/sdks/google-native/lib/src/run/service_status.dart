// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addressable.dart';
import 'google_cloud_run_v1_condition.dart';
import 'traffic_target.dart';

/// The current state of the Service. Output only.
class ServiceStatus {
  /// Similar to url, information on where the service is available on HTTP.
  final pulumi.Input<Addressable>? address;

  /// Conditions communicate information about ongoing/complete reconciliation processes that bring the `spec` inline with the observed state of the world. Service-specific conditions include: * `ConfigurationsReady`: `True` when the underlying Configuration is ready. * `RoutesReady`: `True` when the underlying Route is ready. * `Ready`: `True` when all underlying resources are ready.
  final pulumi.Input<List<GoogleCloudRunV1Condition>>? conditions;

  /// Name of the last revision that was created from this Service's Configuration. It might not be ready yet, for that use LatestReadyRevisionName.
  final pulumi.Input<String>? latestCreatedRevisionName;

  /// Name of the latest Revision from this Service's Configuration that has had its `Ready` condition become `True`.
  final pulumi.Input<String>? latestReadyRevisionName;

  /// Returns the generation last seen by the system. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  final pulumi.Input<int>? observedGeneration;

  /// Holds the configured traffic distribution. These entries will always contain RevisionName references. When ConfigurationName appears in the spec, this will hold the LatestReadyRevisionName that we last observed.
  final pulumi.Input<List<TrafficTarget>>? traffic;

  /// URL that will distribute traffic over the provided traffic targets. It generally has the form `https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app`
  final pulumi.Input<String>? url;

  /// Creates a new [ServiceStatus].
  /// [address] Similar to url, information on where the service is available on HTTP.
  /// [conditions] Conditions communicate information about ongoing/complete reconciliation processes that bring the `spec` inline with the observed state of the world. Service-specific conditions include: * `ConfigurationsReady`: `True` when the underlying Configuration is ready. * `RoutesReady`: `True` when the underlying Route is ready. * `Ready`: `True` when all underlying resources are ready.
  /// [latestCreatedRevisionName] Name of the last revision that was created from this Service's Configuration. It might not be ready yet, for that use LatestReadyRevisionName.
  /// [latestReadyRevisionName] Name of the latest Revision from this Service's Configuration that has had its `Ready` condition become `True`.
  /// [observedGeneration] Returns the generation last seen by the system. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  /// [traffic] Holds the configured traffic distribution. These entries will always contain RevisionName references. When ConfigurationName appears in the spec, this will hold the LatestReadyRevisionName that we last observed.
  /// [url] URL that will distribute traffic over the provided traffic targets. It generally has the form `https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app`
  ServiceStatus({
    this.address,
    this.conditions,
    this.latestCreatedRevisionName,
    this.latestReadyRevisionName,
    this.observedGeneration,
    this.traffic,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address':
          ?pulumi.Input.mapOptionalInputValue<
            Addressable,
            Map<String, dynamic>
          >(address, (value) => value.toMap()),
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudRunV1Condition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudRunV1Condition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'latestCreatedRevisionName': ?latestCreatedRevisionName,
      'latestReadyRevisionName': ?latestReadyRevisionName,
      'observedGeneration': ?observedGeneration,
      'traffic':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrafficTarget>,
            List<Map<String, dynamic>>
          >(
            traffic,
            (value) =>
                pulumi.Input.encodeList<TrafficTarget, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'url': ?url,
    };
  }

  factory ServiceStatus.fromMap(Map<String, dynamic> map) {
    return ServiceStatus(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Addressable.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudRunV1Condition>(
            guardedValue,
            (value) => GoogleCloudRunV1Condition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      latestCreatedRevisionName: (() {
        final guardedValue = map['latestCreatedRevisionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      latestReadyRevisionName: (() {
        final guardedValue = map['latestReadyRevisionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      observedGeneration: (() {
        final guardedValue = map['observedGeneration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      traffic: (() {
        final guardedValue = map['traffic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrafficTarget>(
            guardedValue,
            (value) =>
                TrafficTarget.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
