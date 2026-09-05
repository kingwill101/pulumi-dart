// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_circuit.dart';
import 'get_private_cloud_management_cluster.dart';

/// Result data returned by getPrivateCloud.
class GetPrivateCloudResult {
  /// A `circuit` block as defined below.
  final List<GetPrivateCloudCircuit>? circuits;
  /// The endpoint for the VMware HCX Cloud Manager.
  final String? hcxCloudManagerEndpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Is the Azure VMware Solution Private Cloud connected to the internet?
  final bool? internetConnectionEnabled;
  /// The Azure Region where the Azure VMware Solution Private Cloud exists.
  final String? location;
  /// A `managementCluster` block as defined below.
  final List<GetPrivateCloudManagementCluster>? managementClusters;
  /// The network used to access VMware vCenter Server and NSX Manager.
  final String? managementSubnetCidr;
  final String? name;
  /// The subnet CIDR of the Azure VMware Solution Private Cloud.
  final String? networkSubnetCidr;
  /// The thumbprint of the VMware NSX Manager SSL certificate.
  final String? nsxtCertificateThumbprint;
  /// The endpoint for the VMware NSX Manager.
  final String? nsxtManagerEndpoint;
  /// The network which isused for virtual machine cold migration, cloning, and snapshot migration.
  final String? provisioningSubnetCidr;
  final String? resourceGroupName;
  /// The Name of the SKU used for this Azure VMware Solution Private Cloud.
  final String? skuName;
  /// A mapping of tags assigned to the Azure VMware Solution Private Cloud.
  final Map<String, String>? tags;
  /// The thumbprint of the VMware vCenter Server SSL certificate.
  final String? vcenterCertificateThumbprint;
  /// The endpoint for VMware vCenter Server Appliance.
  final String? vcsaEndpoint;
  /// The network which is used for live migration of virtual machines.
  final String? vmotionSubnetCidr;

  /// Creates a new [GetPrivateCloudResult].
  /// [circuits] A `circuit` block as defined below.
  /// [hcxCloudManagerEndpoint] The endpoint for the VMware HCX Cloud Manager.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetConnectionEnabled] Is the Azure VMware Solution Private Cloud connected to the internet?
  /// [location] The Azure Region where the Azure VMware Solution Private Cloud exists.
  /// [managementClusters] A `managementCluster` block as defined below.
  /// [managementSubnetCidr] The network used to access VMware vCenter Server and NSX Manager.
  /// [name] Optional.
  /// [networkSubnetCidr] The subnet CIDR of the Azure VMware Solution Private Cloud.
  /// [nsxtCertificateThumbprint] The thumbprint of the VMware NSX Manager SSL certificate.
  /// [nsxtManagerEndpoint] The endpoint for the VMware NSX Manager.
  /// [provisioningSubnetCidr] The network which isused for virtual machine cold migration, cloning, and snapshot migration.
  /// [resourceGroupName] Optional.
  /// [skuName] The Name of the SKU used for this Azure VMware Solution Private Cloud.
  /// [tags] A mapping of tags assigned to the Azure VMware Solution Private Cloud.
  /// [vcenterCertificateThumbprint] The thumbprint of the VMware vCenter Server SSL certificate.
  /// [vcsaEndpoint] The endpoint for VMware vCenter Server Appliance.
  /// [vmotionSubnetCidr] The network which is used for live migration of virtual machines.
  const GetPrivateCloudResult({
    this.circuits,
    this.hcxCloudManagerEndpoint,
    this.id,
    this.internetConnectionEnabled,
    this.location,
    this.managementClusters,
    this.managementSubnetCidr,
    this.name,
    this.networkSubnetCidr,
    this.nsxtCertificateThumbprint,
    this.nsxtManagerEndpoint,
    this.provisioningSubnetCidr,
    this.resourceGroupName,
    this.skuName,
    this.tags,
    this.vcenterCertificateThumbprint,
    this.vcsaEndpoint,
    this.vmotionSubnetCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuits': ?(() { final guardedValue = circuits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateCloudCircuit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hcxCloudManagerEndpoint': ?hcxCloudManagerEndpoint,
      'id': ?id,
      'internetConnectionEnabled': ?internetConnectionEnabled,
      'location': ?location,
      'managementClusters': ?(() { final guardedValue = managementClusters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateCloudManagementCluster, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managementSubnetCidr': ?managementSubnetCidr,
      'name': ?name,
      'networkSubnetCidr': ?networkSubnetCidr,
      'nsxtCertificateThumbprint': ?nsxtCertificateThumbprint,
      'nsxtManagerEndpoint': ?nsxtManagerEndpoint,
      'provisioningSubnetCidr': ?provisioningSubnetCidr,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'vcenterCertificateThumbprint': ?vcenterCertificateThumbprint,
      'vcsaEndpoint': ?vcsaEndpoint,
      'vmotionSubnetCidr': ?vmotionSubnetCidr,
    };
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      circuits: (() { final guardedValue = map['circuits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateCloudCircuit>(guardedValue, (value) => GetPrivateCloudCircuit.fromMap((value as Map).cast<String, dynamic>())); })(),
      hcxCloudManagerEndpoint: (() { final guardedValue = map['hcxCloudManagerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internetConnectionEnabled: (() { final guardedValue = map['internetConnectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementClusters: (() { final guardedValue = map['managementClusters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateCloudManagementCluster>(guardedValue, (value) => GetPrivateCloudManagementCluster.fromMap((value as Map).cast<String, dynamic>())); })(),
      managementSubnetCidr: (() { final guardedValue = map['managementSubnetCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkSubnetCidr: (() { final guardedValue = map['networkSubnetCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nsxtCertificateThumbprint: (() { final guardedValue = map['nsxtCertificateThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nsxtManagerEndpoint: (() { final guardedValue = map['nsxtManagerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningSubnetCidr: (() { final guardedValue = map['provisioningSubnetCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vcenterCertificateThumbprint: (() { final guardedValue = map['vcenterCertificateThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcsaEndpoint: (() { final guardedValue = map['vcsaEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmotionSubnetCidr: (() { final guardedValue = map['vmotionSubnetCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
