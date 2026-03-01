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
  ResourceBridgeApplianceState({
    pulumi.Output<String>? distro,
    pulumi.Output<ResourceBridgeApplianceIdentity>? identity,
    pulumi.Output<String>? infrastructureProvider,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicKeyBase64,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      distro = pulumi.Input.asOptionalInput<String>(distro),
      identity = pulumi.Input.asOptionalInput<ResourceBridgeApplianceIdentity>(identity),
      infrastructureProvider = pulumi.Input.asOptionalInput<String>(infrastructureProvider),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKeyBase64 = pulumi.Input.asOptionalInput<String>(publicKeyBase64),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      distro: map['distro'] == null ? null : pulumi.Output.create<String>(map['distro'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceBridgeApplianceIdentity>(ResourceBridgeApplianceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      infrastructureProvider: map['infrastructureProvider'] == null ? null : pulumi.Output.create<String>(map['infrastructureProvider'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKeyBase64: map['publicKeyBase64'] == null ? null : pulumi.Output.create<String>(map['publicKeyBase64'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

