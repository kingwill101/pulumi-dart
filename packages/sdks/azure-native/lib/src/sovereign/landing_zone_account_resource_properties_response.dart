// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of landing zone account resource type.
class LandingZoneAccountResourcePropertiesResponse {
  /// The state that reflects the current stage in the creation, updating, or deletion process of the landing zone account.
  final pulumi.Input<String> provisioningState;

  /// The storage account that will host the generated infrastructure as code (IaC) for a landing zone deployment.
  final pulumi.Input<String> storageAccount;

  /// Creates a new [LandingZoneAccountResourcePropertiesResponse].
  /// [provisioningState] The state that reflects the current stage in the creation, updating, or deletion process of the landing zone account.
  /// [storageAccount] The storage account that will host the generated infrastructure as code (IaC) for a landing zone deployment.
  LandingZoneAccountResourcePropertiesResponse({
    required this.provisioningState,
    required this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'storageAccount': storageAccount,
    };
  }

  factory LandingZoneAccountResourcePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LandingZoneAccountResourcePropertiesResponse(
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      storageAccount: pulumi.Input.fromValue(map['storageAccount'] as String),
    );
  }
}
