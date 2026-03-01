// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_qumulo_file_system_file_system_args_doc}
/// The set of arguments for FileSystem.
/// {@endtemplate}
/// {@macro pulumi_qumulo_file_system_file_system_args_doc}
class FileSystemArgs {
  /// The initial administrator password of the Azure Native Qumulo Scalable File System. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminPassword;
  /// The email address used for the Azure Native Qumulo Scalable File System. Changing this forces a new resource to be created.
  final pulumi.Input<String> email;
  /// The Azure Region where the Azure Native Qumulo Scalable File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Azure Native Qumulo Scalable File System resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the marketplace offer ID. Defaults to `qumulo-saas-mpp`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? offerId;
  /// Specifies the marketplace plan ID. Defaults to `azure-native-qumulo-v3`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? planId;
  /// Specifies the marketplace publisher ID. Defaults to `qumulo1584033880660`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publisherId;
  /// Specifies the name of the Resource Group within which this Azure Native Qumulo Scalable File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The storage Sku. Possible values are `Cold_LRS`, `Hot_LRS` and `Hot_ZRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageSku;
  /// The delegated subnet ID for Vnet injection. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags which should be assigned to the File System.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Availability Zone in which the Azure Native Qumulo Scalable File system is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> zone;

  /// Creates a new [FileSystemArgs].
  /// [adminPassword] The initial administrator password of the Azure Native Qumulo Scalable File System. Changing this forces a new resource to be created.
  /// [email] The email address used for the Azure Native Qumulo Scalable File System. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Native Qumulo Scalable File System should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Azure Native Qumulo Scalable File System resource. Changing this forces a new resource to be created.
  /// [offerId] Specifies the marketplace offer ID. Defaults to `qumulo-saas-mpp`. Changing this forces a new resource to be created.
  /// [planId] Specifies the marketplace plan ID. Defaults to `azure-native-qumulo-v3`. Changing this forces a new resource to be created.
  /// [publisherId] Specifies the marketplace publisher ID. Defaults to `qumulo1584033880660`. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Azure Native Qumulo Scalable File System should exist. Changing this forces a new resource to be created.
  /// [storageSku] The storage Sku. Possible values are `Cold_LRS`, `Hot_LRS` and `Hot_ZRS`. Changing this forces a new resource to be created.
  /// [subnetId] The delegated subnet ID for Vnet injection. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the File System.
  /// [zone] The Availability Zone in which the Azure Native Qumulo Scalable File system is located. Changing this forces a new resource to be created.
  FileSystemArgs({
    required pulumi.Output<String> adminPassword,
    required pulumi.Output<String> email,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? offerId,
    pulumi.Output<String>? planId,
    pulumi.Output<String>? publisherId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageSku,
    required pulumi.Output<String> subnetId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> zone,
  }) :
      adminPassword = pulumi.Input.asInput<String>(adminPassword),
      email = pulumi.Input.asInput<String>(email),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      offerId = pulumi.Input.asOptionalInput<String>(offerId),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      publisherId = pulumi.Input.asOptionalInput<String>(publisherId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageSku = pulumi.Input.asInput<String>(storageSku),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'email': email,
      'location': ?location,
      'name': ?name,
      'offerId': ?offerId,
      'planId': ?planId,
      'publisherId': ?publisherId,
      'resourceGroupName': resourceGroupName,
      'storageSku': storageSku,
      'subnetId': subnetId,
      'tags': ?tags,
      'zone': zone,
    };
  }

  factory FileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemArgs(
      adminPassword: pulumi.Output.create<String>(map['adminPassword'] as String),
      email: pulumi.Output.create<String>(map['email'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      offerId: map['offerId'] == null ? null : pulumi.Output.create<String>(map['offerId'] as String),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      publisherId: map['publisherId'] == null ? null : pulumi.Output.create<String>(map['publisherId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageSku: pulumi.Output.create<String>(map['storageSku'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

