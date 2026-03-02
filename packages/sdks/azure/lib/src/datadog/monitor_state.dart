// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_datadog_organization.dart';
import 'monitor_identity.dart';
import 'monitor_user.dart';

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// A `datadog_organization` block as defined below.
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
  /// [datadogOrganization] A `datadog_organization` block as defined below.
  /// [identity] A `identity` block as defined below.
  /// [location] The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  /// [marketplaceSubscriptionStatus] Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  /// [monitoringEnabled] Is monitoring enabled? Defaults to `true`.
  /// [name] The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  /// [resourceGroupName] The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  /// [skuName] The name which should be used for this sku.
  /// [tags] A mapping of tags which should be assigned to the Datadog Monitor.
  /// [user] A `user` block as defined below.
  MonitorState({
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
      datadogOrganization: map['datadogOrganization'] == null ? null : (MonitorDatadogOrganization.fromMap((map['datadogOrganization'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (MonitorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      marketplaceSubscriptionStatus: map['marketplaceSubscriptionStatus'] == null ? null : (map['marketplaceSubscriptionStatus'] as String).input(),
      monitoringEnabled: map['monitoringEnabled'] == null ? null : (map['monitoringEnabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      user: map['user'] == null ? null : (MonitorUser.fromMap((map['user'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

