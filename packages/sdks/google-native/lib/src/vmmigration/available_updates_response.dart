// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_version_response.dart';

/// Holds informatiom about the available versions for upgrade.
class AvailableUpdatesResponse {
  /// The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  final pulumi.Input<ApplianceVersionResponse> inPlaceUpdate;
  /// The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  final pulumi.Input<ApplianceVersionResponse> newDeployableAppliance;

  /// Creates a new [AvailableUpdatesResponse].
  /// [inPlaceUpdate] The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  /// [newDeployableAppliance] The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  const AvailableUpdatesResponse({
    required this.inPlaceUpdate,
    required this.newDeployableAppliance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inPlaceUpdate': pulumi.Input.mapInputValue<ApplianceVersionResponse, Map<String, dynamic>>(inPlaceUpdate, (value) => value.toMap()),
      'newDeployableAppliance': pulumi.Input.mapInputValue<ApplianceVersionResponse, Map<String, dynamic>>(newDeployableAppliance, (value) => value.toMap()),
    };
  }

  factory AvailableUpdatesResponse.fromMap(Map<String, dynamic> map) {
    return AvailableUpdatesResponse(
      inPlaceUpdate: pulumi.Input.fromValue(ApplianceVersionResponse.fromMap((map['inPlaceUpdate']! as Map).cast<String, dynamic>())),
      newDeployableAppliance: pulumi.Input.fromValue(ApplianceVersionResponse.fromMap((map['newDeployableAppliance']! as Map).cast<String, dynamic>())),
    );
  }
}
