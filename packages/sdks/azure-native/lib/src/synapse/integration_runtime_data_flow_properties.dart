// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data flow properties for managed integration runtime.
class IntegrationRuntimeDataFlowProperties {
  /// Compute type of the cluster which will execute data flow job.
  final pulumi.Input<String>? computeType;
  /// Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272.
  final pulumi.Input<int>? coreCount;
  /// Time to live (in minutes) setting of the cluster which will execute data flow job.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [IntegrationRuntimeDataFlowProperties].
  /// [computeType] Compute type of the cluster which will execute data flow job.
  /// [coreCount] Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272.
  /// [timeToLive] Time to live (in minutes) setting of the cluster which will execute data flow job.
  IntegrationRuntimeDataFlowProperties({
    this.computeType,
    this.coreCount,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeType': ?computeType,
      'coreCount': ?coreCount,
      'timeToLive': ?timeToLive,
    };
  }

  factory IntegrationRuntimeDataFlowProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeDataFlowProperties(
      computeType: map['computeType'] == null ? null : (map['computeType'] as String).input(),
      coreCount: map['coreCount'] == null ? null : (map['coreCount'] as int).input(),
      timeToLive: map['timeToLive'] == null ? null : (map['timeToLive'] as int).input(),
    );
  }
}

