// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_aws.dart';
import 'connection_azure.dart';
import 'connection_cloud_resource.dart';
import 'connection_cloud_spanner.dart';
import 'connection_cloud_sql.dart';
import 'connection_spark.dart';

/// {@template pulumi_bigquery_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_bigquery_connection_connection_args_doc}
class ConnectionArgs {
  /// Connection properties specific to Amazon Web Services.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAws>? aws;
  /// Container for connection properties specific to Azure.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAzure>? azure;
  /// Container for connection properties for delegation of access to GCP resources.
  /// Structure is documented below.
  final pulumi.Input<ConnectionCloudResource>? cloudResource;
  /// Connection properties specific to Cloud Spanner
  /// Structure is documented below.
  final pulumi.Input<ConnectionCloudSpanner>? cloudSpanner;
  /// Connection properties specific to the Cloud SQL.
  /// Structure is documented below.
  final pulumi.Input<ConnectionCloudSql>? cloudSql;
  /// Optional connection id that should be assigned to the created connection.
  final pulumi.Input<String>? connectionId;
  /// A descriptive description for the connection
  final pulumi.Input<String>? description;
  /// A descriptive name for the connection
  final pulumi.Input<String>? friendlyName;
  /// Optional. The Cloud KMS key that is used for encryption.
  /// Example: projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
  final pulumi.Input<String>? kmsKeyName;
  /// The geographic location where the connection should reside.
  /// Cloud SQL instance must be in the same location as the connection
  /// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
  /// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
  /// Spanner Connections same as spanner region
  /// AWS allowed regions are aws-us-east-1
  /// Azure allowed regions are azure-eastus2
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Container for connection properties to execute stored procedures for Apache Spark. resources.
  /// Structure is documented below.
  final pulumi.Input<ConnectionSpark>? spark;

  /// Creates a new [ConnectionArgs].
  /// [aws] Connection properties specific to Amazon Web Services.
  /// [azure] Container for connection properties specific to Azure.
  /// [cloudResource] Container for connection properties for delegation of access to GCP resources.
  /// [cloudSpanner] Connection properties specific to Cloud Spanner
  /// [cloudSql] Connection properties specific to the Cloud SQL.
  /// [connectionId] Optional connection id that should be assigned to the created connection.
  /// [description] A descriptive description for the connection
  /// [friendlyName] A descriptive name for the connection
  /// [kmsKeyName] Optional. The Cloud KMS key that is used for encryption.
  /// [location] The geographic location where the connection should reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [spark] Container for connection properties to execute stored procedures for Apache Spark. resources.
  ConnectionArgs({
    pulumi.Output<ConnectionAws>? aws,
    pulumi.Output<ConnectionAzure>? azure,
    pulumi.Output<ConnectionCloudResource>? cloudResource,
    pulumi.Output<ConnectionCloudSpanner>? cloudSpanner,
    pulumi.Output<ConnectionCloudSql>? cloudSql,
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<ConnectionSpark>? spark,
  }) :
      aws = pulumi.Input.asOptionalInput<ConnectionAws>(aws),
      azure = pulumi.Input.asOptionalInput<ConnectionAzure>(azure),
      cloudResource = pulumi.Input.asOptionalInput<ConnectionCloudResource>(cloudResource),
      cloudSpanner = pulumi.Input.asOptionalInput<ConnectionCloudSpanner>(cloudSpanner),
      cloudSql = pulumi.Input.asOptionalInput<ConnectionCloudSql>(cloudSql),
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      description = pulumi.Input.asOptionalInput<String>(description),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      spark = pulumi.Input.asOptionalInput<ConnectionSpark>(spark);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aws': ?pulumi.Input.mapOptionalInputValue<ConnectionAws, Map<String, dynamic>>(aws, (value) => value.toMap()),
      'azure': ?pulumi.Input.mapOptionalInputValue<ConnectionAzure, Map<String, dynamic>>(azure, (value) => value.toMap()),
      'cloudResource': ?pulumi.Input.mapOptionalInputValue<ConnectionCloudResource, Map<String, dynamic>>(cloudResource, (value) => value.toMap()),
      'cloudSpanner': ?pulumi.Input.mapOptionalInputValue<ConnectionCloudSpanner, Map<String, dynamic>>(cloudSpanner, (value) => value.toMap()),
      'cloudSql': ?pulumi.Input.mapOptionalInputValue<ConnectionCloudSql, Map<String, dynamic>>(cloudSql, (value) => value.toMap()),
      'connectionId': ?connectionId,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'project': ?project,
      'spark': ?pulumi.Input.mapOptionalInputValue<ConnectionSpark, Map<String, dynamic>>(spark, (value) => value.toMap()),
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      aws: map['aws'] == null ? null : pulumi.Output.create<ConnectionAws>(ConnectionAws.fromMap((map['aws'] as Map).cast<String, dynamic>())),
      azure: map['azure'] == null ? null : pulumi.Output.create<ConnectionAzure>(ConnectionAzure.fromMap((map['azure'] as Map).cast<String, dynamic>())),
      cloudResource: map['cloudResource'] == null ? null : pulumi.Output.create<ConnectionCloudResource>(ConnectionCloudResource.fromMap((map['cloudResource'] as Map).cast<String, dynamic>())),
      cloudSpanner: map['cloudSpanner'] == null ? null : pulumi.Output.create<ConnectionCloudSpanner>(ConnectionCloudSpanner.fromMap((map['cloudSpanner'] as Map).cast<String, dynamic>())),
      cloudSql: map['cloudSql'] == null ? null : pulumi.Output.create<ConnectionCloudSql>(ConnectionCloudSql.fromMap((map['cloudSql'] as Map).cast<String, dynamic>())),
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      spark: map['spark'] == null ? null : pulumi.Output.create<ConnectionSpark>(ConnectionSpark.fromMap((map['spark'] as Map).cast<String, dynamic>())),
    );
  }
}

