// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkAppliance resources.
class VirtualNetworkApplianceState {
  /// The name which should be used for this Palo Alto Local Network Virtual Appliance. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Virtual Hub to deploy this appliance onto. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  ///
  /// > **Note:** THe Virtual Hub must be created with the tag `"hubSaaSPreview" = "true"` to be compatible with this resource.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [VirtualNetworkApplianceState].
  /// [name] The name which should be used for this Palo Alto Local Network Virtual Appliance. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  /// [virtualHubId] The ID of the Virtual Hub to deploy this appliance onto. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  VirtualNetworkApplianceState({
    this.name,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'virtualHubId': ?virtualHubId,
    };
  }

  factory VirtualNetworkApplianceState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkApplianceState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      virtualHubId: map['virtualHubId'] == null ? null : (map['virtualHubId'] as String).input(),
    );
  }
}

