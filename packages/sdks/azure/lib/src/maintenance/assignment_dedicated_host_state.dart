// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssignmentDedicatedHost resources.
class AssignmentDedicatedHostState {
  /// Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dedicatedHostId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? maintenanceConfigurationId;

  /// Creates a new [AssignmentDedicatedHostState].
  /// [dedicatedHostId] Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  AssignmentDedicatedHostState({
    this.dedicatedHostId,
    this.location,
    this.maintenanceConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostId': ?dedicatedHostId,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
    };
  }

  factory AssignmentDedicatedHostState.fromMap(Map<String, dynamic> map) {
    return AssignmentDedicatedHostState(
      dedicatedHostId: map['dedicatedHostId'] == null ? null : (map['dedicatedHostId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : (map['maintenanceConfigurationId']! as String).input(),
    );
  }
}

