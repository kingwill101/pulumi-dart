// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the Reachability Analysis Run properties.
class ReachabilityAnalysisRunProperties {
  final pulumi.Input<String>? description;
  /// Id of the intent resource to run analysis on.
  final pulumi.Input<String> intentId;

  /// Creates a new [ReachabilityAnalysisRunProperties].
  /// [description] Optional.
  /// [intentId] Id of the intent resource to run analysis on.
  ReachabilityAnalysisRunProperties({
    this.description,
    required this.intentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'intentId': intentId,
    };
  }

  factory ReachabilityAnalysisRunProperties.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisRunProperties(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      intentId: (map['intentId'] as String).input(),
    );
  }
}

