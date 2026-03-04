// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudStorage resources.
class SpringCloudStorageState {
  /// The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created.
  final pulumi.Input<String>? name;

  /// The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created.
  final pulumi.Input<String>? springCloudServiceId;

  /// The access key of the Azure Storage Account.
  final pulumi.Input<String>? storageAccountKey;

  /// The account name of the Azure Storage Account.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [SpringCloudStorageState].
  /// [name] The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created.
  /// [storageAccountKey] The access key of the Azure Storage Account.
  /// [storageAccountName] The account name of the Azure Storage Account.
  SpringCloudStorageState({
    this.name,
    this.springCloudServiceId,
    this.storageAccountKey,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudServiceId': ?springCloudServiceId,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory SpringCloudStorageState.fromMap(Map<String, dynamic> map) {
    return SpringCloudStorageState(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      springCloudServiceId: (() {
        final guardedValue = map['springCloudServiceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountKey: (() {
        final guardedValue = map['storageAccountKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountName: (() {
        final guardedValue = map['storageAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
