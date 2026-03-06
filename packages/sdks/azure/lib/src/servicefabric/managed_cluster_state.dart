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
  const ManagedClusterState({
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
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupServiceEnabled: (() { final guardedValue = map['backupServiceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientConnectionPort: (() { final guardedValue = map['clientConnectionPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customFabricSettings: (() { final guardedValue = map['customFabricSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterCustomFabricSetting>(guardedValue, (value) => ManagedClusterCustomFabricSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServiceEnabled: (() { final guardedValue = map['dnsServiceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpGatewayPort: (() { final guardedValue = map['httpGatewayPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lbRules: (() { final guardedValue = map['lbRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterLbRule>(guardedValue, (value) => ManagedClusterLbRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTypes: (() { final guardedValue = map['nodeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterNodeType>(guardedValue, (value) => ManagedClusterNodeType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradeWave: (() { final guardedValue = map['upgradeWave']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

