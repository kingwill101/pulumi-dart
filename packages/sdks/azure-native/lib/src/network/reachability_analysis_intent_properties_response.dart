// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptraffic_response.dart';

/// Represents the Reachability Analysis Intent properties.
class ReachabilityAnalysisIntentPropertiesResponse {
  final pulumi.Input<String>? description;

  /// Destination resource id to verify the reachability path of.
  final pulumi.Input<String> destinationResourceId;

  /// IP traffic information.
  final pulumi.Input<IPTrafficResponse> ipTraffic;

  /// Provisioning states of a resource.
  final pulumi.Input<String> provisioningState;

  /// Source resource id to verify the reachability path of.
  final pulumi.Input<String> sourceResourceId;

  /// Creates a new [ReachabilityAnalysisIntentPropertiesResponse].
  /// [description] Optional.
  /// [destinationResourceId] Destination resource id to verify the reachability path of.
  /// [ipTraffic] IP traffic information.
  /// [provisioningState] Provisioning states of a resource.
  /// [sourceResourceId] Source resource id to verify the reachability path of.
  ReachabilityAnalysisIntentPropertiesResponse({
    this.description,
    required this.destinationResourceId,
    required this.ipTraffic,
    required this.provisioningState,
    required this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationResourceId': destinationResourceId,
      'ipTraffic':
          pulumi.Input.mapInputValue<IPTrafficResponse, Map<String, dynamic>>(
            ipTraffic,
            (value) => value.toMap(),
          ),
      'provisioningState': provisioningState,
      'sourceResourceId': sourceResourceId,
    };
  }

  factory ReachabilityAnalysisIntentPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReachabilityAnalysisIntentPropertiesResponse(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationResourceId: pulumi.Input.fromValue(
        map['destinationResourceId'] as String,
      ),
      ipTraffic: pulumi.Input.fromValue(
        IPTrafficResponse.fromMap(
          (map['ipTraffic']! as Map).cast<String, dynamic>(),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      sourceResourceId: pulumi.Input.fromValue(
        map['sourceResourceId'] as String,
      ),
    );
  }
}
