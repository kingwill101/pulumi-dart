// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage {
  /// The account key of Azure Data Lake Storage.
  final pulumi.Input<String?>? accountKeySecret;
  /// The account of Azure Data Lake Storage.
  final pulumi.Input<String> azureAccount;
  /// The container of Azure Data Lake Storage.
  final pulumi.Input<String> container;
  /// The endpoint of Azure Data Lake Storage.
  final pulumi.Input<String?>? endpoint;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage].
  /// [accountKeySecret] The account key of Azure Data Lake Storage.
  /// [azureAccount] The account of Azure Data Lake Storage.
  /// [container] The container of Azure Data Lake Storage.
  /// [endpoint] The endpoint of Azure Data Lake Storage.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage({
    this.accountKeySecret,
    required this.azureAccount,
    required this.container,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKeySecret': ?accountKeySecret,
      'azureAccount': azureAccount,
      'container': container,
      'endpoint': ?endpoint,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage(
      accountKeySecret: (() { final guardedValue = map['accountKeySecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureAccount: pulumi.Input.fromValue(map['azureAccount'] as String),
      container: pulumi.Input.fromValue(map['container'] as String),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
