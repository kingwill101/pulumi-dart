// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_network_connection_network_connection_args_doc}
/// The set of arguments for NetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_devcenter_network_connection_network_connection_args_doc}
class NetworkConnectionArgs {
  /// The Azure Active Directory Join type. Possible values are `AzureADJoin`, `HybridAzureADJoin` and `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainJoinType;
  /// The name of the Azure Active Directory domain.
  final pulumi.Input<String>? domainName;
  /// The password for the account used to join domain.
  final pulumi.Input<String>? domainPassword;
  /// The username of the Azure Active Directory account (user or service account) that has permissions to create computer objects in Active Directory.
  final pulumi.Input<String>? domainUsername;
  /// The Azure Region where the Dev Center Network Connection should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Dev Center Network Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Azure Active Directory domain Organization Unit (OU).
  final pulumi.Input<String>? organizationUnit;
  /// Specifies the name of the Resource Group within which this Dev Center Network Connection should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Subnet that is used to attach Virtual Machines.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags which should be assigned to the Dev Center Network Connection.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkConnectionArgs].
  /// [domainJoinType] The Azure Active Directory Join type. Possible values are `AzureADJoin`, `HybridAzureADJoin` and `None`. Changing this forces a new resource to be created.
  /// [domainName] The name of the Azure Active Directory domain.
  /// [domainPassword] The password for the account used to join domain.
  /// [domainUsername] The username of the Azure Active Directory account (user or service account) that has permissions to create computer objects in Active Directory.
  /// [location] The Azure Region where the Dev Center Network Connection should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Network Connection. Changing this forces a new resource to be created.
  /// [organizationUnit] The Azure Active Directory domain Organization Unit (OU).
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Dev Center Network Connection should exist. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet that is used to attach Virtual Machines.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Network Connection.
  const NetworkConnectionArgs({
    required this.domainJoinType,
    this.domainName,
    this.domainPassword,
    this.domainUsername,
    this.location,
    this.name,
    this.organizationUnit,
    required this.resourceGroupName,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainJoinType': domainJoinType,
      'domainName': ?domainName,
      'domainPassword': ?domainPassword,
      'domainUsername': ?domainUsername,
      'location': ?location,
      'name': ?name,
      'organizationUnit': ?organizationUnit,
      'resourceGroupName': resourceGroupName,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory NetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionArgs(
      domainJoinType: pulumi.Input.fromValue(map['domainJoinType'] as String),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainPassword: (() { final guardedValue = map['domainPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainUsername: (() { final guardedValue = map['domainUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationUnit: (() { final guardedValue = map['organizationUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
