// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_amazon_kinesis_connection_properties.dart';
import 'goldengate_connection_properties_amazon_redshift_connection_properties.dart';
import 'goldengate_connection_properties_amazon_s3_connection_properties.dart';
import 'goldengate_connection_properties_azure_data_lake_storage_connection_properties.dart';
import 'goldengate_connection_properties_azure_synapse_analytics_connection_properties.dart';
import 'goldengate_connection_properties_databricks_connection_properties.dart';
import 'goldengate_connection_properties_db2_connection_properties.dart';
import 'goldengate_connection_properties_elasticsearch_connection_properties.dart';
import 'goldengate_connection_properties_generic_connection_properties.dart';
import 'goldengate_connection_properties_goldengate_connection_properties.dart';
import 'goldengate_connection_properties_google_big_query_connection_properties.dart';
import 'goldengate_connection_properties_google_cloud_storage_connection_properties.dart';
import 'goldengate_connection_properties_google_pubsub_connection_properties.dart';
import 'goldengate_connection_properties_hdfs_connection_properties.dart';
import 'goldengate_connection_properties_iceberg_connection_properties.dart';
import 'goldengate_connection_properties_java_message_service_connection_properties.dart';
import 'goldengate_connection_properties_kafka_connection_properties.dart';
import 'goldengate_connection_properties_kafka_schema_registry_connection_properties.dart';
import 'goldengate_connection_properties_microsoft_fabric_connection_properties.dart';
import 'goldengate_connection_properties_microsoft_sqlserver_connection_properties.dart';
import 'goldengate_connection_properties_mongodb_connection_properties.dart';
import 'goldengate_connection_properties_mysql_connection_properties.dart';
import 'goldengate_connection_properties_oci_object_storage_connection_properties.dart';
import 'goldengate_connection_properties_oracle_ai_data_platform_connection_properties.dart';
import 'goldengate_connection_properties_oracle_connection_properties.dart';
import 'goldengate_connection_properties_oracle_nosql_connection_properties.dart';
import 'goldengate_connection_properties_postgresql_connection_properties.dart';
import 'goldengate_connection_properties_redis_connection_properties.dart';
import 'goldengate_connection_properties_snowflake_connection_properties.dart';

