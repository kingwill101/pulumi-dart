// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_cluster_identity.dart';

/// Input properties used for looking up and filtering HciCluster resources.
class HciClusterState {
  /// The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  final pulumi.Input<String>? automanageConfigurationId;
  /// The Client ID of the Azure Active Directory Application which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clientId;
  /// An immutable UUID for the Azure Stack HCI Cluster.
  final pulumi.Input<String>? cloudId;
  /// An `identity` block as defined below.
  final pulumi.Input<HciClusterIdentity>? identity;
  /// The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The object ID of the Resource Provider Service Principal.
  final pulumi.Input<String>? resourceProviderObjectId;
  /// The region specific Data Path Endpoint of the Azure Stack HCI Cluster.
  final pulumi.Input<String>? serviceEndpoint;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If unspecified the Tenant ID of the Provider will be used.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [HciClusterState].
  /// [automanageConfigurationId] The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  /// [clientId] The Client ID of the Azure Active Directory Application which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  /// [cloudId] An immutable UUID for the Azure Stack HCI Cluster.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  /// [resourceProviderObjectId] The object ID of the Resource Provider Service Principal.
  /// [serviceEndpoint] The region specific Data Path Endpoint of the Azure Stack HCI Cluster.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Cluster.
  /// [tenantId] The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  HciClusterState({
    this.automanageConfigurationId,
    this.clientId,
    this.cloudId,
    this.identity,
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
      'identity': ?pulumi.Input.mapOptionalInputValue<HciClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceProviderObjectId': ?resourceProviderObjectId,
      'serviceEndpoint': ?serviceEndpoint,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory HciClusterState.fromMap(Map<String, dynamic> map) {
    return HciClusterState(
      automanageConfigurationId: map['automanageConfigurationId'] == null ? null : (map['automanageConfigurationId']! as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      cloudId: map['cloudId'] == null ? null : (map['cloudId']! as String).input(),
      identity: map['identity'] == null ? null : (HciClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      resourceProviderObjectId: map['resourceProviderObjectId'] == null ? null : (map['resourceProviderObjectId']! as String).input(),
      serviceEndpoint: map['serviceEndpoint'] == null ? null : (map['serviceEndpoint']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

