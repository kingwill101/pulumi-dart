// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptraffic.dart';

/// Represents the Reachability Analysis Intent properties.
class ReachabilityAnalysisIntentProperties {
  final pulumi.Input<String?>? description;
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
  const ReachabilityAnalysisIntentProperties({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationResourceId: pulumi.Input.fromValue(map['destinationResourceId'] as String),
      ipTraffic: pulumi.Input.fromValue(IPTraffic.fromMap((map['ipTraffic']! as Map).cast<String, dynamic>())),
      sourceResourceId: pulumi.Input.fromValue(map['sourceResourceId'] as String),
    );
  }
}
