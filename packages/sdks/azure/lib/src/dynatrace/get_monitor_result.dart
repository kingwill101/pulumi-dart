// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_environment_property.dart';
import 'get_monitor_identity.dart';
import 'get_monitor_plan.dart';
import 'get_monitor_user.dart';

/// Result data returned by getMonitor.
class GetMonitorResult {
  final List<GetMonitorEnvironmentProperty> environmentProperties;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The kind of managed identity assigned to this resource.  A `identity` block as defined below.
  final List<GetMonitorIdentity> identities;
  /// The Azure Region where the Dynatrace monitor should exist.
  final String location;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  final String marketplaceSubscription;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final bool monitoringEnabled;
  final String name;
  /// Plan id as published by Dynatrace.
  final List<GetMonitorPlan> plans;
  final String resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// User's information. A `user` block as defined below.
  final List<GetMonitorUser> users;

  /// Creates a new [GetMonitorResult].
  /// [environmentProperties] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] The kind of managed identity assigned to this resource.  A `identity` block as defined below.
  /// [location] The Azure Region where the Dynatrace monitor should exist.
  /// [marketplaceSubscription] Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  /// [monitoringEnabled] Flag specifying if the resource monitoring is enabled or disabled.
  /// [name] Required.
  /// [plans] Plan id as published by Dynatrace.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags to assign to the resource.
  /// [users] User's information. A `user` block as defined below.
  const GetMonitorResult({
    required this.environmentProperties,
    required this.id,
    required this.identities,
    required this.location,
    required this.marketplaceSubscription,
    required this.monitoringEnabled,
    required this.name,
    required this.plans,
    required this.resourceGroupName,
    required this.tags,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentProperties': pulumi.Input.encodeList<GetMonitorEnvironmentProperty, Map<String, dynamic>>(environmentProperties, (value) => value.toMap()),
      'id': id,
      'identities': pulumi.Input.encodeList<GetMonitorIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'marketplaceSubscription': marketplaceSubscription,
      'monitoringEnabled': monitoringEnabled,
      'name': name,
      'plans': pulumi.Input.encodeList<GetMonitorPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'users': pulumi.Input.encodeList<GetMonitorUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorResult(
      environmentProperties: pulumi.Input.decodeList<GetMonitorEnvironmentProperty>(map['environmentProperties']!, (value) => GetMonitorEnvironmentProperty.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetMonitorIdentity>(map['identities']!, (value) => GetMonitorIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      marketplaceSubscription: map['marketplaceSubscription'] as String,
      monitoringEnabled: map['monitoringEnabled'] as bool,
      name: map['name'] as String,
      plans: pulumi.Input.decodeList<GetMonitorPlan>(map['plans']!, (value) => GetMonitorPlan.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      users: pulumi.Input.decodeList<GetMonitorUser>(map['users']!, (value) => GetMonitorUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

