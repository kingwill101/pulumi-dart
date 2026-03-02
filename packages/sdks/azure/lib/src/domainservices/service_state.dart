// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_initial_replica_set.dart';
import 'service_notifications.dart';
import 'service_secure_ldap.dart';
import 'service_security.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// A unique ID for the managed domain deployment.
  final pulumi.Input<String>? deploymentId;
  /// The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? domainConfigurationType;
  /// The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created.
  final pulumi.Input<String>? domainName;
  /// Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`.
  final pulumi.Input<bool>? filteredSyncEnabled;
  /// An `initial_replica_set` block as defined below. The initial replica set inherits the same location as the Domain Service resource.
  final pulumi.Input<ServiceInitialReplicaSet>? initialReplicaSet;
  /// The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `notifications` block as defined below.
  final pulumi.Input<ServiceNotifications>? notifications;
  /// The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Azure resource ID for the domain service.
  final pulumi.Input<String>? resourceId;
  /// A `secure_ldap` block as defined below.
  final pulumi.Input<ServiceSecureLdap>? secureLdap;
  /// A `security` block as defined below.
  final pulumi.Input<ServiceSecurity>? security;
  /// The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  final pulumi.Input<String>? sku;
  final pulumi.Input<String>? syncOwner;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<int>? version;

  /// Creates a new [ServiceState].
  /// [deploymentId] A unique ID for the managed domain deployment.
  /// [domainConfigurationType] The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created.
  /// [domainName] The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created.
  /// [filteredSyncEnabled] Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`.
  /// [initialReplicaSet] An `initial_replica_set` block as defined below. The initial replica set inherits the same location as the Domain Service resource.
  /// [location] The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  /// [name] The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created.
  /// [notifications] A `notifications` block as defined below.
  /// [resourceGroupName] The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created.
  /// [resourceId] The Azure resource ID for the domain service.
  /// [secureLdap] A `secure_ldap` block as defined below.
  /// [security] A `security` block as defined below.
  /// [sku] The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  /// [syncOwner] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantId] Optional.
  /// [version] Optional.
  ServiceState({
    this.deploymentId,
    this.domainConfigurationType,
    this.domainName,
    this.filteredSyncEnabled,
    this.initialReplicaSet,
    this.location,
    this.name,
    this.notifications,
    this.resourceGroupName,
    this.resourceId,
    this.secureLdap,
    this.security,
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
      'initialReplicaSet': ?pulumi.Input.mapOptionalInputValue<ServiceInitialReplicaSet, Map<String, dynamic>>(initialReplicaSet, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<ServiceNotifications, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'resourceId': ?resourceId,
      'secureLdap': ?pulumi.Input.mapOptionalInputValue<ServiceSecureLdap, Map<String, dynamic>>(secureLdap, (value) => value.toMap()),
      'security': ?pulumi.Input.mapOptionalInputValue<ServiceSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'sku': ?sku,
      'syncOwner': ?syncOwner,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'version': ?version,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId']! as String).input(),
      domainConfigurationType: map['domainConfigurationType'] == null ? null : (map['domainConfigurationType']! as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      filteredSyncEnabled: map['filteredSyncEnabled'] == null ? null : (map['filteredSyncEnabled']! as bool).input(),
      initialReplicaSet: map['initialReplicaSet'] == null ? null : (ServiceInitialReplicaSet.fromMap((map['initialReplicaSet']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notifications: map['notifications'] == null ? null : (ServiceNotifications.fromMap((map['notifications']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      secureLdap: map['secureLdap'] == null ? null : (ServiceSecureLdap.fromMap((map['secureLdap']! as Map).cast<String, dynamic>())).input(),
      security: map['security'] == null ? null : (ServiceSecurity.fromMap((map['security']! as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      syncOwner: map['syncOwner'] == null ? null : (map['syncOwner']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

