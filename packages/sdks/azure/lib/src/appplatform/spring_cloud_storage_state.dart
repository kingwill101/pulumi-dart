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
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudServiceId,
    pulumi.Output<String>? storageAccountKey,
    pulumi.Output<String>? storageAccountName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asOptionalInput<String>(springCloudServiceId),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : pulumi.Output.create<String>(map['springCloudServiceId'] as String),
      storageAccountKey: map['storageAccountKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
    );
  }
}

