// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_integration_runtime.dart';

/// Input properties used for looking up and filtering LinkedService resources.
class LinkedServiceState {
  /// A map of additional properties to associate with the Synapse Linked Service.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Synapse Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The description for the Synapse Linked Service.
  final pulumi.Input<String>? description;
  /// A `integration_runtime` block as defined below.
  final pulumi.Input<LinkedServiceIntegrationRuntime>? integrationRuntime;
  /// The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Synapse Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created.
  final pulumi.Input<String>? synapseWorkspaceId;
  /// The type of data stores that will be connected to Synapse. Valid Values include `AmazonMWS`, `AmazonRdsForOracle`, `AmazonRdsForSqlServer`, `AmazonRedshift`, `AmazonS3`, `AzureBatch`. Changing this forces a new resource to be created.
  /// `AzureBlobFS`, `AzureBlobStorage`, `AzureDataExplorer`, `AzureDataLakeAnalytics`, `AzureDataLakeStore`, `AzureDatabricks`, `AzureDatabricksDeltaLake`, `AzureFileStorage`, `AzureFunction`,
  /// `AzureKeyVault`, `AzureML`, `AzureMLService`, `AzureMariaDB`, `AzureMySql`, `AzurePostgreSql`, `AzureSqlDW`, `AzureSqlDatabase`, `AzureSqlMI`, `AzureSearch`, `AzureStorage`,
  /// `AzureTableStorage`, `Cassandra`, `CommonDataServiceForApps`, `Concur`, `CosmosDb`, `CosmosDbMongoDbApi`, `Couchbase`, `CustomDataSource`, `Db2`, `Drill`,
  /// `Dynamics`, `DynamicsAX`, `DynamicsCrm`, `Eloqua`, `FileServer`, `FtpServer`, `GoogleAdWords`, `GoogleBigQuery`, `GoogleCloudStorage`, `Greenplum`, `HBase`, `HDInsight`,
  /// `HDInsightOnDemand`, `HttpServer`, `Hdfs`, `Hive`, `Hubspot`, `Impala`, `Informix`, `Jira`, `LinkedService`, `Magento`, `MariaDB`, `Marketo`, `MicrosoftAccess`, `MongoDb`,
  /// `MongoDbAtlas`, `MongoDbV2`, `MySql`, `Netezza`, `OData`, `Odbc`, `Office365`, `Oracle`, `OracleServiceCloud`, `Paypal`, `Phoenix`, `PostgreSql`, `Presto`, `QuickBooks`,
  /// `Responsys`, `RestService`, `SqlServer`, `Salesforce`, `SalesforceMarketingCloud`, `SalesforceServiceCloud`, `SapBW`, `SapCloudForCustomer`, `SapEcc`, `SapHana`, `SapOpenHub`,
  /// `SapTable`, `ServiceNow`, `Sftp`, `SharePointOnlineList`, `Shopify`, `Snowflake`, `Spark`, `Square`, `Sybase`, `Teradata`, `Vertica`, `Web`, `Xero`, `Zoho`.
  final pulumi.Input<String>? type;
  /// A JSON object that contains the properties of the Synapse Linked Service.
  final pulumi.Input<String>? typePropertiesJson;

  /// Creates a new [LinkedServiceState].
  /// [additionalProperties] A map of additional properties to associate with the Synapse Linked Service.
  /// [annotations] List of tags that can be used for describing the Synapse Linked Service.
  /// [description] The description for the Synapse Linked Service.
  /// [integrationRuntime] A `integration_runtime` block as defined below.
  /// [name] The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created.
  /// [parameters] A map of parameters to associate with the Synapse Linked Service.
  /// [synapseWorkspaceId] The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created.
  /// [type] The type of data stores that will be connected to Synapse. Valid Values include `AmazonMWS`, `AmazonRdsForOracle`, `AmazonRdsForSqlServer`, `AmazonRedshift`, `AmazonS3`, `AzureBatch`. Changing this forces a new resource to be created.
  /// [typePropertiesJson] A JSON object that contains the properties of the Synapse Linked Service.
  const LinkedServiceState({
    this.additionalProperties,
    this.annotations,
    this.description,
    this.integrationRuntime,
    this.name,
    this.parameters,
    this.synapseWorkspaceId,
    this.type,
    this.typePropertiesJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'description': ?description,
      'integrationRuntime': ?pulumi.Input.mapOptionalInputValue<LinkedServiceIntegrationRuntime, Map<String, dynamic>>(integrationRuntime, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'synapseWorkspaceId': ?synapseWorkspaceId,
      'type': ?type,
      'typePropertiesJson': ?typePropertiesJson,
    };
  }

  factory LinkedServiceState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceState(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntime: (() { final guardedValue = map['integrationRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceIntegrationRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      synapseWorkspaceId: (() { final guardedValue = map['synapseWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typePropertiesJson: (() { final guardedValue = map['typePropertiesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

