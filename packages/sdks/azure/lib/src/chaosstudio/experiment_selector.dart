// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentSelector {
  /// A list of Chaos Studio Target IDs that should be part of this Selector.
  final pulumi.Input<List<String>> chaosStudioTargetIds;
  /// The name of this Selector.
  final pulumi.Input<String> name;

  /// Creates a new [ExperimentSelector].
  /// [chaosStudioTargetIds] A list of Chaos Studio Target IDs that should be part of this Selector.
  /// [name] The name of this Selector.
  const ExperimentSelector({
    required this.chaosStudioTargetIds,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosStudioTargetIds': chaosStudioTargetIds,
      'name': name,
    };
  }

  factory ExperimentSelector.fromMap(Map<String, dynamic> map) {
    return ExperimentSelector(
      chaosStudioTargetIds: pulumi.Input.fromValue((map['chaosStudioTargetIds'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
