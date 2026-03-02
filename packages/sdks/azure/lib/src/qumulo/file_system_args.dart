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
    required this.adminPassword,
    required this.email,
    this.location,
    this.name,
    this.offerId,
    this.planId,
    this.publisherId,
    required this.resourceGroupName,
    required this.storageSku,
    required this.subnetId,
    this.tags,
    required this.zone,
  });

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
      adminPassword: (map['adminPassword'] as String).input(),
      email: (map['email'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      offerId: map['offerId'] == null ? null : (map['offerId']! as String).input(),
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      publisherId: map['publisherId'] == null ? null : (map['publisherId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageSku: (map['storageSku'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

