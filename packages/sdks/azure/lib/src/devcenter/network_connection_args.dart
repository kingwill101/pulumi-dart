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
  NetworkConnectionArgs({
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
      domainJoinType: (map['domainJoinType'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      domainPassword: map['domainPassword'] == null ? null : (map['domainPassword'] as String).input(),
      domainUsername: map['domainUsername'] == null ? null : (map['domainUsername'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      organizationUnit: map['organizationUnit'] == null ? null : (map['organizationUnit'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

