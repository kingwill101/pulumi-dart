// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutSequenceIgnoredClustersSelector {
  /// The label selector must be a valid CEL (Common Expression Language) expression which
  /// evaluates resource.labels.
  final pulumi.Input<String> labelSelector;

  /// Creates a new [RolloutSequenceIgnoredClustersSelector].
  /// [labelSelector] The label selector must be a valid CEL (Common Expression Language) expression which
  const RolloutSequenceIgnoredClustersSelector({
    required this.labelSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
    };
  }

  factory RolloutSequenceIgnoredClustersSelector.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceIgnoredClustersSelector(
      labelSelector: pulumi.Input.fromValue(map['labelSelector'] as String),
    );
  }
}
