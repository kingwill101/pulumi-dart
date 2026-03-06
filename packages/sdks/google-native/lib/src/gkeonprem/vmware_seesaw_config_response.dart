// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_ip_block_response.dart';

/// VmwareSeesawConfig represents configuration parameters for an already existing Seesaw load balancer. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update Seesaw configurations it can only bind a pre-existing configuration to a new user cluster. IMPORTANT: When attempting to create a user cluster with a pre-existing Seesaw load balancer you will need to follow some preparation steps before calling the 'CreateVmwareCluster' API method. First you will need to create the user cluster's namespace via kubectl. The namespace will need to use the following naming convention : -gke-onprem-mgmt or -gke-onprem-mgmt depending on whether you used the 'VmwareCluster.local_name' to disambiguate collisions; for more context see the documentation of 'VmwareCluster.local_name'. Once the namespace is created you will need to create a secret resource via kubectl. This secret will contain copies of your Seesaw credentials. The Secret must be called 'user-cluster-creds' and contain Seesaw's SSH and Cert credentials. The credentials must be keyed with the following names: 'seesaw-ssh-private-key', 'seesaw-ssh-public-key', 'seesaw-ssh-ca-key', 'seesaw-ssh-ca-cert'.
class VmwareSeesawConfigResponse {
  /// Enable two load balancer VMs to achieve a highly-available Seesaw load balancer.
  final pulumi.Input<bool> enableHa;
  /// In general the following format should be used for the Seesaw group name: seesaw-for-[cluster_name].
  final pulumi.Input<String> group;
  /// The IP Blocks to be used by the Seesaw load balancer
  final pulumi.Input<List<VmwareIpBlockResponse>> ipBlocks;
  /// MasterIP is the IP announced by the master of Seesaw group.
  final pulumi.Input<String> masterIp;
  /// Name to be used by Stackdriver.
  final pulumi.Input<String> stackdriverName;
  /// Names of the VMs created for this Seesaw group.
  final pulumi.Input<List<String>> vms;

  /// Creates a new [VmwareSeesawConfigResponse].
  /// [enableHa] Enable two load balancer VMs to achieve a highly-available Seesaw load balancer.
  /// [group] In general the following format should be used for the Seesaw group name: seesaw-for-[cluster_name].
  /// [ipBlocks] The IP Blocks to be used by the Seesaw load balancer
  /// [masterIp] MasterIP is the IP announced by the master of Seesaw group.
  /// [stackdriverName] Name to be used by Stackdriver.
  /// [vms] Names of the VMs created for this Seesaw group.
  const VmwareSeesawConfigResponse({
    required this.enableHa,
    required this.group,
    required this.ipBlocks,
    required this.masterIp,
    required this.stackdriverName,
    required this.vms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHa': enableHa,
      'group': group,
      'ipBlocks': pulumi.Input.mapInputValue<List<VmwareIpBlockResponse>, List<Map<String, dynamic>>>(ipBlocks, (value) => pulumi.Input.encodeList<VmwareIpBlockResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'masterIp': masterIp,
      'stackdriverName': stackdriverName,
      'vms': vms,
    };
  }

  factory VmwareSeesawConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareSeesawConfigResponse(
      enableHa: pulumi.Input.fromValue(map['enableHa'] as bool),
      group: pulumi.Input.fromValue(map['group'] as String),
      ipBlocks: pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareIpBlockResponse>(map['ipBlocks']!, (value) => VmwareIpBlockResponse.fromMap((value as Map).cast<String, dynamic>()))),
      masterIp: pulumi.Input.fromValue(map['masterIp'] as String),
      stackdriverName: pulumi.Input.fromValue(map['stackdriverName'] as String),
      vms: pulumi.Input.fromValue((map['vms'] as List).cast<String>()),
    );
  }
}

