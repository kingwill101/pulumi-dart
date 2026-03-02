// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_authentication.dart';
import 'managed_cluster_custom_fabric_setting.dart';
import 'managed_cluster_lb_rule.dart';
import 'managed_cluster_node_type.dart';

/// Input properties used for looking up and filtering ManagedCluster resources.
class ManagedClusterState {
  /// Controls how connections to the cluster are authenticated. A `authentication` block as defined below.
  final pulumi.Input<ManagedClusterAuthentication>? authentication;
  /// If true, backup service is enabled.
  final pulumi.Input<bool>? backupServiceEnabled;
  /// Port to use when connecting to the cluster.
  final pulumi.Input<int>? clientConnectionPort;
  /// One or more `custom_fabric_setting` blocks as defined below.
  final pulumi.Input<List<ManagedClusterCustomFabricSetting>>? customFabricSettings;
  /// Hostname for the cluster. If unset the cluster's name will be used..
  final pulumi.Input<String>? dnsName;
  /// If true, DNS service is enabled.
  final pulumi.Input<bool>? dnsServiceEnabled;
  /// Port that should be used by the Service Fabric Explorer to visualize applications and cluster status.
  final pulumi.Input<int>? httpGatewayPort;
  /// One or more `lb_rule` blocks as defined below.
  final pulumi.Input<List<ManagedClusterLbRule>>? lbRules;
  /// The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? name;
  /// One or more `node_type` blocks as defined below.
  final pulumi.Input<List<ManagedClusterNodeType>>? nodeTypes;
  /// Administrator password for the VMs that will be created as part of this cluster.
  final pulumi.Input<String>? password;
  /// The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// SKU for this cluster. Changing this forces a new resource to be created. Default is `Basic`, allowed values are either `Basic` or `Standard`.
  final pulumi.Input<String>? sku;
  /// The resource ID of the Subnet. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags which should be assigned to the Resource Group.
  final pulumi.Input<Map<String, String>>? tags;
  /// Upgrade wave for the fabric runtime. Default is `Wave0`, allowed value must be one of `Wave0`, `Wave1`, or `Wave2`.
  final pulumi.Input<String>? upgradeWave;
  /// Administrator password for the VMs that will be created as part of this cluster.
  final pulumi.Input<String>? username;

  /// Creates a new [ManagedClusterState].
  /// [authentication] Controls how connections to the cluster are authenticated. A `authentication` block as defined below.
  /// [backupServiceEnabled] If true, backup service is enabled.
  /// [clientConnectionPort] Port to use when connecting to the cluster.
  /// [customFabricSettings] One or more `custom_fabric_setting` blocks as defined below.
  /// [dnsName] Hostname for the cluster. If unset the cluster's name will be used..
  /// [dnsServiceEnabled] If true, DNS service is enabled.
  /// [httpGatewayPort] Port that should be used by the Service Fabric Explorer to visualize applications and cluster status.
  /// [lbRules] One or more `lb_rule` blocks as defined below.
  /// [location] The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  /// [name] The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  /// [nodeTypes] One or more `node_type` blocks as defined below.
  /// [password] Administrator password for the VMs that will be created as part of this cluster.
  /// [resourceGroupName] The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  /// [sku] SKU for this cluster. Changing this forces a new resource to be created. Default is `Basic`, allowed values are either `Basic` or `Standard`.
  /// [subnetId] The resource ID of the Subnet. Changing this forces a new Resource Group to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Group.
  /// [upgradeWave] Upgrade wave for the fabric runtime. Default is `Wave0`, allowed value must be one of `Wave0`, `Wave1`, or `Wave2`.
  /// [username] Administrator password for the VMs that will be created as part of this cluster.
  ManagedClusterState({
    this.authentication,
    this.backupServiceEnabled,
    this.clientConnectionPort,
    this.customFabricSettings,
    this.dnsName,
    this.dnsServiceEnabled,
    this.httpGatewayPort,
    this.lbRules,
    this.location,
    this.name,
    this.nodeTypes,
    this.password,
    this.resourceGroupName,
    this.sku,
    this.subnetId,
    this.tags,
    this.upgradeWave,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'backupServiceEnabled': ?backupServiceEnabled,
      'clientConnectionPort': ?clientConnectionPort,
      'customFabricSettings': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterCustomFabricSetting>, List<Map<String, dynamic>>>(customFabricSettings, (value) => pulumi.Input.encodeList<ManagedClusterCustomFabricSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsName': ?dnsName,
      'dnsServiceEnabled': ?dnsServiceEnabled,
      'httpGatewayPort': ?httpGatewayPort,
      'lbRules': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterLbRule>, List<Map<String, dynamic>>>(lbRules, (value) => pulumi.Input.encodeList<ManagedClusterLbRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'nodeTypes': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterNodeType>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<ManagedClusterNodeType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'upgradeWave': ?upgradeWave,
      'username': ?username,
    };
  }

  factory ManagedClusterState.fromMap(Map<String, dynamic> map) {
    return ManagedClusterState(
      authentication: map['authentication'] == null ? null : (ManagedClusterAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      backupServiceEnabled: map['backupServiceEnabled'] == null ? null : (map['backupServiceEnabled']! as bool).input(),
      clientConnectionPort: map['clientConnectionPort'] == null ? null : (map['clientConnectionPort']! as int).input(),
      customFabricSettings: map['customFabricSettings'] == null ? null : (pulumi.Input.decodeList<ManagedClusterCustomFabricSetting>(map['customFabricSettings']!, (value) => ManagedClusterCustomFabricSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsName: map['dnsName'] == null ? null : (map['dnsName']! as String).input(),
      dnsServiceEnabled: map['dnsServiceEnabled'] == null ? null : (map['dnsServiceEnabled']! as bool).input(),
      httpGatewayPort: map['httpGatewayPort'] == null ? null : (map['httpGatewayPort']! as int).input(),
      lbRules: map['lbRules'] == null ? null : (pulumi.Input.decodeList<ManagedClusterLbRule>(map['lbRules']!, (value) => ManagedClusterLbRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeTypes: map['nodeTypes'] == null ? null : (pulumi.Input.decodeList<ManagedClusterNodeType>(map['nodeTypes']!, (value) => ManagedClusterNodeType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      upgradeWave: map['upgradeWave'] == null ? null : (map['upgradeWave']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

