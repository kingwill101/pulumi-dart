// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_datadog_organization.dart';
import 'monitor_identity.dart';
import 'monitor_user.dart';

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// A `datadogOrganization` block as defined below.
  final pulumi.Input<MonitorDatadogOrganization>? datadogOrganization;
  /// A `identity` block as defined below.
  final pulumi.Input<MonitorIdentity>? identity;
  /// The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? location;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  final pulumi.Input<String>? marketplaceSubscriptionStatus;
  /// Is monitoring enabled? Defaults to `true`.
  final pulumi.Input<bool>? monitoringEnabled;
  /// The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name which should be used for this sku.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the Datadog Monitor.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `user` block as defined below.
  final pulumi.Input<MonitorUser>? user;

  /// Creates a new [MonitorState].
  /// [datadogOrganization] A `datadogOrganization` block as defined below.
  /// [identity] A `identity` block as defined below.
  /// [location] The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  /// [marketplaceSubscriptionStatus] Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  /// [monitoringEnabled] Is monitoring enabled? Defaults to `true`.
  /// [name] The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  /// [resourceGroupName] The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  /// [skuName] The name which should be used for this sku.
  /// [tags] A mapping of tags which should be assigned to the Datadog Monitor.
  /// [user] A `user` block as defined below.
  const MonitorState({
    this.datadogOrganization,
    this.identity,
    this.location,
    this.marketplaceSubscriptionStatus,
    this.monitoringEnabled,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadogOrganization': ?pulumi.Input.mapOptionalInputValue<MonitorDatadogOrganization, Map<String, dynamic>>(datadogOrganization, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<MonitorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'marketplaceSubscriptionStatus': ?marketplaceSubscriptionStatus,
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'user': ?pulumi.Input.mapOptionalInputValue<MonitorUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      datadogOrganization: (() { final guardedValue = map['datadogOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorDatadogOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceSubscriptionStatus: (() { final guardedValue = map['marketplaceSubscriptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringEnabled: (() { final guardedValue = map['monitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
