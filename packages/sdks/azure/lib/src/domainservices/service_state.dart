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
    pulumi.Output<String>? deploymentId,
    pulumi.Output<String>? domainConfigurationType,
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? filteredSyncEnabled,
    pulumi.Output<ServiceInitialReplicaSet>? initialReplicaSet,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ServiceNotifications>? notifications,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? resourceId,
    pulumi.Output<ServiceSecureLdap>? secureLdap,
    pulumi.Output<ServiceSecurity>? security,
    pulumi.Output<String>? sku,
    pulumi.Output<String>? syncOwner,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<int>? version,
  }) :
      deploymentId = pulumi.Input.asOptionalInput<String>(deploymentId),
      domainConfigurationType = pulumi.Input.asOptionalInput<String>(domainConfigurationType),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      filteredSyncEnabled = pulumi.Input.asOptionalInput<bool>(filteredSyncEnabled),
      initialReplicaSet = pulumi.Input.asOptionalInput<ServiceInitialReplicaSet>(initialReplicaSet),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asOptionalInput<ServiceNotifications>(notifications),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      secureLdap = pulumi.Input.asOptionalInput<ServiceSecureLdap>(secureLdap),
      security = pulumi.Input.asOptionalInput<ServiceSecurity>(security),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      syncOwner = pulumi.Input.asOptionalInput<String>(syncOwner),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      deploymentId: map['deploymentId'] == null ? null : pulumi.Output.create<String>(map['deploymentId'] as String),
      domainConfigurationType: map['domainConfigurationType'] == null ? null : pulumi.Output.create<String>(map['domainConfigurationType'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      filteredSyncEnabled: map['filteredSyncEnabled'] == null ? null : pulumi.Output.create<bool>(map['filteredSyncEnabled'] as bool),
      initialReplicaSet: map['initialReplicaSet'] == null ? null : pulumi.Output.create<ServiceInitialReplicaSet>(ServiceInitialReplicaSet.fromMap((map['initialReplicaSet'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: map['notifications'] == null ? null : pulumi.Output.create<ServiceNotifications>(ServiceNotifications.fromMap((map['notifications'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      secureLdap: map['secureLdap'] == null ? null : pulumi.Output.create<ServiceSecureLdap>(ServiceSecureLdap.fromMap((map['secureLdap'] as Map).cast<String, dynamic>())),
      security: map['security'] == null ? null : pulumi.Output.create<ServiceSecurity>(ServiceSecurity.fromMap((map['security'] as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      syncOwner: map['syncOwner'] == null ? null : pulumi.Output.create<String>(map['syncOwner'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

