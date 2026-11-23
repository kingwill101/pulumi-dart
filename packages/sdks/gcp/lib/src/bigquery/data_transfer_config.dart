import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_config_args.dart';
import 'data_transfer_config_email_preferences.dart';
import 'data_transfer_config_encryption_configuration.dart';
import 'data_transfer_config_schedule_options.dart';
import 'data_transfer_config_schedule_options_v2.dart';
import 'data_transfer_config_sensitive_params.dart';
import 'data_transfer_config_state.dart';

/// Represents a data transfer configuration. A transfer configuration
/// contains all metadata needed to perform a data transfer.
///
///
/// To get more information about Config, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/datatransfer/rest/v1/projects.locations.transferConfigs/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/reference/datatransfer/rest/)
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `sensitive_params.secret_access_key_wo`.
/// Read more about Write-only Arguments.
///
///
/// ## Example Usage
///
/// ### Bigquerydatatransfer Config Scheduled Query
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const permissions = new gcp.projects.IAMMember("permissions", {
///     project: project.then(project => project.projectId),
///     role: "roles/iam.serviceAccountTokenCreator",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com`),
/// });
/// const myDataset = new gcp.bigquery.Dataset("my_dataset", {
///     datasetId: "my_dataset",
///     friendlyName: "foo",
///     description: "bar",
///     location: "asia-northeast1",
/// }, {
///     dependsOn: [permissions],
/// });
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "example-keyring",
///     location: "asia-northeast1",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "example-key",
///     keyRing: keyRing.id,
/// });
/// const bigqueryEncrypter = new gcp.kms.CryptoKeyIAMMember("bigquery_encrypter", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:bq-${project.number}@bigquery-encryption.iam.gserviceaccount.com`),
/// });
/// const queryConfig = new gcp.bigquery.DataTransferConfig("query_config", {
///     displayName: "my-query",
///     location: "asia-northeast1",
///     dataSourceId: "scheduled_query",
///     schedule: "first sunday of quarter 00:00",
///     destinationDatasetId: myDataset.datasetId,
///     params: {
///         destination_table_name_template: "my_table",
///         write_disposition: "WRITE_APPEND",
///         query: "SELECT name FROM tabl WHERE x = 'y'",
///     },
///     encryptionConfiguration: {
///         kmsKeyName: cryptoKey.id,
///     },
/// }, {
///     dependsOn: [
///         permissions,
///         bigqueryEncrypter,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// permissions = gcp.projects.IAMMember("permissions",
///     project=project.project_id,
///     role="roles/iam.serviceAccountTokenCreator",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com")
/// my_dataset = gcp.bigquery.Dataset("my_dataset",
///     dataset_id="my_dataset",
///     friendly_name="foo",
///     description="bar",
///     location="asia-northeast1",
///     opts = pulumi.ResourceOptions(depends_on=[permissions]))
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="example-keyring",
///     location="asia-northeast1")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="example-key",
///     key_ring=key_ring.id)
/// bigquery_encrypter = gcp.kms.CryptoKeyIAMMember("bigquery_encrypter",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:bq-{project.number}@bigquery-encryption.iam.gserviceaccount.com")
/// query_config = gcp.bigquery.DataTransferConfig("query_config",
///     display_name="my-query",
///     location="asia-northeast1",
///     data_source_id="scheduled_query",
///     schedule="first sunday of quarter 00:00",
///     destination_dataset_id=my_dataset.dataset_id,
///     params={
///         "destination_table_name_template": "my_table",
///         "write_disposition": "WRITE_APPEND",
///         "query": "SELECT name FROM tabl WHERE x = 'y'",
///     },
///     encryption_configuration={
///         "kms_key_name": crypto_key.id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             permissions,
///             bigquery_encrypter,
///         ]))
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
///     var permissions = new Gcp.Projects.IAMMember("permissions", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/iam.serviceAccountTokenCreator",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com",
///     });
///
///     var myDataset = new Gcp.BigQuery.Dataset("my_dataset", new()
///     {
///         DatasetId = "my_dataset",
///         FriendlyName = "foo",
///         Description = "bar",
///         Location = "asia-northeast1",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             permissions,
///         },
///     });
///
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "example-keyring",
///         Location = "asia-northeast1",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "example-key",
///         KeyRing = keyRing.Id,
///     });
///
///     var bigqueryEncrypter = new Gcp.Kms.CryptoKeyIAMMember("bigquery_encrypter", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:bq-{project.Apply(getProjectResult => getProjectResult.Number)}@bigquery-encryption.iam.gserviceaccount.com",
///     });
///
///     var queryConfig = new Gcp.BigQuery.DataTransferConfig("query_config", new()
///     {
///         DisplayName = "my-query",
///         Location = "asia-northeast1",
///         DataSourceId = "scheduled_query",
///         Schedule = "first sunday of quarter 00:00",
///         DestinationDatasetId = myDataset.DatasetId,
///         Params =
///         {
///             { "destination_table_name_template", "my_table" },
///             { "write_disposition", "WRITE_APPEND" },
///             { "query", "SELECT name FROM tabl WHERE x = 'y'" },
///         },
///         EncryptionConfiguration = new Gcp.BigQuery.Inputs.DataTransferConfigEncryptionConfigurationArgs
///         {
///             KmsKeyName = cryptoKey.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             permissions,
///             bigqueryEncrypter,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		permissions, err := projects.NewIAMMember(ctx, "permissions", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// 			Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDataset, err := bigquery.NewDataset(ctx, "my_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("my_dataset"),
/// 			FriendlyName: pulumi.String("foo"),
/// 			Description:  pulumi.String("bar"),
/// 			Location:     pulumi.String("asia-northeast1"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			permissions,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("example-keyring"),
/// 			Location: pulumi.String("asia-northeast1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("example-key"),
/// 			KeyRing: keyRing.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bigqueryEncrypter, err := kms.NewCryptoKeyIAMMember(ctx, "bigquery_encrypter", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: cryptoKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:bq-%v@bigquery-encryption.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDataTransferConfig(ctx, "query_config", &bigquery.DataTransferConfigArgs{
/// 			DisplayName:          pulumi.String("my-query"),
/// 			Location:             pulumi.String("asia-northeast1"),
/// 			DataSourceId:         pulumi.String("scheduled_query"),
/// 			Schedule:             pulumi.String("first sunday of quarter 00:00"),
/// 			DestinationDatasetId: myDataset.DatasetId,
/// 			Params: pulumi.StringMap{
/// 				"destination_table_name_template": pulumi.String("my_table"),
/// 				"write_disposition":               pulumi.String("WRITE_APPEND"),
/// 				"query":                           pulumi.String("SELECT name FROM tabl WHERE x = 'y'"),
/// 			},
/// 			EncryptionConfiguration: &bigquery.DataTransferConfigEncryptionConfigurationArgs{
/// 				KmsKeyName: cryptoKey.ID(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			permissions,
/// 			bigqueryEncrypter,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_projects_i_a_m_member" "permissions" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project = data.gcp_organizations_project.project.project_id
///   role    = "roles/iam.serviceAccountTokenCreator"
///   member  ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com"
/// }
/// resource "gcp_bigquery_data_transfer_config" "query_config" {
///   depends_on = [gcp_projects_i_a_m_member.permissions, gcp_kms_crypto_key_i_a_m_member.bigquery_encrypter]
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name           = "my-query"
///   location               = "asia-northeast1"
///   data_source_id         = "scheduled_query"
///   schedule               = "first sunday of quarter 00:00"
///   destination_dataset_id = gcp_bigquery_dataset.my_dataset.dataset_id
///   params = {
///     "destination_table_name_template" = "my_table"
///     "write_disposition"               = "WRITE_APPEND"
///     "query"                           = "SELECT name FROM tabl WHERE x = 'y'"
///   }
///   encryption_configuration = {
///     kms_key_name = gcp_kms_crypto_key.crypto_key.id
///   }
/// }
/// resource "gcp_bigquery_dataset" "my_dataset" {
///   depends_on = [gcp_projects_i_a_m_member.permissions]
///   lifecycle {
///     create_before_destroy = true
///   }
///   dataset_id    = "my_dataset"
///   friendly_name = "foo"
///   description   = "bar"
///   location      = "asia-northeast1"
/// }
/// resource "gcp_kms_crypto_key" "crypto_key" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "example-key"
///   key_ring = gcp_kms_key_ring.key_ring.id
/// }
/// resource "gcp_kms_key_ring" "key_ring" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "example-keyring"
///   location = "asia-northeast1"
/// }
/// resource "gcp_kms_crypto_key_i_a_m_member" "bigquery_encrypter" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   crypto_key_id = gcp_kms_crypto_key.crypto_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:bq-${data.gcp_organizations_project.project.number}@bigquery-encryption.iam.gserviceaccount.com"
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.bigquery.DataTransferConfig;
/// import com.pulumi.gcp.bigquery.DataTransferConfigArgs;
/// import com.pulumi.gcp.bigquery.inputs.DataTransferConfigEncryptionConfigurationArgs;
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
///         var permissions = new IAMMember("permissions", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/iam.serviceAccountTokenCreator")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var myDataset = new Dataset("myDataset", DatasetArgs.builder()
///             .datasetId("my_dataset")
///             .friendlyName("foo")
///             .description("bar")
///             .location("asia-northeast1")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(permissions)
///                 .build());
///
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("example-keyring")
///             .location("asia-northeast1")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("example-key")
///             .keyRing(keyRing.id())
///             .build());
///
///         var bigqueryEncrypter = new CryptoKeyIAMMember("bigqueryEncrypter", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:bq-%s@bigquery-encryption.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var queryConfig = new DataTransferConfig("queryConfig", DataTransferConfigArgs.builder()
///             .displayName("my-query")
///             .location("asia-northeast1")
///             .dataSourceId("scheduled_query")
///             .schedule("first sunday of quarter 00:00")
///             .destinationDatasetId(myDataset.datasetId())
///             .params(Map.ofEntries(
///                 Map.entry("destination_table_name_template", "my_table"),
///                 Map.entry("write_disposition", "WRITE_APPEND"),
///                 Map.entry("query", "SELECT name FROM tabl WHERE x = 'y'")
///             ))
///             .encryptionConfiguration(DataTransferConfigEncryptionConfigurationArgs.builder()
///                 .kmsKeyName(cryptoKey.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     permissions,
///                     bigqueryEncrypter)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   permissions:
///     type: gcp:projects:IAMMember
///     properties:
///       project: ${project.projectId}
///       role: roles/iam.serviceAccountTokenCreator
///       member: serviceAccount:service-${project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com
///   queryConfig:
///     type: gcp:bigquery:DataTransferConfig
///     name: query_config
///     properties:
///       displayName: my-query
///       location: asia-northeast1
///       dataSourceId: scheduled_query
///       schedule: first sunday of quarter 00:00
///       destinationDatasetId: ${myDataset.datasetId}
///       params:
///         destination_table_name_template: my_table
///         write_disposition: WRITE_APPEND
///         query: SELECT name FROM tabl WHERE x = 'y'
///       encryptionConfiguration:
///         kmsKeyName: ${cryptoKey.id}
///     options:
///       dependsOn:
///         - ${permissions}
///         - ${bigqueryEncrypter}
///   myDataset:
///     type: gcp:bigquery:Dataset
///     name: my_dataset
///     properties:
///       datasetId: my_dataset
///       friendlyName: foo
///       description: bar
///       location: asia-northeast1
///     options:
///       dependsOn:
///         - ${permissions}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: example-key
///       keyRing: ${keyRing.id}
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: example-keyring
///       location: asia-northeast1
///   bigqueryEncrypter:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: bigquery_encrypter
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:bq-${project.number}@bigquery-encryption.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Bigquerydatatransfer Config Schedule Options V2
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const eventDriven = new gcp.pubsub.Topic("event_driven", {name: "my-topic"});
/// const eventDrivenSubscription = new gcp.pubsub.Subscription("event_driven", {
///     name: "my-subscription",
///     topic: eventDriven.id,
/// });
/// const eventDrivenBucket = new gcp.storage.Bucket("event_driven", {
///     name: "my-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const eventDrivenDataset = new gcp.bigquery.Dataset("event_driven", {
///     datasetId: "my_dataset",
///     friendlyName: "foo",
///     description: "bar",
///     location: "US",
/// });
/// const eventDrivenTable = new gcp.bigquery.Table("event_driven", {
///     deletionProtection: false,
///     datasetId: eventDrivenDataset.datasetId,
///     tableId: "my_table",
///     schema: "[{\"name\":\"name\",\"type\":\"STRING\"}]",
/// });
/// const eventDrivenConfig = new gcp.bigquery.DataTransferConfig("event_driven_config", {
///     displayName: "my-event-driven-config",
///     location: eventDrivenDataset.location,
///     dataSourceId: "google_cloud_storage",
///     destinationDatasetId: eventDrivenDataset.datasetId,
///     scheduleOptionsV2: {
///         eventDrivenSchedule: {
///             pubsubSubscription: eventDrivenSubscription.id,
///         },
///     },
///     params: {
///         data_path_template: pulumi.interpolate`${eventDrivenBucket.url}/*.json`,
///         destination_table_name_template: eventDrivenTable.tableId,
///         file_format: "JSON",
///         write_disposition: "APPEND",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// event_driven = gcp.pubsub.Topic("event_driven", name="my-topic")
/// event_driven_subscription = gcp.pubsub.Subscription("event_driven",
///     name="my-subscription",
///     topic=event_driven.id)
/// event_driven_bucket = gcp.storage.Bucket("event_driven",
///     name="my-bucket",
///     location="US",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// event_driven_dataset = gcp.bigquery.Dataset("event_driven",
///     dataset_id="my_dataset",
///     friendly_name="foo",
///     description="bar",
///     location="US")
/// event_driven_table = gcp.bigquery.Table("event_driven",
///     deletion_protection=False,
///     dataset_id=event_driven_dataset.dataset_id,
///     table_id="my_table",
///     schema="[{\"name\":\"name\",\"type\":\"STRING\"}]")
/// event_driven_config = gcp.bigquery.DataTransferConfig("event_driven_config",
///     display_name="my-event-driven-config",
///     location=event_driven_dataset.location,
///     data_source_id="google_cloud_storage",
///     destination_dataset_id=event_driven_dataset.dataset_id,
///     schedule_options_v2={
///         "event_driven_schedule": {
///             "pubsub_subscription": event_driven_subscription.id,
///         },
///     },
///     params={
///         "data_path_template": event_driven_bucket.url.apply(lambda url: f"{url}/*.json"),
///         "destination_table_name_template": event_driven_table.table_id,
///         "file_format": "JSON",
///         "write_disposition": "APPEND",
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
///     var eventDriven = new Gcp.PubSub.Topic("event_driven", new()
///     {
///         Name = "my-topic",
///     });
///
///     var eventDrivenSubscription = new Gcp.PubSub.Subscription("event_driven", new()
///     {
///         Name = "my-subscription",
///         Topic = eventDriven.Id,
///     });
///
///     var eventDrivenBucket = new Gcp.Storage.Bucket("event_driven", new()
///     {
///         Name = "my-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var eventDrivenDataset = new Gcp.BigQuery.Dataset("event_driven", new()
///     {
///         DatasetId = "my_dataset",
///         FriendlyName = "foo",
///         Description = "bar",
///         Location = "US",
///     });
///
///     var eventDrivenTable = new Gcp.BigQuery.Table("event_driven", new()
///     {
///         DeletionProtection = false,
///         DatasetId = eventDrivenDataset.DatasetId,
///         TableId = "my_table",
///         Schema = "[{\"name\":\"name\",\"type\":\"STRING\"}]",
///     });
///
///     var eventDrivenConfig = new Gcp.BigQuery.DataTransferConfig("event_driven_config", new()
///     {
///         DisplayName = "my-event-driven-config",
///         Location = eventDrivenDataset.Location,
///         DataSourceId = "google_cloud_storage",
///         DestinationDatasetId = eventDrivenDataset.DatasetId,
///         ScheduleOptionsV2 = new Gcp.BigQuery.Inputs.DataTransferConfigScheduleOptionsV2Args
///         {
///             EventDrivenSchedule = new Gcp.BigQuery.Inputs.DataTransferConfigScheduleOptionsV2EventDrivenScheduleArgs
///             {
///                 PubsubSubscription = eventDrivenSubscription.Id,
///             },
///         },
///         Params =
///         {
///             { "data_path_template", eventDrivenBucket.Url.Apply(url => $"{url}/*.json") },
///             { "destination_table_name_template", eventDrivenTable.TableId },
///             { "file_format", "JSON" },
///             { "write_disposition", "APPEND" },
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		eventDriven, err := pubsub.NewTopic(ctx, "event_driven", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eventDrivenSubscription, err := pubsub.NewSubscription(ctx, "event_driven", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("my-subscription"),
/// 			Topic: eventDriven.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eventDrivenBucket, err := storage.NewBucket(ctx, "event_driven", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eventDrivenDataset, err := bigquery.NewDataset(ctx, "event_driven", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("my_dataset"),
/// 			FriendlyName: pulumi.String("foo"),
/// 			Description:  pulumi.String("bar"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eventDrivenTable, err := bigquery.NewTable(ctx, "event_driven", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          eventDrivenDataset.DatasetId,
/// 			TableId:            pulumi.String("my_table"),
/// 			Schema:             pulumi.String("[{\"name\":\"name\",\"type\":\"STRING\"}]"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDataTransferConfig(ctx, "event_driven_config", &bigquery.DataTransferConfigArgs{
/// 			DisplayName:          pulumi.String("my-event-driven-config"),
/// 			Location:             eventDrivenDataset.Location,
/// 			DataSourceId:         pulumi.String("google_cloud_storage"),
/// 			DestinationDatasetId: eventDrivenDataset.DatasetId,
/// 			ScheduleOptionsV2: &bigquery.DataTransferConfigScheduleOptionsV2Args{
/// 				EventDrivenSchedule: &bigquery.DataTransferConfigScheduleOptionsV2EventDrivenScheduleArgs{
/// 					PubsubSubscription: eventDrivenSubscription.ID(),
/// 				},
/// 			},
/// 			Params: pulumi.StringMap{
/// 				"data_path_template": eventDrivenBucket.Url.ApplyT(func(url string) (string, error) {
/// 					return fmt.Sprintf("%v/*.json", url), nil
/// 				}).(pulumi.StringOutput),
/// 				"destination_table_name_template": eventDrivenTable.TableId,
/// 				"file_format":                     pulumi.String("JSON"),
/// 				"write_disposition":               pulumi.String("APPEND"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "event_driven" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "my-topic"
/// }
/// resource "gcp_pubsub_subscription" "event_driven" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name  = "my-subscription"
///   topic = gcp_pubsub_topic.event_driven.id
/// }
/// resource "gcp_storage_bucket" "event_driven" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "my-bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_bigquery_dataset" "event_driven" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   dataset_id    = "my_dataset"
///   friendly_name = "foo"
///   description   = "bar"
///   location      = "US"
/// }
/// resource "gcp_bigquery_table" "event_driven" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   deletion_protection = false
///   dataset_id          = gcp_bigquery_dataset.event_driven.dataset_id
///   table_id            = "my_table"
///   schema              = "[{\"name\":\"name\",\"type\":\"STRING\"}]"
/// }
/// resource "gcp_bigquery_data_transfer_config" "event_driven_config" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name           = "my-event-driven-config"
///   location               = gcp_bigquery_dataset.event_driven.location
///   data_source_id         = "google_cloud_storage"
///   destination_dataset_id = gcp_bigquery_dataset.event_driven.dataset_id
///   schedule_options_v2 = {
///     event_driven_schedule = {
///       pubsub_subscription = gcp_pubsub_subscription.event_driven.id
///     }
///   }
///   params = {
///     "data_path_template"              ="${gcp_storage_bucket.event_driven.url}/*.json"
///     "destination_table_name_template" = gcp_bigquery_table.event_driven.table_id
///     "file_format"                     = "JSON"
///     "write_disposition"               = "APPEND"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.DataTransferConfig;
/// import com.pulumi.gcp.bigquery.DataTransferConfigArgs;
/// import com.pulumi.gcp.bigquery.inputs.DataTransferConfigScheduleOptionsV2Args;
/// import com.pulumi.gcp.bigquery.inputs.DataTransferConfigScheduleOptionsV2EventDrivenScheduleArgs;
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
///         var eventDriven = new Topic("eventDriven", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var eventDrivenSubscription = new Subscription("eventDrivenSubscription", SubscriptionArgs.builder()
///             .name("my-subscription")
///             .topic(eventDriven.id())
///             .build());
///
///         var eventDrivenBucket = new Bucket("eventDrivenBucket", BucketArgs.builder()
///             .name("my-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var eventDrivenDataset = new Dataset("eventDrivenDataset", DatasetArgs.builder()
///             .datasetId("my_dataset")
///             .friendlyName("foo")
///             .description("bar")
///             .location("US")
///             .build());
///
///         var eventDrivenTable = new Table("eventDrivenTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(eventDrivenDataset.datasetId())
///             .tableId("my_table")
///             .schema("[{\"name\":\"name\",\"type\":\"STRING\"}]")
///             .build());
///
///         var eventDrivenConfig = new DataTransferConfig("eventDrivenConfig", DataTransferConfigArgs.builder()
///             .displayName("my-event-driven-config")
///             .location(eventDrivenDataset.location())
///             .dataSourceId("google_cloud_storage")
///             .destinationDatasetId(eventDrivenDataset.datasetId())
///             .scheduleOptionsV2(DataTransferConfigScheduleOptionsV2Args.builder()
///                 .eventDrivenSchedule(DataTransferConfigScheduleOptionsV2EventDrivenScheduleArgs.builder()
///                     .pubsubSubscription(eventDrivenSubscription.id())
///                     .build())
///                 .build())
///             .params(Map.ofEntries(
///                 Map.entry("data_path_template", eventDrivenBucket.url().applyValue(_url -> String.format("%s/*.json", _url))),
///                 Map.entry("destination_table_name_template", eventDrivenTable.tableId()),
///                 Map.entry("file_format", "JSON"),
///                 Map.entry("write_disposition", "APPEND")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   eventDriven:
///     type: gcp:pubsub:Topic
///     name: event_driven
///     properties:
///       name: my-topic
///   eventDrivenSubscription:
///     type: gcp:pubsub:Subscription
///     name: event_driven
///     properties:
///       name: my-subscription
///       topic: ${eventDriven.id}
///   eventDrivenBucket:
///     type: gcp:storage:Bucket
///     name: event_driven
///     properties:
///       name: my-bucket
///       location: US
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   eventDrivenDataset:
///     type: gcp:bigquery:Dataset
///     name: event_driven
///     properties:
///       datasetId: my_dataset
///       friendlyName: foo
///       description: bar
///       location: US
///   eventDrivenTable:
///     type: gcp:bigquery:Table
///     name: event_driven
///     properties:
///       deletionProtection: false
///       datasetId: ${eventDrivenDataset.datasetId}
///       tableId: my_table
///       schema: '[{"name":"name","type":"STRING"}]'
///   eventDrivenConfig:
///     type: gcp:bigquery:DataTransferConfig
///     name: event_driven_config
///     properties:
///       displayName: my-event-driven-config
///       location: ${eventDrivenDataset.location}
///       dataSourceId: google_cloud_storage
///       destinationDatasetId: ${eventDrivenDataset.datasetId}
///       scheduleOptionsV2:
///         eventDrivenSchedule:
///           pubsubSubscription: ${eventDrivenSubscription.id}
///       params:
///         data_path_template: ${eventDrivenBucket.url}/*.json
///         destination_table_name_template: ${eventDrivenTable.tableId}
///         file_format: JSON
///         write_disposition: APPEND
/// ```
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
/// * `{{project}} {{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default {{project}}/{{name}}
/// $ terraform import google_bigquery_data_transfer_config.default "{{project}} {{name}}"
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default {{name}}
/// ```
class DataTransferConfig extends pulumi.CustomResource {
  /// The number of days to look back to automatically refresh the data.
  /// For example, if dataRefreshWindowDays = 10, then every day BigQuery
  /// reingests data for [today-10, today-1], rather than ingesting data for
  /// just [today-1]. Only valid if the data source supports the feature.
  /// Set the value to 0 to use the default value.
  late final pulumi.Output<int?> dataRefreshWindowDays;
  /// The data source id. Cannot be changed once the transfer config is created.
  late final pulumi.Output<String> dataSourceId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The BigQuery target dataset id.
  late final pulumi.Output<String?> destinationDatasetId;
  /// When set to true, no runs are scheduled for a given transfer.
  late final pulumi.Output<bool?> disabled;
  /// The user specified display name for the transfer config.
  late final pulumi.Output<String> displayName;
  /// Email notifications will be sent according to these preferences to the
  /// email address of the user who owns this transfer config.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigEmailPreferences?> emailPreferences;
  /// Represents the encryption configuration for a transfer.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigEncryptionConfiguration?> encryptionConfiguration;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final pulumi.Output<String?> location;
  /// The resource name of the transfer config. Transfer config names have the
  /// form projects/{projectId}/locations/{location}/transferConfigs/{configId}
  /// or projects/{projectId}/transferConfigs/{configId},
  /// where configId is usually a uuid, but this is not required.
  /// The name is ignored when creating a transfer config.
  late final pulumi.Output<String> name;
  /// Pub/Sub topic where notifications will be sent after transfer runs
  /// associated with this transfer config finish.
  late final pulumi.Output<String?> notificationPubsubTopic;
  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// **NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) please force recreation of the resource.
  late final pulumi.Output<Map<String, String>> params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Data transfer schedule. If the data source does not support a custom
  /// schedule, this should be empty. If it is empty, the default value for
  /// the data source will be used. The specified times are in UTC. Examples
  /// of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
  /// jun 13:15, and first sunday of quarter 00:00. See more explanation
  /// about the format here:
  /// https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
  /// NOTE: The minimum interval time between recurring transfers depends
  /// on the data source; refer to the documentation for your data source.
  late final pulumi.Output<String?> schedule;
  /// Options customizing the data transfer schedule.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigScheduleOptions?> scheduleOptions;
  /// Options customizing the type of data transfer schedule.
  /// Only the event-driven schedule is exposed here; time-based and manual
  /// schedules are configured through the `schedule` and `scheduleOptions`
  /// fields instead. This field cannot be used together with `schedule` or
  /// `scheduleOptions`.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigScheduleOptionsV2?> scheduleOptionsV2;
  /// Different parameters are configured primarily using the the `params` field on this
  /// resource. This block contains the parameters which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
  /// in the `params` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigSensitiveParams?> sensitiveParams;
  /// Service account email. If this field is set, transfer config will
  /// be created with this service account credentials. It requires that
  /// requesting user calling this API has permissions to act as this service account.
  late final pulumi.Output<String?> serviceAccountName;

  /// Creates a new [DataTransferConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataTransferConfig]. {@macro pulumi_bigquery_data_transfer_config_data_transfer_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataTransferConfig(
    String name, {
    DataTransferConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataTransferConfig:DataTransferConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    dataRefreshWindowDays = registerOutput<int?>('dataRefreshWindowDays');
    dataSourceId = registerOutput<String>('dataSourceId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationDatasetId = registerOutput<String?>('destinationDatasetId');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String>('displayName');
    emailPreferences = registerOutput<DataTransferConfigEmailPreferences?>('emailPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigEmailPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionConfiguration = registerOutput<DataTransferConfigEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notificationPubsubTopic = registerOutput<String?>('notificationPubsubTopic');
    params = registerOutput<Map<String, String>>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    schedule = registerOutput<String?>('schedule');
    scheduleOptions = registerOutput<DataTransferConfigScheduleOptions?>('scheduleOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigScheduleOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleOptionsV2 = registerOutput<DataTransferConfigScheduleOptionsV2?>('scheduleOptionsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigScheduleOptionsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sensitiveParams = registerOutput<DataTransferConfigSensitiveParams?>('sensitiveParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigSensitiveParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccountName = registerOutput<String?>('serviceAccountName');
  }

  /// Gets an existing [DataTransferConfig] resource's state with the given [name] and [id].
  static DataTransferConfig get(
    String name,
    pulumi.Input<String> id, {
    DataTransferConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataTransferConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataTransferConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataTransferConfig:DataTransferConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataRefreshWindowDays = registerOutput<int?>('dataRefreshWindowDays');
    dataSourceId = registerOutput<String>('dataSourceId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationDatasetId = registerOutput<String?>('destinationDatasetId');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String>('displayName');
    emailPreferences = registerOutput<DataTransferConfigEmailPreferences?>('emailPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigEmailPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionConfiguration = registerOutput<DataTransferConfigEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notificationPubsubTopic = registerOutput<String?>('notificationPubsubTopic');
    params = registerOutput<Map<String, String>>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    schedule = registerOutput<String?>('schedule');
    scheduleOptions = registerOutput<DataTransferConfigScheduleOptions?>('scheduleOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigScheduleOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleOptionsV2 = registerOutput<DataTransferConfigScheduleOptionsV2?>('scheduleOptionsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigScheduleOptionsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sensitiveParams = registerOutput<DataTransferConfigSensitiveParams?>('sensitiveParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigSensitiveParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccountName = registerOutput<String?>('serviceAccountName');
  }

  /// Creates a typed reference to an existing [DataTransferConfig] resource.
  DataTransferConfig.reference(String urn)
    : super(
        'gcp:bigquery/dataTransferConfig:DataTransferConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataRefreshWindowDays = registerOutput<int?>('dataRefreshWindowDays');
    dataSourceId = registerOutput<String>('dataSourceId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationDatasetId = registerOutput<String?>('destinationDatasetId');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String>('displayName');
    emailPreferences = registerOutput<DataTransferConfigEmailPreferences?>('emailPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigEmailPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionConfiguration = registerOutput<DataTransferConfigEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notificationPubsubTopic = registerOutput<String?>('notificationPubsubTopic');
    params = registerOutput<Map<String, String>>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    schedule = registerOutput<String?>('schedule');
    scheduleOptions = registerOutput<DataTransferConfigScheduleOptions?>('scheduleOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigScheduleOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleOptionsV2 = registerOutput<DataTransferConfigScheduleOptionsV2?>('scheduleOptionsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigScheduleOptionsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sensitiveParams = registerOutput<DataTransferConfigSensitiveParams?>('sensitiveParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTransferConfigSensitiveParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccountName = registerOutput<String?>('serviceAccountName');
  }
}
