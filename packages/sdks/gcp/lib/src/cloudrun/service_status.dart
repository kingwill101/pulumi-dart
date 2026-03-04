// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_status_condition.dart';
import 'service_status_traffic.dart';

class ServiceStatus {
  /// (Output)
  /// Array of observed Service Conditions, indicating the current ready state of the service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceStatusCondition>>? conditions;

  /// (Output)
  /// From ConfigurationStatus. LatestCreatedRevisionName is the last revision that was created
  /// from this Service's Configuration. It might not be ready yet, for that use
  /// LatestReadyRevisionName.
  final pulumi.Input<String>? latestCreatedRevisionName;

  /// (Output)
  /// From ConfigurationStatus. LatestReadyRevisionName holds the name of the latest Revision
  /// stamped out from this Service's Configuration that has had its "Ready" condition become
  /// "True".
  final pulumi.Input<String>? latestReadyRevisionName;

  /// (Output)
  /// ObservedGeneration is the 'Generation' of the Route that was last processed by the
  /// controller.
  /// Clients polling for completed reconciliation should poll until observedGeneration =
  /// metadata.generation and the Ready condition's status is True or False.
  final pulumi.Input<int>? observedGeneration;

  /// Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// and Configurations
  /// Structure is documented below.
  final pulumi.Input<List<ServiceStatusTraffic>>? traffics;

  /// (Output)
  /// URL displays the URL for accessing tagged traffic targets. URL is displayed in status,
  /// and is disallowed on spec. URL must contain a scheme (e.g. http://) and a hostname,
  /// but may not contain anything else (e.g. basic auth, url path, etc.)
  final pulumi.Input<String>? url;

  /// Creates a new [ServiceStatus].
  /// [conditions] (Output)
  /// [latestCreatedRevisionName] (Output)
  /// [latestReadyRevisionName] (Output)
  /// [observedGeneration] (Output)
  /// [traffics] Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// [url] (Output)
  ServiceStatus({
    this.conditions,
    this.latestCreatedRevisionName,
    this.latestReadyRevisionName,
    this.observedGeneration,
    this.traffics,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceStatusCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceStatusCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'latestCreatedRevisionName': ?latestCreatedRevisionName,
      'latestReadyRevisionName': ?latestReadyRevisionName,
      'observedGeneration': ?observedGeneration,
      'traffics':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceStatusTraffic>,
            List<Map<String, dynamic>>
          >(
            traffics,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceStatusTraffic,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'url': ?url,
    };
  }

  factory ServiceStatus.fromMap(Map<String, dynamic> map) {
    return ServiceStatus(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceStatusCondition>(
            guardedValue,
            (value) => ServiceStatusCondition.fromMap(
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
      traffics: (() {
        final guardedValue = map['traffics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceStatusTraffic>(
            guardedValue,
            (value) => ServiceStatusTraffic.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
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
