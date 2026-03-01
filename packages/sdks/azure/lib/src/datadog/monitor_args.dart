// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_datadog_organization.dart';
import 'monitor_identity.dart';
import 'monitor_user.dart';

/// {@template pulumi_datadog_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_datadog_monitor_monitor_args_doc}
class MonitorArgs {
  /// A `datadog_organization` block as defined below.
  final pulumi.Input<MonitorDatadogOrganization> datadogOrganization;
  /// A `identity` block as defined below.
  final pulumi.Input<MonitorIdentity>? identity;
  /// The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? location;
  /// Is monitoring enabled? Defaults to `true`.
  final pulumi.Input<bool>? monitoringEnabled;
  /// The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name which should be used for this sku.
  final pulumi.Input<String> skuName;
  /// A mapping of tags which should be assigned to the Datadog Monitor.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `user` block as defined below.
  final pulumi.Input<MonitorUser> user;

  /// Creates a new [MonitorArgs].
  /// [datadogOrganization] A `datadog_organization` block as defined below.
  /// [identity] A `identity` block as defined below.
  /// [location] The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  /// [monitoringEnabled] Is monitoring enabled? Defaults to `true`.
  /// [name] The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  /// [resourceGroupName] The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  /// [skuName] The name which should be used for this sku.
  /// [tags] A mapping of tags which should be assigned to the Datadog Monitor.
  /// [user] A `user` block as defined below.
  MonitorArgs({
    required pulumi.Output<MonitorDatadogOrganization> datadogOrganization,
    pulumi.Output<MonitorIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? monitoringEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> skuName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<MonitorUser> user,
  }) :
      datadogOrganization = pulumi.Input.asInput<MonitorDatadogOrganization>(datadogOrganization),
      identity = pulumi.Input.asOptionalInput<MonitorIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      monitoringEnabled = pulumi.Input.asOptionalInput<bool>(monitoringEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      user = pulumi.Input.asInput<MonitorUser>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadogOrganization': pulumi.Input.mapInputValue<MonitorDatadogOrganization, Map<String, dynamic>>(datadogOrganization, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<MonitorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
      'user': pulumi.Input.mapInputValue<MonitorUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      datadogOrganization: pulumi.Output.create<MonitorDatadogOrganization>(MonitorDatadogOrganization.fromMap((map['datadogOrganization'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<MonitorIdentity>(MonitorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      monitoringEnabled: map['monitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['monitoringEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      user: pulumi.Output.create<MonitorUser>(MonitorUser.fromMap((map['user'] as Map).cast<String, dynamic>())),
    );
  }
}

