// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun {
  /// Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  final pulumi.Input<bool>? automaticTrafficControl;
  /// Optional. A list of tags that are added to the canary revision while the canary phase is in progress.
  final pulumi.Input<List<String>>? canaryRevisionTags;
  /// Optional. A list of tags that are added to the prior revision while the canary phase is in progress.
  final pulumi.Input<List<String>>? priorRevisionTags;
  /// Optional. A list of tags that are added to the final stable revision when the stable phase is applied.
  final pulumi.Input<List<String>>? stableRevisionTags;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun].
  /// [automaticTrafficControl] Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  /// [canaryRevisionTags] Optional. A list of tags that are added to the canary revision while the canary phase is in progress.
  /// [priorRevisionTags] Optional. A list of tags that are added to the prior revision while the canary phase is in progress.
  /// [stableRevisionTags] Optional. A list of tags that are added to the final stable revision when the stable phase is applied.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun({
    this.automaticTrafficControl,
    this.canaryRevisionTags,
    this.priorRevisionTags,
    this.stableRevisionTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticTrafficControl': ?automaticTrafficControl,
      'canaryRevisionTags': ?canaryRevisionTags,
      'priorRevisionTags': ?priorRevisionTags,
      'stableRevisionTags': ?stableRevisionTags,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun(
      automaticTrafficControl: (() { final guardedValue = map['automaticTrafficControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      canaryRevisionTags: (() { final guardedValue = map['canaryRevisionTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      priorRevisionTags: (() { final guardedValue = map['priorRevisionTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      stableRevisionTags: (() { final guardedValue = map['stableRevisionTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

