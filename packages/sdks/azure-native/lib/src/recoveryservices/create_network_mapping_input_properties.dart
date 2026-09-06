// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common input details for network mapping operation.
class CreateNetworkMappingInputProperties {
  /// Fabric specific input properties.
  final pulumi.Input<dynamic>? fabricSpecificDetails;
  /// Recovery fabric Name.
  final pulumi.Input<String?>? recoveryFabricName;
  /// Recovery network Id.
  final pulumi.Input<String> recoveryNetworkId;

  /// Creates a new [CreateNetworkMappingInputProperties].
  /// [fabricSpecificDetails] Fabric specific input properties.
  /// [recoveryFabricName] Recovery fabric Name.
  /// [recoveryNetworkId] Recovery network Id.
  const CreateNetworkMappingInputProperties({
    this.fabricSpecificDetails,
    this.recoveryFabricName,
    required this.recoveryNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricSpecificDetails': ?fabricSpecificDetails,
      'recoveryFabricName': ?recoveryFabricName,
      'recoveryNetworkId': recoveryNetworkId,
    };
  }

  factory CreateNetworkMappingInputProperties.fromMap(Map<String, dynamic> map) {
    return CreateNetworkMappingInputProperties(
      fabricSpecificDetails: (() { final guardedValue = map['fabricSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      recoveryFabricName: (() { final guardedValue = map['recoveryFabricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryNetworkId: pulumi.Input.fromValue(map['recoveryNetworkId'] as String),
    );
  }
}
