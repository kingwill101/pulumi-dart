// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_virtual_network_appliance_virtual_network_appliance_args_doc}
/// The set of arguments for VirtualNetworkAppliance.
/// {@endtemplate}
/// {@macro pulumi_paloalto_virtual_network_appliance_virtual_network_appliance_args_doc}
class VirtualNetworkApplianceArgs {
  /// The name which should be used for this Palo Alto Local Network Virtual Appliance. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Virtual Hub to deploy this appliance onto. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  ///
  /// &gt; **Note:** THe Virtual Hub must be created with the tag `"hubSaaSPreview" = "true"` to be compatible with this resource.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [VirtualNetworkApplianceArgs].
  /// [name] The name which should be used for this Palo Alto Local Network Virtual Appliance. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  /// [virtualHubId] The ID of the Virtual Hub to deploy this appliance onto. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  const VirtualNetworkApplianceArgs({
    this.name,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'virtualHubId': virtualHubId,
    };
  }

  factory VirtualNetworkApplianceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkApplianceArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualHubId: pulumi.Input.fromValue(map['virtualHubId'] as String),
    );
  }
}
