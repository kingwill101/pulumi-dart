// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutSequenceStageClusterSelector {
  /// The label selector must be a valid CEL (Common Expression Language) expression which
  /// evaluates resource.labels.
  final pulumi.Input<String> labelSelector;

  /// Creates a new [RolloutSequenceStageClusterSelector].
  /// [labelSelector] The label selector must be a valid CEL (Common Expression Language) expression which
  RolloutSequenceStageClusterSelector({
    required this.labelSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
    };
  }

  factory RolloutSequenceStageClusterSelector.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceStageClusterSelector(
      labelSelector: (map['labelSelector'] as String).input(),
    );
  }
}

