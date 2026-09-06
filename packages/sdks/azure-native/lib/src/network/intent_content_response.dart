// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptraffic_response.dart';

/// Intent information.
class IntentContentResponse {
  final pulumi.Input<String?>? description;
  /// Destination resource id of the intent.
  final pulumi.Input<String> destinationResourceId;
  /// IP traffic information.
  final pulumi.Input<IPTrafficResponse> ipTraffic;
  /// Source resource id of the intent.
  final pulumi.Input<String> sourceResourceId;

  /// Creates a new [IntentContentResponse].
  /// [description] Optional.
  /// [destinationResourceId] Destination resource id of the intent.
  /// [ipTraffic] IP traffic information.
  /// [sourceResourceId] Source resource id of the intent.
  const IntentContentResponse({
    this.description,
    required this.destinationResourceId,
    required this.ipTraffic,
    required this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationResourceId': destinationResourceId,
      'ipTraffic': pulumi.Input.mapInputValue<IPTrafficResponse, Map<String, dynamic>>(ipTraffic, (value) => value.toMap()),
      'sourceResourceId': sourceResourceId,
    };
  }

  factory IntentContentResponse.fromMap(Map<String, dynamic> map) {
    return IntentContentResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationResourceId: pulumi.Input.fromValue(map['destinationResourceId'] as String),
      ipTraffic: pulumi.Input.fromValue(IPTrafficResponse.fromMap((map['ipTraffic']! as Map).cast<String, dynamic>())),
      sourceResourceId: pulumi.Input.fromValue(map['sourceResourceId'] as String),
    );
  }
}
