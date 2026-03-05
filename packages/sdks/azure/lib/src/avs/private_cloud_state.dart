// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_circuit.dart';
import 'private_cloud_management_cluster.dart';

/// Input properties used for looking up and filtering PrivateCloud resources.
class PrivateCloudState {
  /// A `circuit` block as defined below.
  final pulumi.Input<List<PrivateCloudCircuit>>? circuits;
  /// The endpoint for the VMware HCX Cloud Manager.
  final pulumi.Input<String>? hcxCloudManagerEndpoint;
  /// Is the Azure VMware Solution Private Cloud connected to the internet? This field can not be updated with `management_cluster[0].size` together.
  /// &gt; **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  final pulumi.Input<bool>? internetConnectionEnabled;
  /// The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? location;
  /// A `management_cluster` block as defined below.
  /// &gt; **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  final pulumi.Input<PrivateCloudManagementCluster>? managementCluster;
  /// The network used to access VMware vCenter Server and NSX Manager.
  final pulumi.Input<String>? managementSubnetCidr;
  /// The name which should be used for this Azure VMware Solution Private Cloud. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? name;
  /// The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? networkSubnetCidr;
  /// The thumbprint of the VMware NSX Manager SSL certificate.
  final pulumi.Input<String>? nsxtCertificateThumbprint;
  /// The endpoint for the VMware NSX Manager.
  final pulumi.Input<String>? nsxtManagerEndpoint;
  /// The password of the VMware NSX Manager cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? nsxtPassword;
  /// The network which is used for virtual machine cold migration, cloning, and snapshot migration.
  final pulumi.Input<String>? provisioningSubnetCidr;
  /// The name of the Resource Group where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Name of the SKU used for this Azure VMware Solution Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av36pt`, `av48`, `av48t`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the Azure VMware Solution Private Cloud.
  final pulumi.Input<Map<String, String>>? tags;
  /// The thumbprint of the VMware vCenter Server SSL certificate.
  final pulumi.Input<String>? vcenterCertificateThumbprint;
  /// The password of the VMware vCenter Server cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? vcenterPassword;
  /// The endpoint for VMware vCenter Server Appliance.
  final pulumi.Input<String>? vcsaEndpoint;
  /// The network which is used for live migration of virtual machines.
  final pulumi.Input<String>? vmotionSubnetCidr;

  /// Creates a new [PrivateCloudState].
  /// [circuits] A `circuit` block as defined below.
  /// [hcxCloudManagerEndpoint] The endpoint for the VMware HCX Cloud Manager.
  /// [internetConnectionEnabled] Is the Azure VMware Solution Private Cloud connected to the internet? This field can not be updated with `management_cluster[0].size` together.
  /// [location] The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [managementCluster] A `management_cluster` block as defined below.
  /// [managementSubnetCidr] The network used to access VMware vCenter Server and NSX Manager.
  /// [name] The name which should be used for this Azure VMware Solution Private Cloud. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [networkSubnetCidr] The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [nsxtCertificateThumbprint] The thumbprint of the VMware NSX Manager SSL certificate.
  /// [nsxtManagerEndpoint] The endpoint for the VMware NSX Manager.
  /// [nsxtPassword] The password of the VMware NSX Manager cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [provisioningSubnetCidr] The network which is used for virtual machine cold migration, cloning, and snapshot migration.
  /// [resourceGroupName] The name of the Resource Group where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [skuName] The Name of the SKU used for this Azure VMware Solution Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av36pt`, `av48`, `av48t`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure VMware Solution Private Cloud.
  /// [vcenterCertificateThumbprint] The thumbprint of the VMware vCenter Server SSL certificate.
  /// [vcenterPassword] The password of the VMware vCenter Server cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [vcsaEndpoint] The endpoint for VMware vCenter Server Appliance.
  /// [vmotionSubnetCidr] The network which is used for live migration of virtual machines.
  PrivateCloudState({
    this.circuits,
    this.hcxCloudManagerEndpoint,
    this.internetConnectionEnabled,
    this.location,
    this.managementCluster,
    this.managementSubnetCidr,
    this.name,
    this.networkSubnetCidr,
    this.nsxtCertificateThumbprint,
    this.nsxtManagerEndpoint,
    this.nsxtPassword,
    this.provisioningSubnetCidr,
    this.resourceGroupName,
    this.skuName,
    this.tags,
    this.vcenterCertificateThumbprint,
    this.vcenterPassword,
    this.vcsaEndpoint,
    this.vmotionSubnetCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuits': ?pulumi.Input.mapOptionalInputValue<List<PrivateCloudCircuit>, List<Map<String, dynamic>>>(circuits, (value) => pulumi.Input.encodeList<PrivateCloudCircuit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hcxCloudManagerEndpoint': ?hcxCloudManagerEndpoint,
      'internetConnectionEnabled': ?internetConnectionEnabled,
      'location': ?location,
      'managementCluster': ?pulumi.Input.mapOptionalInputValue<PrivateCloudManagementCluster, Map<String, dynamic>>(managementCluster, (value) => value.toMap()),
      'managementSubnetCidr': ?managementSubnetCidr,
      'name': ?name,
      'networkSubnetCidr': ?networkSubnetCidr,
      'nsxtCertificateThumbprint': ?nsxtCertificateThumbprint,
      'nsxtManagerEndpoint': ?nsxtManagerEndpoint,
      'nsxtPassword': ?nsxtPassword,
      'provisioningSubnetCidr': ?provisioningSubnetCidr,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'vcenterCertificateThumbprint': ?vcenterCertificateThumbprint,
      'vcenterPassword': ?vcenterPassword,
      'vcsaEndpoint': ?vcsaEndpoint,
      'vmotionSubnetCidr': ?vmotionSubnetCidr,
    };
  }

  factory PrivateCloudState.fromMap(Map<String, dynamic> map) {
    return PrivateCloudState(
      circuits: (() { final guardedValue = map['circuits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateCloudCircuit>(guardedValue, (value) => PrivateCloudCircuit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hcxCloudManagerEndpoint: (() { final guardedValue = map['hcxCloudManagerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetConnectionEnabled: (() { final guardedValue = map['internetConnectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementCluster: (() { final guardedValue = map['managementCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateCloudManagementCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementSubnetCidr: (() { final guardedValue = map['managementSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSubnetCidr: (() { final guardedValue = map['networkSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nsxtCertificateThumbprint: (() { final guardedValue = map['nsxtCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nsxtManagerEndpoint: (() { final guardedValue = map['nsxtManagerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nsxtPassword: (() { final guardedValue = map['nsxtPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningSubnetCidr: (() { final guardedValue = map['provisioningSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vcenterCertificateThumbprint: (() { final guardedValue = map['vcenterCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcenterPassword: (() { final guardedValue = map['vcenterPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcsaEndpoint: (() { final guardedValue = map['vcsaEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmotionSubnetCidr: (() { final guardedValue = map['vmotionSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

