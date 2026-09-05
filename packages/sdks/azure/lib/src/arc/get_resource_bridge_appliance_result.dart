// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_bridge_appliance_identity.dart';

/// Result data returned by getResourceBridgeAppliance.
class GetResourceBridgeApplianceResult {
  /// Fabric/Infrastructure for this Arc Resource Bridge Appliance.
  final String? distro;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetResourceBridgeApplianceIdentity>? identities;
  /// The infrastructure provider about the connected Arc Resource Bridge Appliance.
  final String? infrastructureProvider;
  /// The Azure Region where the Arc Resource Bridge Appliance exists.
  final String? location;
  final String? name;
  /// RSA public key in PKCS1 format encoded in base64.
  final String? publicKeyBase64;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Arc Resource Bridge Appliance.
  final Map<String, String>? tags;

  /// Creates a new [GetResourceBridgeApplianceResult].
  /// [distro] Fabric/Infrastructure for this Arc Resource Bridge Appliance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [infrastructureProvider] The infrastructure provider about the connected Arc Resource Bridge Appliance.
  /// [location] The Azure Region where the Arc Resource Bridge Appliance exists.
  /// [name] Optional.
  /// [publicKeyBase64] RSA public key in PKCS1 format encoded in base64.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Arc Resource Bridge Appliance.
  const GetResourceBridgeApplianceResult({
    this.distro,
    this.id,
    this.identities,
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
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourceBridgeApplianceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'infrastructureProvider': ?infrastructureProvider,
      'location': ?location,
      'name': ?name,
      'publicKeyBase64': ?publicKeyBase64,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetResourceBridgeApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceBridgeApplianceResult(
      distro: (() { final guardedValue = map['distro']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourceBridgeApplianceIdentity>(guardedValue, (value) => GetResourceBridgeApplianceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      infrastructureProvider: (() { final guardedValue = map['infrastructureProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyBase64: (() { final guardedValue = map['publicKeyBase64']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
