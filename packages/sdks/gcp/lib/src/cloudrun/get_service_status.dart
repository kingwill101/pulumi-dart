// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_status_condition.dart';
import 'get_service_status_traffic.dart';

class GetServiceStatus {
  /// Array of observed Service Conditions, indicating the current ready state of the service.
  final pulumi.Input<List<GetServiceStatusCondition>> conditions;
  /// From ConfigurationStatus. LatestCreatedRevisionName is the last revision that was created
  /// from this Service's Configuration. It might not be ready yet, for that use
  /// LatestReadyRevisionName.
  final pulumi.Input<String> latestCreatedRevisionName;
  /// From ConfigurationStatus. LatestReadyRevisionName holds the name of the latest Revision
  /// stamped out from this Service's Configuration that has had its "Ready" condition become
  /// "True".
  final pulumi.Input<String> latestReadyRevisionName;
  /// ObservedGeneration is the 'Generation' of the Route that was last processed by the
  /// controller.
  ///
  /// Clients polling for completed reconciliation should poll until observedGeneration =
  /// metadata.generation and the Ready condition's status is True or False.
  final pulumi.Input<int> observedGeneration;
  /// Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// and Configurations
  final pulumi.Input<List<GetServiceStatusTraffic>> traffics;
  /// From RouteStatus. URL holds the url that will distribute traffic over the provided traffic
  /// targets. It generally has the form
  /// https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app
  final pulumi.Input<String> url;

  /// Creates a new [GetServiceStatus].
  /// [conditions] Array of observed Service Conditions, indicating the current ready state of the service.
  /// [latestCreatedRevisionName] From ConfigurationStatus. LatestCreatedRevisionName is the last revision that was created
  /// [latestReadyRevisionName] From ConfigurationStatus. LatestReadyRevisionName holds the name of the latest Revision
  /// [observedGeneration] ObservedGeneration is the 'Generation' of the Route that was last processed by the
  /// [traffics] Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// [url] From RouteStatus. URL holds the url that will distribute traffic over the provided traffic
  const GetServiceStatus({
    required this.conditions,
    required this.latestCreatedRevisionName,
    required this.latestReadyRevisionName,
    required this.observedGeneration,
    required this.traffics,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GetServiceStatusCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetServiceStatusCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latestCreatedRevisionName': latestCreatedRevisionName,
      'latestReadyRevisionName': latestReadyRevisionName,
      'observedGeneration': observedGeneration,
      'traffics': pulumi.Input.mapInputValue<List<GetServiceStatusTraffic>, List<Map<String, dynamic>>>(traffics, (value) => pulumi.Input.encodeList<GetServiceStatusTraffic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': url,
    };
  }

  factory GetServiceStatus.fromMap(Map<String, dynamic> map) {
    return GetServiceStatus(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceStatusCondition>(map['conditions']!, (value) => GetServiceStatusCondition.fromMap((value as Map).cast<String, dynamic>()))),
      latestCreatedRevisionName: pulumi.Input.fromValue(map['latestCreatedRevisionName'] as String),
      latestReadyRevisionName: pulumi.Input.fromValue(map['latestReadyRevisionName'] as String),
      observedGeneration: pulumi.Input.fromValue(map['observedGeneration'] as int),
      traffics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceStatusTraffic>(map['traffics']!, (value) => GetServiceStatusTraffic.fromMap((value as Map).cast<String, dynamic>()))),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

