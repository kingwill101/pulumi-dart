// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_initial_replica_set.dart';
import 'service_notifications.dart';
import 'service_secure_ldap.dart';
import 'service_security.dart';

/// {@template pulumi_domainservices_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_domainservices_service_service_args_doc}
class ServiceArgs {
  /// The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? domainConfigurationType;
  /// The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainName;
  /// Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`.
  final pulumi.Input<bool?>? filteredSyncEnabled;
  /// An `initialReplicaSet` block as defined below. The initial replica set inherits the same location as the Domain Service resource.
  final pulumi.Input<ServiceInitialReplicaSet> initialReplicaSet;
  /// The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `notifications` block as defined below.
  final pulumi.Input<ServiceNotifications?>? notifications;
  /// The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `secureLdap` block as defined below.
  final pulumi.Input<ServiceSecureLdap?>? secureLdap;
  /// A `security` block as defined below.
  final pulumi.Input<ServiceSecurity?>? security;
  /// The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  final pulumi.Input<String> sku;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServiceArgs].
  /// [domainConfigurationType] The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created.
  /// [domainName] The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created.
  /// [filteredSyncEnabled] Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`.
  /// [initialReplicaSet] An `initialReplicaSet` block as defined below. The initial replica set inherits the same location as the Domain Service resource.
  /// [location] The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  /// [name] The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created.
  /// [notifications] A `notifications` block as defined below.
  /// [resourceGroupName] The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created.
  /// [secureLdap] A `secureLdap` block as defined below.
  /// [security] A `security` block as defined below.
  /// [sku] The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  /// [tags] A mapping of tags assigned to the resource.
  const ServiceArgs({
    this.domainConfigurationType,
    required this.domainName,
    this.filteredSyncEnabled,
    required this.initialReplicaSet,
    this.location,
    this.name,
    this.notifications,
    required this.resourceGroupName,
    this.secureLdap,
    this.security,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainConfigurationType': ?domainConfigurationType,
      'domainName': domainName,
      'filteredSyncEnabled': ?filteredSyncEnabled,
      'initialReplicaSet': pulumi.Input.mapInputValue<ServiceInitialReplicaSet, Map<String, dynamic>>(initialReplicaSet, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<ServiceNotifications, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secureLdap': ?pulumi.Input.mapOptionalInputValue<ServiceSecureLdap, Map<String, dynamic>>(secureLdap, (value) => value.toMap()),
      'security': ?pulumi.Input.mapOptionalInputValue<ServiceSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'sku': sku,
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      domainConfigurationType: (() { final guardedValue = map['domainConfigurationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      filteredSyncEnabled: (() { final guardedValue = map['filteredSyncEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      initialReplicaSet: pulumi.Input.fromValue(ServiceInitialReplicaSet.fromMap((map['initialReplicaSet']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secureLdap: (() { final guardedValue = map['secureLdap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSecureLdap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSecurity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
