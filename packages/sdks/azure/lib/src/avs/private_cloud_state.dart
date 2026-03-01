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
  /// > **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  final pulumi.Input<bool>? internetConnectionEnabled;
  /// The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? location;
  /// A `management_cluster` block as defined below.
  /// > **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
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
    pulumi.Output<List<PrivateCloudCircuit>>? circuits,
    pulumi.Output<String>? hcxCloudManagerEndpoint,
    pulumi.Output<bool>? internetConnectionEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<PrivateCloudManagementCluster>? managementCluster,
    pulumi.Output<String>? managementSubnetCidr,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkSubnetCidr,
    pulumi.Output<String>? nsxtCertificateThumbprint,
    pulumi.Output<String>? nsxtManagerEndpoint,
    pulumi.Output<String>? nsxtPassword,
    pulumi.Output<String>? provisioningSubnetCidr,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vcenterCertificateThumbprint,
    pulumi.Output<String>? vcenterPassword,
    pulumi.Output<String>? vcsaEndpoint,
    pulumi.Output<String>? vmotionSubnetCidr,
  }) :
      circuits = pulumi.Input.asOptionalInput<List<PrivateCloudCircuit>>(circuits),
      hcxCloudManagerEndpoint = pulumi.Input.asOptionalInput<String>(hcxCloudManagerEndpoint),
      internetConnectionEnabled = pulumi.Input.asOptionalInput<bool>(internetConnectionEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementCluster = pulumi.Input.asOptionalInput<PrivateCloudManagementCluster>(managementCluster),
      managementSubnetCidr = pulumi.Input.asOptionalInput<String>(managementSubnetCidr),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSubnetCidr = pulumi.Input.asOptionalInput<String>(networkSubnetCidr),
      nsxtCertificateThumbprint = pulumi.Input.asOptionalInput<String>(nsxtCertificateThumbprint),
      nsxtManagerEndpoint = pulumi.Input.asOptionalInput<String>(nsxtManagerEndpoint),
      nsxtPassword = pulumi.Input.asOptionalInput<String>(nsxtPassword),
      provisioningSubnetCidr = pulumi.Input.asOptionalInput<String>(provisioningSubnetCidr),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vcenterCertificateThumbprint = pulumi.Input.asOptionalInput<String>(vcenterCertificateThumbprint),
      vcenterPassword = pulumi.Input.asOptionalInput<String>(vcenterPassword),
      vcsaEndpoint = pulumi.Input.asOptionalInput<String>(vcsaEndpoint),
      vmotionSubnetCidr = pulumi.Input.asOptionalInput<String>(vmotionSubnetCidr);

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
      circuits: map['circuits'] == null ? null : pulumi.Output.create<List<PrivateCloudCircuit>>(pulumi.Input.decodeList<PrivateCloudCircuit>(map['circuits'], (value) => PrivateCloudCircuit.fromMap((value as Map).cast<String, dynamic>()))),
      hcxCloudManagerEndpoint: map['hcxCloudManagerEndpoint'] == null ? null : pulumi.Output.create<String>(map['hcxCloudManagerEndpoint'] as String),
      internetConnectionEnabled: map['internetConnectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['internetConnectionEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementCluster: map['managementCluster'] == null ? null : pulumi.Output.create<PrivateCloudManagementCluster>(PrivateCloudManagementCluster.fromMap((map['managementCluster'] as Map).cast<String, dynamic>())),
      managementSubnetCidr: map['managementSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['managementSubnetCidr'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSubnetCidr: map['networkSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['networkSubnetCidr'] as String),
      nsxtCertificateThumbprint: map['nsxtCertificateThumbprint'] == null ? null : pulumi.Output.create<String>(map['nsxtCertificateThumbprint'] as String),
      nsxtManagerEndpoint: map['nsxtManagerEndpoint'] == null ? null : pulumi.Output.create<String>(map['nsxtManagerEndpoint'] as String),
      nsxtPassword: map['nsxtPassword'] == null ? null : pulumi.Output.create<String>(map['nsxtPassword'] as String),
      provisioningSubnetCidr: map['provisioningSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['provisioningSubnetCidr'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vcenterCertificateThumbprint: map['vcenterCertificateThumbprint'] == null ? null : pulumi.Output.create<String>(map['vcenterCertificateThumbprint'] as String),
      vcenterPassword: map['vcenterPassword'] == null ? null : pulumi.Output.create<String>(map['vcenterPassword'] as String),
      vcsaEndpoint: map['vcsaEndpoint'] == null ? null : pulumi.Output.create<String>(map['vcsaEndpoint'] as String),
      vmotionSubnetCidr: map['vmotionSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['vmotionSubnetCidr'] as String),
    );
  }
}

