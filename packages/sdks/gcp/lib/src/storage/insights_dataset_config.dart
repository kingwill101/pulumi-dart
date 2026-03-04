import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_dataset_config_args.dart';
import 'insights_dataset_config_exclude_cloud_storage_buckets.dart';
import 'insights_dataset_config_exclude_cloud_storage_locations.dart';
import 'insights_dataset_config_identity.dart';
import 'insights_dataset_config_include_cloud_storage_buckets.dart';
import 'insights_dataset_config_include_cloud_storage_locations.dart';
import 'insights_dataset_config_source_folders.dart';
import 'insights_dataset_config_source_projects.dart';
import 'insights_dataset_config_state.dart';

/// Represents a Storage Insights DatasetConfig.
///
///
/// To get more information about DatasetConfig, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/insights/reference/rest/v1/projects.locations.datasetConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/insights/datasets)
///
/// ## Example Usage
///
/// ### Storage Insights Dataset Config Includes
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const configIncludes = new gcp.storage.InsightsDatasetConfig("config_includes", {
///     location: "us-central1",
///     datasetConfigId: "my_config_includes",
///     retentionPeriodDays: 1,
///     sourceProjects: {
///         projectNumbers: [
///             "123",
///             "456",
///             "789",
///         ],
///     },
///     identity: {
///         type: "IDENTITY_TYPE_PER_CONFIG",
///     },
///     description: "Sample Description",
///     linkDataset: false,
///     includeNewlyCreatedBuckets: true,
///     includeCloudStorageLocations: {
///         locations: ["us-east1"],
///     },
///     includeCloudStorageBuckets: {
///         cloudStorageBuckets: [
///             {
///                 bucketName: "sample-bucket",
///             },
///             {
///                 bucketName: "sample-regex",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// config_includes = gcp.storage.InsightsDatasetConfig("config_includes",
///     location="us-central1",
///     dataset_config_id="my_config_includes",
///     retention_period_days=1,
///     source_projects={
///         "project_numbers": [
///             "123",
///             "456",
///             "789",
///         ],
///     },
///     identity={
///         "type": "IDENTITY_TYPE_PER_CONFIG",
///     },
///     description="Sample Description",
///     link_dataset=False,
///     include_newly_created_buckets=True,
///     include_cloud_storage_locations={
///         "locations": ["us-east1"],
///     },
///     include_cloud_storage_buckets={
///         "cloud_storage_buckets": [
///             {
///                 "bucket_name": "sample-bucket",
///             },
///             {
///                 "bucket_name": "sample-regex",
///             },
///         ],
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
///     var configIncludes = new Gcp.Storage.InsightsDatasetConfig("config_includes", new()
///     {
///         Location = "us-central1",
///         DatasetConfigId = "my_config_includes",
///         RetentionPeriodDays = 1,
///         SourceProjects = new Gcp.Storage.Inputs.InsightsDatasetConfigSourceProjectsArgs
///         {
///             ProjectNumbers = new[]
///             {
///                 "123",
///                 "456",
///                 "789",
///             },
///         },
///         Identity = new Gcp.Storage.Inputs.InsightsDatasetConfigIdentityArgs
///         {
///             Type = "IDENTITY_TYPE_PER_CONFIG",
///         },
///         Description = "Sample Description",
///         LinkDataset = false,
///         IncludeNewlyCreatedBuckets = true,
///         IncludeCloudStorageLocations = new Gcp.Storage.Inputs.InsightsDatasetConfigIncludeCloudStorageLocationsArgs
///         {
///             Locations = new[]
///             {
///                 "us-east1",
///             },
///         },
///         IncludeCloudStorageBuckets = new Gcp.Storage.Inputs.InsightsDatasetConfigIncludeCloudStorageBucketsArgs
///         {
///             CloudStorageBuckets = new[]
///             {
///                 new Gcp.Storage.Inputs.InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucketArgs
///                 {
///                     BucketName = "sample-bucket",
///                 },
///                 new Gcp.Storage.Inputs.InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucketArgs
///                 {
///                     BucketName = "sample-regex",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewInsightsDatasetConfig(ctx, "config_includes", &storage.InsightsDatasetConfigArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			DatasetConfigId:     pulumi.String("my_config_includes"),
/// 			RetentionPeriodDays: pulumi.Int(1),
/// 			SourceProjects: &storage.InsightsDatasetConfigSourceProjectsArgs{
/// 				ProjectNumbers: pulumi.StringArray{
/// 					pulumi.String("123"),
/// 					pulumi.String("456"),
/// 					pulumi.String("789"),
/// 				},
/// 			},
/// 			Identity: &storage.InsightsDatasetConfigIdentityArgs{
/// 				Type: pulumi.String("IDENTITY_TYPE_PER_CONFIG"),
/// 			},
/// 			Description:                pulumi.String("Sample Description"),
/// 			LinkDataset:                pulumi.Bool(false),
/// 			IncludeNewlyCreatedBuckets: pulumi.Bool(true),
/// 			IncludeCloudStorageLocations: &storage.InsightsDatasetConfigIncludeCloudStorageLocationsArgs{
/// 				Locations: pulumi.StringArray{
/// 					pulumi.String("us-east1"),
/// 				},
/// 			},
/// 			IncludeCloudStorageBuckets: &storage.InsightsDatasetConfigIncludeCloudStorageBucketsArgs{
/// 				CloudStorageBuckets: storage.InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucketArray{
/// 					&storage.InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucketArgs{
/// 						BucketName: pulumi.String("sample-bucket"),
/// 					},
/// 					&storage.InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucketArgs{
/// 						BucketName: pulumi.String("sample-regex"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.InsightsDatasetConfig;
/// import com.pulumi.gcp.storage.InsightsDatasetConfigArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsDatasetConfigSourceProjectsArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsDatasetConfigIdentityArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsDatasetConfigIncludeCloudStorageLocationsArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsDatasetConfigIncludeCloudStorageBucketsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var configIncludes = new InsightsDatasetConfig("configIncludes", InsightsDatasetConfigArgs.builder()
///             .location("us-central1")
///             .datasetConfigId("my_config_includes")
///             .retentionPeriodDays(1)
///             .sourceProjects(InsightsDatasetConfigSourceProjectsArgs.builder()
///                 .projectNumbers(
///                     "123",
///                     "456",
///                     "789")
///                 .build())
///             .identity(InsightsDatasetConfigIdentityArgs.builder()
///                 .type("IDENTITY_TYPE_PER_CONFIG")
///                 .build())
///             .description("Sample Description")
///             .linkDataset(false)
///             .includeNewlyCreatedBuckets(true)
///             .includeCloudStorageLocations(InsightsDatasetConfigIncludeCloudStorageLocationsArgs.builder()
///                 .locations("us-east1")
///                 .build())
///             .includeCloudStorageBuckets(InsightsDatasetConfigIncludeCloudStorageBucketsArgs.builder()
///                 .cloudStorageBuckets(
///                     InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucketArgs.builder()
///                         .bucketName("sample-bucket")
///                         .build(),
///                     InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucketArgs.builder()
///                         .bucketName("sample-regex")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   configIncludes:
///     type: gcp:storage:InsightsDatasetConfig
///     name: config_includes
///     properties:
///       location: us-central1
///       datasetConfigId: my_config_includes
///       retentionPeriodDays: 1
///       sourceProjects:
///         projectNumbers:
///           - '123'
///           - '456'
///           - '789'
///       identity:
///         type: IDENTITY_TYPE_PER_CONFIG
///       description: Sample Description
///       linkDataset: false
///       includeNewlyCreatedBuckets: true
///       includeCloudStorageLocations:
///         locations:
///           - us-east1
///       includeCloudStorageBuckets:
///         cloudStorageBuckets:
///           - bucketName: sample-bucket
///           - bucketName: sample-regex
/// ```
///
/// ### Storage Insights Dataset Config Excludes
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const configExcludes = new gcp.storage.InsightsDatasetConfig("config_excludes", {
///     location: "us-central1",
///     datasetConfigId: "my_config_excludes",
///     retentionPeriodDays: 1,
///     activityDataRetentionPeriodDays: 2,
///     organizationScope: true,
///     identity: {
///         type: "IDENTITY_TYPE_PER_PROJECT",
///     },
///     excludeCloudStorageLocations: {
///         locations: ["us-east1"],
///     },
///     excludeCloudStorageBuckets: {
///         cloudStorageBuckets: [
///             {
///                 bucketName: "sample-bucket",
///             },
///             {
///                 bucketName: "sample-regex",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// config_excludes = gcp.storage.InsightsDatasetConfig("config_excludes",
///     location="us-central1",
///     dataset_config_id="my_config_excludes",
///     retention_period_days=1,
///     activity_data_retention_period_days=2,
///     organization_scope=True,
///     identity={
///         "type": "IDENTITY_TYPE_PER_PROJECT",
///     },
///     exclude_cloud_storage_locations={
///         "locations": ["us-east1"],
///     },
///     exclude_cloud_storage_buckets={
///         "cloud_storage_buckets": [
///             {
///                 "bucket_name": "sample-bucket",
///             },
///             {
///                 "bucket_name": "sample-regex",
///             },
///         ],
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
///     var configExcludes = new Gcp.Storage.InsightsDatasetConfig("config_excludes", new()
///     {
///         Location = "us-central1",
///         DatasetConfigId = "my_config_excludes",
///         RetentionPeriodDays = 1,
///         ActivityDataRetentionPeriodDays = 2,
///         OrganizationScope = true,
///         Identity = new Gcp.Storage.Inputs.InsightsDatasetConfigIdentityArgs
///         {
///             Type = "IDENTITY_TYPE_PER_PROJECT",
///         },
///         ExcludeCloudStorageLocations = new Gcp.Storage.Inputs.InsightsDatasetConfigExcludeCloudStorageLocationsArgs
///         {
///             Locations = new[]
///             {
///                 "us-east1",
///             },
///         },
///         ExcludeCloudStorageBuckets = new Gcp.Storage.Inputs.InsightsDatasetConfigExcludeCloudStorageBucketsArgs
///         {
///             CloudStorageBuckets = new[]
///             {
///                 new Gcp.Storage.Inputs.InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucketArgs
///                 {
///                     BucketName = "sample-bucket",
///                 },
///                 new Gcp.Storage.Inputs.InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucketArgs
///                 {
///                     BucketName = "sample-regex",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewInsightsDatasetConfig(ctx, "config_excludes", &storage.InsightsDatasetConfigArgs{
/// 			Location:                        pulumi.String("us-central1"),
/// 			DatasetConfigId:                 pulumi.String("my_config_excludes"),
/// 			RetentionPeriodDays:             pulumi.Int(1),
/// 			ActivityDataRetentionPeriodDays: pulumi.Int(2),
/// 			OrganizationScope:               pulumi.Bool(true),
/// 			Identity: &storage.InsightsDatasetConfigIdentityArgs{
/// 				Type: pulumi.String("IDENTITY_TYPE_PER_PROJECT"),
/// 			},
/// 			ExcludeCloudStorageLocations: &storage.InsightsDatasetConfigExcludeCloudStorageLocationsArgs{
/// 				Locations: pulumi.StringArray{
/// 					pulumi.String("us-east1"),
/// 				},
/// 			},
/// 			ExcludeCloudStorageBuckets: &storage.InsightsDatasetConfigExcludeCloudStorageBucketsArgs{
/// 				CloudStorageBuckets: storage.InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucketArray{
/// 					&storage.InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucketArgs{
/// 						BucketName: pulumi.String("sample-bucket"),
/// 					},
/// 					&storage.InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucketArgs{
/// 						BucketName: pulumi.String("sample-regex"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.InsightsDatasetConfig;
/// import com.pulumi.gcp.storage.InsightsDatasetConfigArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsDatasetConfigIdentityArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsDatasetConfigExcludeCloudStorageLocationsArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsDatasetConfigExcludeCloudStorageBucketsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var configExcludes = new InsightsDatasetConfig("configExcludes", InsightsDatasetConfigArgs.builder()
///             .location("us-central1")
///             .datasetConfigId("my_config_excludes")
///             .retentionPeriodDays(1)
///             .activityDataRetentionPeriodDays(2)
///             .organizationScope(true)
///             .identity(InsightsDatasetConfigIdentityArgs.builder()
///                 .type("IDENTITY_TYPE_PER_PROJECT")
///                 .build())
///             .excludeCloudStorageLocations(InsightsDatasetConfigExcludeCloudStorageLocationsArgs.builder()
///                 .locations("us-east1")
///                 .build())
///             .excludeCloudStorageBuckets(InsightsDatasetConfigExcludeCloudStorageBucketsArgs.builder()
///                 .cloudStorageBuckets(
///                     InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucketArgs.builder()
///                         .bucketName("sample-bucket")
///                         .build(),
///                     InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucketArgs.builder()
///                         .bucketName("sample-regex")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   configExcludes:
///     type: gcp:storage:InsightsDatasetConfig
///     name: config_excludes
///     properties:
///       location: us-central1
///       datasetConfigId: my_config_excludes
///       retentionPeriodDays: 1
///       activityDataRetentionPeriodDays: 2
///       organizationScope: true
///       identity:
///         type: IDENTITY_TYPE_PER_PROJECT
///       excludeCloudStorageLocations:
///         locations:
///           - us-east1
///       excludeCloudStorageBuckets:
///         cloudStorageBuckets:
///           - bucketName: sample-bucket
///           - bucketName: sample-regex
/// ```
///
///
/// ## Import
///
/// DatasetConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/datasetConfigs/{{dataset_config_id}}`
///
/// * `{{project}}/{{location}}/{{dataset_config_id}}`
///
/// * `{{location}}/{{dataset_config_id}}`
///
/// When using the `pulumi import` command, DatasetConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/insightsDatasetConfig:InsightsDatasetConfig default projects/{{project}}/locations/{{location}}/datasetConfigs/{{dataset_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsDatasetConfig:InsightsDatasetConfig default {{project}}/{{location}}/{{dataset_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsDatasetConfig:InsightsDatasetConfig default {{location}}/{{dataset_config_id}}
/// ```
class InsightsDatasetConfig extends pulumi.CustomResource {
  /// Number of days of activity data that must be retained. If not specified, retentionPeriodDays will be used. Set to 0 to turn off the activity data.
  late final pulumi.Output<int> activityDataRetentionPeriodDays;

  /// The UTC time at which the DatasetConfig was created. This is auto-populated.
  late final pulumi.Output<String> createTime;

  /// The user-defined ID of the DatasetConfig
  late final pulumi.Output<String> datasetConfigId;

  /// State of the DatasetConfig.
  late final pulumi.Output<String> datasetConfigState;

  /// An optional user-provided description for the dataset configuration with a maximum length of 256 characters.
  late final pulumi.Output<String?> description;

  /// Defined the options for excluding cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigExcludeCloudStorageBuckets?>
  excludeCloudStorageBuckets;

  /// Defines the options for excluding cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigExcludeCloudStorageLocations?>
  excludeCloudStorageLocations;

  /// Identity used by DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigIdentity> identity;

  /// Defines the options for including cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigIncludeCloudStorageBuckets?>
  includeCloudStorageBuckets;

  /// Defines the options for including cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigIncludeCloudStorageLocations?>
  includeCloudStorageLocations;

  /// If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  late final pulumi.Output<bool?> includeNewlyCreatedBuckets;
  late final pulumi.Output<bool?> linkDataset;

  /// Details of the linked DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> links;

  /// The location of the DatasetConfig.
  late final pulumi.Output<String> location;

  /// The full canonical resource name of the DatasetConfig (e.g., projects/P/locations/L/datasetConfigs/ID).
  late final pulumi.Output<String> name;

  /// Organization resource ID that the source projects should belong to.
  /// Projects that do not belong to the provided organization are not considered when creating the dataset.
  late final pulumi.Output<String> organizationNumber;

  /// Defines the options for providing a source organization for the DatasetConfig.
  late final pulumi.Output<bool?> organizationScope;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Number of days of history that must be retained.
  late final pulumi.Output<int> retentionPeriodDays;

  /// Defines the options for providing source folders for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigSourceFolders?> sourceFolders;

  /// Defines the options for providing source projects for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigSourceProjects?> sourceProjects;

  /// System generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// The UTC time at which the DatasetConfig was updated. This is auto-populated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [InsightsDatasetConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InsightsDatasetConfig]. {@macro pulumi_storage_insights_dataset_config_insights_dataset_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InsightsDatasetConfig(
    String name, {
    InsightsDatasetConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:storage/insightsDatasetConfig:InsightsDatasetConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activityDataRetentionPeriodDays = registerOutput<int>(
      'activityDataRetentionPeriodDays',
    );
    createTime = registerOutput<String>('createTime');
    datasetConfigId = registerOutput<String>('datasetConfigId');
    datasetConfigState = registerOutput<String>('datasetConfigState');
    description = registerOutput<String?>('description');
    excludeCloudStorageBuckets =
        registerOutput<InsightsDatasetConfigExcludeCloudStorageBuckets?>(
          'excludeCloudStorageBuckets',
        );
    excludeCloudStorageLocations =
        registerOutput<InsightsDatasetConfigExcludeCloudStorageLocations?>(
          'excludeCloudStorageLocations',
        );
    identity = registerOutput<InsightsDatasetConfigIdentity>('identity');
    includeCloudStorageBuckets =
        registerOutput<InsightsDatasetConfigIncludeCloudStorageBuckets?>(
          'includeCloudStorageBuckets',
        );
    includeCloudStorageLocations =
        registerOutput<InsightsDatasetConfigIncludeCloudStorageLocations?>(
          'includeCloudStorageLocations',
        );
    includeNewlyCreatedBuckets = registerOutput<bool?>(
      'includeNewlyCreatedBuckets',
    );
    linkDataset = registerOutput<bool?>('linkDataset');
    links = registerOutput<List<Map<String, dynamic>>>('links');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationNumber = registerOutput<String>('organizationNumber');
    organizationScope = registerOutput<bool?>('organizationScope');
    project = registerOutput<String>('project');
    retentionPeriodDays = registerOutput<int>('retentionPeriodDays');
    sourceFolders = registerOutput<InsightsDatasetConfigSourceFolders?>(
      'sourceFolders',
    );
    sourceProjects = registerOutput<InsightsDatasetConfigSourceProjects?>(
      'sourceProjects',
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [InsightsDatasetConfig] resource's state with the given [name] and [id].
  static InsightsDatasetConfig get(
    String name,
    pulumi.Input<String> id, {
    InsightsDatasetConfigState? state,
  }) {
    return InsightsDatasetConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InsightsDatasetConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:storage/insightsDatasetConfig:InsightsDatasetConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activityDataRetentionPeriodDays = registerOutput<int>(
      'activityDataRetentionPeriodDays',
    );
    createTime = registerOutput<String>('createTime');
    datasetConfigId = registerOutput<String>('datasetConfigId');
    datasetConfigState = registerOutput<String>('datasetConfigState');
    description = registerOutput<String?>('description');
    excludeCloudStorageBuckets =
        registerOutput<InsightsDatasetConfigExcludeCloudStorageBuckets?>(
          'excludeCloudStorageBuckets',
        );
    excludeCloudStorageLocations =
        registerOutput<InsightsDatasetConfigExcludeCloudStorageLocations?>(
          'excludeCloudStorageLocations',
        );
    identity = registerOutput<InsightsDatasetConfigIdentity>('identity');
    includeCloudStorageBuckets =
        registerOutput<InsightsDatasetConfigIncludeCloudStorageBuckets?>(
          'includeCloudStorageBuckets',
        );
    includeCloudStorageLocations =
        registerOutput<InsightsDatasetConfigIncludeCloudStorageLocations?>(
          'includeCloudStorageLocations',
        );
    includeNewlyCreatedBuckets = registerOutput<bool?>(
      'includeNewlyCreatedBuckets',
    );
    linkDataset = registerOutput<bool?>('linkDataset');
    links = registerOutput<List<Map<String, dynamic>>>('links');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationNumber = registerOutput<String>('organizationNumber');
    organizationScope = registerOutput<bool?>('organizationScope');
    project = registerOutput<String>('project');
    retentionPeriodDays = registerOutput<int>('retentionPeriodDays');
    sourceFolders = registerOutput<InsightsDatasetConfigSourceFolders?>(
      'sourceFolders',
    );
    sourceProjects = registerOutput<InsightsDatasetConfigSourceProjects?>(
      'sourceProjects',
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
