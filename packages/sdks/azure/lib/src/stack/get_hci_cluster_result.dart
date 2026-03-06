// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hci_cluster_identity.dart';

/// Result data returned by getHciCluster.
class GetHciClusterResult {
  /// The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  final String automanageConfigurationId;
  /// The Client ID of the Azure Active Directory used by the Azure Stack HCI Cluster.
  final String clientId;
  /// An immutable UUID for the Azure Stack HCI Cluster.
  final String cloudId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetHciClusterIdentity> identities;
  /// The Azure Region where the Azure Stack HCI Cluster exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The object ID of the Resource Provider Service Principal.
  final String resourceProviderObjectId;
  /// The region specific Data Path Endpoint of the Azure Stack HCI Cluster.
  final String serviceEndpoint;
  /// A mapping of tags assigned to the Azure Stack HCI Cluster.
  final Map<String, String> tags;
  /// The Tenant ID associated with this Managed Service Identity.
  final String tenantId;

  /// Creates a new [GetHciClusterResult].
  /// [automanageConfigurationId] The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  /// [clientId] The Client ID of the Azure Active Directory used by the Azure Stack HCI Cluster.
  /// [cloudId] An immutable UUID for the Azure Stack HCI Cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Azure Stack HCI Cluster exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [resourceProviderObjectId] The object ID of the Resource Provider Service Principal.
  /// [serviceEndpoint] The region specific Data Path Endpoint of the Azure Stack HCI Cluster.
  /// [tags] A mapping of tags assigned to the Azure Stack HCI Cluster.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  const GetHciClusterResult({
    required this.automanageConfigurationId,
    required this.clientId,
    required this.cloudId,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.resourceProviderObjectId,
    required this.serviceEndpoint,
    required this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automanageConfigurationId': automanageConfigurationId,
      'clientId': clientId,
      'cloudId': cloudId,
      'id': id,
      'identities': pulumi.Input.encodeList<GetHciClusterIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'resourceProviderObjectId': resourceProviderObjectId,
      'serviceEndpoint': serviceEndpoint,
      'tags': tags,
      'tenantId': tenantId,
    };
  }

  factory GetHciClusterResult.fromMap(Map<String, dynamic> map) {
    return GetHciClusterResult(
      automanageConfigurationId: map['automanageConfigurationId'] as String,
      clientId: map['clientId'] as String,
      cloudId: map['cloudId'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetHciClusterIdentity>(map['identities']!, (value) => GetHciClusterIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceProviderObjectId: map['resourceProviderObjectId'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}

