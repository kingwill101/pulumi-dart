import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_args.dart';
import 'stream_backfill_all.dart';
import 'stream_destination_config.dart';
import 'stream_source_config.dart';
import 'stream_state.dart';

/// A resource representing streaming data from a source to a destination.
///
///
/// To get more information about Stream, see:
///
/// * [API documentation](https://cloud.google.com/datastream/docs/reference/rest/v1/projects.locations.streams)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/datastream/docs/create-a-stream)
///
/// ## Example Usage
///
/// ### Datastream Stream Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const project = gcp.organizations.getProject({});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-instance",
///     databaseVersion: "MYSQL_8_0",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     host: "%",
///     password: pwd.result,
/// });
/// const sourceConnectionProfile = new gcp.datastream.ConnectionProfile("source_connection_profile", {
///     displayName: "Source connection profile",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     mysqlProfile: {
///         hostname: instance.publicIpAddress,
///         username: user.name,
///         password: user.password,
///     },
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const viewer = new gcp.storage.BucketIAMMember("viewer", {
///     bucket: bucket.name,
///     role: "roles/storage.objectViewer",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com`),
/// });
/// const creator = new gcp.storage.BucketIAMMember("creator", {
///     bucket: bucket.name,
///     role: "roles/storage.objectCreator",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com`),
/// });
/// const reader = new gcp.storage.BucketIAMMember("reader", {
///     bucket: bucket.name,
///     role: "roles/storage.legacyBucketReader",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com`),
/// });
/// const keyUser = new gcp.kms.CryptoKeyIAMMember("key_user", {
///     cryptoKeyId: "kms-name",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com`),
/// });
/// const destinationConnectionProfile = new gcp.datastream.ConnectionProfile("destination_connection_profile", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     gcsProfile: {
///         bucket: bucket.name,
///         rootPath: "/path",
///     },
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     streamId: "my-stream",
///     desiredState: "NOT_STARTED",
///     location: "us-central1",
///     displayName: "my stream",
///     labels: {
///         key: "value",
///     },
///     sourceConfig: {
///         sourceConnectionProfile: sourceConnectionProfile.id,
///         mysqlSourceConfig: {
///             includeObjects: {
///                 mysqlDatabases: [{
///                     database: "my-database",
///                     mysqlTables: [
///                         {
///                             table: "includedTable",
///                             mysqlColumns: [{
///                                 column: "includedColumn",
///                                 dataType: "VARCHAR",
///                                 collation: "utf8mb4",
///                                 primaryKey: false,
///                                 nullable: false,
///                                 ordinalPosition: 0,
///                             }],
///                         },
///                         {
///                             table: "includedTable_2",
///                         },
///                     ],
///                 }],
///             },
///             excludeObjects: {
///                 mysqlDatabases: [{
///                     database: "my-database",
///                     mysqlTables: [{
///                         table: "excludedTable",
///                         mysqlColumns: [{
///                             column: "excludedColumn",
///                             dataType: "VARCHAR",
///                             collation: "utf8mb4",
///                             primaryKey: false,
///                             nullable: false,
///                             ordinalPosition: 0,
///                         }],
///                     }],
///                 }],
///             },
///             maxConcurrentCdcTasks: 5,
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destinationConnectionProfile.id,
///         gcsDestinationConfig: {
///             path: "mydata",
///             fileRotationMb: 200,
///             fileRotationInterval: "60s",
///             jsonFileFormat: {
///                 schemaFileFormat: "NO_SCHEMA_FILE",
///                 compression: "GZIP",
///             },
///         },
///     },
///     backfillAll: {
///         mysqlExcludedObjects: {
///             mysqlDatabases: [{
///                 database: "my-database",
///                 mysqlTables: [{
///                     table: "excludedTable",
///                     mysqlColumns: [{
///                         column: "excludedColumn",
///                         dataType: "VARCHAR",
///                         collation: "utf8mb4",
///                         primaryKey: false,
///                         nullable: false,
///                         ordinalPosition: 0,
///                     }],
///                 }],
///             }],
///         },
///     },
///     customerManagedEncryptionKey: "kms-name",
/// }, {
///     dependsOn: [keyUser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// project = gcp.organizations.get_project()
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-instance",
///     database_version="MYSQL_8_0",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     host="%",
///     password=pwd["result"])
/// source_connection_profile = gcp.datastream.ConnectionProfile("source_connection_profile",
///     display_name="Source connection profile",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     mysql_profile={
///         "hostname": instance.public_ip_address,
///         "username": user.name,
///         "password": user.password,
///     })
/// bucket = gcp.storage.Bucket("bucket",
///     name="my-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// viewer = gcp.storage.BucketIAMMember("viewer",
///     bucket=bucket.name,
///     role="roles/storage.objectViewer",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-datastream.iam.gserviceaccount.com")
/// creator = gcp.storage.BucketIAMMember("creator",
///     bucket=bucket.name,
///     role="roles/storage.objectCreator",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-datastream.iam.gserviceaccount.com")
/// reader = gcp.storage.BucketIAMMember("reader",
///     bucket=bucket.name,
///     role="roles/storage.legacyBucketReader",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-datastream.iam.gserviceaccount.com")
/// key_user = gcp.kms.CryptoKeyIAMMember("key_user",
///     crypto_key_id="kms-name",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-datastream.iam.gserviceaccount.com")
/// destination_connection_profile = gcp.datastream.ConnectionProfile("destination_connection_profile",
///     display_name="Connection profile",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     gcs_profile={
///         "bucket": bucket.name,
///         "root_path": "/path",
///     })
/// default = gcp.datastream.Stream("default",
///     stream_id="my-stream",
///     desired_state="NOT_STARTED",
///     location="us-central1",
///     display_name="my stream",
///     labels={
///         "key": "value",
///     },
///     source_config={
///         "source_connection_profile": source_connection_profile.id,
///         "mysql_source_config": {
///             "include_objects": {
///                 "mysql_databases": [{
///                     "database": "my-database",
///                     "mysql_tables": [
///                         {
///                             "table": "includedTable",
///                             "mysql_columns": [{
///                                 "column": "includedColumn",
///                                 "data_type": "VARCHAR",
///                                 "collation": "utf8mb4",
///                                 "primary_key": False,
///                                 "nullable": False,
///                                 "ordinal_position": 0,
///                             }],
///                         },
///                         {
///                             "table": "includedTable_2",
///                         },
///                     ],
///                 }],
///             },
///             "exclude_objects": {
///                 "mysql_databases": [{
///                     "database": "my-database",
///                     "mysql_tables": [{
///                         "table": "excludedTable",
///                         "mysql_columns": [{
///                             "column": "excludedColumn",
///                             "data_type": "VARCHAR",
///                             "collation": "utf8mb4",
///                             "primary_key": False,
///                             "nullable": False,
///                             "ordinal_position": 0,
///                         }],
///                     }],
///                 }],
///             },
///             "max_concurrent_cdc_tasks": 5,
///         },
///     },
///     destination_config={
///         "destination_connection_profile": destination_connection_profile.id,
///         "gcs_destination_config": {
///             "path": "mydata",
///             "file_rotation_mb": 200,
///             "file_rotation_interval": "60s",
///             "json_file_format": {
///                 "schema_file_format": "NO_SCHEMA_FILE",
///                 "compression": "GZIP",
///             },
///         },
///     },
///     backfill_all={
///         "mysql_excluded_objects": {
///             "mysql_databases": [{
///                 "database": "my-database",
///                 "mysql_tables": [{
///                     "table": "excludedTable",
///                     "mysql_columns": [{
///                         "column": "excludedColumn",
///                         "data_type": "VARCHAR",
///                         "collation": "utf8mb4",
///                         "primary_key": False,
///                         "nullable": False,
///                         "ordinal_position": 0,
///                     }],
///                 }],
///             }],
///         },
///     },
///     customer_managed_encryption_key="kms-name",
///     opts = pulumi.ResourceOptions(depends_on=[key_user]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Host = "%",
///         Password = pwd.Result,
///     });
///
///     var sourceConnectionProfile = new Gcp.Datastream.ConnectionProfile("source_connection_profile", new()
///     {
///         DisplayName = "Source connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         MysqlProfile = new Gcp.Datastream.Inputs.ConnectionProfileMysqlProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Username = user.Name,
///             Password = user.Password,
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var viewer = new Gcp.Storage.BucketIAMMember("viewer", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectViewer",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-datastream.iam.gserviceaccount.com",
///     });
///
///     var creator = new Gcp.Storage.BucketIAMMember("creator", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectCreator",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-datastream.iam.gserviceaccount.com",
///     });
///
///     var reader = new Gcp.Storage.BucketIAMMember("reader", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.legacyBucketReader",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-datastream.iam.gserviceaccount.com",
///     });
///
///     var keyUser = new Gcp.Kms.CryptoKeyIAMMember("key_user", new()
///     {
///         CryptoKeyId = "kms-name",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-datastream.iam.gserviceaccount.com",
///     });
///
///     var destinationConnectionProfile = new Gcp.Datastream.ConnectionProfile("destination_connection_profile", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         GcsProfile = new Gcp.Datastream.Inputs.ConnectionProfileGcsProfileArgs
///         {
///             Bucket = bucket.Name,
///             RootPath = "/path",
///         },
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         StreamId = "my-stream",
///         DesiredState = "NOT_STARTED",
///         Location = "us-central1",
///         DisplayName = "my stream",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = sourceConnectionProfile.Id,
///             MysqlSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigArgs
///             {
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs
///                 {
///                     MysqlDatabases = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs
///                         {
///                             Database = "my-database",
///                             MysqlTables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArgs
///                                 {
///                                     Table = "includedTable",
///                                     MysqlColumns = new[]
///                                     {
///                                         new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs
///                                         {
///                                             Column = "includedColumn",
///                                             DataType = "VARCHAR",
///                                             Collation = "utf8mb4",
///                                             PrimaryKey = false,
///                                             Nullable = false,
///                                             OrdinalPosition = 0,
///                                         },
///                                     },
///                                 },
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArgs
///                                 {
///                                     Table = "includedTable_2",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 ExcludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsArgs
///                 {
///                     MysqlDatabases = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseArgs
///                         {
///                             Database = "my-database",
///                             MysqlTables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableArgs
///                                 {
///                                     Table = "excludedTable",
///                                     MysqlColumns = new[]
///                                     {
///                                         new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs
///                                         {
///                                             Column = "excludedColumn",
///                                             DataType = "VARCHAR",
///                                             Collation = "utf8mb4",
///                                             PrimaryKey = false,
///                                             Nullable = false,
///                                             OrdinalPosition = 0,
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 MaxConcurrentCdcTasks = 5,
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destinationConnectionProfile.Id,
///             GcsDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigGcsDestinationConfigArgs
///             {
///                 Path = "mydata",
///                 FileRotationMb = 200,
///                 FileRotationInterval = "60s",
///                 JsonFileFormat = new Gcp.Datastream.Inputs.StreamDestinationConfigGcsDestinationConfigJsonFileFormatArgs
///                 {
///                     SchemaFileFormat = "NO_SCHEMA_FILE",
///                     Compression = "GZIP",
///                 },
///             },
///         },
///         BackfillAll = new Gcp.Datastream.Inputs.StreamBackfillAllArgs
///         {
///             MysqlExcludedObjects = new Gcp.Datastream.Inputs.StreamBackfillAllMysqlExcludedObjectsArgs
///             {
///                 MysqlDatabases = new[]
///                 {
///                     new Gcp.Datastream.Inputs.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseArgs
///                     {
///                         Database = "my-database",
///                         MysqlTables = new[]
///                         {
///                             new Gcp.Datastream.Inputs.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableArgs
///                             {
///                                 Table = "excludedTable",
///                                 MysqlColumns = new[]
///                                 {
///                                     new Gcp.Datastream.Inputs.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumnArgs
///                                     {
///                                         Column = "excludedColumn",
///                                         DataType = "VARCHAR",
///                                         Collation = "utf8mb4",
///                                         PrimaryKey = false,
///                                         Nullable = false,
///                                         OrdinalPosition = 0,
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         CustomerManagedEncryptionKey = "kms-name",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             keyUser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Host:     pulumi.String("%"),
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceConnectionProfile, err := datastream.NewConnectionProfile(ctx, "source_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Source connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			MysqlProfile: &datastream.ConnectionProfileMysqlProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketIAMMember(ctx, "viewer", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectViewer"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-datastream.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketIAMMember(ctx, "creator", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectCreator"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-datastream.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketIAMMember(ctx, "reader", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.legacyBucketReader"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-datastream.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyUser, err := kms.NewCryptoKeyIAMMember(ctx, "key_user", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-name"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-datastream.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationConnectionProfile, err := datastream.NewConnectionProfile(ctx, "destination_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			GcsProfile: &datastream.ConnectionProfileGcsProfileArgs{
/// 				Bucket:   bucket.Name,
/// 				RootPath: pulumi.String("/path"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			StreamId:     pulumi.String("my-stream"),
/// 			DesiredState: pulumi.String("NOT_STARTED"),
/// 			Location:     pulumi.String("us-central1"),
/// 			DisplayName:  pulumi.String("my stream"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: sourceConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				MysqlSourceConfig: &datastream.StreamSourceConfigMysqlSourceConfigArgs{
/// 					IncludeObjects: &datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs{
/// 						MysqlDatabases: datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArray{
/// 							&datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs{
/// 								Database: pulumi.String("my-database"),
/// 								MysqlTables: datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArray{
/// 									&datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArgs{
/// 										Table: pulumi.String("includedTable"),
/// 										MysqlColumns: datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumnArray{
/// 											&datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs{
/// 												Column:          pulumi.String("includedColumn"),
/// 												DataType:        pulumi.String("VARCHAR"),
/// 												Collation:       pulumi.String("utf8mb4"),
/// 												PrimaryKey:      pulumi.Bool(false),
/// 												Nullable:        pulumi.Bool(false),
/// 												OrdinalPosition: pulumi.Int(0),
/// 											},
/// 										},
/// 									},
/// 									&datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArgs{
/// 										Table: pulumi.String("includedTable_2"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ExcludeObjects: &datastream.StreamSourceConfigMysqlSourceConfigExcludeObjectsArgs{
/// 						MysqlDatabases: datastream.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseArray{
/// 							&datastream.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseArgs{
/// 								Database: pulumi.String("my-database"),
/// 								MysqlTables: datastream.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableArray{
/// 									&datastream.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableArgs{
/// 										Table: pulumi.String("excludedTable"),
/// 										MysqlColumns: datastream.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumnArray{
/// 											&datastream.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs{
/// 												Column:          pulumi.String("excludedColumn"),
/// 												DataType:        pulumi.String("VARCHAR"),
/// 												Collation:       pulumi.String("utf8mb4"),
/// 												PrimaryKey:      pulumi.Bool(false),
/// 												Nullable:        pulumi.Bool(false),
/// 												OrdinalPosition: pulumi.Int(0),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					MaxConcurrentCdcTasks: pulumi.Int(5),
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destinationConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				GcsDestinationConfig: &datastream.StreamDestinationConfigGcsDestinationConfigArgs{
/// 					Path:                 pulumi.String("mydata"),
/// 					FileRotationMb:       pulumi.Int(200),
/// 					FileRotationInterval: pulumi.String("60s"),
/// 					JsonFileFormat: &datastream.StreamDestinationConfigGcsDestinationConfigJsonFileFormatArgs{
/// 						SchemaFileFormat: pulumi.String("NO_SCHEMA_FILE"),
/// 						Compression:      pulumi.String("GZIP"),
/// 					},
/// 				},
/// 			},
/// 			BackfillAll: &datastream.StreamBackfillAllArgs{
/// 				MysqlExcludedObjects: &datastream.StreamBackfillAllMysqlExcludedObjectsArgs{
/// 					MysqlDatabases: datastream.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseArray{
/// 						&datastream.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseArgs{
/// 							Database: pulumi.String("my-database"),
/// 							MysqlTables: datastream.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableArray{
/// 								&datastream.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableArgs{
/// 									Table: pulumi.String("excludedTable"),
/// 									MysqlColumns: datastream.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumnArray{
/// 										&datastream.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumnArgs{
/// 											Column:          pulumi.String("excludedColumn"),
/// 											DataType:        pulumi.String("VARCHAR"),
/// 											Collation:       pulumi.String("utf8mb4"),
/// 											PrimaryKey:      pulumi.Bool(false),
/// 											Nullable:        pulumi.Bool(false),
/// 											OrdinalPosition: pulumi.Int(0),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			CustomerManagedEncryptionKey: pulumi.String("kms-name"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			keyUser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-instance"
///   database_version = "MYSQL_8_0"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   host     = "%"
///   password = random_password.pwd.result
/// }
/// resource "gcp_datastream_connectionprofile" "source_connection_profile" {
///   display_name          = "Source connection profile"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   mysql_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///   }
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "my-bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_storage_bucketiammember" "viewer" {
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "roles/storage.objectViewer"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-datastream.iam.gserviceaccount.com"
/// }
/// resource "gcp_storage_bucketiammember" "creator" {
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "roles/storage.objectCreator"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-datastream.iam.gserviceaccount.com"
/// }
/// resource "gcp_storage_bucketiammember" "reader" {
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "roles/storage.legacyBucketReader"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-datastream.iam.gserviceaccount.com"
/// }
/// resource "gcp_kms_cryptokeyiammember" "key_user" {
///   crypto_key_id = "kms-name"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-datastream.iam.gserviceaccount.com"
/// }
/// resource "gcp_datastream_connectionprofile" "destination_connection_profile" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   gcs_profile = {
///     bucket    = gcp_storage_bucket.bucket.name
///     root_path = "/path"
///   }
/// }
/// resource "gcp_datastream_stream" "default" {
///   depends_on    = [gcp_kms_cryptokeyiammember.key_user]
///   stream_id     = "my-stream"
///   desired_state = "NOT_STARTED"
///   location      = "us-central1"
///   display_name  = "my stream"
///   labels = {
///     "key" = "value"
///   }
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source_connection_profile.id
///     mysql_source_config = {
///       include_objects = {
///         mysql_databases = [{
///           "database" = "my-database"
///           "mysqlTables" = [{
///             "table" = "includedTable"
///             "mysqlColumns" = [{
///               "column"          = "includedColumn"
///               "dataType"        = "VARCHAR"
///               "collation"       = "utf8mb4"
///               "primaryKey"      = false
///               "nullable"        = false
///               "ordinalPosition" = 0
///             }]
///             }, {
///             "table" = "includedTable_2"
///           }]
///         }]
///       }
///       exclude_objects = {
///         mysql_databases = [{
///           "database" = "my-database"
///           "mysqlTables" = [{
///             "table" = "excludedTable"
///             "mysqlColumns" = [{
///               "column"          = "excludedColumn"
///               "dataType"        = "VARCHAR"
///               "collation"       = "utf8mb4"
///               "primaryKey"      = false
///               "nullable"        = false
///               "ordinalPosition" = 0
///             }]
///           }]
///         }]
///       }
///       max_concurrent_cdc_tasks = 5
///     }
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination_connection_profile.id
///     gcs_destination_config = {
///       path                   = "mydata"
///       file_rotation_mb       = 200
///       file_rotation_interval = "60s"
///       json_file_format = {
///         schema_file_format = "NO_SCHEMA_FILE"
///         compression        = "GZIP"
///       }
///     }
///   }
///   backfill_all = {
///     mysql_excluded_objects = {
///       mysql_databases = [{
///         "database" = "my-database"
///         "mysqlTables" = [{
///           "table" = "excludedTable"
///           "mysqlColumns" = [{
///             "column"          = "excludedColumn"
///             "dataType"        = "VARCHAR"
///             "collation"       = "utf8mb4"
///             "primaryKey"      = false
///             "nullable"        = false
///             "ordinalPosition" = 0
///           }]
///         }]
///       }]
///     }
///   }
///   customer_managed_encryption_key = "kms-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMysqlProfileArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileGcsProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigGcsDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigGcsDestinationConfigJsonFileFormatArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllMysqlExcludedObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumnArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("my-instance")
///             .databaseVersion("MYSQL_8_0")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .host("%")
///             .password(pwd.get("result"))
///             .build());
///
///         var sourceConnectionProfile = new ConnectionProfile("sourceConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Source connection profile")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .mysqlProfile(ConnectionProfileMysqlProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .username(user.name())
///                 .password(user.password())
///                 .build())
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var viewer = new BucketIAMMember("viewer", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectViewer")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-datastream.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var creator = new BucketIAMMember("creator", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectCreator")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-datastream.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var reader = new BucketIAMMember("reader", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.legacyBucketReader")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-datastream.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var keyUser = new CryptoKeyIAMMember("keyUser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-name")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-datastream.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var destinationConnectionProfile = new ConnectionProfile("destinationConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .gcsProfile(ConnectionProfileGcsProfileArgs.builder()
///                 .bucket(bucket.name())
///                 .rootPath("/path")
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .streamId("my-stream")
///             .desiredState("NOT_STARTED")
///             .location("us-central1")
///             .displayName("my stream")
///             .labels(Map.of("key", "value"))
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(sourceConnectionProfile.id())
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .includeObjects(StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs.builder()
///                         .mysqlDatabases(StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs.builder()
///                             .database("my-database")
///                             .mysqlTables(
///                                 StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArgs.builder()
///                                     .table("includedTable")
///                                     .mysqlColumns(StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs.builder()
///                                         .column("includedColumn")
///                                         .dataType("VARCHAR")
///                                         .collation("utf8mb4")
///                                         .primaryKey(false)
///                                         .nullable(false)
///                                         .ordinalPosition(0)
///                                         .build())
///                                     .build(),
///                                 StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableArgs.builder()
///                                     .table("includedTable_2")
///                                     .build())
///                             .build())
///                         .build())
///                     .excludeObjects(StreamSourceConfigMysqlSourceConfigExcludeObjectsArgs.builder()
///                         .mysqlDatabases(StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseArgs.builder()
///                             .database("my-database")
///                             .mysqlTables(StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableArgs.builder()
///                                 .table("excludedTable")
///                                 .mysqlColumns(StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumnArgs.builder()
///                                     .column("excludedColumn")
///                                     .dataType("VARCHAR")
///                                     .collation("utf8mb4")
///                                     .primaryKey(false)
///                                     .nullable(false)
///                                     .ordinalPosition(0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .maxConcurrentCdcTasks(5)
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destinationConnectionProfile.id())
///                 .gcsDestinationConfig(StreamDestinationConfigGcsDestinationConfigArgs.builder()
///                     .path("mydata")
///                     .fileRotationMb(200)
///                     .fileRotationInterval("60s")
///                     .jsonFileFormat(StreamDestinationConfigGcsDestinationConfigJsonFileFormatArgs.builder()
///                         .schemaFileFormat("NO_SCHEMA_FILE")
///                         .compression("GZIP")
///                         .build())
///                     .build())
///                 .build())
///             .backfillAll(StreamBackfillAllArgs.builder()
///                 .mysqlExcludedObjects(StreamBackfillAllMysqlExcludedObjectsArgs.builder()
///                     .mysqlDatabases(StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseArgs.builder()
///                         .database("my-database")
///                         .mysqlTables(StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableArgs.builder()
///                             .table("excludedTable")
///                             .mysqlColumns(StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumnArgs.builder()
///                                 .column("excludedColumn")
///                                 .dataType("VARCHAR")
///                                 .collation("utf8mb4")
///                                 .primaryKey(false)
///                                 .nullable(false)
///                                 .ordinalPosition(0)
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .customerManagedEncryptionKey("kms-name")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(keyUser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-instance
///       databaseVersion: MYSQL_8_0
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       host: '%'
///       password: ${pwd.result}
///   sourceConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: source_connection_profile
///     properties:
///       displayName: Source connection profile
///       location: us-central1
///       connectionProfileId: source-profile
///       mysqlProfile:
///         hostname: ${instance.publicIpAddress}
///         username: ${user.name}
///         password: ${user.password}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   viewer:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectViewer
///       member: serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com
///   creator:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectCreator
///       member: serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com
///   reader:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.legacyBucketReader
///       member: serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com
///   keyUser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: key_user
///     properties:
///       cryptoKeyId: kms-name
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com
///   destinationConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: destination_connection_profile
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       connectionProfileId: destination-profile
///       gcsProfile:
///         bucket: ${bucket.name}
///         rootPath: /path
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       streamId: my-stream
///       desiredState: NOT_STARTED
///       location: us-central1
///       displayName: my stream
///       labels:
///         key: value
///       sourceConfig:
///         sourceConnectionProfile: ${sourceConnectionProfile.id}
///         mysqlSourceConfig:
///           includeObjects:
///             mysqlDatabases:
///               - database: my-database
///                 mysqlTables:
///                   - table: includedTable
///                     mysqlColumns:
///                       - column: includedColumn
///                         dataType: VARCHAR
///                         collation: utf8mb4
///                         primaryKey: false
///                         nullable: false
///                         ordinalPosition: 0
///                   - table: includedTable_2
///           excludeObjects:
///             mysqlDatabases:
///               - database: my-database
///                 mysqlTables:
///                   - table: excludedTable
///                     mysqlColumns:
///                       - column: excludedColumn
///                         dataType: VARCHAR
///                         collation: utf8mb4
///                         primaryKey: false
///                         nullable: false
///                         ordinalPosition: 0
///           maxConcurrentCdcTasks: 5
///       destinationConfig:
///         destinationConnectionProfile: ${destinationConnectionProfile.id}
///         gcsDestinationConfig:
///           path: mydata
///           fileRotationMb: 200
///           fileRotationInterval: 60s
///           jsonFileFormat:
///             schemaFileFormat: NO_SCHEMA_FILE
///             compression: GZIP
///       backfillAll:
///         mysqlExcludedObjects:
///           mysqlDatabases:
///             - database: my-database
///               mysqlTables:
///                 - table: excludedTable
///                   mysqlColumns:
///                     - column: excludedColumn
///                       dataType: VARCHAR
///                       collation: utf8mb4
///                       primaryKey: false
///                       nullable: false
///                       ordinalPosition: 0
///       customerManagedEncryptionKey: kms-name
///     options:
///       dependsOn:
///         - ${keyUser}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Datastream Stream Postgresql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const source = new gcp.datastream.ConnectionProfile("source", {
///     displayName: "Postgresql Source",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     postgresqlProfile: {
///         hostname: "hostname",
///         port: 5432,
///         username: "user",
///         password: "pass",
///         database: "postgres",
///     },
/// });
/// const destination = new gcp.datastream.ConnectionProfile("destination", {
///     displayName: "BigQuery Destination",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     displayName: "Postgres to BigQuery",
///     location: "us-central1",
///     streamId: "my-stream",
///     desiredState: "RUNNING",
///     sourceConfig: {
///         sourceConnectionProfile: source.id,
///         postgresqlSourceConfig: {
///             maxConcurrentBackfillTasks: 12,
///             publication: "publication",
///             replicationSlot: "replication_slot",
///             includeObjects: {
///                 postgresqlSchemas: [{
///                     schema: "schema",
///                     postgresqlTables: [{
///                         table: "table",
///                         postgresqlColumns: [{
///                             column: "column",
///                         }],
///                     }],
///                 }],
///             },
///             excludeObjects: {
///                 postgresqlSchemas: [{
///                     schema: "schema",
///                     postgresqlTables: [{
///                         table: "table",
///                         postgresqlColumns: [{
///                             column: "column",
///                         }],
///                     }],
///                 }],
///             },
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destination.id,
///         bigqueryDestinationConfig: {
///             dataFreshness: "900s",
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///         },
///     },
///     backfillAll: {
///         postgresqlExcludedObjects: {
///             postgresqlSchemas: [{
///                 schema: "schema",
///                 postgresqlTables: [{
///                     table: "table",
///                     postgresqlColumns: [{
///                         column: "column",
///                     }],
///                 }],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// source = gcp.datastream.ConnectionProfile("source",
///     display_name="Postgresql Source",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     postgresql_profile={
///         "hostname": "hostname",
///         "port": 5432,
///         "username": "user",
///         "password": "pass",
///         "database": "postgres",
///     })
/// destination = gcp.datastream.ConnectionProfile("destination",
///     display_name="BigQuery Destination",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     display_name="Postgres to BigQuery",
///     location="us-central1",
///     stream_id="my-stream",
///     desired_state="RUNNING",
///     source_config={
///         "source_connection_profile": source.id,
///         "postgresql_source_config": {
///             "max_concurrent_backfill_tasks": 12,
///             "publication": "publication",
///             "replication_slot": "replication_slot",
///             "include_objects": {
///                 "postgresql_schemas": [{
///                     "schema": "schema",
///                     "postgresql_tables": [{
///                         "table": "table",
///                         "postgresql_columns": [{
///                             "column": "column",
///                         }],
///                     }],
///                 }],
///             },
///             "exclude_objects": {
///                 "postgresql_schemas": [{
///                     "schema": "schema",
///                     "postgresql_tables": [{
///                         "table": "table",
///                         "postgresql_columns": [{
///                             "column": "column",
///                         }],
///                     }],
///                 }],
///             },
///         },
///     },
///     destination_config={
///         "destination_connection_profile": destination.id,
///         "bigquery_destination_config": {
///             "data_freshness": "900s",
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///         },
///     },
///     backfill_all={
///         "postgresql_excluded_objects": {
///             "postgresql_schemas": [{
///                 "schema": "schema",
///                 "postgresql_tables": [{
///                     "table": "table",
///                     "postgresql_columns": [{
///                         "column": "column",
///                     }],
///                 }],
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source = new Gcp.Datastream.ConnectionProfile("source", new()
///     {
///         DisplayName = "Postgresql Source",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         PostgresqlProfile = new Gcp.Datastream.Inputs.ConnectionProfilePostgresqlProfileArgs
///         {
///             Hostname = "hostname",
///             Port = 5432,
///             Username = "user",
///             Password = "pass",
///             Database = "postgres",
///         },
///     });
///
///     var destination = new Gcp.Datastream.ConnectionProfile("destination", new()
///     {
///         DisplayName = "BigQuery Destination",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         DisplayName = "Postgres to BigQuery",
///         Location = "us-central1",
///         StreamId = "my-stream",
///         DesiredState = "RUNNING",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = source.Id,
///             PostgresqlSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigArgs
///             {
///                 MaxConcurrentBackfillTasks = 12,
///                 Publication = "publication",
///                 ReplicationSlot = "replication_slot",
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsArgs
///                 {
///                     PostgresqlSchemas = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaArgs
///                         {
///                             Schema = "schema",
///                             PostgresqlTables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTableArgs
///                                 {
///                                     Table = "table",
///                                     PostgresqlColumns = new[]
///                                     {
///                                         new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs
///                                         {
///                                             Column = "column",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 ExcludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsArgs
///                 {
///                     PostgresqlSchemas = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaArgs
///                         {
///                             Schema = "schema",
///                             PostgresqlTables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTableArgs
///                                 {
///                                     Table = "table",
///                                     PostgresqlColumns = new[]
///                                     {
///                                         new Gcp.Datastream.Inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs
///                                         {
///                                             Column = "column",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destination.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 DataFreshness = "900s",
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///         BackfillAll = new Gcp.Datastream.Inputs.StreamBackfillAllArgs
///         {
///             PostgresqlExcludedObjects = new Gcp.Datastream.Inputs.StreamBackfillAllPostgresqlExcludedObjectsArgs
///             {
///                 PostgresqlSchemas = new[]
///                 {
///                     new Gcp.Datastream.Inputs.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaArgs
///                     {
///                         Schema = "schema",
///                         PostgresqlTables = new[]
///                         {
///                             new Gcp.Datastream.Inputs.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTableArgs
///                             {
///                                 Table = "table",
///                                 PostgresqlColumns = new[]
///                                 {
///                                     new Gcp.Datastream.Inputs.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs
///                                     {
///                                         Column = "column",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		source, err := datastream.NewConnectionProfile(ctx, "source", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Postgresql Source"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			PostgresqlProfile: &datastream.ConnectionProfilePostgresqlProfileArgs{
/// 				Hostname: pulumi.String("hostname"),
/// 				Port:     pulumi.Int(5432),
/// 				Username: pulumi.String("user"),
/// 				Password: pulumi.String("pass"),
/// 				Database: pulumi.String("postgres"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := datastream.NewConnectionProfile(ctx, "destination", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("BigQuery Destination"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			DisplayName:  pulumi.String("Postgres to BigQuery"),
/// 			Location:     pulumi.String("us-central1"),
/// 			StreamId:     pulumi.String("my-stream"),
/// 			DesiredState: pulumi.String("RUNNING"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: source.ID().ToIDOutput().ToStringOutput(),
/// 				PostgresqlSourceConfig: &datastream.StreamSourceConfigPostgresqlSourceConfigArgs{
/// 					MaxConcurrentBackfillTasks: pulumi.Int(12),
/// 					Publication:                pulumi.String("publication"),
/// 					ReplicationSlot:            pulumi.String("replication_slot"),
/// 					IncludeObjects: &datastream.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsArgs{
/// 						PostgresqlSchemas: datastream.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaArray{
/// 							&datastream.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaArgs{
/// 								Schema: pulumi.String("schema"),
/// 								PostgresqlTables: datastream.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTableArray{
/// 									&datastream.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTableArgs{
/// 										Table: pulumi.String("table"),
/// 										PostgresqlColumns: datastream.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArray{
/// 											&datastream.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs{
/// 												Column: pulumi.String("column"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ExcludeObjects: &datastream.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsArgs{
/// 						PostgresqlSchemas: datastream.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaArray{
/// 							&datastream.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaArgs{
/// 								Schema: pulumi.String("schema"),
/// 								PostgresqlTables: datastream.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTableArray{
/// 									&datastream.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTableArgs{
/// 										Table: pulumi.String("table"),
/// 										PostgresqlColumns: datastream.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArray{
/// 											&datastream.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs{
/// 												Column: pulumi.String("column"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destination.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					DataFreshness: pulumi.String("900s"),
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackfillAll: &datastream.StreamBackfillAllArgs{
/// 				PostgresqlExcludedObjects: &datastream.StreamBackfillAllPostgresqlExcludedObjectsArgs{
/// 					PostgresqlSchemas: datastream.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaArray{
/// 						&datastream.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaArgs{
/// 							Schema: pulumi.String("schema"),
/// 							PostgresqlTables: datastream.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTableArray{
/// 								&datastream.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTableArgs{
/// 									Table: pulumi.String("table"),
/// 									PostgresqlColumns: datastream.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArray{
/// 										&datastream.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs{
/// 											Column: pulumi.String("column"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datastream_connectionprofile" "source" {
///   display_name          = "Postgresql Source"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   postgresql_profile = {
///     hostname = "hostname"
///     port     = 5432
///     username = "user"
///     password = "pass"
///     database = "postgres"
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination" {
///   display_name          = "BigQuery Destination"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   display_name  = "Postgres to BigQuery"
///   location      = "us-central1"
///   stream_id     = "my-stream"
///   desired_state = "RUNNING"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source.id
///     postgresql_source_config = {
///       max_concurrent_backfill_tasks = 12
///       publication                   = "publication"
///       replication_slot              = "replication_slot"
///       include_objects = {
///         postgresql_schemas = [{
///           "schema" = "schema"
///           "postgresqlTables" = [{
///             "table" = "table"
///             "postgresqlColumns" = [{
///               "column" = "column"
///             }]
///           }]
///         }]
///       }
///       exclude_objects = {
///         postgresql_schemas = [{
///           "schema" = "schema"
///           "postgresqlTables" = [{
///             "table" = "table"
///             "postgresqlColumns" = [{
///               "column" = "column"
///             }]
///           }]
///         }]
///       }
///     }
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination.id
///     bigquery_destination_config = {
///       data_freshness = "900s"
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///     }
///   }
///   backfill_all = {
///     postgresql_excluded_objects = {
///       postgresql_schemas = [{
///         "schema" = "schema"
///         "postgresqlTables" = [{
///           "table" = "table"
///           "postgresqlColumns" = [{
///             "column" = "column"
///           }]
///         }]
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfilePostgresqlProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllPostgresqlExcludedObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var source = new ConnectionProfile("source", ConnectionProfileArgs.builder()
///             .displayName("Postgresql Source")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .postgresqlProfile(ConnectionProfilePostgresqlProfileArgs.builder()
///                 .hostname("hostname")
///                 .port(5432)
///                 .username("user")
///                 .password("pass")
///                 .database("postgres")
///                 .build())
///             .build());
///
///         var destination = new ConnectionProfile("destination", ConnectionProfileArgs.builder()
///             .displayName("BigQuery Destination")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .displayName("Postgres to BigQuery")
///             .location("us-central1")
///             .streamId("my-stream")
///             .desiredState("RUNNING")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(source.id())
///                 .postgresqlSourceConfig(StreamSourceConfigPostgresqlSourceConfigArgs.builder()
///                     .maxConcurrentBackfillTasks(12)
///                     .publication("publication")
///                     .replicationSlot("replication_slot")
///                     .includeObjects(StreamSourceConfigPostgresqlSourceConfigIncludeObjectsArgs.builder()
///                         .postgresqlSchemas(StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaArgs.builder()
///                             .schema("schema")
///                             .postgresqlTables(StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTableArgs.builder()
///                                 .table("table")
///                                 .postgresqlColumns(StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs.builder()
///                                     .column("column")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .excludeObjects(StreamSourceConfigPostgresqlSourceConfigExcludeObjectsArgs.builder()
///                         .postgresqlSchemas(StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaArgs.builder()
///                             .schema("schema")
///                             .postgresqlTables(StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTableArgs.builder()
///                                 .table("table")
///                                 .postgresqlColumns(StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs.builder()
///                                     .column("column")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destination.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .dataFreshness("900s")
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .backfillAll(StreamBackfillAllArgs.builder()
///                 .postgresqlExcludedObjects(StreamBackfillAllPostgresqlExcludedObjectsArgs.builder()
///                     .postgresqlSchemas(StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaArgs.builder()
///                         .schema("schema")
///                         .postgresqlTables(StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTableArgs.builder()
///                             .table("table")
///                             .postgresqlColumns(StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumnArgs.builder()
///                                 .column("column")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   source:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: Postgresql Source
///       location: us-central1
///       connectionProfileId: source-profile
///       postgresqlProfile:
///         hostname: hostname
///         port: 5432
///         username: user
///         password: pass
///         database: postgres
///   destination:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: BigQuery Destination
///       location: us-central1
///       connectionProfileId: destination-profile
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       displayName: Postgres to BigQuery
///       location: us-central1
///       streamId: my-stream
///       desiredState: RUNNING
///       sourceConfig:
///         sourceConnectionProfile: ${source.id}
///         postgresqlSourceConfig:
///           maxConcurrentBackfillTasks: 12
///           publication: publication
///           replicationSlot: replication_slot
///           includeObjects:
///             postgresqlSchemas:
///               - schema: schema
///                 postgresqlTables:
///                   - table: table
///                     postgresqlColumns:
///                       - column: column
///           excludeObjects:
///             postgresqlSchemas:
///               - schema: schema
///                 postgresqlTables:
///                   - table: table
///                     postgresqlColumns:
///                       - column: column
///       destinationConfig:
///         destinationConnectionProfile: ${destination.id}
///         bigqueryDestinationConfig:
///           dataFreshness: 900s
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///       backfillAll:
///         postgresqlExcludedObjects:
///           postgresqlSchemas:
///             - schema: schema
///               postgresqlTables:
///                 - table: table
///                   postgresqlColumns:
///                     - column: column
/// ```
///
/// ### Datastream Stream Oracle
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const source = new gcp.datastream.ConnectionProfile("source", {
///     displayName: "Oracle Source",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     oracleProfile: {
///         hostname: "hostname",
///         port: 1521,
///         username: "user",
///         password: "pass",
///         databaseService: "ORCL",
///     },
/// });
/// const destination = new gcp.datastream.ConnectionProfile("destination", {
///     displayName: "BigQuery Destination",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     bigqueryProfile: {},
/// });
/// const stream5 = new gcp.datastream.Stream("stream5", {
///     displayName: "Oracle to BigQuery",
///     location: "us-central1",
///     streamId: "my-stream",
///     desiredState: "RUNNING",
///     sourceConfig: {
///         sourceConnectionProfile: source.id,
///         oracleSourceConfig: {
///             maxConcurrentCdcTasks: 8,
///             maxConcurrentBackfillTasks: 12,
///             includeObjects: {
///                 oracleSchemas: [{
///                     schema: "schema",
///                     oracleTables: [{
///                         table: "table",
///                         oracleColumns: [{
///                             column: "column",
///                         }],
///                     }],
///                 }],
///             },
///             excludeObjects: {
///                 oracleSchemas: [{
///                     schema: "schema",
///                     oracleTables: [{
///                         table: "table",
///                         oracleColumns: [{
///                             column: "column",
///                         }],
///                     }],
///                 }],
///             },
///             dropLargeObjects: {},
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destination.id,
///         bigqueryDestinationConfig: {
///             dataFreshness: "900s",
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///         },
///     },
///     backfillAll: {
///         oracleExcludedObjects: {
///             oracleSchemas: [{
///                 schema: "schema",
///                 oracleTables: [{
///                     table: "table",
///                     oracleColumns: [{
///                         column: "column",
///                     }],
///                 }],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// source = gcp.datastream.ConnectionProfile("source",
///     display_name="Oracle Source",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     oracle_profile={
///         "hostname": "hostname",
///         "port": 1521,
///         "username": "user",
///         "password": "pass",
///         "database_service": "ORCL",
///     })
/// destination = gcp.datastream.ConnectionProfile("destination",
///     display_name="BigQuery Destination",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     bigquery_profile={})
/// stream5 = gcp.datastream.Stream("stream5",
///     display_name="Oracle to BigQuery",
///     location="us-central1",
///     stream_id="my-stream",
///     desired_state="RUNNING",
///     source_config={
///         "source_connection_profile": source.id,
///         "oracle_source_config": {
///             "max_concurrent_cdc_tasks": 8,
///             "max_concurrent_backfill_tasks": 12,
///             "include_objects": {
///                 "oracle_schemas": [{
///                     "schema": "schema",
///                     "oracle_tables": [{
///                         "table": "table",
///                         "oracle_columns": [{
///                             "column": "column",
///                         }],
///                     }],
///                 }],
///             },
///             "exclude_objects": {
///                 "oracle_schemas": [{
///                     "schema": "schema",
///                     "oracle_tables": [{
///                         "table": "table",
///                         "oracle_columns": [{
///                             "column": "column",
///                         }],
///                     }],
///                 }],
///             },
///             "drop_large_objects": {},
///         },
///     },
///     destination_config={
///         "destination_connection_profile": destination.id,
///         "bigquery_destination_config": {
///             "data_freshness": "900s",
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///         },
///     },
///     backfill_all={
///         "oracle_excluded_objects": {
///             "oracle_schemas": [{
///                 "schema": "schema",
///                 "oracle_tables": [{
///                     "table": "table",
///                     "oracle_columns": [{
///                         "column": "column",
///                     }],
///                 }],
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source = new Gcp.Datastream.ConnectionProfile("source", new()
///     {
///         DisplayName = "Oracle Source",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         OracleProfile = new Gcp.Datastream.Inputs.ConnectionProfileOracleProfileArgs
///         {
///             Hostname = "hostname",
///             Port = 1521,
///             Username = "user",
///             Password = "pass",
///             DatabaseService = "ORCL",
///         },
///     });
///
///     var destination = new Gcp.Datastream.ConnectionProfile("destination", new()
///     {
///         DisplayName = "BigQuery Destination",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var stream5 = new Gcp.Datastream.Stream("stream5", new()
///     {
///         DisplayName = "Oracle to BigQuery",
///         Location = "us-central1",
///         StreamId = "my-stream",
///         DesiredState = "RUNNING",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = source.Id,
///             OracleSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigArgs
///             {
///                 MaxConcurrentCdcTasks = 8,
///                 MaxConcurrentBackfillTasks = 12,
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsArgs
///                 {
///                     OracleSchemas = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaArgs
///                         {
///                             Schema = "schema",
///                             OracleTables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableArgs
///                                 {
///                                     Table = "table",
///                                     OracleColumns = new[]
///                                     {
///                                         new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumnArgs
///                                         {
///                                             Column = "column",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 ExcludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsArgs
///                 {
///                     OracleSchemas = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaArgs
///                         {
///                             Schema = "schema",
///                             OracleTables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableArgs
///                                 {
///                                     Table = "table",
///                                     OracleColumns = new[]
///                                     {
///                                         new Gcp.Datastream.Inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumnArgs
///                                         {
///                                             Column = "column",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 DropLargeObjects = null,
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destination.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 DataFreshness = "900s",
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///         BackfillAll = new Gcp.Datastream.Inputs.StreamBackfillAllArgs
///         {
///             OracleExcludedObjects = new Gcp.Datastream.Inputs.StreamBackfillAllOracleExcludedObjectsArgs
///             {
///                 OracleSchemas = new[]
///                 {
///                     new Gcp.Datastream.Inputs.StreamBackfillAllOracleExcludedObjectsOracleSchemaArgs
///                     {
///                         Schema = "schema",
///                         OracleTables = new[]
///                         {
///                             new Gcp.Datastream.Inputs.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableArgs
///                             {
///                                 Table = "table",
///                                 OracleColumns = new[]
///                                 {
///                                     new Gcp.Datastream.Inputs.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumnArgs
///                                     {
///                                         Column = "column",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		source, err := datastream.NewConnectionProfile(ctx, "source", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Oracle Source"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			OracleProfile: &datastream.ConnectionProfileOracleProfileArgs{
/// 				Hostname:        pulumi.String("hostname"),
/// 				Port:            pulumi.Int(1521),
/// 				Username:        pulumi.String("user"),
/// 				Password:        pulumi.String("pass"),
/// 				DatabaseService: pulumi.String("ORCL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := datastream.NewConnectionProfile(ctx, "destination", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("BigQuery Destination"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "stream5", &datastream.StreamArgs{
/// 			DisplayName:  pulumi.String("Oracle to BigQuery"),
/// 			Location:     pulumi.String("us-central1"),
/// 			StreamId:     pulumi.String("my-stream"),
/// 			DesiredState: pulumi.String("RUNNING"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: source.ID().ToIDOutput().ToStringOutput(),
/// 				OracleSourceConfig: &datastream.StreamSourceConfigOracleSourceConfigArgs{
/// 					MaxConcurrentCdcTasks:      pulumi.Int(8),
/// 					MaxConcurrentBackfillTasks: pulumi.Int(12),
/// 					IncludeObjects: &datastream.StreamSourceConfigOracleSourceConfigIncludeObjectsArgs{
/// 						OracleSchemas: datastream.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaArray{
/// 							&datastream.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaArgs{
/// 								Schema: pulumi.String("schema"),
/// 								OracleTables: datastream.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableArray{
/// 									&datastream.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableArgs{
/// 										Table: pulumi.String("table"),
/// 										OracleColumns: datastream.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumnArray{
/// 											&datastream.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumnArgs{
/// 												Column: pulumi.String("column"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ExcludeObjects: &datastream.StreamSourceConfigOracleSourceConfigExcludeObjectsArgs{
/// 						OracleSchemas: datastream.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaArray{
/// 							&datastream.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaArgs{
/// 								Schema: pulumi.String("schema"),
/// 								OracleTables: datastream.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableArray{
/// 									&datastream.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableArgs{
/// 										Table: pulumi.String("table"),
/// 										OracleColumns: datastream.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumnArray{
/// 											&datastream.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumnArgs{
/// 												Column: pulumi.String("column"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					DropLargeObjects: &datastream.StreamSourceConfigOracleSourceConfigDropLargeObjectsArgs{},
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destination.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					DataFreshness: pulumi.String("900s"),
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackfillAll: &datastream.StreamBackfillAllArgs{
/// 				OracleExcludedObjects: &datastream.StreamBackfillAllOracleExcludedObjectsArgs{
/// 					OracleSchemas: datastream.StreamBackfillAllOracleExcludedObjectsOracleSchemaArray{
/// 						&datastream.StreamBackfillAllOracleExcludedObjectsOracleSchemaArgs{
/// 							Schema: pulumi.String("schema"),
/// 							OracleTables: datastream.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableArray{
/// 								&datastream.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableArgs{
/// 									Table: pulumi.String("table"),
/// 									OracleColumns: datastream.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumnArray{
/// 										&datastream.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumnArgs{
/// 											Column: pulumi.String("column"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datastream_connectionprofile" "source" {
///   display_name          = "Oracle Source"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   oracle_profile = {
///     hostname         = "hostname"
///     port             = 1521
///     username         = "user"
///     password         = "pass"
///     database_service = "ORCL"
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination" {
///   display_name          = "BigQuery Destination"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "stream5" {
///   display_name  = "Oracle to BigQuery"
///   location      = "us-central1"
///   stream_id     = "my-stream"
///   desired_state = "RUNNING"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source.id
///     oracle_source_config = {
///       max_concurrent_cdc_tasks      = 8
///       max_concurrent_backfill_tasks = 12
///       include_objects = {
///         oracle_schemas = [{
///           "schema" = "schema"
///           "oracleTables" = [{
///             "table" = "table"
///             "oracleColumns" = [{
///               "column" = "column"
///             }]
///           }]
///         }]
///       }
///       exclude_objects = {
///         oracle_schemas = [{
///           "schema" = "schema"
///           "oracleTables" = [{
///             "table" = "table"
///             "oracleColumns" = [{
///               "column" = "column"
///             }]
///           }]
///         }]
///       }
///       drop_large_objects = {}
///     }
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination.id
///     bigquery_destination_config = {
///       data_freshness = "900s"
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///     }
///   }
///   backfill_all = {
///     oracle_excluded_objects = {
///       oracle_schemas = [{
///         "schema" = "schema"
///         "oracleTables" = [{
///           "table" = "table"
///           "oracleColumns" = [{
///             "column" = "column"
///           }]
///         }]
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileOracleProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumnArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumnArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigOracleSourceConfigDropLargeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllOracleExcludedObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllOracleExcludedObjectsOracleSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumnArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var source = new ConnectionProfile("source", ConnectionProfileArgs.builder()
///             .displayName("Oracle Source")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .oracleProfile(ConnectionProfileOracleProfileArgs.builder()
///                 .hostname("hostname")
///                 .port(1521)
///                 .username("user")
///                 .password("pass")
///                 .databaseService("ORCL")
///                 .build())
///             .build());
///
///         var destination = new ConnectionProfile("destination", ConnectionProfileArgs.builder()
///             .displayName("BigQuery Destination")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var stream5 = new Stream("stream5", StreamArgs.builder()
///             .displayName("Oracle to BigQuery")
///             .location("us-central1")
///             .streamId("my-stream")
///             .desiredState("RUNNING")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(source.id())
///                 .oracleSourceConfig(StreamSourceConfigOracleSourceConfigArgs.builder()
///                     .maxConcurrentCdcTasks(8)
///                     .maxConcurrentBackfillTasks(12)
///                     .includeObjects(StreamSourceConfigOracleSourceConfigIncludeObjectsArgs.builder()
///                         .oracleSchemas(StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaArgs.builder()
///                             .schema("schema")
///                             .oracleTables(StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableArgs.builder()
///                                 .table("table")
///                                 .oracleColumns(StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumnArgs.builder()
///                                     .column("column")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .excludeObjects(StreamSourceConfigOracleSourceConfigExcludeObjectsArgs.builder()
///                         .oracleSchemas(StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaArgs.builder()
///                             .schema("schema")
///                             .oracleTables(StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableArgs.builder()
///                                 .table("table")
///                                 .oracleColumns(StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumnArgs.builder()
///                                     .column("column")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .dropLargeObjects(StreamSourceConfigOracleSourceConfigDropLargeObjectsArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destination.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .dataFreshness("900s")
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .backfillAll(StreamBackfillAllArgs.builder()
///                 .oracleExcludedObjects(StreamBackfillAllOracleExcludedObjectsArgs.builder()
///                     .oracleSchemas(StreamBackfillAllOracleExcludedObjectsOracleSchemaArgs.builder()
///                         .schema("schema")
///                         .oracleTables(StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableArgs.builder()
///                             .table("table")
///                             .oracleColumns(StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumnArgs.builder()
///                                 .column("column")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   source:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: Oracle Source
///       location: us-central1
///       connectionProfileId: source-profile
///       oracleProfile:
///         hostname: hostname
///         port: 1521
///         username: user
///         password: pass
///         databaseService: ORCL
///   destination:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: BigQuery Destination
///       location: us-central1
///       connectionProfileId: destination-profile
///       bigqueryProfile: {}
///   stream5:
///     type: gcp:datastream:Stream
///     properties:
///       displayName: Oracle to BigQuery
///       location: us-central1
///       streamId: my-stream
///       desiredState: RUNNING
///       sourceConfig:
///         sourceConnectionProfile: ${source.id}
///         oracleSourceConfig:
///           maxConcurrentCdcTasks: 8
///           maxConcurrentBackfillTasks: 12
///           includeObjects:
///             oracleSchemas:
///               - schema: schema
///                 oracleTables:
///                   - table: table
///                     oracleColumns:
///                       - column: column
///           excludeObjects:
///             oracleSchemas:
///               - schema: schema
///                 oracleTables:
///                   - table: table
///                     oracleColumns:
///                       - column: column
///           dropLargeObjects: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destination.id}
///         bigqueryDestinationConfig:
///           dataFreshness: 900s
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///       backfillAll:
///         oracleExcludedObjects:
///           oracleSchemas:
///             - schema: schema
///               oracleTables:
///                 - table: table
///                   oracleColumns:
///                     - column: column
/// ```
///
/// ### Datastream Stream Sql Server
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "sql-server",
///     databaseVersion: "SQLSERVER_2022_STANDARD",
///     region: "us-central1",
///     rootPassword: "root-password",
///     deletionProtection: true,
///     settings: {
///         tier: "db-custom-2-4096",
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     password: "password",
/// });
/// const db = new gcp.sql.Database("db", {
///     name: "db",
///     instance: instance.name,
/// }, {
///     dependsOn: [user],
/// });
/// const source = new gcp.datastream.ConnectionProfile("source", {
///     displayName: "SQL Server Source",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     sqlServerProfile: {
///         hostname: instance.publicIpAddress,
///         port: 1433,
///         username: user.name,
///         password: user.password,
///         database: db.name,
///     },
/// });
/// const destination = new gcp.datastream.ConnectionProfile("destination", {
///     displayName: "BigQuery Destination",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     displayName: "SQL Server to BigQuery",
///     location: "us-central1",
///     streamId: "stream",
///     sourceConfig: {
///         sourceConnectionProfile: source.id,
///         sqlServerSourceConfig: {
///             includeObjects: {
///                 schemas: [{
///                     schema: "schema",
///                     tables: [{
///                         table: "table",
///                     }],
///                 }],
///             },
///             transactionLogs: {},
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destination.id,
///         bigqueryDestinationConfig: {
///             dataFreshness: "900s",
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///         },
///     },
///     backfillNone: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="sql-server",
///     database_version="SQLSERVER_2022_STANDARD",
///     region="us-central1",
///     root_password="root-password",
///     deletion_protection=True,
///     settings={
///         "tier": "db-custom-2-4096",
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     })
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     password="password")
/// db = gcp.sql.Database("db",
///     name="db",
///     instance=instance.name,
///     opts = pulumi.ResourceOptions(depends_on=[user]))
/// source = gcp.datastream.ConnectionProfile("source",
///     display_name="SQL Server Source",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     sql_server_profile={
///         "hostname": instance.public_ip_address,
///         "port": 1433,
///         "username": user.name,
///         "password": user.password,
///         "database": db.name,
///     })
/// destination = gcp.datastream.ConnectionProfile("destination",
///     display_name="BigQuery Destination",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     display_name="SQL Server to BigQuery",
///     location="us-central1",
///     stream_id="stream",
///     source_config={
///         "source_connection_profile": source.id,
///         "sql_server_source_config": {
///             "include_objects": {
///                 "schemas": [{
///                     "schema": "schema",
///                     "tables": [{
///                         "table": "table",
///                     }],
///                 }],
///             },
///             "transaction_logs": {},
///         },
///     },
///     destination_config={
///         "destination_connection_profile": destination.id,
///         "bigquery_destination_config": {
///             "data_freshness": "900s",
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///         },
///     },
///     backfill_none={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "sql-server",
///         DatabaseVersion = "SQLSERVER_2022_STANDARD",
///         Region = "us-central1",
///         RootPassword = "root-password",
///         DeletionProtection = true,
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-2-4096",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Password = "password",
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Name = "db",
///         Instance = instance.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             user,
///         },
///     });
///
///     var source = new Gcp.Datastream.ConnectionProfile("source", new()
///     {
///         DisplayName = "SQL Server Source",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         SqlServerProfile = new Gcp.Datastream.Inputs.ConnectionProfileSqlServerProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Port = 1433,
///             Username = user.Name,
///             Password = user.Password,
///             Database = db.Name,
///         },
///     });
///
///     var destination = new Gcp.Datastream.ConnectionProfile("destination", new()
///     {
///         DisplayName = "BigQuery Destination",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         DisplayName = "SQL Server to BigQuery",
///         Location = "us-central1",
///         StreamId = "stream",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = source.Id,
///             SqlServerSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigArgs
///             {
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs
///                 {
///                     Schemas = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs
///                         {
///                             Schema = "schema",
///                             Tables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs
///                                 {
///                                     Table = "table",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 TransactionLogs = null,
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destination.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 DataFreshness = "900s",
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///         BackfillNone = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:               pulumi.String("sql-server"),
/// 			DatabaseVersion:    pulumi.String("SQLSERVER_2022_STANDARD"),
/// 			Region:             pulumi.String("us-central1"),
/// 			RootPassword:       pulumi.String("root-password"),
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-custom-2-4096"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Password: pulumi.String("password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Name:     pulumi.String("db"),
/// 			Instance: instance.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			user,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := datastream.NewConnectionProfile(ctx, "source", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("SQL Server Source"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			SqlServerProfile: &datastream.ConnectionProfileSqlServerProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Port:     pulumi.Int(1433),
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 				Database: db.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := datastream.NewConnectionProfile(ctx, "destination", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("BigQuery Destination"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			DisplayName: pulumi.String("SQL Server to BigQuery"),
/// 			Location:    pulumi.String("us-central1"),
/// 			StreamId:    pulumi.String("stream"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: source.ID().ToIDOutput().ToStringOutput(),
/// 				SqlServerSourceConfig: &datastream.StreamSourceConfigSqlServerSourceConfigArgs{
/// 					IncludeObjects: &datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs{
/// 						Schemas: datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArray{
/// 							&datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs{
/// 								Schema: pulumi.String("schema"),
/// 								Tables: datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArray{
/// 									&datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs{
/// 										Table: pulumi.String("table"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					TransactionLogs: &datastream.StreamSourceConfigSqlServerSourceConfigTransactionLogsArgs{},
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destination.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					DataFreshness: pulumi.String("900s"),
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name                = "sql-server"
///   database_version    = "SQLSERVER_2022_STANDARD"
///   region              = "us-central1"
///   root_password       = "root-password"
///   deletion_protection = true
///   settings = {
///     tier = "db-custom-2-4096"
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
/// }
/// resource "gcp_sql_database" "db" {
///   depends_on = [gcp_sql_user.user]
///   name       = "db"
///   instance   = gcp_sql_databaseinstance.instance.name
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   password = "password"
/// }
/// resource "gcp_datastream_connectionprofile" "source" {
///   display_name          = "SQL Server Source"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   sql_server_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     port     = 1433
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///     database = gcp_sql_database.db.name
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination" {
///   display_name          = "BigQuery Destination"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   display_name = "SQL Server to BigQuery"
///   location     = "us-central1"
///   stream_id    = "stream"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source.id
///     sql_server_source_config = {
///       include_objects = {
///         schemas = [{
///           "schema" = "schema"
///           "tables" = [{
///             "table" = "table"
///           }]
///         }]
///       }
///       transaction_logs = {}
///     }
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination.id
///     bigquery_destination_config = {
///       data_freshness = "900s"
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileSqlServerProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigTransactionLogsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("sql-server")
///             .databaseVersion("SQLSERVER_2022_STANDARD")
///             .region("us-central1")
///             .rootPassword("root-password")
///             .deletionProtection(true)
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-2-4096")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .password("password")
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .name("db")
///             .instance(instance.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(user)
///                 .build());
///
///         var source = new ConnectionProfile("source", ConnectionProfileArgs.builder()
///             .displayName("SQL Server Source")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .sqlServerProfile(ConnectionProfileSqlServerProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .port(1433)
///                 .username(user.name())
///                 .password(user.password())
///                 .database(db.name())
///                 .build())
///             .build());
///
///         var destination = new ConnectionProfile("destination", ConnectionProfileArgs.builder()
///             .displayName("BigQuery Destination")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .displayName("SQL Server to BigQuery")
///             .location("us-central1")
///             .streamId("stream")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(source.id())
///                 .sqlServerSourceConfig(StreamSourceConfigSqlServerSourceConfigArgs.builder()
///                     .includeObjects(StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs.builder()
///                         .schemas(StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs.builder()
///                             .schema("schema")
///                             .tables(StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs.builder()
///                                 .table("table")
///                                 .build())
///                             .build())
///                         .build())
///                     .transactionLogs(StreamSourceConfigSqlServerSourceConfigTransactionLogsArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destination.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .dataFreshness("900s")
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: sql-server
///       databaseVersion: SQLSERVER_2022_STANDARD
///       region: us-central1
///       rootPassword: root-password
///       deletionProtection: true
///       settings:
///         tier: db-custom-2-4096
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///   db:
///     type: gcp:sql:Database
///     properties:
///       name: db
///       instance: ${instance.name}
///     options:
///       dependsOn:
///         - ${user}
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       password: password
///   source:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: SQL Server Source
///       location: us-central1
///       connectionProfileId: source-profile
///       sqlServerProfile:
///         hostname: ${instance.publicIpAddress}
///         port: 1433
///         username: ${user.name}
///         password: ${user.password}
///         database: ${db.name}
///   destination:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: BigQuery Destination
///       location: us-central1
///       connectionProfileId: destination-profile
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       displayName: SQL Server to BigQuery
///       location: us-central1
///       streamId: stream
///       sourceConfig:
///         sourceConnectionProfile: ${source.id}
///         sqlServerSourceConfig:
///           includeObjects:
///             schemas:
///               - schema: schema
///                 tables:
///                   - table: table
///           transactionLogs: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destination.id}
///         bigqueryDestinationConfig:
///           dataFreshness: 900s
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///       backfillNone: {}
/// ```
///
/// ### Datastream Stream Sql Server Change Tables
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "sql-server",
///     databaseVersion: "SQLSERVER_2022_STANDARD",
///     region: "us-central1",
///     rootPassword: "root-password",
///     deletionProtection: true,
///     settings: {
///         tier: "db-custom-2-4096",
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     password: "password",
/// });
/// const db = new gcp.sql.Database("db", {
///     name: "db",
///     instance: instance.name,
/// }, {
///     dependsOn: [user],
/// });
/// const source = new gcp.datastream.ConnectionProfile("source", {
///     displayName: "SQL Server Source",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     sqlServerProfile: {
///         hostname: instance.publicIpAddress,
///         port: 1433,
///         username: user.name,
///         password: user.password,
///         database: db.name,
///     },
/// });
/// const destination = new gcp.datastream.ConnectionProfile("destination", {
///     displayName: "BigQuery Destination",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     displayName: "SQL Server to BigQuery",
///     location: "us-central1",
///     streamId: "stream",
///     sourceConfig: {
///         sourceConnectionProfile: source.id,
///         sqlServerSourceConfig: {
///             includeObjects: {
///                 schemas: [{
///                     schema: "schema",
///                     tables: [{
///                         table: "table",
///                     }],
///                 }],
///             },
///             changeTables: {},
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destination.id,
///         bigqueryDestinationConfig: {
///             dataFreshness: "900s",
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///         },
///     },
///     backfillNone: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="sql-server",
///     database_version="SQLSERVER_2022_STANDARD",
///     region="us-central1",
///     root_password="root-password",
///     deletion_protection=True,
///     settings={
///         "tier": "db-custom-2-4096",
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     })
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     password="password")
/// db = gcp.sql.Database("db",
///     name="db",
///     instance=instance.name,
///     opts = pulumi.ResourceOptions(depends_on=[user]))
/// source = gcp.datastream.ConnectionProfile("source",
///     display_name="SQL Server Source",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     sql_server_profile={
///         "hostname": instance.public_ip_address,
///         "port": 1433,
///         "username": user.name,
///         "password": user.password,
///         "database": db.name,
///     })
/// destination = gcp.datastream.ConnectionProfile("destination",
///     display_name="BigQuery Destination",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     display_name="SQL Server to BigQuery",
///     location="us-central1",
///     stream_id="stream",
///     source_config={
///         "source_connection_profile": source.id,
///         "sql_server_source_config": {
///             "include_objects": {
///                 "schemas": [{
///                     "schema": "schema",
///                     "tables": [{
///                         "table": "table",
///                     }],
///                 }],
///             },
///             "change_tables": {},
///         },
///     },
///     destination_config={
///         "destination_connection_profile": destination.id,
///         "bigquery_destination_config": {
///             "data_freshness": "900s",
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///         },
///     },
///     backfill_none={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "sql-server",
///         DatabaseVersion = "SQLSERVER_2022_STANDARD",
///         Region = "us-central1",
///         RootPassword = "root-password",
///         DeletionProtection = true,
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-2-4096",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Password = "password",
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Name = "db",
///         Instance = instance.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             user,
///         },
///     });
///
///     var source = new Gcp.Datastream.ConnectionProfile("source", new()
///     {
///         DisplayName = "SQL Server Source",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         SqlServerProfile = new Gcp.Datastream.Inputs.ConnectionProfileSqlServerProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Port = 1433,
///             Username = user.Name,
///             Password = user.Password,
///             Database = db.Name,
///         },
///     });
///
///     var destination = new Gcp.Datastream.ConnectionProfile("destination", new()
///     {
///         DisplayName = "BigQuery Destination",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         DisplayName = "SQL Server to BigQuery",
///         Location = "us-central1",
///         StreamId = "stream",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = source.Id,
///             SqlServerSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigArgs
///             {
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs
///                 {
///                     Schemas = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs
///                         {
///                             Schema = "schema",
///                             Tables = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs
///                                 {
///                                     Table = "table",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 ChangeTables = null,
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destination.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 DataFreshness = "900s",
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///         BackfillNone = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:               pulumi.String("sql-server"),
/// 			DatabaseVersion:    pulumi.String("SQLSERVER_2022_STANDARD"),
/// 			Region:             pulumi.String("us-central1"),
/// 			RootPassword:       pulumi.String("root-password"),
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-custom-2-4096"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Password: pulumi.String("password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Name:     pulumi.String("db"),
/// 			Instance: instance.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			user,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := datastream.NewConnectionProfile(ctx, "source", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("SQL Server Source"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			SqlServerProfile: &datastream.ConnectionProfileSqlServerProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Port:     pulumi.Int(1433),
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 				Database: db.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := datastream.NewConnectionProfile(ctx, "destination", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("BigQuery Destination"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			DisplayName: pulumi.String("SQL Server to BigQuery"),
/// 			Location:    pulumi.String("us-central1"),
/// 			StreamId:    pulumi.String("stream"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: source.ID().ToIDOutput().ToStringOutput(),
/// 				SqlServerSourceConfig: &datastream.StreamSourceConfigSqlServerSourceConfigArgs{
/// 					IncludeObjects: &datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs{
/// 						Schemas: datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArray{
/// 							&datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs{
/// 								Schema: pulumi.String("schema"),
/// 								Tables: datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArray{
/// 									&datastream.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs{
/// 										Table: pulumi.String("table"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ChangeTables: &datastream.StreamSourceConfigSqlServerSourceConfigChangeTablesArgs{},
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destination.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					DataFreshness: pulumi.String("900s"),
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name                = "sql-server"
///   database_version    = "SQLSERVER_2022_STANDARD"
///   region              = "us-central1"
///   root_password       = "root-password"
///   deletion_protection = true
///   settings = {
///     tier = "db-custom-2-4096"
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
/// }
/// resource "gcp_sql_database" "db" {
///   depends_on = [gcp_sql_user.user]
///   name       = "db"
///   instance   = gcp_sql_databaseinstance.instance.name
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   password = "password"
/// }
/// resource "gcp_datastream_connectionprofile" "source" {
///   display_name          = "SQL Server Source"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   sql_server_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     port     = 1433
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///     database = gcp_sql_database.db.name
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination" {
///   display_name          = "BigQuery Destination"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   display_name = "SQL Server to BigQuery"
///   location     = "us-central1"
///   stream_id    = "stream"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source.id
///     sql_server_source_config = {
///       include_objects = {
///         schemas = [{
///           "schema" = "schema"
///           "tables" = [{
///             "table" = "table"
///           }]
///         }]
///       }
///       change_tables = {}
///     }
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination.id
///     bigquery_destination_config = {
///       data_freshness = "900s"
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileSqlServerProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigSqlServerSourceConfigChangeTablesArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("sql-server")
///             .databaseVersion("SQLSERVER_2022_STANDARD")
///             .region("us-central1")
///             .rootPassword("root-password")
///             .deletionProtection(true)
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-2-4096")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .password("password")
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .name("db")
///             .instance(instance.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(user)
///                 .build());
///
///         var source = new ConnectionProfile("source", ConnectionProfileArgs.builder()
///             .displayName("SQL Server Source")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .sqlServerProfile(ConnectionProfileSqlServerProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .port(1433)
///                 .username(user.name())
///                 .password(user.password())
///                 .database(db.name())
///                 .build())
///             .build());
///
///         var destination = new ConnectionProfile("destination", ConnectionProfileArgs.builder()
///             .displayName("BigQuery Destination")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .displayName("SQL Server to BigQuery")
///             .location("us-central1")
///             .streamId("stream")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(source.id())
///                 .sqlServerSourceConfig(StreamSourceConfigSqlServerSourceConfigArgs.builder()
///                     .includeObjects(StreamSourceConfigSqlServerSourceConfigIncludeObjectsArgs.builder()
///                         .schemas(StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaArgs.builder()
///                             .schema("schema")
///                             .tables(StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableArgs.builder()
///                                 .table("table")
///                                 .build())
///                             .build())
///                         .build())
///                     .changeTables(StreamSourceConfigSqlServerSourceConfigChangeTablesArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destination.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .dataFreshness("900s")
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: sql-server
///       databaseVersion: SQLSERVER_2022_STANDARD
///       region: us-central1
///       rootPassword: root-password
///       deletionProtection: true
///       settings:
///         tier: db-custom-2-4096
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///   db:
///     type: gcp:sql:Database
///     properties:
///       name: db
///       instance: ${instance.name}
///     options:
///       dependsOn:
///         - ${user}
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       password: password
///   source:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: SQL Server Source
///       location: us-central1
///       connectionProfileId: source-profile
///       sqlServerProfile:
///         hostname: ${instance.publicIpAddress}
///         port: 1433
///         username: ${user.name}
///         password: ${user.password}
///         database: ${db.name}
///   destination:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: BigQuery Destination
///       location: us-central1
///       connectionProfileId: destination-profile
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       displayName: SQL Server to BigQuery
///       location: us-central1
///       streamId: stream
///       sourceConfig:
///         sourceConnectionProfile: ${source.id}
///         sqlServerSourceConfig:
///           includeObjects:
///             schemas:
///               - schema: schema
///                 tables:
///                   - table: table
///           changeTables: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destination.id}
///         bigqueryDestinationConfig:
///           dataFreshness: 900s
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///       backfillNone: {}
/// ```
///
/// ### Datastream Stream Mysql Gtid
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "<%= ctx[:vars]['mysql_name'] %>",
///     databaseVersion: "MYSQL_8_0",
///     region: "us-central1",
///     rootPassword: "<%= ctx[:vars]['mysql_root_password'] %>",
///     deletionProtection: "<%= ctx[:vars]['deletion_protection'] %>" === "true",
///     settings: {
///         tier: "db-custom-2-4096",
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
/// });
/// const user = new gcp.sql.User("user", {
///     name: "<%= ctx[:vars]['database_user'] %>",
///     instance: instance.name,
///     password: "<%= ctx[:vars]['database_password'] %>",
/// });
/// const db = new gcp.sql.Database("db", {
///     name: "<%= ctx[:vars]['database_name'] %>",
///     instance: instance.name,
/// }, {
///     dependsOn: [user],
/// });
/// const source = new gcp.datastream.ConnectionProfile("source", {
///     displayName: "MySQL Source",
///     location: "us-central1",
///     connectionProfileId: "<%= ctx[:vars]['source_connection_profile_id'] %>",
///     mysqlProfile: {
///         hostname: instance.publicIpAddress,
///         port: 1433,
///         username: user.name,
///         password: user.password,
///         database: db.name,
///     },
/// });
/// const destination = new gcp.datastream.ConnectionProfile("destination", {
///     displayName: "BigQuery Destination",
///     location: "us-central1",
///     connectionProfileId: "<%= ctx[:vars]['destination_connection_profile_id'] %>",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     displayName: "MySQL to BigQuery",
///     location: "us-central1",
///     streamId: "<%= ctx[:vars]['stream_id'] %>",
///     sourceConfig: {
///         sourceConnectionProfile: source.id,
///         mysqlSourceConfig: {
///             includeObjects: {
///                 schemas: [{
///                     schema: "schema",
///                     tables: [{
///                         table: "table",
///                     }],
///                 }],
///             },
///             gtid: {},
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destination.id,
///         bigqueryDestinationConfig: {
///             dataFreshness: "900s",
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///         },
///     },
///     backfillNone: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="<%= ctx[:vars]['mysql_name'] %>",
///     database_version="MYSQL_8_0",
///     region="us-central1",
///     root_password="<%= ctx[:vars]['mysql_root_password'] %>",
///     deletion_protection="<%= ctx[:vars]['deletion_protection'] %>" == "true",
///     settings={
///         "tier": "db-custom-2-4096",
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     })
/// user = gcp.sql.User("user",
///     name="<%= ctx[:vars]['database_user'] %>",
///     instance=instance.name,
///     password="<%= ctx[:vars]['database_password'] %>")
/// db = gcp.sql.Database("db",
///     name="<%= ctx[:vars]['database_name'] %>",
///     instance=instance.name,
///     opts = pulumi.ResourceOptions(depends_on=[user]))
/// source = gcp.datastream.ConnectionProfile("source",
///     display_name="MySQL Source",
///     location="us-central1",
///     connection_profile_id="<%= ctx[:vars]['source_connection_profile_id'] %>",
///     mysql_profile={
///         "hostname": instance.public_ip_address,
///         "port": 1433,
///         "username": user.name,
///         "password": user.password,
///         "database": db.name,
///     })
/// destination = gcp.datastream.ConnectionProfile("destination",
///     display_name="BigQuery Destination",
///     location="us-central1",
///     connection_profile_id="<%= ctx[:vars]['destination_connection_profile_id'] %>",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     display_name="MySQL to BigQuery",
///     location="us-central1",
///     stream_id="<%= ctx[:vars]['stream_id'] %>",
///     source_config={
///         "source_connection_profile": source.id,
///         "mysql_source_config": {
///             "include_objects": {
///                 "schemas": [{
///                     "schema": "schema",
///                     "tables": [{
///                         "table": "table",
///                     }],
///                 }],
///             },
///             "gtid": {},
///         },
///     },
///     destination_config={
///         "destination_connection_profile": destination.id,
///         "bigquery_destination_config": {
///             "data_freshness": "900s",
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///         },
///     },
///     backfill_none={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "<%= ctx[:vars]['mysql_name'] %>",
///         DatabaseVersion = "MYSQL_8_0",
///         Region = "us-central1",
///         RootPassword = "<%= ctx[:vars]['mysql_root_password'] %>",
///         DeletionProtection = "<%= ctx[:vars]['deletion_protection'] %>" == "true",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-2-4096",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "<%= ctx[:vars]['database_user'] %>",
///         Instance = instance.Name,
///         Password = "<%= ctx[:vars]['database_password'] %>",
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Name = "<%= ctx[:vars]['database_name'] %>",
///         Instance = instance.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             user,
///         },
///     });
///
///     var source = new Gcp.Datastream.ConnectionProfile("source", new()
///     {
///         DisplayName = "MySQL Source",
///         Location = "us-central1",
///         ConnectionProfileId = "<%= ctx[:vars]['source_connection_profile_id'] %>",
///         MysqlProfile = new Gcp.Datastream.Inputs.ConnectionProfileMysqlProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Port = 1433,
///             Username = user.Name,
///             Password = user.Password,
///             Database = db.Name,
///         },
///     });
///
///     var destination = new Gcp.Datastream.ConnectionProfile("destination", new()
///     {
///         DisplayName = "BigQuery Destination",
///         Location = "us-central1",
///         ConnectionProfileId = "<%= ctx[:vars]['destination_connection_profile_id'] %>",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         DisplayName = "MySQL to BigQuery",
///         Location = "us-central1",
///         StreamId = "<%= ctx[:vars]['stream_id'] %>",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = source.Id,
///             MysqlSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigArgs
///             {
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs
///                 {
///                     Schemas = new[]
///                     {
///
///                         {
///                             { "schema", "schema" },
///                             { "tables", new[]
///                             {
///
///                                 {
///                                     { "table", "table" },
///                                 },
///                             } },
///                         },
///                     },
///                 },
///                 Gtid = null,
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destination.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 DataFreshness = "900s",
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///         BackfillNone = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:               pulumi.String("<%= ctx[:vars]['mysql_name'] %>"),
/// 			DatabaseVersion:    pulumi.String("MYSQL_8_0"),
/// 			Region:             pulumi.String("us-central1"),
/// 			RootPassword:       pulumi.String("<%= ctx[:vars]['mysql_root_password'] %>"),
/// 			DeletionProtection: pulumi.Bool("<%= ctx[:vars]['deletion_protection'] %>"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-custom-2-4096"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("<%= ctx[:vars]['database_user'] %>"),
/// 			Instance: instance.Name,
/// 			Password: pulumi.String("<%= ctx[:vars]['database_password'] %>"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Name:     pulumi.String("<%= ctx[:vars]['database_name'] %>"),
/// 			Instance: instance.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			user,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := datastream.NewConnectionProfile(ctx, "source", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("MySQL Source"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("<%= ctx[:vars]['source_connection_profile_id'] %>"),
/// 			MysqlProfile: &datastream.ConnectionProfileMysqlProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Port:     pulumi.Int(1433),
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 				Database: db.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := datastream.NewConnectionProfile(ctx, "destination", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("BigQuery Destination"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("<%= ctx[:vars]['destination_connection_profile_id'] %>"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			DisplayName: pulumi.String("MySQL to BigQuery"),
/// 			Location:    pulumi.String("us-central1"),
/// 			StreamId:    pulumi.String("<%= ctx[:vars]['stream_id'] %>"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: source.ID().ToIDOutput().ToStringOutput(),
/// 				MysqlSourceConfig: &datastream.StreamSourceConfigMysqlSourceConfigArgs{
/// 					IncludeObjects: &datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs{
/// 						Schemas: []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"schema": "schema",
/// 								"tables": []map[string]string{
/// 									{
/// 										"table": "table",
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Gtid: &datastream.StreamSourceConfigMysqlSourceConfigGtidArgs{},
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destination.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					DataFreshness: pulumi.String("900s"),
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name                = "<%= ctx[:vars]['mysql_name'] %>"
///   database_version    = "MYSQL_8_0"
///   region              = "us-central1"
///   root_password       = "<%= ctx[:vars]['mysql_root_password'] %>"
///   deletion_protection = "<%= ctx[:vars]['deletion_protection'] %>"
///   settings = {
///     tier = "db-custom-2-4096"
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
/// }
/// resource "gcp_sql_database" "db" {
///   depends_on = [gcp_sql_user.user]
///   name       = "<%= ctx[:vars]['database_name'] %>"
///   instance   = gcp_sql_databaseinstance.instance.name
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "<%= ctx[:vars]['database_user'] %>"
///   instance = gcp_sql_databaseinstance.instance.name
///   password = "<%= ctx[:vars]['database_password'] %>"
/// }
/// resource "gcp_datastream_connectionprofile" "source" {
///   display_name          = "MySQL Source"
///   location              = "us-central1"
///   connection_profile_id = "<%= ctx[:vars]['source_connection_profile_id'] %>"
///   mysql_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     port     = 1433
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///     database = gcp_sql_database.db.name
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination" {
///   display_name          = "BigQuery Destination"
///   location              = "us-central1"
///   connection_profile_id = "<%= ctx[:vars]['destination_connection_profile_id'] %>"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   display_name = "MySQL to BigQuery"
///   location     = "us-central1"
///   stream_id    = "<%= ctx[:vars]['stream_id'] %>"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source.id
///     mysql_source_config = {
///       include_objects = {
///         schemas = [{
///           "schema" = "schema"
///           "tables" = [{
///             "table" = "table"
///           }]
///         }]
///       }
///       gtid = {}
///     }
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination.id
///     bigquery_destination_config = {
///       data_freshness = "900s"
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMysqlProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigGtidArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("<%= ctx[:vars]['mysql_name'] %>")
///             .databaseVersion("MYSQL_8_0")
///             .region("us-central1")
///             .rootPassword("<%= ctx[:vars]['mysql_root_password'] %>")
///             .deletionProtection("<%= ctx[:vars]['deletion_protection'] %>")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-2-4096")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("<%= ctx[:vars]['database_user'] %>")
///             .instance(instance.name())
///             .password("<%= ctx[:vars]['database_password'] %>")
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .name("<%= ctx[:vars]['database_name'] %>")
///             .instance(instance.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(user)
///                 .build());
///
///         var source = new ConnectionProfile("source", ConnectionProfileArgs.builder()
///             .displayName("MySQL Source")
///             .location("us-central1")
///             .connectionProfileId("<%= ctx[:vars]['source_connection_profile_id'] %>")
///             .mysqlProfile(ConnectionProfileMysqlProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .port(1433)
///                 .username(user.name())
///                 .password(user.password())
///                 .database(db.name())
///                 .build())
///             .build());
///
///         var destination = new ConnectionProfile("destination", ConnectionProfileArgs.builder()
///             .displayName("BigQuery Destination")
///             .location("us-central1")
///             .connectionProfileId("<%= ctx[:vars]['destination_connection_profile_id'] %>")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .displayName("MySQL to BigQuery")
///             .location("us-central1")
///             .streamId("<%= ctx[:vars]['stream_id'] %>")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(source.id())
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .includeObjects(StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs.builder()
///                         .schemas(Arrays.asList(Map.ofEntries(
///                             Map.entry("schema", "schema"),
///                             Map.entry("tables", Arrays.asList(Map.of("table", "table")))
///                         )))
///                         .build())
///                     .gtid(StreamSourceConfigMysqlSourceConfigGtidArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destination.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .dataFreshness("900s")
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: <%= ctx[:vars]['mysql_name'] %>
///       databaseVersion: MYSQL_8_0
///       region: us-central1
///       rootPassword: <%= ctx[:vars]['mysql_root_password'] %>
///       deletionProtection: <%= ctx[:vars]['deletion_protection'] %>
///       settings:
///         tier: db-custom-2-4096
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///   db:
///     type: gcp:sql:Database
///     properties:
///       name: <%= ctx[:vars]['database_name'] %>
///       instance: ${instance.name}
///     options:
///       dependsOn:
///         - ${user}
///   user:
///     type: gcp:sql:User
///     properties:
///       name: <%= ctx[:vars]['database_user'] %>
///       instance: ${instance.name}
///       password: <%= ctx[:vars]['database_password'] %>
///   source:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: MySQL Source
///       location: us-central1
///       connectionProfileId: <%= ctx[:vars]['source_connection_profile_id'] %>
///       mysqlProfile:
///         hostname: ${instance.publicIpAddress}
///         port: 1433
///         username: ${user.name}
///         password: ${user.password}
///         database: ${db.name}
///   destination:
///     type: gcp:datastream:ConnectionProfile
///     properties:
///       displayName: BigQuery Destination
///       location: us-central1
///       connectionProfileId: <%= ctx[:vars]['destination_connection_profile_id'] %>
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       displayName: MySQL to BigQuery
///       location: us-central1
///       streamId: <%= ctx[:vars]['stream_id'] %>
///       sourceConfig:
///         sourceConnectionProfile: ${source.id}
///         mysqlSourceConfig:
///           includeObjects:
///             schemas:
///               - schema: schema
///                 tables:
///                   - table: table
///           gtid: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destination.id}
///         bigqueryDestinationConfig:
///           dataFreshness: 900s
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///       backfillNone: {}
/// ```
///
/// ### Datastream Stream Postgresql Bigquery Dataset Id
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const postgres = new gcp.bigquery.Dataset("postgres", {
///     datasetId: "postgres",
///     friendlyName: "postgres",
///     description: "Database of postgres",
///     location: "us-central1",
/// });
/// const destinationConnectionProfile2 = new gcp.datastream.ConnectionProfile("destination_connection_profile2", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     connectionProfileId: "dest-profile",
///     bigqueryProfile: {},
/// });
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "instance-name",
///     databaseVersion: "MYSQL_8_0",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletionProtection: false,
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "my-user",
///     instance: instance.name,
///     host: "%",
///     password: pwd.result,
/// });
/// const sourceConnectionProfile = new gcp.datastream.ConnectionProfile("source_connection_profile", {
///     displayName: "Source connection profile",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     mysqlProfile: {
///         hostname: instance.publicIpAddress,
///         username: user.name,
///         password: user.password,
///     },
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     displayName: "postgres to bigQuery",
///     location: "us-central1",
///     streamId: "postgres-bigquery",
///     sourceConfig: {
///         sourceConnectionProfile: sourceConnectionProfile.id,
///         mysqlSourceConfig: {},
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destinationConnectionProfile2.id,
///         bigqueryDestinationConfig: {
///             dataFreshness: "900s",
///             singleTargetDataset: {
///                 datasetId: postgres.id,
///             },
///         },
///     },
///     backfillAll: {},
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// postgres = gcp.bigquery.Dataset("postgres",
///     dataset_id="postgres",
///     friendly_name="postgres",
///     description="Database of postgres",
///     location="us-central1")
/// destination_connection_profile2 = gcp.datastream.ConnectionProfile("destination_connection_profile2",
///     display_name="Connection profile",
///     location="us-central1",
///     connection_profile_id="dest-profile",
///     bigquery_profile={})
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="instance-name",
///     database_version="MYSQL_8_0",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletion_protection=False)
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="my-user",
///     instance=instance.name,
///     host="%",
///     password=pwd["result"])
/// source_connection_profile = gcp.datastream.ConnectionProfile("source_connection_profile",
///     display_name="Source connection profile",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     mysql_profile={
///         "hostname": instance.public_ip_address,
///         "username": user.name,
///         "password": user.password,
///     })
/// default = gcp.datastream.Stream("default",
///     display_name="postgres to bigQuery",
///     location="us-central1",
///     stream_id="postgres-bigquery",
///     source_config={
///         "source_connection_profile": source_connection_profile.id,
///         "mysql_source_config": {},
///     },
///     destination_config={
///         "destination_connection_profile": destination_connection_profile2.id,
///         "bigquery_destination_config": {
///             "data_freshness": "900s",
///             "single_target_dataset": {
///                 "dataset_id": postgres.id,
///             },
///         },
///     },
///     backfill_all={})
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgres = new Gcp.BigQuery.Dataset("postgres", new()
///     {
///         DatasetId = "postgres",
///         FriendlyName = "postgres",
///         Description = "Database of postgres",
///         Location = "us-central1",
///     });
///
///     var destinationConnectionProfile2 = new Gcp.Datastream.ConnectionProfile("destination_connection_profile2", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "dest-profile",
///         BigqueryProfile = null,
///     });
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "instance-name",
///         DatabaseVersion = "MYSQL_8_0",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = false,
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "my-user",
///         Instance = instance.Name,
///         Host = "%",
///         Password = pwd.Result,
///     });
///
///     var sourceConnectionProfile = new Gcp.Datastream.ConnectionProfile("source_connection_profile", new()
///     {
///         DisplayName = "Source connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         MysqlProfile = new Gcp.Datastream.Inputs.ConnectionProfileMysqlProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Username = user.Name,
///             Password = user.Password,
///         },
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         DisplayName = "postgres to bigQuery",
///         Location = "us-central1",
///         StreamId = "postgres-bigquery",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = sourceConnectionProfile.Id,
///             MysqlSourceConfig = null,
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destinationConnectionProfile2.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 DataFreshness = "900s",
///                 SingleTargetDataset = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs
///                 {
///                     DatasetId = postgres.Id,
///                 },
///             },
///         },
///         BackfillAll = null,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgres, err := bigquery.NewDataset(ctx, "postgres", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("postgres"),
/// 			FriendlyName: pulumi.String("postgres"),
/// 			Description:  pulumi.String("Database of postgres"),
/// 			Location:     pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationConnectionProfile2, err := datastream.NewConnectionProfile(ctx, "destination_connection_profile2", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("dest-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("instance-name"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("my-user"),
/// 			Instance: instance.Name,
/// 			Host:     pulumi.String("%"),
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceConnectionProfile, err := datastream.NewConnectionProfile(ctx, "source_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Source connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			MysqlProfile: &datastream.ConnectionProfileMysqlProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			DisplayName: pulumi.String("postgres to bigQuery"),
/// 			Location:    pulumi.String("us-central1"),
/// 			StreamId:    pulumi.String("postgres-bigquery"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: sourceConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				MysqlSourceConfig:       &datastream.StreamSourceConfigMysqlSourceConfigArgs{},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destinationConnectionProfile2.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					DataFreshness: pulumi.String("900s"),
/// 					SingleTargetDataset: &datastream.StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs{
/// 						DatasetId: postgres.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			BackfillAll: &datastream.StreamBackfillAllArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "postgres" {
///   dataset_id    = "postgres"
///   friendly_name = "postgres"
///   description   = "Database of postgres"
///   location      = "us-central1"
/// }
/// resource "gcp_datastream_stream" "default" {
///   display_name = "postgres to bigQuery"
///   location     = "us-central1"
///   stream_id    = "postgres-bigquery"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source_connection_profile.id
///     mysql_source_config       = {}
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination_connection_profile2.id
///     bigquery_destination_config = {
///       data_freshness = "900s"
///       single_target_dataset = {
///         dataset_id = gcp_bigquery_dataset.postgres.id
///       }
///     }
///   }
///   backfill_all = {}
/// }
/// resource "gcp_datastream_connectionprofile" "destination_connection_profile2" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   connection_profile_id = "dest-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "instance-name"
///   database_version = "MYSQL_8_0"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
///   deletion_protection = false
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "my-user"
///   instance = gcp_sql_databaseinstance.instance.name
///   host     = "%"
///   password = random_password.pwd.result
/// }
/// resource "gcp_datastream_connectionprofile" "source_connection_profile" {
///   display_name          = "Source connection profile"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   mysql_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMysqlProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillAllArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var postgres = new Dataset("postgres", DatasetArgs.builder()
///             .datasetId("postgres")
///             .friendlyName("postgres")
///             .description("Database of postgres")
///             .location("us-central1")
///             .build());
///
///         var destinationConnectionProfile2 = new ConnectionProfile("destinationConnectionProfile2", ConnectionProfileArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .connectionProfileId("dest-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("instance-name")
///             .databaseVersion("MYSQL_8_0")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("my-user")
///             .instance(instance.name())
///             .host("%")
///             .password(pwd.get("result"))
///             .build());
///
///         var sourceConnectionProfile = new ConnectionProfile("sourceConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Source connection profile")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .mysqlProfile(ConnectionProfileMysqlProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .username(user.name())
///                 .password(user.password())
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .displayName("postgres to bigQuery")
///             .location("us-central1")
///             .streamId("postgres-bigquery")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(sourceConnectionProfile.id())
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destinationConnectionProfile2.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .dataFreshness("900s")
///                     .singleTargetDataset(StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs.builder()
///                         .datasetId(postgres.id())
///                         .build())
///                     .build())
///                 .build())
///             .backfillAll(StreamBackfillAllArgs.builder()
///                 .build())
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   postgres:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: postgres
///       friendlyName: postgres
///       description: Database of postgres
///       location: us-central1
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       displayName: postgres to bigQuery
///       location: us-central1
///       streamId: postgres-bigquery
///       sourceConfig:
///         sourceConnectionProfile: ${sourceConnectionProfile.id}
///         mysqlSourceConfig: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destinationConnectionProfile2.id}
///         bigqueryDestinationConfig:
///           dataFreshness: 900s
///           singleTargetDataset:
///             datasetId: ${postgres.id}
///       backfillAll: {}
///   destinationConnectionProfile2:
///     type: gcp:datastream:ConnectionProfile
///     name: destination_connection_profile2
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       connectionProfileId: dest-profile
///       bigqueryProfile: {}
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: instance-name
///       databaseVersion: MYSQL_8_0
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///       deletionProtection: false
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: my-user
///       instance: ${instance.name}
///       host: '%'
///       password: ${pwd.result}
///   sourceConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: source_connection_profile
///     properties:
///       displayName: Source connection profile
///       location: us-central1
///       connectionProfileId: source-profile
///       mysqlProfile:
///         hostname: ${instance.publicIpAddress}
///         username: ${user.name}
///         password: ${user.password}
/// ```
///
/// ### Datastream Stream Bigquery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const project = gcp.organizations.getProject({});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-instance",
///     databaseVersion: "MYSQL_8_0",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     host: "%",
///     password: pwd.result,
/// });
/// const sourceConnectionProfile = new gcp.datastream.ConnectionProfile("source_connection_profile", {
///     displayName: "Source connection profile",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     mysqlProfile: {
///         hostname: instance.publicIpAddress,
///         username: user.name,
///         password: user.password,
///     },
/// });
/// const bqSa = gcp.bigquery.getDefaultServiceAccount({});
/// const bigqueryKeyUser = new gcp.kms.CryptoKeyIAMMember("bigquery_key_user", {
///     cryptoKeyId: "bigquery-kms-name",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: bqSa.then(bqSa => `serviceAccount:${bqSa.email}`),
/// });
/// const destinationConnectionProfile = new gcp.datastream.ConnectionProfile("destination_connection_profile", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     streamId: "my-stream",
///     location: "us-central1",
///     displayName: "my stream",
///     sourceConfig: {
///         sourceConnectionProfile: sourceConnectionProfile.id,
///         mysqlSourceConfig: {},
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destinationConnectionProfile.id,
///         bigqueryDestinationConfig: {
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                     kmsKeyName: "bigquery-kms-name",
///                 },
///             },
///         },
///     },
///     backfillNone: {},
/// }, {
///     dependsOn: [bigqueryKeyUser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// project = gcp.organizations.get_project()
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-instance",
///     database_version="MYSQL_8_0",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     host="%",
///     password=pwd["result"])
/// source_connection_profile = gcp.datastream.ConnectionProfile("source_connection_profile",
///     display_name="Source connection profile",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     mysql_profile={
///         "hostname": instance.public_ip_address,
///         "username": user.name,
///         "password": user.password,
///     })
/// bq_sa = gcp.bigquery.get_default_service_account()
/// bigquery_key_user = gcp.kms.CryptoKeyIAMMember("bigquery_key_user",
///     crypto_key_id="bigquery-kms-name",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:{bq_sa.email}")
/// destination_connection_profile = gcp.datastream.ConnectionProfile("destination_connection_profile",
///     display_name="Connection profile",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     stream_id="my-stream",
///     location="us-central1",
///     display_name="my stream",
///     source_config={
///         "source_connection_profile": source_connection_profile.id,
///         "mysql_source_config": {},
///     },
///     destination_config={
///         "destination_connection_profile": destination_connection_profile.id,
///         "bigquery_destination_config": {
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                     "kms_key_name": "bigquery-kms-name",
///                 },
///             },
///         },
///     },
///     backfill_none={},
///     opts = pulumi.ResourceOptions(depends_on=[bigquery_key_user]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Host = "%",
///         Password = pwd.Result,
///     });
///
///     var sourceConnectionProfile = new Gcp.Datastream.ConnectionProfile("source_connection_profile", new()
///     {
///         DisplayName = "Source connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         MysqlProfile = new Gcp.Datastream.Inputs.ConnectionProfileMysqlProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Username = user.Name,
///             Password = user.Password,
///         },
///     });
///
///     var bqSa = Gcp.BigQuery.GetDefaultServiceAccount.Invoke();
///
///     var bigqueryKeyUser = new Gcp.Kms.CryptoKeyIAMMember("bigquery_key_user", new()
///     {
///         CryptoKeyId = "bigquery-kms-name",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:{bqSa.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)}",
///     });
///
///     var destinationConnectionProfile = new Gcp.Datastream.ConnectionProfile("destination_connection_profile", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         StreamId = "my-stream",
///         Location = "us-central1",
///         DisplayName = "my stream",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = sourceConnectionProfile.Id,
///             MysqlSourceConfig = null,
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destinationConnectionProfile.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                         KmsKeyName = "bigquery-kms-name",
///                     },
///                 },
///             },
///         },
///         BackfillNone = null,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             bigqueryKeyUser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Host:     pulumi.String("%"),
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceConnectionProfile, err := datastream.NewConnectionProfile(ctx, "source_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Source connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			MysqlProfile: &datastream.ConnectionProfileMysqlProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqSa, err := bigquery.GetDefaultServiceAccount(ctx, &bigquery.GetDefaultServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bigqueryKeyUser, err := kms.NewCryptoKeyIAMMember(ctx, "bigquery_key_user", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("bigquery-kms-name"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", bqSa.Email),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationConnectionProfile, err := datastream.NewConnectionProfile(ctx, "destination_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			StreamId:    pulumi.String("my-stream"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("my stream"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: sourceConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				MysqlSourceConfig:       &datastream.StreamSourceConfigMysqlSourceConfigArgs{},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destinationConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location:   pulumi.String("us-central1"),
/// 							KmsKeyName: pulumi.String("bigquery-kms-name"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			bigqueryKeyUser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
/// data "gcp_bigquery_getdefaultserviceaccount" "bqSa" {
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-instance"
///   database_version = "MYSQL_8_0"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   host     = "%"
///   password = random_password.pwd.result
/// }
/// resource "gcp_datastream_connectionprofile" "source_connection_profile" {
///   display_name          = "Source connection profile"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   mysql_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///   }
/// }
/// resource "gcp_kms_cryptokeyiammember" "bigquery_key_user" {
///   crypto_key_id = "bigquery-kms-name"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:${data.gcp_bigquery_getdefaultserviceaccount.bqSa.email}"
/// }
/// resource "gcp_datastream_connectionprofile" "destination_connection_profile" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   depends_on   = [gcp_kms_cryptokeyiammember.bigquery_key_user]
///   stream_id    = "my-stream"
///   location     = "us-central1"
///   display_name = "my stream"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source_connection_profile.id
///     mysql_source_config       = {}
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination_connection_profile.id
///     bigquery_destination_config = {
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location     = "us-central1"
///           kms_key_name = "bigquery-kms-name"
///         }
///       }
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMysqlProfileArgs;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDefaultServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("my-instance")
///             .databaseVersion("MYSQL_8_0")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .host("%")
///             .password(pwd.get("result"))
///             .build());
///
///         var sourceConnectionProfile = new ConnectionProfile("sourceConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Source connection profile")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .mysqlProfile(ConnectionProfileMysqlProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .username(user.name())
///                 .password(user.password())
///                 .build())
///             .build());
///
///         final var bqSa = BigqueryFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
///             .build());
///
///         var bigqueryKeyUser = new CryptoKeyIAMMember("bigqueryKeyUser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("bigquery-kms-name")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:%s", bqSa.email()))
///             .build());
///
///         var destinationConnectionProfile = new ConnectionProfile("destinationConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .streamId("my-stream")
///             .location("us-central1")
///             .displayName("my stream")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(sourceConnectionProfile.id())
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destinationConnectionProfile.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .kmsKeyName("bigquery-kms-name")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(bigqueryKeyUser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-instance
///       databaseVersion: MYSQL_8_0
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       host: '%'
///       password: ${pwd.result}
///   sourceConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: source_connection_profile
///     properties:
///       displayName: Source connection profile
///       location: us-central1
///       connectionProfileId: source-profile
///       mysqlProfile:
///         hostname: ${instance.publicIpAddress}
///         username: ${user.name}
///         password: ${user.password}
///   bigqueryKeyUser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: bigquery_key_user
///     properties:
///       cryptoKeyId: bigquery-kms-name
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:${bqSa.email}
///   destinationConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: destination_connection_profile
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       connectionProfileId: destination-profile
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       streamId: my-stream
///       location: us-central1
///       displayName: my stream
///       sourceConfig:
///         sourceConnectionProfile: ${sourceConnectionProfile.id}
///         mysqlSourceConfig: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destinationConnectionProfile.id}
///         bigqueryDestinationConfig:
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///               kmsKeyName: bigquery-kms-name
///       backfillNone: {}
///     options:
///       dependsOn:
///         - ${bigqueryKeyUser}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   bqSa:
///     fn::invoke:
///       function: gcp:bigquery:getDefaultServiceAccount
///       arguments: {}
/// ```
///
/// ### Datastream Stream Bigquery Cross Project Source Hierachy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
/// import * as time from "@pulumiverse/time";
///
/// const project = gcp.organizations.getProject({});
/// const cross_project_dataset = new gcp.organizations.Project("cross-project-dataset", {
///     projectId: "tf-test_21912",
///     name: "tf-test_46731",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [cross_project_dataset],
/// });
/// const bigquery = new gcp.projects.Service("bigquery", {
///     project: cross_project_dataset.projectId,
///     service: "bigquery.googleapis.com",
///     disableOnDestroy: false,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const datastreamBigqueryAdmin = new gcp.projects.IAMMember("datastream_bigquery_admin", {
///     project: cross_project_dataset.projectId,
///     role: "roles/bigquery.admin",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com`),
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-instance",
///     databaseVersion: "MYSQL_8_0",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     host: "%",
///     password: pwd.result,
/// });
/// const sourceConnectionProfile = new gcp.datastream.ConnectionProfile("source_connection_profile", {
///     displayName: "Source connection profile",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     mysqlProfile: {
///         hostname: instance.publicIpAddress,
///         username: user.name,
///         password: user.password,
///     },
/// });
/// const destinationConnectionProfile = new gcp.datastream.ConnectionProfile("destination_connection_profile", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     streamId: "my-stream",
///     location: "us-central1",
///     displayName: "my stream",
///     sourceConfig: {
///         sourceConnectionProfile: sourceConnectionProfile.id,
///         mysqlSourceConfig: {},
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destinationConnectionProfile.id,
///         bigqueryDestinationConfig: {
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///                 projectId: cross_project_dataset.projectId,
///             },
///         },
///     },
///     backfillNone: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
/// import pulumiverse_time as time
///
/// project = gcp.organizations.get_project()
/// cross_project_dataset = gcp.organizations.Project("cross-project-dataset",
///     project_id="tf-test_21912",
///     name="tf-test_46731",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[cross_project_dataset]))
/// bigquery = gcp.projects.Service("bigquery",
///     project=cross_project_dataset.project_id,
///     service="bigquery.googleapis.com",
///     disable_on_destroy=False,
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// datastream_bigquery_admin = gcp.projects.IAMMember("datastream_bigquery_admin",
///     project=cross_project_dataset.project_id,
///     role="roles/bigquery.admin",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-datastream.iam.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-instance",
///     database_version="MYSQL_8_0",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     host="%",
///     password=pwd["result"])
/// source_connection_profile = gcp.datastream.ConnectionProfile("source_connection_profile",
///     display_name="Source connection profile",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     mysql_profile={
///         "hostname": instance.public_ip_address,
///         "username": user.name,
///         "password": user.password,
///     })
/// destination_connection_profile = gcp.datastream.ConnectionProfile("destination_connection_profile",
///     display_name="Connection profile",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     stream_id="my-stream",
///     location="us-central1",
///     display_name="my stream",
///     source_config={
///         "source_connection_profile": source_connection_profile.id,
///         "mysql_source_config": {},
///     },
///     destination_config={
///         "destination_connection_profile": destination_connection_profile.id,
///         "bigquery_destination_config": {
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///                 "project_id": cross_project_dataset.project_id,
///             },
///         },
///     },
///     backfill_none={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cross_project_dataset = new Gcp.Organizations.Project("cross-project-dataset", new()
///     {
///         ProjectId = "tf-test_21912",
///         Name = "tf-test_46731",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cross_project_dataset,
///         },
///     });
///
///     var bigquery = new Gcp.Projects.Service("bigquery", new()
///     {
///         Project = cross_project_dataset.ProjectId,
///         ServiceName = "bigquery.googleapis.com",
///         DisableOnDestroy = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var datastreamBigqueryAdmin = new Gcp.Projects.IAMMember("datastream_bigquery_admin", new()
///     {
///         Project = cross_project_dataset.ProjectId,
///         Role = "roles/bigquery.admin",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-datastream.iam.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Host = "%",
///         Password = pwd.Result,
///     });
///
///     var sourceConnectionProfile = new Gcp.Datastream.ConnectionProfile("source_connection_profile", new()
///     {
///         DisplayName = "Source connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         MysqlProfile = new Gcp.Datastream.Inputs.ConnectionProfileMysqlProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Username = user.Name,
///             Password = user.Password,
///         },
///     });
///
///     var destinationConnectionProfile = new Gcp.Datastream.ConnectionProfile("destination_connection_profile", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         StreamId = "my-stream",
///         Location = "us-central1",
///         DisplayName = "my stream",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = sourceConnectionProfile.Id,
///             MysqlSourceConfig = null,
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destinationConnectionProfile.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                     ProjectId = cross_project_dataset.ProjectId,
///                 },
///             },
///         },
///         BackfillNone = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cross_project_dataset, err := organizations.NewProject(ctx, "cross-project-dataset", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("tf-test_21912"),
/// 			Name:           pulumi.String("tf-test_46731"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cross_project_dataset,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewService(ctx, "bigquery", &projects.ServiceArgs{
/// 			Project:          cross_project_dataset.ProjectId,
/// 			Service:          pulumi.String("bigquery.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "datastream_bigquery_admin", &projects.IAMMemberArgs{
/// 			Project: cross_project_dataset.ProjectId,
/// 			Role:    pulumi.String("roles/bigquery.admin"),
/// 			Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-datastream.iam.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Host:     pulumi.String("%"),
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceConnectionProfile, err := datastream.NewConnectionProfile(ctx, "source_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Source connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			MysqlProfile: &datastream.ConnectionProfileMysqlProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationConnectionProfile, err := datastream.NewConnectionProfile(ctx, "destination_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			StreamId:    pulumi.String("my-stream"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("my stream"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: sourceConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				MysqlSourceConfig:       &datastream.StreamSourceConfigMysqlSourceConfigArgs{},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destinationConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 						ProjectId: cross_project_dataset.ProjectId,
/// 					},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_organizations_project" "cross-project-dataset" {
///   project_id      = "tf-test_21912"
///   name            = "tf-test_46731"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_organizations_project.cross-project-dataset]
///   create_duration = "60s"
/// }
/// resource "gcp_projects_service" "bigquery" {
///   depends_on         = [time_sleep.wait_60_seconds]
///   project            = gcp_organizations_project.cross-project-dataset.project_id
///   service            = "bigquery.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "gcp_projects_iammember" "datastream_bigquery_admin" {
///   depends_on = [time_sleep.wait_60_seconds]
///   project    = gcp_organizations_project.cross-project-dataset.project_id
///   role       = "roles/bigquery.admin"
///   member     ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-datastream.iam.gserviceaccount.com"
/// }
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-instance"
///   database_version = "MYSQL_8_0"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   host     = "%"
///   password = random_password.pwd.result
/// }
/// resource "gcp_datastream_connectionprofile" "source_connection_profile" {
///   display_name          = "Source connection profile"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   mysql_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination_connection_profile" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   stream_id    = "my-stream"
///   location     = "us-central1"
///   display_name = "my stream"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source_connection_profile.id
///     mysql_source_config       = {}
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination_connection_profile.id
///     bigquery_destination_config = {
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///         project_id = gcp_organizations_project.cross-project-dataset.project_id
///       }
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMysqlProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cross_project_dataset = new Project("cross-project-dataset", ProjectArgs.builder()
///             .projectId("tf-test_21912")
///             .name("tf-test_46731")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cross_project_dataset)
///                 .build());
///
///         var bigquery = new Service("bigquery", ServiceArgs.builder()
///             .project(cross_project_dataset.projectId())
///             .service("bigquery.googleapis.com")
///             .disableOnDestroy(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var datastreamBigqueryAdmin = new IAMMember("datastreamBigqueryAdmin", IAMMemberArgs.builder()
///             .project(cross_project_dataset.projectId())
///             .role("roles/bigquery.admin")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-datastream.iam.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("my-instance")
///             .databaseVersion("MYSQL_8_0")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .host("%")
///             .password(pwd.get("result"))
///             .build());
///
///         var sourceConnectionProfile = new ConnectionProfile("sourceConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Source connection profile")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .mysqlProfile(ConnectionProfileMysqlProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .username(user.name())
///                 .password(user.password())
///                 .build())
///             .build());
///
///         var destinationConnectionProfile = new ConnectionProfile("destinationConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .streamId("my-stream")
///             .location("us-central1")
///             .displayName("my stream")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(sourceConnectionProfile.id())
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destinationConnectionProfile.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .projectId(cross_project_dataset.projectId())
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cross-project-dataset:
///     type: gcp:organizations:Project
///     properties:
///       projectId: tf-test_21912
///       name: tf-test_46731
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${["cross-project-dataset"]}
///   bigquery:
///     type: gcp:projects:Service
///     properties:
///       project: ${["cross-project-dataset"].projectId}
///       service: bigquery.googleapis.com
///       disableOnDestroy: false
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   datastreamBigqueryAdmin:
///     type: gcp:projects:IAMMember
///     name: datastream_bigquery_admin
///     properties:
///       project: ${["cross-project-dataset"].projectId}
///       role: roles/bigquery.admin
///       member: serviceAccount:service-${project.number}@gcp-sa-datastream.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-instance
///       databaseVersion: MYSQL_8_0
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       host: '%'
///       password: ${pwd.result}
///   sourceConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: source_connection_profile
///     properties:
///       displayName: Source connection profile
///       location: us-central1
///       connectionProfileId: source-profile
///       mysqlProfile:
///         hostname: ${instance.publicIpAddress}
///         username: ${user.name}
///         password: ${user.password}
///   destinationConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: destination_connection_profile
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       connectionProfileId: destination-profile
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       streamId: my-stream
///       location: us-central1
///       displayName: my stream
///       sourceConfig:
///         sourceConnectionProfile: ${sourceConnectionProfile.id}
///         mysqlSourceConfig: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destinationConnectionProfile.id}
///         bigqueryDestinationConfig:
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///             projectId: ${["cross-project-dataset"].projectId}
///       backfillNone: {}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Datastream Stream Bigquery Append Only
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const project = gcp.organizations.getProject({});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-instance",
///     databaseVersion: "MYSQL_8_0",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     host: "%",
///     password: pwd.result,
/// });
/// const sourceConnectionProfile = new gcp.datastream.ConnectionProfile("source_connection_profile", {
///     displayName: "Source connection profile",
///     location: "us-central1",
///     connectionProfileId: "source-profile",
///     mysqlProfile: {
///         hostname: instance.publicIpAddress,
///         username: user.name,
///         password: user.password,
///     },
/// });
/// const destinationConnectionProfile = new gcp.datastream.ConnectionProfile("destination_connection_profile", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     connectionProfileId: "destination-profile",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     streamId: "my-stream",
///     location: "us-central1",
///     displayName: "my stream",
///     sourceConfig: {
///         sourceConnectionProfile: sourceConnectionProfile.id,
///         mysqlSourceConfig: {},
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destinationConnectionProfile.id,
///         bigqueryDestinationConfig: {
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///             appendOnly: {},
///         },
///     },
///     backfillNone: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// project = gcp.organizations.get_project()
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-instance",
///     database_version="MYSQL_8_0",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     host="%",
///     password=pwd["result"])
/// source_connection_profile = gcp.datastream.ConnectionProfile("source_connection_profile",
///     display_name="Source connection profile",
///     location="us-central1",
///     connection_profile_id="source-profile",
///     mysql_profile={
///         "hostname": instance.public_ip_address,
///         "username": user.name,
///         "password": user.password,
///     })
/// destination_connection_profile = gcp.datastream.ConnectionProfile("destination_connection_profile",
///     display_name="Connection profile",
///     location="us-central1",
///     connection_profile_id="destination-profile",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     stream_id="my-stream",
///     location="us-central1",
///     display_name="my stream",
///     source_config={
///         "source_connection_profile": source_connection_profile.id,
///         "mysql_source_config": {},
///     },
///     destination_config={
///         "destination_connection_profile": destination_connection_profile.id,
///         "bigquery_destination_config": {
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///             "append_only": {},
///         },
///     },
///     backfill_none={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Host = "%",
///         Password = pwd.Result,
///     });
///
///     var sourceConnectionProfile = new Gcp.Datastream.ConnectionProfile("source_connection_profile", new()
///     {
///         DisplayName = "Source connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "source-profile",
///         MysqlProfile = new Gcp.Datastream.Inputs.ConnectionProfileMysqlProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Username = user.Name,
///             Password = user.Password,
///         },
///     });
///
///     var destinationConnectionProfile = new Gcp.Datastream.ConnectionProfile("destination_connection_profile", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         StreamId = "my-stream",
///         Location = "us-central1",
///         DisplayName = "my stream",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = sourceConnectionProfile.Id,
///             MysqlSourceConfig = null,
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destinationConnectionProfile.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///                 AppendOnly = null,
///             },
///         },
///         BackfillNone = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Host:     pulumi.String("%"),
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceConnectionProfile, err := datastream.NewConnectionProfile(ctx, "source_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Source connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("source-profile"),
/// 			MysqlProfile: &datastream.ConnectionProfileMysqlProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationConnectionProfile, err := datastream.NewConnectionProfile(ctx, "destination_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			StreamId:    pulumi.String("my-stream"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("my stream"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: sourceConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				MysqlSourceConfig:       &datastream.StreamSourceConfigMysqlSourceConfigArgs{},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destinationConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 					AppendOnly: &datastream.StreamDestinationConfigBigqueryDestinationConfigAppendOnlyArgs{},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-instance"
///   database_version = "MYSQL_8_0"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   host     = "%"
///   password = random_password.pwd.result
/// }
/// resource "gcp_datastream_connectionprofile" "source_connection_profile" {
///   display_name          = "Source connection profile"
///   location              = "us-central1"
///   connection_profile_id = "source-profile"
///   mysql_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination_connection_profile" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   connection_profile_id = "destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   stream_id    = "my-stream"
///   location     = "us-central1"
///   display_name = "my stream"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source_connection_profile.id
///     mysql_source_config       = {}
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination_connection_profile.id
///     bigquery_destination_config = {
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///       append_only = {}
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMysqlProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigAppendOnlyArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("my-instance")
///             .databaseVersion("MYSQL_8_0")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .host("%")
///             .password(pwd.get("result"))
///             .build());
///
///         var sourceConnectionProfile = new ConnectionProfile("sourceConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Source connection profile")
///             .location("us-central1")
///             .connectionProfileId("source-profile")
///             .mysqlProfile(ConnectionProfileMysqlProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .username(user.name())
///                 .password(user.password())
///                 .build())
///             .build());
///
///         var destinationConnectionProfile = new ConnectionProfile("destinationConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .connectionProfileId("destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .streamId("my-stream")
///             .location("us-central1")
///             .displayName("my stream")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(sourceConnectionProfile.id())
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destinationConnectionProfile.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .appendOnly(StreamDestinationConfigBigqueryDestinationConfigAppendOnlyArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-instance
///       databaseVersion: MYSQL_8_0
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       host: '%'
///       password: ${pwd.result}
///   sourceConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: source_connection_profile
///     properties:
///       displayName: Source connection profile
///       location: us-central1
///       connectionProfileId: source-profile
///       mysqlProfile:
///         hostname: ${instance.publicIpAddress}
///         username: ${user.name}
///         password: ${user.password}
///   destinationConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: destination_connection_profile
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       connectionProfileId: destination-profile
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       streamId: my-stream
///       location: us-central1
///       displayName: my stream
///       sourceConfig:
///         sourceConnectionProfile: ${sourceConnectionProfile.id}
///         mysqlSourceConfig: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destinationConnectionProfile.id}
///         bigqueryDestinationConfig:
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///           appendOnly: {}
///       backfillNone: {}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Datastream Stream Bigquery Blmt
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const project = gcp.organizations.getProject({});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "blmt-instance",
///     databaseVersion: "MYSQL_8_0",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///         ipConfiguration: {
///             authorizedNetworks: [
///                 {
///                     value: "34.71.242.81",
///                 },
///                 {
///                     value: "34.72.28.29",
///                 },
///                 {
///                     value: "34.67.6.157",
///                 },
///                 {
///                     value: "34.67.234.134",
///                 },
///                 {
///                     value: "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     host: "%",
///     password: pwd.result,
/// });
/// const blmtBucket = new gcp.storage.Bucket("blmt_bucket", {
///     name: "blmt-bucket",
///     location: "us-central1",
///     forceDestroy: true,
/// });
/// const blmtConnection = new gcp.bigquery.Connection("blmt_connection", {
///     project: project.then(project => project.projectId),
///     location: "us-central1",
///     connectionId: "blmt-connection",
///     friendlyName: "Datastream BLMT Test Connection",
///     description: "Connection for Datastream BLMT test",
///     cloudResource: {},
/// });
/// const blmtConnectionBucketAdmin = new gcp.storage.BucketIAMMember("blmt_connection_bucket_admin", {
///     bucket: blmtBucket.name,
///     role: "roles/storage.admin",
///     member: blmtConnection.cloudResource.apply(cloudResource => `serviceAccount:${cloudResource?.serviceAccountId}`),
/// });
/// const sourceConnectionProfile = new gcp.datastream.ConnectionProfile("source_connection_profile", {
///     displayName: "Source connection profile",
///     location: "us-central1",
///     connectionProfileId: "blmt-source-profile",
///     mysqlProfile: {
///         hostname: instance.publicIpAddress,
///         username: user.name,
///         password: user.password,
///     },
/// });
/// const destinationConnectionProfile = new gcp.datastream.ConnectionProfile("destination_connection_profile", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     connectionProfileId: "blmt-destination-profile",
///     bigqueryProfile: {},
/// });
/// const _default = new gcp.datastream.Stream("default", {
///     streamId: "blmt-stream",
///     location: "us-central1",
///     displayName: "My BLMT stream",
///     sourceConfig: {
///         sourceConnectionProfile: sourceConnectionProfile.id,
///         mysqlSourceConfig: {},
///     },
///     destinationConfig: {
///         destinationConnectionProfile: destinationConnectionProfile.id,
///         bigqueryDestinationConfig: {
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///             blmtConfig: {
///                 bucket: blmtBucket.name,
///                 connectionName: pulumi.interpolate`${blmtConnection.project}.${blmtConnection.location}.${blmtConnection.connectionId}`,
///                 fileFormat: "PARQUET",
///                 tableFormat: "ICEBERG",
///                 rootPath: "/",
///             },
///             appendOnly: {},
///         },
///     },
///     backfillNone: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// project = gcp.organizations.get_project()
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="blmt-instance",
///     database_version="MYSQL_8_0",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///         "ip_configuration": {
///             "authorized_networks": [
///                 {
///                     "value": "34.71.242.81",
///                 },
///                 {
///                     "value": "34.72.28.29",
///                 },
///                 {
///                     "value": "34.67.6.157",
///                 },
///                 {
///                     "value": "34.67.234.134",
///                 },
///                 {
///                     "value": "34.72.239.218",
///                 },
///             ],
///         },
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     host="%",
///     password=pwd["result"])
/// blmt_bucket = gcp.storage.Bucket("blmt_bucket",
///     name="blmt-bucket",
///     location="us-central1",
///     force_destroy=True)
/// blmt_connection = gcp.bigquery.Connection("blmt_connection",
///     project=project.project_id,
///     location="us-central1",
///     connection_id="blmt-connection",
///     friendly_name="Datastream BLMT Test Connection",
///     description="Connection for Datastream BLMT test",
///     cloud_resource={})
/// blmt_connection_bucket_admin = gcp.storage.BucketIAMMember("blmt_connection_bucket_admin",
///     bucket=blmt_bucket.name,
///     role="roles/storage.admin",
///     member=blmt_connection.cloud_resource.apply(lambda cloud_resource: f"serviceAccount:{cloud_resource.service_account_id}"))
/// source_connection_profile = gcp.datastream.ConnectionProfile("source_connection_profile",
///     display_name="Source connection profile",
///     location="us-central1",
///     connection_profile_id="blmt-source-profile",
///     mysql_profile={
///         "hostname": instance.public_ip_address,
///         "username": user.name,
///         "password": user.password,
///     })
/// destination_connection_profile = gcp.datastream.ConnectionProfile("destination_connection_profile",
///     display_name="Connection profile",
///     location="us-central1",
///     connection_profile_id="blmt-destination-profile",
///     bigquery_profile={})
/// default = gcp.datastream.Stream("default",
///     stream_id="blmt-stream",
///     location="us-central1",
///     display_name="My BLMT stream",
///     source_config={
///         "source_connection_profile": source_connection_profile.id,
///         "mysql_source_config": {},
///     },
///     destination_config={
///         "destination_connection_profile": destination_connection_profile.id,
///         "bigquery_destination_config": {
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///             "blmt_config": {
///                 "bucket": blmt_bucket.name,
///                 "connection_name": pulumi.Output.all(
///                     project=blmt_connection.project,
///                     location=blmt_connection.location,
///                     connection_id=blmt_connection.connection_id
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['project']}.{resolved_outputs['location']}.{resolved_outputs['connection_id']}")
/// ,
///                 "file_format": "PARQUET",
///                 "table_format": "ICEBERG",
///                 "root_path": "/",
///             },
///             "append_only": {},
///         },
///     },
///     backfill_none={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "blmt-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.71.242.81",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.28.29",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.6.157",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.67.234.134",
///                     },
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Value = "34.72.239.218",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Host = "%",
///         Password = pwd.Result,
///     });
///
///     var blmtBucket = new Gcp.Storage.Bucket("blmt_bucket", new()
///     {
///         Name = "blmt-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///     });
///
///     var blmtConnection = new Gcp.BigQuery.Connection("blmt_connection", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Location = "us-central1",
///         ConnectionId = "blmt-connection",
///         FriendlyName = "Datastream BLMT Test Connection",
///         Description = "Connection for Datastream BLMT test",
///         CloudResource = null,
///     });
///
///     var blmtConnectionBucketAdmin = new Gcp.Storage.BucketIAMMember("blmt_connection_bucket_admin", new()
///     {
///         Bucket = blmtBucket.Name,
///         Role = "roles/storage.admin",
///         Member = blmtConnection.CloudResource.Apply(cloudResource => $"serviceAccount:{cloudResource?.ServiceAccountId}"),
///     });
///
///     var sourceConnectionProfile = new Gcp.Datastream.ConnectionProfile("source_connection_profile", new()
///     {
///         DisplayName = "Source connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "blmt-source-profile",
///         MysqlProfile = new Gcp.Datastream.Inputs.ConnectionProfileMysqlProfileArgs
///         {
///             Hostname = instance.PublicIpAddress,
///             Username = user.Name,
///             Password = user.Password,
///         },
///     });
///
///     var destinationConnectionProfile = new Gcp.Datastream.ConnectionProfile("destination_connection_profile", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         ConnectionProfileId = "blmt-destination-profile",
///         BigqueryProfile = null,
///     });
///
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         StreamId = "blmt-stream",
///         Location = "us-central1",
///         DisplayName = "My BLMT stream",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = sourceConnectionProfile.Id,
///             MysqlSourceConfig = null,
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = destinationConnectionProfile.Id,
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///                 BlmtConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigBlmtConfigArgs
///                 {
///                     Bucket = blmtBucket.Name,
///                     ConnectionName = Output.Tuple(blmtConnection.Project, blmtConnection.Location, blmtConnection.ConnectionId).Apply(values =>
///                     {
///                         var project = values.Item1;
///                         var location = values.Item2;
///                         var connectionId = values.Item3;
///                         return $"{project}.{location}.{connectionId}";
///                     }),
///                     FileFormat = "PARQUET",
///                     TableFormat = "ICEBERG",
///                     RootPath = "/",
///                 },
///                 AppendOnly = null,
///             },
///         },
///         BackfillNone = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("blmt-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.71.242.81"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.28.29"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.6.157"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.67.234.134"),
/// 						},
/// 						&sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// 							Value: pulumi.String("34.72.239.218"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Host:     pulumi.String("%"),
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		blmtBucket, err := storage.NewBucket(ctx, "blmt_bucket", &storage.BucketArgs{
/// 			Name:         pulumi.String("blmt-bucket"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		blmtConnection, err := bigquery.NewConnection(ctx, "blmt_connection", &bigquery.ConnectionArgs{
/// 			Project:       pulumi.String(project.ProjectId),
/// 			Location:      pulumi.String("us-central1"),
/// 			ConnectionId:  pulumi.String("blmt-connection"),
/// 			FriendlyName:  pulumi.String("Datastream BLMT Test Connection"),
/// 			Description:   pulumi.String("Connection for Datastream BLMT test"),
/// 			CloudResource: &bigquery.ConnectionCloudResourceArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketIAMMember(ctx, "blmt_connection_bucket_admin", &storage.BucketIAMMemberArgs{
/// 			Bucket: blmtBucket.Name,
/// 			Role:   pulumi.String("roles/storage.admin"),
/// 			Member: blmtConnection.CloudResource.ApplyT(func(cloudResource bigquery.ConnectionCloudResource) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", cloudResource.ServiceAccountId), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceConnectionProfile, err := datastream.NewConnectionProfile(ctx, "source_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Source connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("blmt-source-profile"),
/// 			MysqlProfile: &datastream.ConnectionProfileMysqlProfileArgs{
/// 				Hostname: instance.PublicIpAddress,
/// 				Username: user.Name,
/// 				Password: user.Password,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationConnectionProfile, err := datastream.NewConnectionProfile(ctx, "destination_connection_profile", &datastream.ConnectionProfileArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("blmt-destination-profile"),
/// 			BigqueryProfile:     &datastream.ConnectionProfileBigqueryProfileArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			StreamId:    pulumi.String("blmt-stream"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("My BLMT stream"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: sourceConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				MysqlSourceConfig:       &datastream.StreamSourceConfigMysqlSourceConfigArgs{},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: destinationConnectionProfile.ID().ToIDOutput().ToStringOutput(),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 					BlmtConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigBlmtConfigArgs{
/// 						Bucket: blmtBucket.Name,
/// 						ConnectionName: pulumi.All(blmtConnection.Project, blmtConnection.Location, blmtConnection.ConnectionId).ApplyT(func(_args []interface{}) (string, error) {
/// 							project := _args[0].(string)
/// 							location := _args[1].(*string)
/// 							connectionId := _args[2].(string)
/// 							return fmt.Sprintf("%v.%v.%v", project, location, connectionId), nil
/// 						}).(pulumi.StringOutput),
/// 						FileFormat:  pulumi.String("PARQUET"),
/// 						TableFormat: pulumi.String("ICEBERG"),
/// 						RootPath:    pulumi.String("/"),
/// 					},
/// 					AppendOnly: &datastream.StreamDestinationConfigBigqueryDestinationConfigAppendOnlyArgs{},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "blmt-instance"
///   database_version = "MYSQL_8_0"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///     ip_configuration = {
///       authorized_networks = [{
///         "value" = "34.71.242.81"
///         }, {
///         "value" = "34.72.28.29"
///         }, {
///         "value" = "34.67.6.157"
///         }, {
///         "value" = "34.67.234.134"
///         }, {
///         "value" = "34.72.239.218"
///       }]
///     }
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   host     = "%"
///   password = random_password.pwd.result
/// }
/// resource "gcp_storage_bucket" "blmt_bucket" {
///   name          = "blmt-bucket"
///   location      = "us-central1"
///   force_destroy = true
/// }
/// resource "gcp_bigquery_connection" "blmt_connection" {
///   project        = data.gcp_organizations_getproject.project.project_id
///   location       = "us-central1"
///   connection_id  = "blmt-connection"
///   friendly_name  = "Datastream BLMT Test Connection"
///   description    = "Connection for Datastream BLMT test"
///   cloud_resource = {}
/// }
/// resource "gcp_storage_bucketiammember" "blmt_connection_bucket_admin" {
///   bucket = gcp_storage_bucket.blmt_bucket.name
///   role   = "roles/storage.admin"
///   member ="serviceAccount:${gcp_bigquery_connection.blmt_connection.cloud_resource.service_account_id}"
/// }
/// resource "gcp_datastream_connectionprofile" "source_connection_profile" {
///   display_name          = "Source connection profile"
///   location              = "us-central1"
///   connection_profile_id = "blmt-source-profile"
///   mysql_profile = {
///     hostname = gcp_sql_databaseinstance.instance.public_ip_address
///     username = gcp_sql_user.user.name
///     password = gcp_sql_user.user.password
///   }
/// }
/// resource "gcp_datastream_connectionprofile" "destination_connection_profile" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   connection_profile_id = "blmt-destination-profile"
///   bigquery_profile      = {}
/// }
/// resource "gcp_datastream_stream" "default" {
///   stream_id    = "blmt-stream"
///   location     = "us-central1"
///   display_name = "My BLMT stream"
///   source_config = {
///     source_connection_profile = gcp_datastream_connectionprofile.source_connection_profile.id
///     mysql_source_config       = {}
///   }
///   destination_config = {
///     destination_connection_profile = gcp_datastream_connectionprofile.destination_connection_profile.id
///     bigquery_destination_config = {
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///       blmt_config = {
///         bucket          = gcp_storage_bucket.blmt_bucket.name
///         connection_name ="${gcp_bigquery_connection.blmt_connection.project}.${gcp_bigquery_connection.blmt_connection.location}.${gcp_bigquery_connection.blmt_connection.connection_id}"
///         file_format     = "PARQUET"
///         table_format    = "ICEBERG"
///         root_path       = "/"
///       }
///       append_only = {}
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudResourceArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMysqlProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileBigqueryProfileArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigBlmtConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigAppendOnlyArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("blmt-instance")
///             .databaseVersion("MYSQL_8_0")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .authorizedNetworks(
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.71.242.81")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.28.29")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.6.157")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.67.234.134")
///                             .build(),
///                         DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
///                             .value("34.72.239.218")
///                             .build())
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .host("%")
///             .password(pwd.get("result"))
///             .build());
///
///         var blmtBucket = new Bucket("blmtBucket", BucketArgs.builder()
///             .name("blmt-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .build());
///
///         var blmtConnection = new Connection("blmtConnection", ConnectionArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .connectionId("blmt-connection")
///             .friendlyName("Datastream BLMT Test Connection")
///             .description("Connection for Datastream BLMT test")
///             .cloudResource(ConnectionCloudResourceArgs.builder()
///                 .build())
///             .build());
///
///         var blmtConnectionBucketAdmin = new BucketIAMMember("blmtConnectionBucketAdmin", BucketIAMMemberArgs.builder()
///             .bucket(blmtBucket.name())
///             .role("roles/storage.admin")
///             .member(blmtConnection.cloudResource().applyValue(_cloudResource -> String.format("serviceAccount:%s", _cloudResource.serviceAccountId())))
///             .build());
///
///         var sourceConnectionProfile = new ConnectionProfile("sourceConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Source connection profile")
///             .location("us-central1")
///             .connectionProfileId("blmt-source-profile")
///             .mysqlProfile(ConnectionProfileMysqlProfileArgs.builder()
///                 .hostname(instance.publicIpAddress())
///                 .username(user.name())
///                 .password(user.password())
///                 .build())
///             .build());
///
///         var destinationConnectionProfile = new ConnectionProfile("destinationConnectionProfile", ConnectionProfileArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .connectionProfileId("blmt-destination-profile")
///             .bigqueryProfile(ConnectionProfileBigqueryProfileArgs.builder()
///                 .build())
///             .build());
///
///         var default_ = new Stream("default", StreamArgs.builder()
///             .streamId("blmt-stream")
///             .location("us-central1")
///             .displayName("My BLMT stream")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile(sourceConnectionProfile.id())
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile(destinationConnectionProfile.id())
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .blmtConfig(StreamDestinationConfigBigqueryDestinationConfigBlmtConfigArgs.builder()
///                         .bucket(blmtBucket.name())
///                         .connectionName(Output.tuple(blmtConnection.project(), blmtConnection.location(), blmtConnection.connectionId()).applyValue(values -> {
///                             var project = values.t1;
///                             var location = values.t2;
///                             var connectionId = values.t3;
///                             return String.format("%s.%s.%s", project,location,connectionId);
///                         }))
///                         .fileFormat("PARQUET")
///                         .tableFormat("ICEBERG")
///                         .rootPath("/")
///                         .build())
///                     .appendOnly(StreamDestinationConfigBigqueryDestinationConfigAppendOnlyArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: blmt-instance
///       databaseVersion: MYSQL_8_0
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///         ipConfiguration:
///           authorizedNetworks:
///             - value: 34.71.242.81
///             - value: 34.72.28.29
///             - value: 34.67.6.157
///             - value: 34.67.234.134
///             - value: 34.72.239.218
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       host: '%'
///       password: ${pwd.result}
///   blmtBucket:
///     type: gcp:storage:Bucket
///     name: blmt_bucket
///     properties:
///       name: blmt-bucket
///       location: us-central1
///       forceDestroy: true
///   blmtConnection:
///     type: gcp:bigquery:Connection
///     name: blmt_connection
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       connectionId: blmt-connection
///       friendlyName: Datastream BLMT Test Connection
///       description: Connection for Datastream BLMT test
///       cloudResource: {}
///   blmtConnectionBucketAdmin:
///     type: gcp:storage:BucketIAMMember
///     name: blmt_connection_bucket_admin
///     properties:
///       bucket: ${blmtBucket.name}
///       role: roles/storage.admin
///       member: serviceAccount:${blmtConnection.cloudResource.serviceAccountId}
///   sourceConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: source_connection_profile
///     properties:
///       displayName: Source connection profile
///       location: us-central1
///       connectionProfileId: blmt-source-profile
///       mysqlProfile:
///         hostname: ${instance.publicIpAddress}
///         username: ${user.name}
///         password: ${user.password}
///   destinationConnectionProfile:
///     type: gcp:datastream:ConnectionProfile
///     name: destination_connection_profile
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       connectionProfileId: blmt-destination-profile
///       bigqueryProfile: {}
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       streamId: blmt-stream
///       location: us-central1
///       displayName: My BLMT stream
///       sourceConfig:
///         sourceConnectionProfile: ${sourceConnectionProfile.id}
///         mysqlSourceConfig: {}
///       destinationConfig:
///         destinationConnectionProfile: ${destinationConnectionProfile.id}
///         bigqueryDestinationConfig:
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///           blmtConfig:
///             bucket: ${blmtBucket.name}
///             connectionName: ${blmtConnection.project}.${blmtConnection.location}.${blmtConnection.connectionId}
///             fileFormat: PARQUET
///             tableFormat: ICEBERG
///             rootPath: /
///           appendOnly: {}
///       backfillNone: {}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Datastream Stream Rule Sets Bigquery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const stream = new gcp.datastream.Stream("stream", {
///     streamId: "rules-stream",
///     location: "us-central1",
///     displayName: "BigQuery Stream with Rules",
///     sourceConfig: {
///         sourceConnectionProfile: "rules-source-profile",
///         mysqlSourceConfig: {
///             includeObjects: {
///                 mysqlDatabases: [{
///                     database: "my_database",
///                 }],
///             },
///             binaryLogPosition: {},
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: "rules-dest-profile",
///         bigqueryDestinationConfig: {
///             singleTargetDataset: {
///                 datasetId: "rules-project:rules-dataset",
///             },
///         },
///     },
///     backfillNone: {},
///     ruleSets: [
///         {
///             objectFilter: {
///                 sourceObjectIdentifier: {
///                     mysqlIdentifier: {
///                         database: "test_database",
///                         table: "test_table_1",
///                     },
///                 },
///             },
///             customizationRules: [
///                 {
///                     bigqueryClustering: {
///                         columns: ["user_id"],
///                     },
///                 },
///                 {
///                     bigqueryPartitioning: {
///                         ingestionTimePartition: {},
///                     },
///                 },
///             ],
///         },
///         {
///             objectFilter: {
///                 sourceObjectIdentifier: {
///                     mysqlIdentifier: {
///                         database: "test_database",
///                         table: "test_table_2",
///                     },
///                 },
///             },
///             customizationRules: [
///                 {
///                     bigqueryClustering: {
///                         columns: ["event_time"],
///                     },
///                 },
///                 {
///                     bigqueryPartitioning: {
///                         timeUnitPartition: {
///                             column: "event_time",
///                             partitioningTimeGranularity: "PARTITIONING_TIME_GRANULARITY_DAY",
///                         },
///                     },
///                 },
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// stream = gcp.datastream.Stream("stream",
///     stream_id="rules-stream",
///     location="us-central1",
///     display_name="BigQuery Stream with Rules",
///     source_config={
///         "source_connection_profile": "rules-source-profile",
///         "mysql_source_config": {
///             "include_objects": {
///                 "mysql_databases": [{
///                     "database": "my_database",
///                 }],
///             },
///             "binary_log_position": {},
///         },
///     },
///     destination_config={
///         "destination_connection_profile": "rules-dest-profile",
///         "bigquery_destination_config": {
///             "single_target_dataset": {
///                 "dataset_id": "rules-project:rules-dataset",
///             },
///         },
///     },
///     backfill_none={},
///     rule_sets=[
///         {
///             "object_filter": {
///                 "source_object_identifier": {
///                     "mysql_identifier": {
///                         "database": "test_database",
///                         "table": "test_table_1",
///                     },
///                 },
///             },
///             "customization_rules": [
///                 {
///                     "bigquery_clustering": {
///                         "columns": ["user_id"],
///                     },
///                 },
///                 {
///                     "bigquery_partitioning": {
///                         "ingestion_time_partition": {},
///                     },
///                 },
///             ],
///         },
///         {
///             "object_filter": {
///                 "source_object_identifier": {
///                     "mysql_identifier": {
///                         "database": "test_database",
///                         "table": "test_table_2",
///                     },
///                 },
///             },
///             "customization_rules": [
///                 {
///                     "bigquery_clustering": {
///                         "columns": ["event_time"],
///                     },
///                 },
///                 {
///                     "bigquery_partitioning": {
///                         "time_unit_partition": {
///                             "column": "event_time",
///                             "partitioning_time_granularity": "PARTITIONING_TIME_GRANULARITY_DAY",
///                         },
///                     },
///                 },
///             ],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var stream = new Gcp.Datastream.Stream("stream", new()
///     {
///         StreamId = "rules-stream",
///         Location = "us-central1",
///         DisplayName = "BigQuery Stream with Rules",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = "rules-source-profile",
///             MysqlSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigArgs
///             {
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs
///                 {
///                     MysqlDatabases = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs
///                         {
///                             Database = "my_database",
///                         },
///                     },
///                 },
///                 BinaryLogPosition = null,
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = "rules-dest-profile",
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 SingleTargetDataset = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs
///                 {
///                     DatasetId = "rules-project:rules-dataset",
///                 },
///             },
///         },
///         BackfillNone = null,
///         RuleSets = new[]
///         {
///             new Gcp.Datastream.Inputs.StreamRuleSetArgs
///             {
///                 ObjectFilter = new Gcp.Datastream.Inputs.StreamRuleSetObjectFilterArgs
///                 {
///                     SourceObjectIdentifier = new Gcp.Datastream.Inputs.StreamRuleSetObjectFilterSourceObjectIdentifierArgs
///                     {
///                         MysqlIdentifier = new Gcp.Datastream.Inputs.StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifierArgs
///                         {
///                             Database = "test_database",
///                             Table = "test_table_1",
///                         },
///                     },
///                 },
///                 CustomizationRules = new[]
///                 {
///                     new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleArgs
///                     {
///                         BigqueryClustering = new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleBigqueryClusteringArgs
///                         {
///                             Columns = new[]
///                             {
///                                 "user_id",
///                             },
///                         },
///                     },
///                     new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleArgs
///                     {
///                         BigqueryPartitioning = new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleBigqueryPartitioningArgs
///                         {
///                             IngestionTimePartition = null,
///                         },
///                     },
///                 },
///             },
///             new Gcp.Datastream.Inputs.StreamRuleSetArgs
///             {
///                 ObjectFilter = new Gcp.Datastream.Inputs.StreamRuleSetObjectFilterArgs
///                 {
///                     SourceObjectIdentifier = new Gcp.Datastream.Inputs.StreamRuleSetObjectFilterSourceObjectIdentifierArgs
///                     {
///                         MysqlIdentifier = new Gcp.Datastream.Inputs.StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifierArgs
///                         {
///                             Database = "test_database",
///                             Table = "test_table_2",
///                         },
///                     },
///                 },
///                 CustomizationRules = new[]
///                 {
///                     new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleArgs
///                     {
///                         BigqueryClustering = new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleBigqueryClusteringArgs
///                         {
///                             Columns = new[]
///                             {
///                                 "event_time",
///                             },
///                         },
///                     },
///                     new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleArgs
///                     {
///                         BigqueryPartitioning = new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleBigqueryPartitioningArgs
///                         {
///                             TimeUnitPartition = new Gcp.Datastream.Inputs.StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartitionArgs
///                             {
///                                 Column = "event_time",
///                                 PartitioningTimeGranularity = "PARTITIONING_TIME_GRANULARITY_DAY",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewStream(ctx, "stream", &datastream.StreamArgs{
/// 			StreamId:    pulumi.String("rules-stream"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("BigQuery Stream with Rules"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: pulumi.String("rules-source-profile"),
/// 				MysqlSourceConfig: &datastream.StreamSourceConfigMysqlSourceConfigArgs{
/// 					IncludeObjects: &datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs{
/// 						MysqlDatabases: datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArray{
/// 							&datastream.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs{
/// 								Database: pulumi.String("my_database"),
/// 							},
/// 						},
/// 					},
/// 					BinaryLogPosition: &datastream.StreamSourceConfigMysqlSourceConfigBinaryLogPositionArgs{},
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: pulumi.String("rules-dest-profile"),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					SingleTargetDataset: &datastream.StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs{
/// 						DatasetId: pulumi.String("rules-project:rules-dataset"),
/// 					},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 			RuleSets: datastream.StreamRuleSetArray{
/// 				&datastream.StreamRuleSetArgs{
/// 					ObjectFilter: &datastream.StreamRuleSetObjectFilterArgs{
/// 						SourceObjectIdentifier: &datastream.StreamRuleSetObjectFilterSourceObjectIdentifierArgs{
/// 							MysqlIdentifier: &datastream.StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifierArgs{
/// 								Database: pulumi.String("test_database"),
/// 								Table:    pulumi.String("test_table_1"),
/// 							},
/// 						},
/// 					},
/// 					CustomizationRules: datastream.StreamRuleSetCustomizationRuleArray{
/// 						&datastream.StreamRuleSetCustomizationRuleArgs{
/// 							BigqueryClustering: &datastream.StreamRuleSetCustomizationRuleBigqueryClusteringArgs{
/// 								Columns: pulumi.StringArray{
/// 									pulumi.String("user_id"),
/// 								},
/// 							},
/// 						},
/// 						&datastream.StreamRuleSetCustomizationRuleArgs{
/// 							BigqueryPartitioning: &datastream.StreamRuleSetCustomizationRuleBigqueryPartitioningArgs{
/// 								IngestionTimePartition: &datastream.StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartitionArgs{},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&datastream.StreamRuleSetArgs{
/// 					ObjectFilter: &datastream.StreamRuleSetObjectFilterArgs{
/// 						SourceObjectIdentifier: &datastream.StreamRuleSetObjectFilterSourceObjectIdentifierArgs{
/// 							MysqlIdentifier: &datastream.StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifierArgs{
/// 								Database: pulumi.String("test_database"),
/// 								Table:    pulumi.String("test_table_2"),
/// 							},
/// 						},
/// 					},
/// 					CustomizationRules: datastream.StreamRuleSetCustomizationRuleArray{
/// 						&datastream.StreamRuleSetCustomizationRuleArgs{
/// 							BigqueryClustering: &datastream.StreamRuleSetCustomizationRuleBigqueryClusteringArgs{
/// 								Columns: pulumi.StringArray{
/// 									pulumi.String("event_time"),
/// 								},
/// 							},
/// 						},
/// 						&datastream.StreamRuleSetCustomizationRuleArgs{
/// 							BigqueryPartitioning: &datastream.StreamRuleSetCustomizationRuleBigqueryPartitioningArgs{
/// 								TimeUnitPartition: &datastream.StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartitionArgs{
/// 									Column:                      pulumi.String("event_time"),
/// 									PartitioningTimeGranularity: pulumi.String("PARTITIONING_TIME_GRANULARITY_DAY"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_datastream_stream" "stream" {
///   stream_id    = "rules-stream"
///   location     = "us-central1"
///   display_name = "BigQuery Stream with Rules"
///   source_config = {
///     source_connection_profile = "rules-source-profile"
///     mysql_source_config = {
///       include_objects = {
///         mysql_databases = [{
///           "database" = "my_database"
///         }]
///       }
///       binary_log_position = {}
///     }
///   }
///   destination_config = {
///     destination_connection_profile = "rules-dest-profile"
///     bigquery_destination_config = {
///       single_target_dataset = {
///         dataset_id = "rules-project:rules-dataset"
///       }
///     }
///   }
///   backfill_none = {}
///   rule_sets {
///     object_filter = {
///       source_object_identifier = {
///         mysql_identifier = {
///           database = "test_database"
///           table    = "test_table_1"
///         }
///       }
///     }
///     customization_rules {
///       bigquery_clustering = {
///         columns = ["user_id"]
///       }
///     }
///     customization_rules {
///       bigquery_partitioning = {
///         ingestion_time_partition = {}
///       }
///     }
///   }
///   rule_sets {
///     object_filter = {
///       source_object_identifier = {
///         mysql_identifier = {
///           database = "test_database"
///           table    = "test_table_2"
///         }
///       }
///     }
///     customization_rules {
///       bigquery_clustering = {
///         columns = ["event_time"]
///       }
///     }
///     customization_rules {
///       bigquery_partitioning = {
///         time_unit_partition = {
///           column                        = "event_time"
///           partitioning_time_granularity = "PARTITIONING_TIME_GRANULARITY_DAY"
///         }
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMysqlSourceConfigBinaryLogPositionArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetObjectFilterArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetObjectFilterSourceObjectIdentifierArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifierArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetCustomizationRuleArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetCustomizationRuleBigqueryClusteringArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetCustomizationRuleBigqueryPartitioningArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartitionArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartitionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var stream = new Stream("stream", StreamArgs.builder()
///             .streamId("rules-stream")
///             .location("us-central1")
///             .displayName("BigQuery Stream with Rules")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile("rules-source-profile")
///                 .mysqlSourceConfig(StreamSourceConfigMysqlSourceConfigArgs.builder()
///                     .includeObjects(StreamSourceConfigMysqlSourceConfigIncludeObjectsArgs.builder()
///                         .mysqlDatabases(StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseArgs.builder()
///                             .database("my_database")
///                             .build())
///                         .build())
///                     .binaryLogPosition(StreamSourceConfigMysqlSourceConfigBinaryLogPositionArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile("rules-dest-profile")
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .singleTargetDataset(StreamDestinationConfigBigqueryDestinationConfigSingleTargetDatasetArgs.builder()
///                         .datasetId("rules-project:rules-dataset")
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .ruleSets(
///                 StreamRuleSetArgs.builder()
///                     .objectFilter(StreamRuleSetObjectFilterArgs.builder()
///                         .sourceObjectIdentifier(StreamRuleSetObjectFilterSourceObjectIdentifierArgs.builder()
///                             .mysqlIdentifier(StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifierArgs.builder()
///                                 .database("test_database")
///                                 .table("test_table_1")
///                                 .build())
///                             .build())
///                         .build())
///                     .customizationRules(
///                         StreamRuleSetCustomizationRuleArgs.builder()
///                             .bigqueryClustering(StreamRuleSetCustomizationRuleBigqueryClusteringArgs.builder()
///                                 .columns("user_id")
///                                 .build())
///                             .build(),
///                         StreamRuleSetCustomizationRuleArgs.builder()
///                             .bigqueryPartitioning(StreamRuleSetCustomizationRuleBigqueryPartitioningArgs.builder()
///                                 .ingestionTimePartition(StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartitionArgs.builder()
///                                     .build())
///                                 .build())
///                             .build())
///                     .build(),
///                 StreamRuleSetArgs.builder()
///                     .objectFilter(StreamRuleSetObjectFilterArgs.builder()
///                         .sourceObjectIdentifier(StreamRuleSetObjectFilterSourceObjectIdentifierArgs.builder()
///                             .mysqlIdentifier(StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifierArgs.builder()
///                                 .database("test_database")
///                                 .table("test_table_2")
///                                 .build())
///                             .build())
///                         .build())
///                     .customizationRules(
///                         StreamRuleSetCustomizationRuleArgs.builder()
///                             .bigqueryClustering(StreamRuleSetCustomizationRuleBigqueryClusteringArgs.builder()
///                                 .columns("event_time")
///                                 .build())
///                             .build(),
///                         StreamRuleSetCustomizationRuleArgs.builder()
///                             .bigqueryPartitioning(StreamRuleSetCustomizationRuleBigqueryPartitioningArgs.builder()
///                                 .timeUnitPartition(StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartitionArgs.builder()
///                                     .column("event_time")
///                                     .partitioningTimeGranularity("PARTITIONING_TIME_GRANULARITY_DAY")
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   stream:
///     type: gcp:datastream:Stream
///     properties:
///       streamId: rules-stream
///       location: us-central1
///       displayName: BigQuery Stream with Rules
///       sourceConfig:
///         sourceConnectionProfile: rules-source-profile
///         mysqlSourceConfig:
///           includeObjects:
///             mysqlDatabases:
///               - database: my_database
///           binaryLogPosition: {}
///       destinationConfig:
///         destinationConnectionProfile: rules-dest-profile
///         bigqueryDestinationConfig:
///           singleTargetDataset:
///             datasetId: rules-project:rules-dataset
///       backfillNone: {}
///       ruleSets:
///         - objectFilter:
///             sourceObjectIdentifier:
///               mysqlIdentifier:
///                 database: test_database
///                 table: test_table_1
///           customizationRules:
///             - bigqueryClustering:
///                 columns:
///                   - user_id
///             - bigqueryPartitioning:
///                 ingestionTimePartition: {}
///         - objectFilter:
///             sourceObjectIdentifier:
///               mysqlIdentifier:
///                 database: test_database
///                 table: test_table_2
///           customizationRules:
///             - bigqueryClustering:
///                 columns:
///                   - event_time
///             - bigqueryPartitioning:
///                 timeUnitPartition:
///                   column: event_time
///                   partitioningTimeGranularity: PARTITIONING_TIME_GRANULARITY_DAY
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Datastream Stream Mongodb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datastream.Stream("default", {
///     displayName: "Mongodb to BigQuery",
///     location: "us-central1",
///     streamId: "mongodb-stream",
///     sourceConfig: {
///         sourceConnectionProfile: "source-profile",
///         mongodbSourceConfig: {
///             includeObjects: {
///                 databases: [{
///                     database: "mydb",
///                     collections: [
///                         {
///                             collection: "mycollection1",
///                         },
///                         {
///                             collection: "mycollection2",
///                         },
///                     ],
///                 }],
///             },
///             excludeeObjects: [{
///                 databases: [{
///                     database: "mydb",
///                     collections: [{
///                         fields: [{
///                             field: "excludedField",
///                         }],
///                     }],
///                 }],
///             }],
///         },
///     },
///     destinationConfig: {
///         destinationConnectionProfile: "destination-profile",
///         bigqueryDestinationConfig: {
///             dataFreshness: "900s",
///             sourceHierarchyDatasets: {
///                 datasetTemplate: {
///                     location: "us-central1",
///                 },
///             },
///         },
///     },
///     backfillNone: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datastream.Stream("default",
///     display_name="Mongodb to BigQuery",
///     location="us-central1",
///     stream_id="mongodb-stream",
///     source_config={
///         "source_connection_profile": "source-profile",
///         "mongodb_source_config": {
///             "include_objects": {
///                 "databases": [{
///                     "database": "mydb",
///                     "collections": [
///                         {
///                             "collection": "mycollection1",
///                         },
///                         {
///                             "collection": "mycollection2",
///                         },
///                     ],
///                 }],
///             },
///             "excludee_objects": [{
///                 "databases": [{
///                     "database": "mydb",
///                     "collections": [{
///                         "fields": [{
///                             "field": "excludedField",
///                         }],
///                     }],
///                 }],
///             }],
///         },
///     },
///     destination_config={
///         "destination_connection_profile": "destination-profile",
///         "bigquery_destination_config": {
///             "data_freshness": "900s",
///             "source_hierarchy_datasets": {
///                 "dataset_template": {
///                     "location": "us-central1",
///                 },
///             },
///         },
///     },
///     backfill_none={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Datastream.Stream("default", new()
///     {
///         DisplayName = "Mongodb to BigQuery",
///         Location = "us-central1",
///         StreamId = "mongodb-stream",
///         SourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigArgs
///         {
///             SourceConnectionProfile = "source-profile",
///             MongodbSourceConfig = new Gcp.Datastream.Inputs.StreamSourceConfigMongodbSourceConfigArgs
///             {
///                 IncludeObjects = new Gcp.Datastream.Inputs.StreamSourceConfigMongodbSourceConfigIncludeObjectsArgs
///                 {
///                     Databases = new[]
///                     {
///                         new Gcp.Datastream.Inputs.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseArgs
///                         {
///                             Database = "mydb",
///                             Collections = new[]
///                             {
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArgs
///                                 {
///                                     Collection = "mycollection1",
///                                 },
///                                 new Gcp.Datastream.Inputs.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArgs
///                                 {
///                                     Collection = "mycollection2",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 ExcludeeObjects = new[]
///                 {
///
///                     {
///                         { "databases", new[]
///                         {
///
///                             {
///                                 { "database", "mydb" },
///                                 { "collections", new[]
///                                 {
///
///                                     {
///                                         { "fields", new[]
///                                         {
///
///                                             {
///                                                 { "field", "excludedField" },
///                                             },
///                                         } },
///                                     },
///                                 } },
///                             },
///                         } },
///                     },
///                 },
///             },
///         },
///         DestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigArgs
///         {
///             DestinationConnectionProfile = "destination-profile",
///             BigqueryDestinationConfig = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigArgs
///             {
///                 DataFreshness = "900s",
///                 SourceHierarchyDatasets = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs
///                 {
///                     DatasetTemplate = new Gcp.Datastream.Inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///         BackfillNone = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datastream.NewStream(ctx, "default", &datastream.StreamArgs{
/// 			DisplayName: pulumi.String("Mongodb to BigQuery"),
/// 			Location:    pulumi.String("us-central1"),
/// 			StreamId:    pulumi.String("mongodb-stream"),
/// 			SourceConfig: &datastream.StreamSourceConfigArgs{
/// 				SourceConnectionProfile: pulumi.String("source-profile"),
/// 				MongodbSourceConfig: &datastream.StreamSourceConfigMongodbSourceConfigArgs{
/// 					IncludeObjects: &datastream.StreamSourceConfigMongodbSourceConfigIncludeObjectsArgs{
/// 						Databases: datastream.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseArray{
/// 							&datastream.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseArgs{
/// 								Database: pulumi.String("mydb"),
/// 								Collections: datastream.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArray{
/// 									&datastream.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArgs{
/// 										Collection: pulumi.String("mycollection1"),
/// 									},
/// 									&datastream.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArgs{
/// 										Collection: pulumi.String("mycollection2"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ExcludeeObjects: []map[string][]map[string]interface{}{
/// 						map[string][]map[string]interface{}{
/// 							"databases": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"database": "mydb",
/// 									"collections": []map[string][]map[string]string{
/// 										{
/// 											"fields": []map[string]string{
/// 												{
/// 													"field": "excludedField",
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DestinationConfig: &datastream.StreamDestinationConfigArgs{
/// 				DestinationConnectionProfile: pulumi.String("destination-profile"),
/// 				BigqueryDestinationConfig: &datastream.StreamDestinationConfigBigqueryDestinationConfigArgs{
/// 					DataFreshness: pulumi.String("900s"),
/// 					SourceHierarchyDatasets: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs{
/// 						DatasetTemplate: &datastream.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackfillNone: &datastream.StreamBackfillNoneArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datastream_stream" "default" {
///   display_name = "Mongodb to BigQuery"
///   location     = "us-central1"
///   stream_id    = "mongodb-stream"
///   source_config = {
///     source_connection_profile = "source-profile"
///     mongodb_source_config = {
///       include_objects = {
///         databases = [{
///           "database" = "mydb"
///           "collections" = [{
///             "collection" = "mycollection1"
///             }, {
///             "collection" = "mycollection2"
///           }]
///         }]
///       }
///       excludee_objects = [{
///         "databases" = [{
///           "database" = "mydb"
///           "collections" = [{
///             "fields" = [{
///               "field" = "excludedField"
///             }]
///           }]
///         }]
///       }]
///     }
///   }
///   destination_config = {
///     destination_connection_profile = "destination-profile"
///     bigquery_destination_config = {
///       data_freshness = "900s"
///       source_hierarchy_datasets = {
///         dataset_template = {
///           location = "us-central1"
///         }
///       }
///     }
///   }
///   backfill_none = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datastream.Stream;
/// import com.pulumi.gcp.datastream.StreamArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMongodbSourceConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMongodbSourceConfigIncludeObjectsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs;
/// import com.pulumi.gcp.datastream.inputs.StreamBackfillNoneArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new Stream("default", StreamArgs.builder()
///             .displayName("Mongodb to BigQuery")
///             .location("us-central1")
///             .streamId("mongodb-stream")
///             .sourceConfig(StreamSourceConfigArgs.builder()
///                 .sourceConnectionProfile("source-profile")
///                 .mongodbSourceConfig(StreamSourceConfigMongodbSourceConfigArgs.builder()
///                     .includeObjects(StreamSourceConfigMongodbSourceConfigIncludeObjectsArgs.builder()
///                         .databases(StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseArgs.builder()
///                             .database("mydb")
///                             .collections(
///                                 StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArgs.builder()
///                                     .collection("mycollection1")
///                                     .build(),
///                                 StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionArgs.builder()
///                                     .collection("mycollection2")
///                                     .build())
///                             .build())
///                         .build())
///                     .excludeeObjects(Arrays.asList(Map.of("databases", Arrays.asList(Map.ofEntries(
///                         Map.entry("database", "mydb"),
///                         Map.entry("collections", Arrays.asList(Map.of("fields", Arrays.asList(Map.of("field", "excludedField")))))
///                     )))))
///                     .build())
///                 .build())
///             .destinationConfig(StreamDestinationConfigArgs.builder()
///                 .destinationConnectionProfile("destination-profile")
///                 .bigqueryDestinationConfig(StreamDestinationConfigBigqueryDestinationConfigArgs.builder()
///                     .dataFreshness("900s")
///                     .sourceHierarchyDatasets(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsArgs.builder()
///                         .datasetTemplate(StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplateArgs.builder()
///                             .location("us-central1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .backfillNone(StreamBackfillNoneArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:datastream:Stream
///     properties:
///       displayName: Mongodb to BigQuery
///       location: us-central1
///       streamId: mongodb-stream
///       sourceConfig:
///         sourceConnectionProfile: source-profile
///         mongodbSourceConfig:
///           includeObjects:
///             databases:
///               - database: mydb
///                 collections:
///                   - collection: mycollection1
///                   - collection: mycollection2
///           excludeeObjects:
///             - databases:
///                 - database: mydb
///                   collections:
///                     - fields:
///                         - field: excludedField
///       destinationConfig:
///         destinationConnectionProfile: destination-profile
///         bigqueryDestinationConfig:
///           dataFreshness: 900s
///           sourceHierarchyDatasets:
///             datasetTemplate:
///               location: us-central1
///       backfillNone: {}
/// ```
///
///
/// ## Import
///
/// Stream can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/streams/{{stream_id}}`
/// * `{{project}}/{{location}}/{{stream_id}}`
/// * `{{location}}/{{stream_id}}`
///
///
/// When using the `pulumi import` command, Stream can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datastream/stream:Stream default projects/{{project}}/locations/{{location}}/streams/{{stream_id}}
/// $ pulumi import gcp:datastream/stream:Stream default {{project}}/{{location}}/{{stream_id}}
/// $ pulumi import gcp:datastream/stream:Stream default {{location}}/{{stream_id}}
/// ```
class Stream extends pulumi.CustomResource {
  /// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// Structure is documented below.
  late final pulumi.Output<StreamBackfillAll?> backfillAll;
  /// Backfill strategy to disable automatic backfill for the Stream's objects.
  late final pulumi.Output<Map<String, dynamic>?> backfillNone;
  /// Create the stream without validating it.
  late final pulumi.Output<bool?> createWithoutValidation;
  /// A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  late final pulumi.Output<String?> customerManagedEncryptionKey;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// `NOT_STARTED` to create the stream without starting and `PAUSED` to pause
  /// the stream from a `RUNNING` state.
  /// Possible values: NOT_STARTED, RUNNING, PAUSED. Default: NOT_STARTED
  late final pulumi.Output<String?> desiredState;
  /// Destination connection profile configuration.
  /// Structure is documented below.
  late final pulumi.Output<StreamDestinationConfig> destinationConfig;
  /// Display name.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the location this stream is located in.
  late final pulumi.Output<String> location;
  /// The stream's name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Rule sets to apply to the stream.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> ruleSets;
  /// Source connection profile configuration.
  /// Structure is documented below.
  late final pulumi.Output<StreamSourceConfig> sourceConfig;
  /// The state of the stream.
  late final pulumi.Output<String> state;
  /// The stream identifier.
  late final pulumi.Output<String> streamId;

  /// Creates a new [Stream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stream]. {@macro pulumi_datastream_stream_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stream(
    String name, {
    StreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datastream/stream:Stream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backfillAll = registerOutput<StreamBackfillAll?>('backfillAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamBackfillAll.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backfillNone = registerOutput<Map<String, dynamic>?>('backfillNone');
    createWithoutValidation = registerOutput<bool?>('createWithoutValidation');
    customerManagedEncryptionKey = registerOutput<String?>('customerManagedEncryptionKey');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    destinationConfig = registerOutput<StreamDestinationConfig>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    ruleSets = registerOutput<List<Map<String, dynamic>>?>('ruleSets');
    sourceConfig = registerOutput<StreamSourceConfig>('sourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    streamId = registerOutput<String>('streamId');
  }

  /// Gets an existing [Stream] resource's state with the given [name] and [id].
  static Stream get(
    String name,
    pulumi.Input<String> id, {
    StreamState? state,
  }) {
    return Stream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Stream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datastream/stream:Stream',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backfillAll = registerOutput<StreamBackfillAll?>('backfillAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamBackfillAll.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backfillNone = registerOutput<Map<String, dynamic>?>('backfillNone');
    createWithoutValidation = registerOutput<bool?>('createWithoutValidation');
    customerManagedEncryptionKey = registerOutput<String?>('customerManagedEncryptionKey');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    destinationConfig = registerOutput<StreamDestinationConfig>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    ruleSets = registerOutput<List<Map<String, dynamic>>?>('ruleSets');
    sourceConfig = registerOutput<StreamSourceConfig>('sourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    streamId = registerOutput<String>('streamId');
  }
}
