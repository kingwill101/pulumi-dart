// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_authentication.dart';
import 'managed_cluster_custom_fabric_setting.dart';
import 'managed_cluster_lb_rule.dart';
import 'managed_cluster_node_type.dart';

/// {@template pulumi_servicefabric_managed_cluster_managed_cluster_args_doc}
/// The set of arguments for ManagedCluster.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_managed_cluster_managed_cluster_args_doc}
class ManagedClusterArgs {
  /// Controls how connections to the cluster are authenticated. A `authentication` block as defined below.
  final pulumi.Input<ManagedClusterAuthentication>? authentication;
  /// If true, backup service is enabled.
  final pulumi.Input<bool>? backupServiceEnabled;
  /// Port to use when connecting to the cluster.
  final pulumi.Input<int> clientConnectionPort;
  /// One or more `custom_fabric_setting` blocks as defined below.
  final pulumi.Input<List<ManagedClusterCustomFabricSetting>>? customFabricSettings;
  /// Hostname for the cluster. If unset the cluster's name will be used..
  final pulumi.Input<String>? dnsName;
  /// If true, DNS service is enabled.
  final pulumi.Input<bool>? dnsServiceEnabled;
  /// Port that should be used by the Service Fabric Explorer to visualize applications and cluster status.
  final pulumi.Input<int> httpGatewayPort;
  /// One or more `lb_rule` blocks as defined below.
  final pulumi.Input<List<ManagedClusterLbRule>> lbRules;
  /// The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? name;
  /// One or more `node_type` blocks as defined below.
  final pulumi.Input<List<ManagedClusterNodeType>>? nodeTypes;
  /// Administrator password for the VMs that will be created as part of this cluster.
  final pulumi.Input<String>? password;
  /// The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String> resourceGroupName;
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

  /// Creates a new [ManagedClusterArgs].
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
  ManagedClusterArgs({
    pulumi.Output<ManagedClusterAuthentication>? authentication,
    pulumi.Output<bool>? backupServiceEnabled,
    required pulumi.Output<int> clientConnectionPort,
    pulumi.Output<List<ManagedClusterCustomFabricSetting>>? customFabricSettings,
    pulumi.Output<String>? dnsName,
    pulumi.Output<bool>? dnsServiceEnabled,
    required pulumi.Output<int> httpGatewayPort,
    required pulumi.Output<List<ManagedClusterLbRule>> lbRules,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<ManagedClusterNodeType>>? nodeTypes,
    pulumi.Output<String>? password,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? upgradeWave,
    pulumi.Output<String>? username,
  }) :
      authentication = pulumi.Input.asOptionalInput<ManagedClusterAuthentication>(authentication),
      backupServiceEnabled = pulumi.Input.asOptionalInput<bool>(backupServiceEnabled),
      clientConnectionPort = pulumi.Input.asInput<int>(clientConnectionPort),
      customFabricSettings = pulumi.Input.asOptionalInput<List<ManagedClusterCustomFabricSetting>>(customFabricSettings),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      dnsServiceEnabled = pulumi.Input.asOptionalInput<bool>(dnsServiceEnabled),
      httpGatewayPort = pulumi.Input.asInput<int>(httpGatewayPort),
      lbRules = pulumi.Input.asInput<List<ManagedClusterLbRule>>(lbRules),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeTypes = pulumi.Input.asOptionalInput<List<ManagedClusterNodeType>>(nodeTypes),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradeWave = pulumi.Input.asOptionalInput<String>(upgradeWave),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'backupServiceEnabled': ?backupServiceEnabled,
      'clientConnectionPort': clientConnectionPort,
      'customFabricSettings': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterCustomFabricSetting>, List<Map<String, dynamic>>>(customFabricSettings, (value) => pulumi.Input.encodeList<ManagedClusterCustomFabricSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsName': ?dnsName,
      'dnsServiceEnabled': ?dnsServiceEnabled,
      'httpGatewayPort': httpGatewayPort,
      'lbRules': pulumi.Input.mapInputValue<List<ManagedClusterLbRule>, List<Map<String, dynamic>>>(lbRules, (value) => pulumi.Input.encodeList<ManagedClusterLbRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'nodeTypes': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterNodeType>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<ManagedClusterNodeType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'upgradeWave': ?upgradeWave,
      'username': ?username,
    };
  }

  factory ManagedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterArgs(
      authentication: map['authentication'] == null ? null : pulumi.Output.create<ManagedClusterAuthentication>(ManagedClusterAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      backupServiceEnabled: map['backupServiceEnabled'] == null ? null : pulumi.Output.create<bool>(map['backupServiceEnabled'] as bool),
      clientConnectionPort: pulumi.Output.create<int>(map['clientConnectionPort'] as int),
      customFabricSettings: map['customFabricSettings'] == null ? null : pulumi.Output.create<List<ManagedClusterCustomFabricSetting>>(pulumi.Input.decodeList<ManagedClusterCustomFabricSetting>(map['customFabricSettings'], (value) => ManagedClusterCustomFabricSetting.fromMap((value as Map).cast<String, dynamic>()))),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      dnsServiceEnabled: map['dnsServiceEnabled'] == null ? null : pulumi.Output.create<bool>(map['dnsServiceEnabled'] as bool),
      httpGatewayPort: pulumi.Output.create<int>(map['httpGatewayPort'] as int),
      lbRules: pulumi.Output.create<List<ManagedClusterLbRule>>(pulumi.Input.decodeList<ManagedClusterLbRule>(map['lbRules'], (value) => ManagedClusterLbRule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeTypes: map['nodeTypes'] == null ? null : pulumi.Output.create<List<ManagedClusterNodeType>>(pulumi.Input.decodeList<ManagedClusterNodeType>(map['nodeTypes'], (value) => ManagedClusterNodeType.fromMap((value as Map).cast<String, dynamic>()))),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradeWave: map['upgradeWave'] == null ? null : pulumi.Output.create<String>(map['upgradeWave'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

