// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_watcher_flow_log_retention_policy.dart';
import 'network_watcher_flow_log_traffic_analytics.dart';

/// Input properties used for looking up and filtering NetworkWatcherFlowLog resources.
class NetworkWatcherFlowLogState {
  /// Should Network Flow Logging be Enabled?
  final pulumi.Input<bool?>? enabled;
  /// The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher.
  final pulumi.Input<String?>? location;
  /// The name of the Network Watcher Flow Log. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? networkSecurityGroupId;
  /// The name of the Network Watcher. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? networkWatcherName;
  /// The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `retentionPolicy` block as documented below.
  final pulumi.Input<NetworkWatcherFlowLogRetentionPolicy?>? retentionPolicy;
  /// The ID of the Storage Account where flow logs are stored.
  final pulumi.Input<String?>? storageAccountId;
  /// A mapping of tags which should be assigned to the Network Watcher Flow Log.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The ID of the Resource for which to enable flow logs for.
  ///
  /// &gt; **Note:** As of July 30, 2025, it is no longer possible to create new flow logs for Network Security Groups.
  final pulumi.Input<String?>? targetResourceId;
  /// A `trafficAnalytics` block as documented below.
  final pulumi.Input<NetworkWatcherFlowLogTrafficAnalytics?>? trafficAnalytics;
  /// The version (revision) of the flow log. Possible values are `1` and `2`. Defaults to `1`.
  final pulumi.Input<int?>? version;

  /// Creates a new [NetworkWatcherFlowLogState].
  /// [enabled] Should Network Flow Logging be Enabled?
  /// [location] The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher.
  /// [name] The name of the Network Watcher Flow Log. Changing this forces a new resource to be created.
  /// [networkSecurityGroupId] Optional.
  /// [networkWatcherName] The name of the Network Watcher. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created.
  /// [retentionPolicy] A `retentionPolicy` block as documented below.
  /// [storageAccountId] The ID of the Storage Account where flow logs are stored.
  /// [tags] A mapping of tags which should be assigned to the Network Watcher Flow Log.
  /// [targetResourceId] The ID of the Resource for which to enable flow logs for.
  /// [trafficAnalytics] A `trafficAnalytics` block as documented below.
  /// [version] The version (revision) of the flow log. Possible values are `1` and `2`. Defaults to `1`.
  const NetworkWatcherFlowLogState({
    this.enabled,
    this.location,
    this.name,
    this.networkSecurityGroupId,
    this.networkWatcherName,
    this.resourceGroupName,
    this.retentionPolicy,
    this.storageAccountId,
    this.tags,
    this.targetResourceId,
    this.trafficAnalytics,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'networkWatcherName': ?networkWatcherName,
      'resourceGroupName': ?resourceGroupName,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<NetworkWatcherFlowLogRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'trafficAnalytics': ?pulumi.Input.mapOptionalInputValue<NetworkWatcherFlowLogTrafficAnalytics, Map<String, dynamic>>(trafficAnalytics, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NetworkWatcherFlowLogState.fromMap(Map<String, dynamic> map) {
    return NetworkWatcherFlowLogState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityGroupId: (() { final guardedValue = map['networkSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkWatcherName: (() { final guardedValue = map['networkWatcherName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkWatcherFlowLogRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficAnalytics: (() { final guardedValue = map['trafficAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkWatcherFlowLogTrafficAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
