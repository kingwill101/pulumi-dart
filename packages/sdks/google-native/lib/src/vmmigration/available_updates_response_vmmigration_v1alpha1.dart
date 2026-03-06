// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_version_response_vmmigration_v1alpha1.dart';

/// Holds informatiom about the available versions for upgrade.
class AvailableUpdatesResponseVmmigrationV1alpha1 {
  /// The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  final pulumi.Input<ApplianceVersionResponseVmmigrationV1alpha1> inPlaceUpdate;
  /// The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  final pulumi.Input<ApplianceVersionResponseVmmigrationV1alpha1> newDeployableAppliance;

  /// Creates a new [AvailableUpdatesResponseVmmigrationV1alpha1].
  /// [inPlaceUpdate] The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  /// [newDeployableAppliance] The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  const AvailableUpdatesResponseVmmigrationV1alpha1({
    required this.inPlaceUpdate,
    required this.newDeployableAppliance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inPlaceUpdate': pulumi.Input.mapInputValue<ApplianceVersionResponseVmmigrationV1alpha1, Map<String, dynamic>>(inPlaceUpdate, (value) => value.toMap()),
      'newDeployableAppliance': pulumi.Input.mapInputValue<ApplianceVersionResponseVmmigrationV1alpha1, Map<String, dynamic>>(newDeployableAppliance, (value) => value.toMap()),
    };
  }

  factory AvailableUpdatesResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AvailableUpdatesResponseVmmigrationV1alpha1(
      inPlaceUpdate: pulumi.Input.fromValue(ApplianceVersionResponseVmmigrationV1alpha1.fromMap((map['inPlaceUpdate']! as Map).cast<String, dynamic>())),
      newDeployableAppliance: pulumi.Input.fromValue(ApplianceVersionResponseVmmigrationV1alpha1.fromMap((map['newDeployableAppliance']! as Map).cast<String, dynamic>())),
    );
  }
}

