// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the health policy used to evaluate the health of services belonging to a service type.
class ServiceTypeHealthPolicy {
  /// The maximum allowed percentage of unhealthy partitions per service.
  ///
  /// The percentage represents the maximum tolerated percentage of partitions that can be unhealthy before the service is considered in error.
  /// If the percentage is respected but there is at least one unhealthy partition, the health is evaluated as Warning.
  /// The percentage is calculated by dividing the number of unhealthy partitions over the total number of partitions in the service.
  /// The computation rounds up to tolerate one failure on small numbers of partitions.
  final pulumi.Input<int> maxPercentUnhealthyPartitionsPerService;
  /// The maximum allowed percentage of unhealthy replicas per partition.
  ///
  /// The percentage represents the maximum tolerated percentage of replicas that can be unhealthy before the partition is considered in error.
  /// If the percentage is respected but there is at least one unhealthy replica, the health is evaluated as Warning.
  /// The percentage is calculated by dividing the number of unhealthy replicas over the total number of replicas in the partition.
  /// The computation rounds up to tolerate one failure on small numbers of replicas.
  final pulumi.Input<int> maxPercentUnhealthyReplicasPerPartition;
  /// The maximum allowed percentage of unhealthy services.
  ///
  /// The percentage represents the maximum tolerated percentage of services that can be unhealthy before the application is considered in error.
  /// If the percentage is respected but there is at least one unhealthy service, the health is evaluated as Warning.
  /// This is calculated by dividing the number of unhealthy services of the specific service type over the total number of services of the specific service type.
  /// The computation rounds up to tolerate one failure on small numbers of services.
  final pulumi.Input<int> maxPercentUnhealthyServices;

  /// Creates a new [ServiceTypeHealthPolicy].
  /// [maxPercentUnhealthyPartitionsPerService] The maximum allowed percentage of unhealthy partitions per service.
  /// [maxPercentUnhealthyReplicasPerPartition] The maximum allowed percentage of unhealthy replicas per partition.
  /// [maxPercentUnhealthyServices] The maximum allowed percentage of unhealthy services.
  ServiceTypeHealthPolicy({
    required this.maxPercentUnhealthyPartitionsPerService,
    required this.maxPercentUnhealthyReplicasPerPartition,
    required this.maxPercentUnhealthyServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPercentUnhealthyPartitionsPerService': maxPercentUnhealthyPartitionsPerService,
      'maxPercentUnhealthyReplicasPerPartition': maxPercentUnhealthyReplicasPerPartition,
      'maxPercentUnhealthyServices': maxPercentUnhealthyServices,
    };
  }

  factory ServiceTypeHealthPolicy.fromMap(Map<String, dynamic> map) {
    return ServiceTypeHealthPolicy(
      maxPercentUnhealthyPartitionsPerService: (map['maxPercentUnhealthyPartitionsPerService'] as int).input(),
      maxPercentUnhealthyReplicasPerPartition: (map['maxPercentUnhealthyReplicasPerPartition'] as int).input(),
      maxPercentUnhealthyServices: (map['maxPercentUnhealthyServices'] as int).input(),
    );
  }
}

