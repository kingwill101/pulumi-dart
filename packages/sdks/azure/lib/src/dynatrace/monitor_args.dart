// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_environment_property.dart';
import 'monitor_identity.dart';
import 'monitor_plan.dart';
import 'monitor_user.dart';

/// {@template pulumi_dynatrace_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_dynatrace_monitor_monitor_args_doc}
class MonitorArgs {
  /// Properties of the Dynatrace environment. An `environment_properties` block as defined below.
  final pulumi.Input<List<MonitorEnvironmentProperty>>? environmentProperties;

  /// The kind of managed identity assigned to this resource. A `identity` block as defined below.
  final pulumi.Input<MonitorIdentity> identity;

  /// The Azure Region where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state. Possible values are `Active` and `Suspended`. Changing this forces a new resource to be created.
  final pulumi.Input<String> marketplaceSubscription;

  /// Flag specifying if the resource monitoring is enabled or disabled. Default is `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? monitoringEnabled;

  /// Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Billing plan information. A `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<MonitorPlan> plan;

  /// The name of the Resource Group where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// User's information. A `user` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<MonitorUser> user;

  /// Creates a new [MonitorArgs].
  /// [environmentProperties] Properties of the Dynatrace environment. An `environment_properties` block as defined below.
  /// [identity] The kind of managed identity assigned to this resource. A `identity` block as defined below.
  /// [location] The Azure Region where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  /// [marketplaceSubscription] Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state. Possible values are `Active` and `Suspended`. Changing this forces a new resource to be created.
  /// [monitoringEnabled] Flag specifying if the resource monitoring is enabled or disabled. Default is `true`. Changing this forces a new resource to be created.
  /// [name] Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  /// [plan] Billing plan information. A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [user] User's information. A `user` block as defined below. Changing this forces a new resource to be created.
  MonitorArgs({
    this.environmentProperties,
    required this.identity,
    this.location,
    required this.marketplaceSubscription,
    this.monitoringEnabled,
    this.name,
    required this.plan,
    required this.resourceGroupName,
    this.tags,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<MonitorEnvironmentProperty>,
            List<Map<String, dynamic>>
          >(
            environmentProperties,
            (value) =>
                pulumi.Input.encodeList<
                  MonitorEnvironmentProperty,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'identity':
          pulumi.Input.mapInputValue<MonitorIdentity, Map<String, dynamic>>(
            identity,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'marketplaceSubscription': marketplaceSubscription,
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'plan': pulumi.Input.mapInputValue<MonitorPlan, Map<String, dynamic>>(
        plan,
        (value) => value.toMap(),
      ),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'user': pulumi.Input.mapInputValue<MonitorUser, Map<String, dynamic>>(
        user,
        (value) => value.toMap(),
      ),
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      environmentProperties: (() {
        final guardedValue = map['environmentProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MonitorEnvironmentProperty>(
            guardedValue,
            (value) => MonitorEnvironmentProperty.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      identity: pulumi.Input.fromValue(
        MonitorIdentity.fromMap(
          (map['identity']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      marketplaceSubscription: pulumi.Input.fromValue(
        map['marketplaceSubscription'] as String,
      ),
      monitoringEnabled: (() {
        final guardedValue = map['monitoringEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      plan: pulumi.Input.fromValue(
        MonitorPlan.fromMap((map['plan']! as Map).cast<String, dynamic>()),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      user: pulumi.Input.fromValue(
        MonitorUser.fromMap((map['user']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
