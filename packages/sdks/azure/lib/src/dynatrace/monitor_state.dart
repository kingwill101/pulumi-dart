// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_environment_property.dart';
import 'monitor_identity.dart';
import 'monitor_plan.dart';
import 'monitor_user.dart';

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// Properties of the Dynatrace environment. An `environment_properties` block as defined below.
  final pulumi.Input<List<MonitorEnvironmentProperty>>? environmentProperties;
  /// The kind of managed identity assigned to this resource. A `identity` block as defined below.
  final pulumi.Input<MonitorIdentity>? identity;
  /// The Azure Region where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state. Possible values are `Active` and `Suspended`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceSubscription;
  /// Flag specifying if the resource monitoring is enabled or disabled. Default is `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? monitoringEnabled;
  /// Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Billing plan information. A `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<MonitorPlan>? plan;
  /// The name of the Resource Group where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// User's information. A `user` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<MonitorUser>? user;

  /// Creates a new [MonitorState].
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
  MonitorState({
    pulumi.Output<List<MonitorEnvironmentProperty>>? environmentProperties,
    pulumi.Output<MonitorIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? marketplaceSubscription,
    pulumi.Output<bool>? monitoringEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<MonitorPlan>? plan,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<MonitorUser>? user,
  }) :
      environmentProperties = pulumi.Input.asOptionalInput<List<MonitorEnvironmentProperty>>(environmentProperties),
      identity = pulumi.Input.asOptionalInput<MonitorIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceSubscription = pulumi.Input.asOptionalInput<String>(marketplaceSubscription),
      monitoringEnabled = pulumi.Input.asOptionalInput<bool>(monitoringEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asOptionalInput<MonitorPlan>(plan),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      user = pulumi.Input.asOptionalInput<MonitorUser>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentProperties': ?pulumi.Input.mapOptionalInputValue<List<MonitorEnvironmentProperty>, List<Map<String, dynamic>>>(environmentProperties, (value) => pulumi.Input.encodeList<MonitorEnvironmentProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<MonitorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'marketplaceSubscription': ?marketplaceSubscription,
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'plan': ?pulumi.Input.mapOptionalInputValue<MonitorPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'user': ?pulumi.Input.mapOptionalInputValue<MonitorUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      environmentProperties: map['environmentProperties'] == null ? null : pulumi.Output.create<List<MonitorEnvironmentProperty>>(pulumi.Input.decodeList<MonitorEnvironmentProperty>(map['environmentProperties'], (value) => MonitorEnvironmentProperty.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<MonitorIdentity>(MonitorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      marketplaceSubscription: map['marketplaceSubscription'] == null ? null : pulumi.Output.create<String>(map['marketplaceSubscription'] as String),
      monitoringEnabled: map['monitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['monitoringEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<MonitorPlan>(MonitorPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      user: map['user'] == null ? null : pulumi.Output.create<MonitorUser>(MonitorUser.fromMap((map['user'] as Map).cast<String, dynamic>())),
    );
  }
}