class GoldengateConnectionProperties {
  /// The properties of GoldengateAmazonKinesisConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesAmazonKinesisConnectionProperties?>? amazonKinesisConnectionProperties;
  /// The properties of GoldengateAmazonRedshiftConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties?>? amazonRedshiftConnectionProperties;
  /// The properties of GoldengateAmazonS3Connection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesAmazonS3ConnectionProperties?>? amazonS3ConnectionProperties;
  /// The properties of GoldengateAzureDataLakeStorageConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties?>? azureDataLakeStorageConnectionProperties;
  /// The properties of GoldengateAzureSynapseAnalyticsConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties?>? azureSynapseAnalyticsConnectionProperties;
  /// The connection type.
  /// Possible values:
  /// GOLDENGATE
  /// KAFKA
  /// KAFKA_SCHEMA_REGISTRY
  /// MYSQL
  /// JAVA_MESSAGE_SERVICE
  /// MICROSOFT_SQLSERVER
  /// OCI_OBJECT_STORAGE
  /// ORACLE
  /// AZURE_DATA_LAKE_STORAGE
  /// POSTGRESQL
  /// AZURE_SYNAPSE_ANALYTICS
  /// SNOWFLAKE
  /// AMAZON_S3
  /// HDFS
  /// ORACLE_AI_DATA_PLATFORM
  /// ORACLE_NOSQL
  /// MONGODB
  /// AMAZON_KINESIS
  /// AMAZON_REDSHIFT
  /// DB2
  /// REDIS
  /// ELASTICSEARCH
  /// GENERIC
  /// GOOGLE_CLOUD_STORAGE
  /// GOOGLE_BIGQUERY
  /// DATABRICKS
  /// GOOGLE_PUBSUB
  /// MICROSOFT_FABRIC
  /// ICEBERG
  final pulumi.Input<String> connectionType;
  /// The properties of GoldengateDatabricksConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesDatabricksConnectionProperties?>? databricksConnectionProperties;
  /// The properties of GoldengateDb2Connection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesDb2ConnectionProperties?>? db2ConnectionProperties;
  /// Metadata about this specific object.
  final pulumi.Input<String?>? description;
  /// An object's Display Name.
  final pulumi.Input<String> displayName;
  /// The properties of GoldengateElasticsearchConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesElasticsearchConnectionProperties?>? elasticsearchConnectionProperties;
  /// The properties of GoldengateGenericConnectionProperties.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesGenericConnectionProperties?>? genericConnectionProperties;
  /// The properties of GoldengateGoldengateConnectionProperties.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesGoldengateConnectionProperties?>? goldengateConnectionProperties;
  /// The properties of GoldengateGoogleBigQueryConnectionProperties.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties?>? googleBigQueryConnectionProperties;
  /// The properties of GoldengateGoogleCloudStorageConnectionProperties.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties?>? googleCloudStorageConnectionProperties;
  /// The properties of GoldengateGooglePubsubConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesGooglePubsubConnectionProperties?>? googlePubsubConnectionProperties;
  /// The properties of GoldengateHdfsConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesHdfsConnectionProperties?>? hdfsConnectionProperties;
  /// The properties of GoldengateIcebergConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionProperties?>? icebergConnectionProperties;
  /// (Output)
  /// The Ingress IPs of the GoldengateConnection.
  final pulumi.Input<List<String>?>? ingressIpAddresses;
  /// The properties of GoldengateJavaMessageServiceConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties?>? javaMessageServiceConnectionProperties;
  /// The properties of GoldengateKafkaConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesKafkaConnectionProperties?>? kafkaConnectionProperties;
  /// The properties of GoldengateKafkaSchemaRegistryConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties?>? kafkaSchemaRegistryConnectionProperties;
  /// (Output)
  /// Describes the object's current state in detail. For example, it can be
  /// used to provide actionable information for a resource in a Failed state.
  final pulumi.Input<String?>? lifecycleDetails;
  /// (Output)
  /// The lifecycle state of the connection.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// DELETED
  /// FAILED
  final pulumi.Input<String?>? lifecycleState;
  /// The properties of GoldengateMicrosoftFabricConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties?>? microsoftFabricConnectionProperties;
  /// The properties of GoldengateMicrosoftSqlserverConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties?>? microsoftSqlserverConnectionProperties;
  /// The properties of GoldengateMongodbConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesMongodbConnectionProperties?>? mongodbConnectionProperties;
  /// Properties of GoldengateMysqlConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesMysqlConnectionProperties?>? mysqlConnectionProperties;
  /// The properties of GoldengateOciObjectStorageConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesOciObjectStorageConnectionProperties?>? ociObjectStorageConnectionProperties;
  /// (Output)
  /// The [OCID] of the connection being
  /// referenced.
  final pulumi.Input<String?>? ocid;
  /// The properties of GoldengateOracleAIDataPlatformConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties?>? oracleAiDataPlatformConnectionProperties;
  /// The properties of Goldengate Oracle Database Connection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesOracleConnectionProperties?>? oracleConnectionProperties;
  /// The properties of GoldengateOracleNosqlConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesOracleNosqlConnectionProperties?>? oracleNosqlConnectionProperties;
  /// The properties of GoldengatePostgresqlConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesPostgresqlConnectionProperties?>? postgresqlConnectionProperties;
  /// The properties of GoldengateRedisConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesRedisConnectionProperties?>? redisConnectionProperties;
  /// The routing method for the GoldengateConnection.
  /// Possible values:
  /// SHARED_DEPLOYMENT_ENDPOINT
  /// DEDICATED_ENDPOINT
  final pulumi.Input<String?>? routingMethod;
  /// The properties of GoldengateSnowflakeConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesSnowflakeConnectionProperties?>? snowflakeConnectionProperties;
  /// (Output)
  /// The time the resource was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [GoldengateConnectionProperties].
  /// [amazonKinesisConnectionProperties] The properties of GoldengateAmazonKinesisConnection.
  /// [amazonRedshiftConnectionProperties] The properties of GoldengateAmazonRedshiftConnection.
  /// [amazonS3ConnectionProperties] The properties of GoldengateAmazonS3Connection.
  /// [azureDataLakeStorageConnectionProperties] The properties of GoldengateAzureDataLakeStorageConnection.
  /// [azureSynapseAnalyticsConnectionProperties] The properties of GoldengateAzureSynapseAnalyticsConnection.
  /// [connectionType] The connection type.
  /// [databricksConnectionProperties] The properties of GoldengateDatabricksConnection.
  /// [db2ConnectionProperties] The properties of GoldengateDb2Connection.
  /// [description] Metadata about this specific object.
  /// [displayName] An object's Display Name.
  /// [elasticsearchConnectionProperties] The properties of GoldengateElasticsearchConnection.
  /// [genericConnectionProperties] The properties of GoldengateGenericConnectionProperties.
  /// [goldengateConnectionProperties] The properties of GoldengateGoldengateConnectionProperties.
  /// [googleBigQueryConnectionProperties] The properties of GoldengateGoogleBigQueryConnectionProperties.
  /// [googleCloudStorageConnectionProperties] The properties of GoldengateGoogleCloudStorageConnectionProperties.
  /// [googlePubsubConnectionProperties] The properties of GoldengateGooglePubsubConnection.
  /// [hdfsConnectionProperties] The properties of GoldengateHdfsConnection.
  /// [icebergConnectionProperties] The properties of GoldengateIcebergConnection.
  /// [ingressIpAddresses] (Output)
  /// [javaMessageServiceConnectionProperties] The properties of GoldengateJavaMessageServiceConnection.
  /// [kafkaConnectionProperties] The properties of GoldengateKafkaConnection.
  /// [kafkaSchemaRegistryConnectionProperties] The properties of GoldengateKafkaSchemaRegistryConnection.
  /// [lifecycleDetails] (Output)
  /// [lifecycleState] (Output)
  /// [microsoftFabricConnectionProperties] The properties of GoldengateMicrosoftFabricConnection.
  /// [microsoftSqlserverConnectionProperties] The properties of GoldengateMicrosoftSqlserverConnection.
  /// [mongodbConnectionProperties] The properties of GoldengateMongodbConnection.
  /// [mysqlConnectionProperties] Properties of GoldengateMysqlConnection.
  /// [ociObjectStorageConnectionProperties] The properties of GoldengateOciObjectStorageConnection.
  /// [ocid] (Output)
  /// [oracleAiDataPlatformConnectionProperties] The properties of GoldengateOracleAIDataPlatformConnection.
  /// [oracleConnectionProperties] The properties of Goldengate Oracle Database Connection.
  /// [oracleNosqlConnectionProperties] The properties of GoldengateOracleNosqlConnection.
  /// [postgresqlConnectionProperties] The properties of GoldengatePostgresqlConnection.
  /// [redisConnectionProperties] The properties of GoldengateRedisConnection.
  /// [routingMethod] The routing method for the GoldengateConnection.
  /// [snowflakeConnectionProperties] The properties of GoldengateSnowflakeConnection.
  /// [updateTime] (Output)
  const GoldengateConnectionProperties({
    this.amazonKinesisConnectionProperties,
    this.amazonRedshiftConnectionProperties,
    this.amazonS3ConnectionProperties,
    this.azureDataLakeStorageConnectionProperties,
    this.azureSynapseAnalyticsConnectionProperties,
    required this.connectionType,
    this.databricksConnectionProperties,
    this.db2ConnectionProperties,
    this.description,
    required this.displayName,
    this.elasticsearchConnectionProperties,
    this.genericConnectionProperties,
    this.goldengateConnectionProperties,
    this.googleBigQueryConnectionProperties,
    this.googleCloudStorageConnectionProperties,
    this.googlePubsubConnectionProperties,
    this.hdfsConnectionProperties,
    this.icebergConnectionProperties,
    this.ingressIpAddresses,
    this.javaMessageServiceConnectionProperties,
    this.kafkaConnectionProperties,
    this.kafkaSchemaRegistryConnectionProperties,
    this.lifecycleDetails,
    this.lifecycleState,
    this.microsoftFabricConnectionProperties,
    this.microsoftSqlserverConnectionProperties,
    this.mongodbConnectionProperties,
    this.mysqlConnectionProperties,
    this.ociObjectStorageConnectionProperties,
    this.ocid,
    this.oracleAiDataPlatformConnectionProperties,
    this.oracleConnectionProperties,
    this.oracleNosqlConnectionProperties,
    this.postgresqlConnectionProperties,
    this.redisConnectionProperties,
    this.routingMethod,
    this.snowflakeConnectionProperties,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonKinesisConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesAmazonKinesisConnectionProperties, Map<String, dynamic>>(amazonKinesisConnectionProperties, (value) => value.toMap()),
      'amazonRedshiftConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties, Map<String, dynamic>>(amazonRedshiftConnectionProperties, (value) => value.toMap()),
      'amazonS3ConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesAmazonS3ConnectionProperties, Map<String, dynamic>>(amazonS3ConnectionProperties, (value) => value.toMap()),
      'azureDataLakeStorageConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties, Map<String, dynamic>>(azureDataLakeStorageConnectionProperties, (value) => value.toMap()),
      'azureSynapseAnalyticsConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties, Map<String, dynamic>>(azureSynapseAnalyticsConnectionProperties, (value) => value.toMap()),
      'connectionType': connectionType,
      'databricksConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesDatabricksConnectionProperties, Map<String, dynamic>>(databricksConnectionProperties, (value) => value.toMap()),
      'db2ConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesDb2ConnectionProperties, Map<String, dynamic>>(db2ConnectionProperties, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'elasticsearchConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesElasticsearchConnectionProperties, Map<String, dynamic>>(elasticsearchConnectionProperties, (value) => value.toMap()),
      'genericConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesGenericConnectionProperties, Map<String, dynamic>>(genericConnectionProperties, (value) => value.toMap()),
      'goldengateConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesGoldengateConnectionProperties, Map<String, dynamic>>(goldengateConnectionProperties, (value) => value.toMap()),
      'googleBigQueryConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties, Map<String, dynamic>>(googleBigQueryConnectionProperties, (value) => value.toMap()),
      'googleCloudStorageConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties, Map<String, dynamic>>(googleCloudStorageConnectionProperties, (value) => value.toMap()),
      'googlePubsubConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesGooglePubsubConnectionProperties, Map<String, dynamic>>(googlePubsubConnectionProperties, (value) => value.toMap()),
      'hdfsConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesHdfsConnectionProperties, Map<String, dynamic>>(hdfsConnectionProperties, (value) => value.toMap()),
      'icebergConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionProperties, Map<String, dynamic>>(icebergConnectionProperties, (value) => value.toMap()),
      'ingressIpAddresses': ?ingressIpAddresses,
      'javaMessageServiceConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties, Map<String, dynamic>>(javaMessageServiceConnectionProperties, (value) => value.toMap()),
      'kafkaConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesKafkaConnectionProperties, Map<String, dynamic>>(kafkaConnectionProperties, (value) => value.toMap()),
      'kafkaSchemaRegistryConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties, Map<String, dynamic>>(kafkaSchemaRegistryConnectionProperties, (value) => value.toMap()),
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'microsoftFabricConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties, Map<String, dynamic>>(microsoftFabricConnectionProperties, (value) => value.toMap()),
      'microsoftSqlserverConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties, Map<String, dynamic>>(microsoftSqlserverConnectionProperties, (value) => value.toMap()),
      'mongodbConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesMongodbConnectionProperties, Map<String, dynamic>>(mongodbConnectionProperties, (value) => value.toMap()),
      'mysqlConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesMysqlConnectionProperties, Map<String, dynamic>>(mysqlConnectionProperties, (value) => value.toMap()),
      'ociObjectStorageConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesOciObjectStorageConnectionProperties, Map<String, dynamic>>(ociObjectStorageConnectionProperties, (value) => value.toMap()),
      'ocid': ?ocid,
      'oracleAiDataPlatformConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties, Map<String, dynamic>>(oracleAiDataPlatformConnectionProperties, (value) => value.toMap()),
      'oracleConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesOracleConnectionProperties, Map<String, dynamic>>(oracleConnectionProperties, (value) => value.toMap()),
      'oracleNosqlConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesOracleNosqlConnectionProperties, Map<String, dynamic>>(oracleNosqlConnectionProperties, (value) => value.toMap()),
      'postgresqlConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesPostgresqlConnectionProperties, Map<String, dynamic>>(postgresqlConnectionProperties, (value) => value.toMap()),
      'redisConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesRedisConnectionProperties, Map<String, dynamic>>(redisConnectionProperties, (value) => value.toMap()),
      'routingMethod': ?routingMethod,
      'snowflakeConnectionProperties': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesSnowflakeConnectionProperties, Map<String, dynamic>>(snowflakeConnectionProperties, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory GoldengateConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionProperties(
      amazonKinesisConnectionProperties: (() { final guardedValue = map['amazonKinesisConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesAmazonKinesisConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amazonRedshiftConnectionProperties: (() { final guardedValue = map['amazonRedshiftConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amazonS3ConnectionProperties: (() { final guardedValue = map['amazonS3ConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesAmazonS3ConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureDataLakeStorageConnectionProperties: (() { final guardedValue = map['azureDataLakeStorageConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSynapseAnalyticsConnectionProperties: (() { final guardedValue = map['azureSynapseAnalyticsConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      databricksConnectionProperties: (() { final guardedValue = map['databricksConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesDatabricksConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      db2ConnectionProperties: (() { final guardedValue = map['db2ConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesDb2ConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      elasticsearchConnectionProperties: (() { final guardedValue = map['elasticsearchConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesElasticsearchConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      genericConnectionProperties: (() { final guardedValue = map['genericConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesGenericConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goldengateConnectionProperties: (() { final guardedValue = map['goldengateConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesGoldengateConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleBigQueryConnectionProperties: (() { final guardedValue = map['googleBigQueryConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesGoogleBigQueryConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudStorageConnectionProperties: (() { final guardedValue = map['googleCloudStorageConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googlePubsubConnectionProperties: (() { final guardedValue = map['googlePubsubConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesGooglePubsubConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hdfsConnectionProperties: (() { final guardedValue = map['hdfsConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesHdfsConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      icebergConnectionProperties: (() { final guardedValue = map['icebergConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressIpAddresses: (() { final guardedValue = map['ingressIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      javaMessageServiceConnectionProperties: (() { final guardedValue = map['javaMessageServiceConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kafkaConnectionProperties: (() { final guardedValue = map['kafkaConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesKafkaConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kafkaSchemaRegistryConnectionProperties: (() { final guardedValue = map['kafkaSchemaRegistryConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleDetails: (() { final guardedValue = map['lifecycleDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftFabricConnectionProperties: (() { final guardedValue = map['microsoftFabricConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftSqlserverConnectionProperties: (() { final guardedValue = map['microsoftSqlserverConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mongodbConnectionProperties: (() { final guardedValue = map['mongodbConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesMongodbConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlConnectionProperties: (() { final guardedValue = map['mysqlConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesMysqlConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ociObjectStorageConnectionProperties: (() { final guardedValue = map['ociObjectStorageConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesOciObjectStorageConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oracleAiDataPlatformConnectionProperties: (() { final guardedValue = map['oracleAiDataPlatformConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleConnectionProperties: (() { final guardedValue = map['oracleConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesOracleConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleNosqlConnectionProperties: (() { final guardedValue = map['oracleNosqlConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesOracleNosqlConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresqlConnectionProperties: (() { final guardedValue = map['postgresqlConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesPostgresqlConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redisConnectionProperties: (() { final guardedValue = map['redisConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesRedisConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingMethod: (() { final guardedValue = map['routingMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snowflakeConnectionProperties: (() { final guardedValue = map['snowflakeConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesSnowflakeConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
