// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_bridge_appliance_identity.dart';

/// Input properties used for looking up and filtering ResourceBridgeAppliance resources.
class ResourceBridgeApplianceState {
  /// Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`.
  final pulumi.Input<String>? distro;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ResourceBridgeApplianceIdentity>? identity;
  /// The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? infrastructureProvider;
  /// The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicKeyBase64;
  /// Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Resource Bridge Appliance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceBridgeApplianceState].
  /// [distro] Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`.
  /// [identity] An `identity` block as defined below. Changing this forces a new resource to be created.
  /// [infrastructureProvider] The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created.
  /// [name] The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created.
  /// [publicKeyBase64] The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Arc Resource Bridge Appliance.
  const ResourceBridgeApplianceState({
    this.distro,
    this.identity,
    this.infrastructureProvider,
    this.location,
    this.name,
    this.publicKeyBase64,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distro': ?distro,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceBridgeApplianceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureProvider': ?infrastructureProvider,
      'location': ?location,
      'name': ?name,
      'publicKeyBase64': ?publicKeyBase64,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceBridgeApplianceState.fromMap(Map<String, dynamic> map) {
    return ResourceBridgeApplianceState(
      distro: (() { final guardedValue = map['distro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceBridgeApplianceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureProvider: (() { final guardedValue = map['infrastructureProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyBase64: (() { final guardedValue = map['publicKeyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

