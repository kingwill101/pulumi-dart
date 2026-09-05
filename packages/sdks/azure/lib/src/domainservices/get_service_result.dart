// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_notification.dart';
import 'get_service_replica_set.dart';
import 'get_service_secure_ldap.dart';
import 'get_service_security.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// A unique ID for the managed domain deployment.
  final String? deploymentId;
  /// The forest type used by the managed domain. One of `ResourceTrusting`, for a _Resource Forest_, or blank, for a _User Forest_.
  final String? domainConfigurationType;
  /// The Active Directory domain of the Domain Service. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations.
  final String? domainName;
  /// Whether group-based filtered sync (also called scoped synchronisation) is enabled.
  final bool? filteredSyncEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location in which the replica set resides.
  final String? location;
  final String? name;
  /// A `notifications` block as defined below.
  final List<GetServiceNotification>? notifications;
  /// One or more `replicaSet` blocks as defined below.
  final List<GetServiceReplicaSet>? replicaSets;
  final String? resourceGroupName;
  final String? resourceId;
  /// A `secureLdap` block as defined below.
  final List<GetServiceSecureLdap>? secureLdaps;
  /// A `security` block as defined below.
  final List<GetServiceSecurity>? securities;
  /// The SKU of the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  final String? sku;
  final String? syncOwner;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  final String? tenantId;
  final int? version;

  /// Creates a new [GetServiceResult].
  /// [deploymentId] A unique ID for the managed domain deployment.
  /// [domainConfigurationType] The forest type used by the managed domain. One of `ResourceTrusting`, for a _Resource Forest_, or blank, for a _User Forest_.
  /// [domainName] The Active Directory domain of the Domain Service. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations.
  /// [filteredSyncEnabled] Whether group-based filtered sync (also called scoped synchronisation) is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location in which the replica set resides.
  /// [name] Optional.
  /// [notifications] A `notifications` block as defined below.
  /// [replicaSets] One or more `replicaSet` blocks as defined below.
  /// [resourceGroupName] Optional.
  /// [resourceId] Optional.
  /// [secureLdaps] A `secureLdap` block as defined below.
  /// [securities] A `security` block as defined below.
  /// [sku] The SKU of the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  /// [syncOwner] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantId] Optional.
  /// [version] Optional.
  const GetServiceResult({
    this.deploymentId,
    this.domainConfigurationType,
    this.domainName,
    this.filteredSyncEnabled,
    this.id,
    this.location,
    this.name,
    this.notifications,
    this.replicaSets,
    this.resourceGroupName,
    this.resourceId,
    this.secureLdaps,
    this.securities,
    this.sku,
    this.syncOwner,
    this.tags,
    this.tenantId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'domainConfigurationType': ?domainConfigurationType,
      'domainName': ?domainName,
      'filteredSyncEnabled': ?filteredSyncEnabled,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'notifications': ?(() { final guardedValue = notifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceNotification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'replicaSets': ?(() { final guardedValue = replicaSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceReplicaSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'resourceId': ?resourceId,
      'secureLdaps': ?(() { final guardedValue = secureLdaps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceSecureLdap, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securities': ?(() { final guardedValue = securities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceSecurity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sku': ?sku,
      'syncOwner': ?syncOwner,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'version': ?version,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainConfigurationType: (() { final guardedValue = map['domainConfigurationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filteredSyncEnabled: (() { final guardedValue = map['filteredSyncEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceNotification>(guardedValue, (value) => GetServiceNotification.fromMap((value as Map).cast<String, dynamic>())); })(),
      replicaSets: (() { final guardedValue = map['replicaSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceReplicaSet>(guardedValue, (value) => GetServiceReplicaSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secureLdaps: (() { final guardedValue = map['secureLdaps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceSecureLdap>(guardedValue, (value) => GetServiceSecureLdap.fromMap((value as Map).cast<String, dynamic>())); })(),
      securities: (() { final guardedValue = map['securities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceSecurity>(guardedValue, (value) => GetServiceSecurity.fromMap((value as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncOwner: (() { final guardedValue = map['syncOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
