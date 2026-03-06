// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FileSystem resources.
class FileSystemState {
  /// The initial administrator password of the Azure Native Qumulo Scalable File System. Changing this forces a new resource to be created.
  final pulumi.Input<String>? adminPassword;
  /// The email address used for the Azure Native Qumulo Scalable File System. Changing this forces a new resource to be created.
  final pulumi.Input<String>? email;
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
  final pulumi.Input<String>? resourceGroupName;
  /// The storage Sku. Possible values are `Cold_LRS`, `Hot_LRS` and `Hot_ZRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageSku;
  /// The delegated subnet ID for Vnet injection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags which should be assigned to the File System.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Availability Zone in which the Azure Native Qumulo Scalable File system is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zone;

  /// Creates a new [FileSystemState].
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
  const FileSystemState({
    this.adminPassword,
    this.email,
    this.location,
    this.name,
    this.offerId,
    this.planId,
    this.publisherId,
    this.resourceGroupName,
    this.storageSku,
    this.subnetId,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'email': ?email,
      'location': ?location,
      'name': ?name,
      'offerId': ?offerId,
      'planId': ?planId,
      'publisherId': ?publisherId,
      'resourceGroupName': ?resourceGroupName,
      'storageSku': ?storageSku,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory FileSystemState.fromMap(Map<String, dynamic> map) {
    return FileSystemState(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offerId: (() { final guardedValue = map['offerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherId: (() { final guardedValue = map['publisherId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSku: (() { final guardedValue = map['storageSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

