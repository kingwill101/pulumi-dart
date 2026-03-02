// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_bridge_appliance_identity.dart';

/// {@template pulumi_arc_resource_bridge_appliance_resource_bridge_appliance_args_doc}
/// The set of arguments for ResourceBridgeAppliance.
/// {@endtemplate}
/// {@macro pulumi_arc_resource_bridge_appliance_resource_bridge_appliance_args_doc}
class ResourceBridgeApplianceArgs {
  /// Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`.
  final pulumi.Input<String> distro;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ResourceBridgeApplianceIdentity> identity;
  /// The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created.
  final pulumi.Input<String> infrastructureProvider;
  /// The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicKeyBase64;
  /// Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Resource Bridge Appliance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceBridgeApplianceArgs].
  /// [distro] Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`.
  /// [identity] An `identity` block as defined below. Changing this forces a new resource to be created.
  /// [infrastructureProvider] The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created.
  /// [name] The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created.
  /// [publicKeyBase64] The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Arc Resource Bridge Appliance.
  ResourceBridgeApplianceArgs({
    required this.distro,
    required this.identity,
    required this.infrastructureProvider,
    this.location,
    this.name,
    this.publicKeyBase64,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distro': distro,
      'identity': pulumi.Input.mapInputValue<ResourceBridgeApplianceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureProvider': infrastructureProvider,
      'location': ?location,
      'name': ?name,
      'publicKeyBase64': ?publicKeyBase64,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceBridgeApplianceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceBridgeApplianceArgs(
      distro: (map['distro'] as String).input(),
      identity: (ResourceBridgeApplianceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      infrastructureProvider: (map['infrastructureProvider'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicKeyBase64: map['publicKeyBase64'] == null ? null : (map['publicKeyBase64'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

