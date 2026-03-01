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
    required pulumi.Output<String> domainJoinType,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? domainPassword,
    pulumi.Output<String>? domainUsername,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organizationUnit,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> subnetId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      domainJoinType = pulumi.Input.asInput<String>(domainJoinType),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainPassword = pulumi.Input.asOptionalInput<String>(domainPassword),
      domainUsername = pulumi.Input.asOptionalInput<String>(domainUsername),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationUnit = pulumi.Input.asOptionalInput<String>(organizationUnit),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      domainJoinType: pulumi.Output.create<String>(map['domainJoinType'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainPassword: map['domainPassword'] == null ? null : pulumi.Output.create<String>(map['domainPassword'] as String),
      domainUsername: map['domainUsername'] == null ? null : pulumi.Output.create<String>(map['domainUsername'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationUnit: map['organizationUnit'] == null ? null : pulumi.Output.create<String>(map['organizationUnit'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

