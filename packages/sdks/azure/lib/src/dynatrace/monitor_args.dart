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
    pulumi.Output<List<MonitorEnvironmentProperty>>? environmentProperties,
    required pulumi.Output<MonitorIdentity> identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> marketplaceSubscription,
    pulumi.Output<bool>? monitoringEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<MonitorPlan> plan,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<MonitorUser> user,
  }) :
      environmentProperties = pulumi.Input.asOptionalInput<List<MonitorEnvironmentProperty>>(environmentProperties),
      identity = pulumi.Input.asInput<MonitorIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceSubscription = pulumi.Input.asInput<String>(marketplaceSubscription),
      monitoringEnabled = pulumi.Input.asOptionalInput<bool>(monitoringEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asInput<MonitorPlan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      user = pulumi.Input.asInput<MonitorUser>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentProperties': ?pulumi.Input.mapOptionalInputValue<List<MonitorEnvironmentProperty>, List<Map<String, dynamic>>>(environmentProperties, (value) => pulumi.Input.encodeList<MonitorEnvironmentProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': pulumi.Input.mapInputValue<MonitorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'marketplaceSubscription': marketplaceSubscription,
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'plan': pulumi.Input.mapInputValue<MonitorPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'user': pulumi.Input.mapInputValue<MonitorUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      environmentProperties: map['environmentProperties'] == null ? null : pulumi.Output.create<List<MonitorEnvironmentProperty>>(pulumi.Input.decodeList<MonitorEnvironmentProperty>(map['environmentProperties'], (value) => MonitorEnvironmentProperty.fromMap((value as Map).cast<String, dynamic>()))),
      identity: pulumi.Output.create<MonitorIdentity>(MonitorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      marketplaceSubscription: pulumi.Output.create<String>(map['marketplaceSubscription'] as String),
      monitoringEnabled: map['monitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['monitoringEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plan: pulumi.Output.create<MonitorPlan>(MonitorPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      user: pulumi.Output.create<MonitorUser>(MonitorUser.fromMap((map['user'] as Map).cast<String, dynamic>())),
    );
  }
}

