// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_iceberg_connection_properties_storage_amazon_s3_iceberg_storage.dart';
import 'goldengate_connection_properties_iceberg_connection_properties_storage_azure_data_lake_storage_iceberg_storage.dart';
import 'goldengate_connection_properties_iceberg_connection_properties_storage_google_cloud_storage_iceberg_storage.dart';

class GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage {
  /// The Amazon S3 Iceberg storage.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage?>? amazonS3IcebergStorage;
  /// The Azure Data Lake Storage Iceberg storage.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage?>? azureDataLakeStorageIcebergStorage;
  /// The Google Cloud Storage Iceberg storage.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage?>? googleCloudStorageIcebergStorage;
  /// The type of Iceberg storage.
  /// Possible values:
  /// AMAZON_S3
  /// GOOGLE_CLOUD_STORAGE
  /// AZURE_DATA_LAKE_STORAGE
  ///
  ///
  /// &lt;a name="nestedPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage"&gt;&lt;/a&gt;The `amazonS3IcebergStorage` block supports:
  final pulumi.Input<String> storageType;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage].
  /// [amazonS3IcebergStorage] The Amazon S3 Iceberg storage.
  /// [azureDataLakeStorageIcebergStorage] The Azure Data Lake Storage Iceberg storage.
  /// [googleCloudStorageIcebergStorage] The Google Cloud Storage Iceberg storage.
  /// [storageType] The type of Iceberg storage.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage({
    this.amazonS3IcebergStorage,
    this.azureDataLakeStorageIcebergStorage,
    this.googleCloudStorageIcebergStorage,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3IcebergStorage': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage, Map<String, dynamic>>(amazonS3IcebergStorage, (value) => value.toMap()),
      'azureDataLakeStorageIcebergStorage': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage, Map<String, dynamic>>(azureDataLakeStorageIcebergStorage, (value) => value.toMap()),
      'googleCloudStorageIcebergStorage': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage, Map<String, dynamic>>(googleCloudStorageIcebergStorage, (value) => value.toMap()),
      'storageType': storageType,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage(
      amazonS3IcebergStorage: (() { final guardedValue = map['amazonS3IcebergStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureDataLakeStorageIcebergStorage: (() { final guardedValue = map['azureDataLakeStorageIcebergStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudStorageIcebergStorage: (() { final guardedValue = map['googleCloudStorageIcebergStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}
