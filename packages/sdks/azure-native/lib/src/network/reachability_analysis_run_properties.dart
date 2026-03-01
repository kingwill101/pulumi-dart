// ignore_for_file: unused_element, unnecessary_cast


/// Represents the Reachability Analysis Run properties.
class ReachabilityAnalysisRunProperties {
  final String? description;
  /// Id of the intent resource to run analysis on.
  final String intentId;

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
      description: map['description'] == null ? null : map['description'] as String,
      intentId: map['intentId'] as String,
    );
  }
}

