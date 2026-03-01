// ignore_for_file: unused_element, unnecessary_cast

import 'iptraffic.dart';

/// Represents the Reachability Analysis Intent properties.
class ReachabilityAnalysisIntentProperties {
  final String? description;
  /// Destination resource id to verify the reachability path of.
  final String destinationResourceId;
  /// IP traffic information.
  final IPTraffic ipTraffic;
  /// Source resource id to verify the reachability path of.
  final String sourceResourceId;

  /// Creates a new [ReachabilityAnalysisIntentProperties].
  /// [description] Optional.
  /// [destinationResourceId] Destination resource id to verify the reachability path of.
  /// [ipTraffic] IP traffic information.
  /// [sourceResourceId] Source resource id to verify the reachability path of.
  ReachabilityAnalysisIntentProperties({
    this.description,
    required this.destinationResourceId,
    required this.ipTraffic,
    required this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationResourceId': destinationResourceId,
      'ipTraffic': ipTraffic.toMap(),
      'sourceResourceId': sourceResourceId,
    };
  }

  factory ReachabilityAnalysisIntentProperties.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisIntentProperties(
      description: map['description'] == null ? null : map['description'] as String,
      destinationResourceId: map['destinationResourceId'] as String,
      ipTraffic: IPTraffic.fromMap((map['ipTraffic'] as Map).cast<String, dynamic>()),
      sourceResourceId: map['sourceResourceId'] as String,
    );
  }
}

