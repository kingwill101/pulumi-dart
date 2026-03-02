// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptraffic.dart';

/// Represents the Reachability Analysis Intent properties.
class ReachabilityAnalysisIntentProperties {
  final pulumi.Input<String>? description;
  /// Destination resource id to verify the reachability path of.
  final pulumi.Input<String> destinationResourceId;
  /// IP traffic information.
  final pulumi.Input<IPTraffic> ipTraffic;
  /// Source resource id to verify the reachability path of.
  final pulumi.Input<String> sourceResourceId;

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
      'ipTraffic': pulumi.Input.mapInputValue<IPTraffic, Map<String, dynamic>>(ipTraffic, (value) => value.toMap()),
      'sourceResourceId': sourceResourceId,
    };
  }

  factory ReachabilityAnalysisIntentProperties.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisIntentProperties(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationResourceId: (map['destinationResourceId'] as String).input(),
      ipTraffic: (IPTraffic.fromMap((map['ipTraffic'] as Map).cast<String, dynamic>())).input(),
      sourceResourceId: (map['sourceResourceId'] as String).input(),
    );
  }
}

