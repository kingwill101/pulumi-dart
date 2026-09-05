// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_environment_property.dart';
import 'get_monitor_identity.dart';
import 'get_monitor_plan.dart';
import 'get_monitor_user.dart';

/// Result data returned by getMonitor.
class GetMonitorResult {
  final List<GetMonitorEnvironmentProperty>? environmentProperties;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The kind of managed identity assigned to this resource.  A `identity` block as defined below.
  final List<GetMonitorIdentity>? identities;
  /// The Azure Region where the Dynatrace monitor should exist.
  final String? location;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  final String? marketplaceSubscription;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final bool? monitoringEnabled;
  final String? name;
  /// Plan id as published by Dynatrace.
  final List<GetMonitorPlan>? plans;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// User's information. A `user` block as defined below.
  final List<GetMonitorUser>? users;

  /// Creates a new [GetMonitorResult].
  /// [environmentProperties] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] The kind of managed identity assigned to this resource.  A `identity` block as defined below.
  /// [location] The Azure Region where the Dynatrace monitor should exist.
  /// [marketplaceSubscription] Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  /// [monitoringEnabled] Flag specifying if the resource monitoring is enabled or disabled.
  /// [name] Optional.
  /// [plans] Plan id as published by Dynatrace.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [users] User's information. A `user` block as defined below.
  const GetMonitorResult({
    this.environmentProperties,
    this.id,
    this.identities,
    this.location,
    this.marketplaceSubscription,
    this.monitoringEnabled,
    this.name,
    this.plans,
    this.resourceGroupName,
    this.tags,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentProperties': ?(() { final guardedValue = environmentProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMonitorEnvironmentProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMonitorIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'marketplaceSubscription': ?marketplaceSubscription,
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'plans': ?(() { final guardedValue = plans; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMonitorPlan, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'users': ?(() { final guardedValue = users; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMonitorUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorResult(
      environmentProperties: (() { final guardedValue = map['environmentProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMonitorEnvironmentProperty>(guardedValue, (value) => GetMonitorEnvironmentProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMonitorIdentity>(guardedValue, (value) => GetMonitorIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      marketplaceSubscription: (() { final guardedValue = map['marketplaceSubscription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitoringEnabled: (() { final guardedValue = map['monitoringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plans: (() { final guardedValue = map['plans']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMonitorPlan>(guardedValue, (value) => GetMonitorPlan.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMonitorUser>(guardedValue, (value) => GetMonitorUser.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
