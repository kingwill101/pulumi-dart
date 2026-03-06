// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_bridge_appliance_identity.dart';

/// Result data returned by getResourceBridgeAppliance.
class GetResourceBridgeApplianceResult {
  /// Fabric/Infrastructure for this Arc Resource Bridge Appliance.
  final String distro;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetResourceBridgeApplianceIdentity> identities;
  /// The infrastructure provider about the connected Arc Resource Bridge Appliance.
  final String infrastructureProvider;
  /// The Azure Region where the Arc Resource Bridge Appliance exists.
  final String location;
  final String name;
  /// RSA public key in PKCS1 format encoded in base64.
  final String publicKeyBase64;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Arc Resource Bridge Appliance.
  final Map<String, String> tags;

  /// Creates a new [GetResourceBridgeApplianceResult].
  /// [distro] Fabric/Infrastructure for this Arc Resource Bridge Appliance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [infrastructureProvider] The infrastructure provider about the connected Arc Resource Bridge Appliance.
  /// [location] The Azure Region where the Arc Resource Bridge Appliance exists.
  /// [name] Required.
  /// [publicKeyBase64] RSA public key in PKCS1 format encoded in base64.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Arc Resource Bridge Appliance.
  const GetResourceBridgeApplianceResult({
    required this.distro,
    required this.id,
    required this.identities,
    required this.infrastructureProvider,
    required this.location,
    required this.name,
    required this.publicKeyBase64,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distro': distro,
      'id': id,
      'identities': pulumi.Input.encodeList<GetResourceBridgeApplianceIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'infrastructureProvider': infrastructureProvider,
      'location': location,
      'name': name,
      'publicKeyBase64': publicKeyBase64,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetResourceBridgeApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceBridgeApplianceResult(
      distro: map['distro'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetResourceBridgeApplianceIdentity>(map['identities']!, (value) => GetResourceBridgeApplianceIdentity.fromMap((value as Map).cast<String, dynamic>())),
      infrastructureProvider: map['infrastructureProvider'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      publicKeyBase64: map['publicKeyBase64'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

