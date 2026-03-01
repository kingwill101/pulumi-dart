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
  final pulumi.Input<String>? domainConfigurationType;
  /// The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainName;
  /// Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`.
  final pulumi.Input<bool>? filteredSyncEnabled;
  /// An `initial_replica_set` block as defined below. The initial replica set inherits the same location as the Domain Service resource.
  final pulumi.Input<ServiceInitialReplicaSet> initialReplicaSet;
  /// The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `notifications` block as defined below.
  final pulumi.Input<ServiceNotifications>? notifications;
  /// The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `secure_ldap` block as defined below.
  final pulumi.Input<ServiceSecureLdap>? secureLdap;
  /// A `security` block as defined below.
  final pulumi.Input<ServiceSecurity>? security;
  /// The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  final pulumi.Input<String> sku;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [domainConfigurationType] The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created.
  /// [domainName] The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created.
  /// [filteredSyncEnabled] Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`.
  /// [initialReplicaSet] An `initial_replica_set` block as defined below. The initial replica set inherits the same location as the Domain Service resource.
  /// [location] The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  /// [name] The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created.
  /// [notifications] A `notifications` block as defined below.
  /// [resourceGroupName] The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created.
  /// [secureLdap] A `secure_ldap` block as defined below.
  /// [security] A `security` block as defined below.
  /// [sku] The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  /// [tags] A mapping of tags assigned to the resource.
  ServiceArgs({
    pulumi.Output<String>? domainConfigurationType,
    required pulumi.Output<String> domainName,
    pulumi.Output<bool>? filteredSyncEnabled,
    required pulumi.Output<ServiceInitialReplicaSet> initialReplicaSet,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ServiceNotifications>? notifications,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ServiceSecureLdap>? secureLdap,
    pulumi.Output<ServiceSecurity>? security,
    required pulumi.Output<String> sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      domainConfigurationType = pulumi.Input.asOptionalInput<String>(domainConfigurationType),
      domainName = pulumi.Input.asInput<String>(domainName),
      filteredSyncEnabled = pulumi.Input.asOptionalInput<bool>(filteredSyncEnabled),
      initialReplicaSet = pulumi.Input.asInput<ServiceInitialReplicaSet>(initialReplicaSet),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asOptionalInput<ServiceNotifications>(notifications),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secureLdap = pulumi.Input.asOptionalInput<ServiceSecureLdap>(secureLdap),
      security = pulumi.Input.asOptionalInput<ServiceSecurity>(security),
      sku = pulumi.Input.asInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      domainConfigurationType: map['domainConfigurationType'] == null ? null : pulumi.Output.create<String>(map['domainConfigurationType'] as String),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      filteredSyncEnabled: map['filteredSyncEnabled'] == null ? null : pulumi.Output.create<bool>(map['filteredSyncEnabled'] as bool),
      initialReplicaSet: pulumi.Output.create<ServiceInitialReplicaSet>(ServiceInitialReplicaSet.fromMap((map['initialReplicaSet'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: map['notifications'] == null ? null : pulumi.Output.create<ServiceNotifications>(ServiceNotifications.fromMap((map['notifications'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secureLdap: map['secureLdap'] == null ? null : pulumi.Output.create<ServiceSecureLdap>(ServiceSecureLdap.fromMap((map['secureLdap'] as Map).cast<String, dynamic>())),
      security: map['security'] == null ? null : pulumi.Output.create<ServiceSecurity>(ServiceSecurity.fromMap((map['security'] as Map).cast<String, dynamic>())),
      sku: pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

