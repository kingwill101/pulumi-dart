// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hci_cluster_identity.dart';

/// Result data returned by getHciCluster.
class GetHciClusterResult {
  /// The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  final String? automanageConfigurationId;
  /// The Client ID of the Azure Active Directory used by the Azure Stack HCI Cluster.
  final String? clientId;
  /// An immutable UUID for the Azure Stack HCI Cluster.
  final String? cloudId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetHciClusterIdentity>? identities;
  /// The Azure Region where the Azure Stack HCI Cluster exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The object ID of the Resource Provider Service Principal.
  final String? resourceProviderObjectId;
  /// The region specific Data Path Endpoint of the Azure Stack HCI Cluster.
  final String? serviceEndpoint;
  /// A mapping of tags assigned to the Azure Stack HCI Cluster.
  final Map<String, String>? tags;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;

  /// Creates a new [GetHciClusterResult].
  /// [automanageConfigurationId] The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  /// [clientId] The Client ID of the Azure Active Directory used by the Azure Stack HCI Cluster.
  /// [cloudId] An immutable UUID for the Azure Stack HCI Cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Azure Stack HCI Cluster exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [resourceProviderObjectId] The object ID of the Resource Provider Service Principal.
  /// [serviceEndpoint] The region specific Data Path Endpoint of the Azure Stack HCI Cluster.
  /// [tags] A mapping of tags assigned to the Azure Stack HCI Cluster.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  const GetHciClusterResult({
    this.automanageConfigurationId,
    this.clientId,
    this.cloudId,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.resourceProviderObjectId,
    this.serviceEndpoint,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automanageConfigurationId': ?automanageConfigurationId,
      'clientId': ?clientId,
      'cloudId': ?cloudId,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHciClusterIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceProviderObjectId': ?resourceProviderObjectId,
      'serviceEndpoint': ?serviceEndpoint,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetHciClusterResult.fromMap(Map<String, dynamic> map) {
    return GetHciClusterResult(
      automanageConfigurationId: (() { final guardedValue = map['automanageConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudId: (() { final guardedValue = map['cloudId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHciClusterIdentity>(guardedValue, (value) => GetHciClusterIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceProviderObjectId: (() { final guardedValue = map['resourceProviderObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
