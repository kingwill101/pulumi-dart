// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_circuit.dart';
import 'get_private_cloud_management_cluster.dart';

/// Result data returned by getPrivateCloud.
class GetPrivateCloudResult {
  /// A `circuit` block as defined below.
  final List<GetPrivateCloudCircuit> circuits;
  /// The endpoint for the VMware HCX Cloud Manager.
  final String hcxCloudManagerEndpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Is the Azure VMware Solution Private Cloud connected to the internet?
  final bool internetConnectionEnabled;
  /// The Azure Region where the Azure VMware Solution Private Cloud exists.
  final String location;
  /// A `management_cluster` block as defined below.
  final List<GetPrivateCloudManagementCluster> managementClusters;
  /// The network used to access VMware vCenter Server and NSX Manager.
  final String managementSubnetCidr;
  final String name;
  /// The subnet CIDR of the Azure VMware Solution Private Cloud.
  final String networkSubnetCidr;
  /// The thumbprint of the VMware NSX Manager SSL certificate.
  final String nsxtCertificateThumbprint;
  /// The endpoint for the VMware NSX Manager.
  final String nsxtManagerEndpoint;
  /// The network which isused for virtual machine cold migration, cloning, and snapshot migration.
  final String provisioningSubnetCidr;
  final String resourceGroupName;
  /// The Name of the SKU used for this Azure VMware Solution Private Cloud.
  final String skuName;
  /// A mapping of tags assigned to the Azure VMware Solution Private Cloud.
  final Map<String, String> tags;
  /// The thumbprint of the VMware vCenter Server SSL certificate.
  final String vcenterCertificateThumbprint;
  /// The endpoint for VMware vCenter Server Appliance.
  final String vcsaEndpoint;
  /// The network which is used for live migration of virtual machines.
  final String vmotionSubnetCidr;

  /// Creates a new [GetPrivateCloudResult].
  /// [circuits] A `circuit` block as defined below.
  /// [hcxCloudManagerEndpoint] The endpoint for the VMware HCX Cloud Manager.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetConnectionEnabled] Is the Azure VMware Solution Private Cloud connected to the internet?
  /// [location] The Azure Region where the Azure VMware Solution Private Cloud exists.
  /// [managementClusters] A `management_cluster` block as defined below.
  /// [managementSubnetCidr] The network used to access VMware vCenter Server and NSX Manager.
  /// [name] Required.
  /// [networkSubnetCidr] The subnet CIDR of the Azure VMware Solution Private Cloud.
  /// [nsxtCertificateThumbprint] The thumbprint of the VMware NSX Manager SSL certificate.
  /// [nsxtManagerEndpoint] The endpoint for the VMware NSX Manager.
  /// [provisioningSubnetCidr] The network which isused for virtual machine cold migration, cloning, and snapshot migration.
  /// [resourceGroupName] Required.
  /// [skuName] The Name of the SKU used for this Azure VMware Solution Private Cloud.
  /// [tags] A mapping of tags assigned to the Azure VMware Solution Private Cloud.
  /// [vcenterCertificateThumbprint] The thumbprint of the VMware vCenter Server SSL certificate.
  /// [vcsaEndpoint] The endpoint for VMware vCenter Server Appliance.
  /// [vmotionSubnetCidr] The network which is used for live migration of virtual machines.
  GetPrivateCloudResult({
    required this.circuits,
    required this.hcxCloudManagerEndpoint,
    required this.id,
    required this.internetConnectionEnabled,
    required this.location,
    required this.managementClusters,
    required this.managementSubnetCidr,
    required this.name,
    required this.networkSubnetCidr,
    required this.nsxtCertificateThumbprint,
    required this.nsxtManagerEndpoint,
    required this.provisioningSubnetCidr,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
    required this.vcenterCertificateThumbprint,
    required this.vcsaEndpoint,
    required this.vmotionSubnetCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuits': pulumi.Input.encodeList<GetPrivateCloudCircuit, Map<String, dynamic>>(circuits, (value) => value.toMap()),
      'hcxCloudManagerEndpoint': hcxCloudManagerEndpoint,
      'id': id,
      'internetConnectionEnabled': internetConnectionEnabled,
      'location': location,
      'managementClusters': pulumi.Input.encodeList<GetPrivateCloudManagementCluster, Map<String, dynamic>>(managementClusters, (value) => value.toMap()),
      'managementSubnetCidr': managementSubnetCidr,
      'name': name,
      'networkSubnetCidr': networkSubnetCidr,
      'nsxtCertificateThumbprint': nsxtCertificateThumbprint,
      'nsxtManagerEndpoint': nsxtManagerEndpoint,
      'provisioningSubnetCidr': provisioningSubnetCidr,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
      'vcenterCertificateThumbprint': vcenterCertificateThumbprint,
      'vcsaEndpoint': vcsaEndpoint,
      'vmotionSubnetCidr': vmotionSubnetCidr,
    };
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      circuits: pulumi.Input.decodeList<GetPrivateCloudCircuit>(map['circuits']!, (value) => GetPrivateCloudCircuit.fromMap((value as Map).cast<String, dynamic>())),
      hcxCloudManagerEndpoint: map['hcxCloudManagerEndpoint'] as String,
      id: map['id'] as String,
      internetConnectionEnabled: map['internetConnectionEnabled'] as bool,
      location: map['location'] as String,
      managementClusters: pulumi.Input.decodeList<GetPrivateCloudManagementCluster>(map['managementClusters']!, (value) => GetPrivateCloudManagementCluster.fromMap((value as Map).cast<String, dynamic>())),
      managementSubnetCidr: map['managementSubnetCidr'] as String,
      name: map['name'] as String,
      networkSubnetCidr: map['networkSubnetCidr'] as String,
      nsxtCertificateThumbprint: map['nsxtCertificateThumbprint'] as String,
      nsxtManagerEndpoint: map['nsxtManagerEndpoint'] as String,
      provisioningSubnetCidr: map['provisioningSubnetCidr'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vcenterCertificateThumbprint: map['vcenterCertificateThumbprint'] as String,
      vcsaEndpoint: map['vcsaEndpoint'] as String,
      vmotionSubnetCidr: map['vmotionSubnetCidr'] as String,
    );
  }
}

