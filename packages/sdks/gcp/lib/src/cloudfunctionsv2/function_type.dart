import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_args.dart';
import 'function_build_config.dart';
import 'function_event_trigger.dart';
import 'function_service_config.dart';
import 'function_state.dart';

/// A Cloud Function that contains user computation executed in response to an event.
///
///
/// To get more information about function, see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v2beta/projects.locations.functions)
///
/// ## Example Usage
///
/// ### Cloudfunctions2 Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "function-v2",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="function-v2",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
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
///     var project = "my-project-name";
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "function-v2",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("function-v2"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var project = "my-project-name";
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-v2")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: function-v2
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const account = new gcp.serviceaccount.Account("account", {
///     accountId: "gcf-sa",
///     displayName: "Test Service Account",
/// });
/// const topic = new gcp.pubsub.Topic("topic", {name: "functions2-topic"});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "gcf-function",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloPubSub",
///         environmentVariables: {
///             BUILD_CONFIG_TEST: "build_test",
///         },
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 3,
///         minInstanceCount: 1,
///         availableMemory: "4Gi",
///         timeoutSeconds: 60,
///         maxInstanceRequestConcurrency: 80,
///         availableCpu: "4",
///         environmentVariables: {
///             SERVICE_CONFIG_TEST: "config_test",
///             SERVICE_CONFIG_DIFF_TEST: account.email,
///         },
///         ingressSettings: "ALLOW_INTERNAL_ONLY",
///         allTrafficOnLatestRevision: true,
///         serviceAccountEmail: account.email,
///     },
///     eventTrigger: {
///         triggerRegion: "us-central1",
///         eventType: "google.cloud.pubsub.topic.v1.messagePublished",
///         pubsubTopic: topic.id,
///         retryPolicy: "RETRY_POLICY_RETRY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// account = gcp.serviceaccount.Account("account",
///     account_id="gcf-sa",
///     display_name="Test Service Account")
/// topic = gcp.pubsub.Topic("topic", name="functions2-topic")
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="gcf-function",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloPubSub",
///         "environment_variables": {
///             "BUILD_CONFIG_TEST": "build_test",
///         },
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 3,
///         "min_instance_count": 1,
///         "available_memory": "4Gi",
///         "timeout_seconds": 60,
///         "max_instance_request_concurrency": 80,
///         "available_cpu": "4",
///         "environment_variables": {
///             "SERVICE_CONFIG_TEST": "config_test",
///             "SERVICE_CONFIG_DIFF_TEST": account.email,
///         },
///         "ingress_settings": "ALLOW_INTERNAL_ONLY",
///         "all_traffic_on_latest_revision": True,
///         "service_account_email": account.email,
///     },
///     event_trigger={
///         "trigger_region": "us-central1",
///         "event_type": "google.cloud.pubsub.topic.v1.messagePublished",
///         "pubsub_topic": topic.id,
///         "retry_policy": "RETRY_POLICY_RETRY",
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
///     var project = "my-project-name";
///
///     var account = new Gcp.ServiceAccount.Account("account", new()
///     {
///         AccountId = "gcf-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "functions2-topic",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "gcf-function",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloPubSub",
///             EnvironmentVariables =
///             {
///                 { "BUILD_CONFIG_TEST", "build_test" },
///             },
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 3,
///             MinInstanceCount = 1,
///             AvailableMemory = "4Gi",
///             TimeoutSeconds = 60,
///             MaxInstanceRequestConcurrency = 80,
///             AvailableCpu = "4",
///             EnvironmentVariables =
///             {
///                 { "SERVICE_CONFIG_TEST", "config_test" },
///                 { "SERVICE_CONFIG_DIFF_TEST", account.Email },
///             },
///             IngressSettings = "ALLOW_INTERNAL_ONLY",
///             AllTrafficOnLatestRevision = true,
///             ServiceAccountEmail = account.Email,
///         },
///         EventTrigger = new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerArgs
///         {
///             TriggerRegion = "us-central1",
///             EventType = "google.cloud.pubsub.topic.v1.messagePublished",
///             PubsubTopic = topic.Id,
///             RetryPolicy = "RETRY_POLICY_RETRY",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		account, err := serviceaccount.NewAccount(ctx, "account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gcf-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("functions2-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("gcf-function"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloPubSub"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"BUILD_CONFIG_TEST": pulumi.String("build_test"),
/// 				},
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount:              pulumi.Int(3),
/// 				MinInstanceCount:              pulumi.Int(1),
/// 				AvailableMemory:               pulumi.String("4Gi"),
/// 				TimeoutSeconds:                pulumi.Int(60),
/// 				MaxInstanceRequestConcurrency: pulumi.Int(80),
/// 				AvailableCpu:                  pulumi.String("4"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"SERVICE_CONFIG_TEST":      pulumi.String("config_test"),
/// 					"SERVICE_CONFIG_DIFF_TEST": account.Email,
/// 				},
/// 				IngressSettings:            pulumi.String("ALLOW_INTERNAL_ONLY"),
/// 				AllTrafficOnLatestRevision: pulumi.Bool(true),
/// 				ServiceAccountEmail:        account.Email,
/// 			},
/// 			EventTrigger: &cloudfunctionsv2.FunctionEventTriggerArgs{
/// 				TriggerRegion: pulumi.String("us-central1"),
/// 				EventType:     pulumi.String("google.cloud.pubsub.topic.v1.messagePublished"),
/// 				PubsubTopic:   topic.ID(),
/// 				RetryPolicy:   pulumi.String("RETRY_POLICY_RETRY"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionEventTriggerArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var project = "my-project-name";
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("gcf-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("functions2-topic")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("gcf-function")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloPubSub")
///                 .environmentVariables(Map.of("BUILD_CONFIG_TEST", "build_test"))
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(3)
///                 .minInstanceCount(1)
///                 .availableMemory("4Gi")
///                 .timeoutSeconds(60)
///                 .maxInstanceRequestConcurrency(80)
///                 .availableCpu("4")
///                 .environmentVariables(Map.ofEntries(
///                     Map.entry("SERVICE_CONFIG_TEST", "config_test"),
///                     Map.entry("SERVICE_CONFIG_DIFF_TEST", account.email())
///                 ))
///                 .ingressSettings("ALLOW_INTERNAL_ONLY")
///                 .allTrafficOnLatestRevision(true)
///                 .serviceAccountEmail(account.email())
///                 .build())
///             .eventTrigger(FunctionEventTriggerArgs.builder()
///                 .triggerRegion("us-central1")
///                 .eventType("google.cloud.pubsub.topic.v1.messagePublished")
///                 .pubsubTopic(topic.id())
///                 .retryPolicy("RETRY_POLICY_RETRY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: gcf-sa
///       displayName: Test Service Account
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: functions2-topic
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: gcf-function
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloPubSub
///         environmentVariables:
///           BUILD_CONFIG_TEST: build_test
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 3
///         minInstanceCount: 1
///         availableMemory: 4Gi
///         timeoutSeconds: 60
///         maxInstanceRequestConcurrency: 80
///         availableCpu: '4'
///         environmentVariables:
///           SERVICE_CONFIG_TEST: config_test
///           SERVICE_CONFIG_DIFF_TEST: ${account.email}
///         ingressSettings: ALLOW_INTERNAL_ONLY
///         allTrafficOnLatestRevision: true
///         serviceAccountEmail: ${account.email}
///       eventTrigger:
///         triggerRegion: us-central1
///         eventType: google.cloud.pubsub.topic.v1.messagePublished
///         pubsubTopic: ${topic.id}
///         retryPolicy: RETRY_POLICY_RETRY
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Scheduler Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const account = new gcp.serviceaccount.Account("account", {
///     accountId: "gcf-sa",
///     displayName: "Test Service Account",
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "gcf-function",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         minInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///         serviceAccountEmail: account.email,
///     },
/// });
/// const invoker = new gcp.cloudfunctionsv2.FunctionIamMember("invoker", {
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
///     role: "roles/cloudfunctions.invoker",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// });
/// const cloudRunInvoker = new gcp.cloudrun.IamMember("cloud_run_invoker", {
///     project: _function.project,
///     location: _function.location,
///     service: _function.name,
///     role: "roles/run.invoker",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// });
/// const invokeCloudFunction = new gcp.cloudscheduler.Job("invoke_cloud_function", {
///     name: "invoke-gcf-function",
///     description: "Schedule the HTTPS trigger for cloud function",
///     schedule: "0 0 * * *",
///     project: _function.project,
///     region: _function.location,
///     httpTarget: {
///         uri: _function.serviceConfig.apply(serviceConfig => serviceConfig?.uri),
///         httpMethod: "POST",
///         oidcToken: {
///             audience: _function.serviceConfig.apply(serviceConfig => `${serviceConfig?.uri}/`),
///             serviceAccountEmail: account.email,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// account = gcp.serviceaccount.Account("account",
///     account_id="gcf-sa",
///     display_name="Test Service Account")
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="gcf-function",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "min_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///         "service_account_email": account.email,
///     })
/// invoker = gcp.cloudfunctionsv2.FunctionIamMember("invoker",
///     project=function.project,
///     location=function.location,
///     cloud_function=function.name,
///     role="roles/cloudfunctions.invoker",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"))
/// cloud_run_invoker = gcp.cloudrun.IamMember("cloud_run_invoker",
///     project=function.project,
///     location=function.location,
///     service=function.name,
///     role="roles/run.invoker",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"))
/// invoke_cloud_function = gcp.cloudscheduler.Job("invoke_cloud_function",
///     name="invoke-gcf-function",
///     description="Schedule the HTTPS trigger for cloud function",
///     schedule="0 0 * * *",
///     project=function.project,
///     region=function.location,
///     http_target={
///         "uri": function.service_config.uri,
///         "http_method": "POST",
///         "oidc_token": {
///             "audience": function.service_config.apply(lambda service_config: f"{service_config.uri}/"),
///             "service_account_email": account.email,
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
///     var project = "my-project-name";
///
///     var account = new Gcp.ServiceAccount.Account("account", new()
///     {
///         AccountId = "gcf-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "gcf-function",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MinInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///             ServiceAccountEmail = account.Email,
///         },
///     });
///
///     var invoker = new Gcp.CloudFunctionsV2.FunctionIamMember("invoker", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
///         Role = "roles/cloudfunctions.invoker",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var cloudRunInvoker = new Gcp.CloudRun.IamMember("cloud_run_invoker", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         Service = function.Name,
///         Role = "roles/run.invoker",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var invokeCloudFunction = new Gcp.CloudScheduler.Job("invoke_cloud_function", new()
///     {
///         Name = "invoke-gcf-function",
///         Description = "Schedule the HTTPS trigger for cloud function",
///         Schedule = "0 0 * * *",
///         Project = function.Project,
///         Region = function.Location,
///         HttpTarget = new Gcp.CloudScheduler.Inputs.JobHttpTargetArgs
///         {
///             Uri = function.ServiceConfig.Apply(serviceConfig => serviceConfig?.Uri),
///             HttpMethod = "POST",
///             OidcToken = new Gcp.CloudScheduler.Inputs.JobHttpTargetOidcTokenArgs
///             {
///                 Audience = function.ServiceConfig.Apply(serviceConfig => $"{serviceConfig?.Uri}/"),
///                 ServiceAccountEmail = account.Email,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudscheduler"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		account, err := serviceaccount.NewAccount(ctx, "account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gcf-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		function, err := cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("gcf-function"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MinInstanceCount:    pulumi.Int(1),
/// 				AvailableMemory:     pulumi.String("256M"),
/// 				TimeoutSeconds:      pulumi.Int(60),
/// 				ServiceAccountEmail: account.Email,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunctionIamMember(ctx, "invoker", &cloudfunctionsv2.FunctionIamMemberArgs{
/// 			Project:       function.Project,
/// 			Location:      function.Location,
/// 			CloudFunction: function.Name,
/// 			Role:          pulumi.String("roles/cloudfunctions.invoker"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrun.NewIamMember(ctx, "cloud_run_invoker", &cloudrun.IamMemberArgs{
/// 			Project:  function.Project,
/// 			Location: function.Location,
/// 			Service:  function.Name,
/// 			Role:     pulumi.String("roles/run.invoker"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudscheduler.NewJob(ctx, "invoke_cloud_function", &cloudscheduler.JobArgs{
/// 			Name:        pulumi.String("invoke-gcf-function"),
/// 			Description: pulumi.String("Schedule the HTTPS trigger for cloud function"),
/// 			Schedule:    pulumi.String("0 0 * * *"),
/// 			Project:     function.Project,
/// 			Region:      function.Location,
/// 			HttpTarget: &cloudscheduler.JobHttpTargetArgs{
/// 				Uri: function.ServiceConfig.ApplyT(func(serviceConfig cloudfunctionsv2.FunctionServiceConfig) (*string, error) {
/// 					return &serviceConfig.Uri, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				HttpMethod: pulumi.String("POST"),
/// 				OidcToken: &cloudscheduler.JobHttpTargetOidcTokenArgs{
/// 					Audience: function.ServiceConfig.ApplyT(func(serviceConfig cloudfunctionsv2.FunctionServiceConfig) (string, error) {
/// 						return fmt.Sprintf("%v/", serviceConfig.Uri), nil
/// 					}).(pulumi.StringOutput),
/// 					ServiceAccountEmail: account.Email,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMemberArgs;
/// import com.pulumi.gcp.cloudrun.IamMember;
/// import com.pulumi.gcp.cloudrun.IamMemberArgs;
/// import com.pulumi.gcp.cloudscheduler.Job;
/// import com.pulumi.gcp.cloudscheduler.JobArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetOidcTokenArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var project = "my-project-name";
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("gcf-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("gcf-function")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .minInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .serviceAccountEmail(account.email())
///                 .build())
///             .build());
///
///         var invoker = new FunctionIamMember("invoker", FunctionIamMemberArgs.builder()
///             .project(function.project())
///             .location(function.location())
///             .cloudFunction(function.name())
///             .role("roles/cloudfunctions.invoker")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var cloudRunInvoker = new IamMember("cloudRunInvoker", IamMemberArgs.builder()
///             .project(function.project())
///             .location(function.location())
///             .service(function.name())
///             .role("roles/run.invoker")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var invokeCloudFunction = new Job("invokeCloudFunction", JobArgs.builder()
///             .name("invoke-gcf-function")
///             .description("Schedule the HTTPS trigger for cloud function")
///             .schedule("0 0 * * *")
///             .project(function.project())
///             .region(function.location())
///             .httpTarget(JobHttpTargetArgs.builder()
///                 .uri(function.serviceConfig().applyValue(_serviceConfig -> _serviceConfig.uri()))
///                 .httpMethod("POST")
///                 .oidcToken(JobHttpTargetOidcTokenArgs.builder()
///                     .audience(function.serviceConfig().applyValue(_serviceConfig -> String.format("%s/", _serviceConfig.uri())))
///                     .serviceAccountEmail(account.email())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: gcf-sa
///       displayName: Test Service Account
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: gcf-function
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         minInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///         serviceAccountEmail: ${account.email}
///   invoker:
///     type: gcp:cloudfunctionsv2:FunctionIamMember
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       cloudFunction: ${function.name}
///       role: roles/cloudfunctions.invoker
///       member: serviceAccount:${account.email}
///   cloudRunInvoker:
///     type: gcp:cloudrun:IamMember
///     name: cloud_run_invoker
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       service: ${function.name}
///       role: roles/run.invoker
///       member: serviceAccount:${account.email}
///   invokeCloudFunction:
///     type: gcp:cloudscheduler:Job
///     name: invoke_cloud_function
///     properties:
///       name: invoke-gcf-function
///       description: Schedule the HTTPS trigger for cloud function
///       schedule: 0 0 * * *
///       project: ${function.project}
///       region: ${function.location}
///       httpTarget:
///         uri: ${function.serviceConfig.uri}
///         httpMethod: POST
///         oidcToken:
///           audience: ${function.serviceConfig.uri}/
///           serviceAccountEmail: ${account.email}
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Basic Gcs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const source_bucket = new gcp.storage.Bucket("source-bucket", {
///     name: "gcf-source-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: source_bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const trigger_bucket = new gcp.storage.Bucket("trigger-bucket", {
///     name: "gcf-trigger-bucket",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// // To use GCS CloudEvent triggers, the GCS service account requires the Pub/Sub Publisher(roles/pubsub.publisher) IAM role in the specified project.
/// // (See https://cloud.google.com/eventarc/docs/run/quickstart-storage#before-you-begin)
/// const gcs_pubsub_publishing = new gcp.projects.IAMMember("gcs-pubsub-publishing", {
///     project: "my-project-name",
///     role: "roles/pubsub.publisher",
///     member: gcsAccount.then(gcsAccount => `serviceAccount:${gcsAccount.emailAddress}`),
/// });
/// const account = new gcp.serviceaccount.Account("account", {
///     accountId: "gcf-sa",
///     displayName: "Test Service Account - used for both the cloud function and eventarc trigger in the test",
/// });
/// // Permissions on the service account used by the function and Eventarc trigger
/// const invoking = new gcp.projects.IAMMember("invoking", {
///     project: "my-project-name",
///     role: "roles/run.invoker",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// }, {
///     dependsOn: [gcs_pubsub_publishing],
/// });
/// const event_receiving = new gcp.projects.IAMMember("event-receiving", {
///     project: "my-project-name",
///     role: "roles/eventarc.eventReceiver",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// }, {
///     dependsOn: [invoking],
/// });
/// const artifactregistry_reader = new gcp.projects.IAMMember("artifactregistry-reader", {
///     project: "my-project-name",
///     role: "roles/artifactregistry.reader",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// }, {
///     dependsOn: [event_receiving],
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "gcf-function",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "entryPoint",
///         environmentVariables: {
///             BUILD_CONFIG_TEST: "build_test",
///         },
///         source: {
///             storageSource: {
///                 bucket: source_bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 3,
///         minInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///         environmentVariables: {
///             SERVICE_CONFIG_TEST: "config_test",
///         },
///         ingressSettings: "ALLOW_INTERNAL_ONLY",
///         allTrafficOnLatestRevision: true,
///         serviceAccountEmail: account.email,
///     },
///     eventTrigger: {
///         eventType: "google.cloud.storage.object.v1.finalized",
///         retryPolicy: "RETRY_POLICY_RETRY",
///         serviceAccountEmail: account.email,
///         eventFilters: [{
///             attribute: "bucket",
///             value: trigger_bucket.name,
///         }],
///     },
/// }, {
///     dependsOn: [
///         event_receiving,
///         artifactregistry_reader,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// source_bucket = gcp.storage.Bucket("source-bucket",
///     name="gcf-source-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=source_bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// trigger_bucket = gcp.storage.Bucket("trigger-bucket",
///     name="gcf-trigger-bucket",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// gcs_account = gcp.storage.get_project_service_account()
/// # To use GCS CloudEvent triggers, the GCS service account requires the Pub/Sub Publisher(roles/pubsub.publisher) IAM role in the specified project.
/// # (See https://cloud.google.com/eventarc/docs/run/quickstart-storage#before-you-begin)
/// gcs_pubsub_publishing = gcp.projects.IAMMember("gcs-pubsub-publishing",
///     project="my-project-name",
///     role="roles/pubsub.publisher",
///     member=f"serviceAccount:{gcs_account.email_address}")
/// account = gcp.serviceaccount.Account("account",
///     account_id="gcf-sa",
///     display_name="Test Service Account - used for both the cloud function and eventarc trigger in the test")
/// # Permissions on the service account used by the function and Eventarc trigger
/// invoking = gcp.projects.IAMMember("invoking",
///     project="my-project-name",
///     role="roles/run.invoker",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"),
///     opts = pulumi.ResourceOptions(depends_on=[gcs_pubsub_publishing]))
/// event_receiving = gcp.projects.IAMMember("event-receiving",
///     project="my-project-name",
///     role="roles/eventarc.eventReceiver",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"),
///     opts = pulumi.ResourceOptions(depends_on=[invoking]))
/// artifactregistry_reader = gcp.projects.IAMMember("artifactregistry-reader",
///     project="my-project-name",
///     role="roles/artifactregistry.reader",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"),
///     opts = pulumi.ResourceOptions(depends_on=[event_receiving]))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="gcf-function",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "entryPoint",
///         "environment_variables": {
///             "BUILD_CONFIG_TEST": "build_test",
///         },
///         "source": {
///             "storage_source": {
///                 "bucket": source_bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 3,
///         "min_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///         "environment_variables": {
///             "SERVICE_CONFIG_TEST": "config_test",
///         },
///         "ingress_settings": "ALLOW_INTERNAL_ONLY",
///         "all_traffic_on_latest_revision": True,
///         "service_account_email": account.email,
///     },
///     event_trigger={
///         "event_type": "google.cloud.storage.object.v1.finalized",
///         "retry_policy": "RETRY_POLICY_RETRY",
///         "service_account_email": account.email,
///         "event_filters": [{
///             "attribute": "bucket",
///             "value": trigger_bucket.name,
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             event_receiving,
///             artifactregistry_reader,
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
///     var source_bucket = new Gcp.Storage.Bucket("source-bucket", new()
///     {
///         Name = "gcf-source-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = source_bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var trigger_bucket = new Gcp.Storage.Bucket("trigger-bucket", new()
///     {
///         Name = "gcf-trigger-bucket",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
///     // To use GCS CloudEvent triggers, the GCS service account requires the Pub/Sub Publisher(roles/pubsub.publisher) IAM role in the specified project.
///     // (See https://cloud.google.com/eventarc/docs/run/quickstart-storage#before-you-begin)
///     var gcs_pubsub_publishing = new Gcp.Projects.IAMMember("gcs-pubsub-publishing", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/pubsub.publisher",
///         Member = $"serviceAccount:{gcsAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.EmailAddress)}",
///     });
///
///     var account = new Gcp.ServiceAccount.Account("account", new()
///     {
///         AccountId = "gcf-sa",
///         DisplayName = "Test Service Account - used for both the cloud function and eventarc trigger in the test",
///     });
///
///     // Permissions on the service account used by the function and Eventarc trigger
///     var invoking = new Gcp.Projects.IAMMember("invoking", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/run.invoker",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gcs_pubsub_publishing,
///         },
///     });
///
///     var event_receiving = new Gcp.Projects.IAMMember("event-receiving", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/eventarc.eventReceiver",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             invoking,
///         },
///     });
///
///     var artifactregistry_reader = new Gcp.Projects.IAMMember("artifactregistry-reader", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/artifactregistry.reader",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             event_receiving,
///         },
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "gcf-function",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "entryPoint",
///             EnvironmentVariables =
///             {
///                 { "BUILD_CONFIG_TEST", "build_test" },
///             },
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = source_bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 3,
///             MinInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///             EnvironmentVariables =
///             {
///                 { "SERVICE_CONFIG_TEST", "config_test" },
///             },
///             IngressSettings = "ALLOW_INTERNAL_ONLY",
///             AllTrafficOnLatestRevision = true,
///             ServiceAccountEmail = account.Email,
///         },
///         EventTrigger = new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerArgs
///         {
///             EventType = "google.cloud.storage.object.v1.finalized",
///             RetryPolicy = "RETRY_POLICY_RETRY",
///             ServiceAccountEmail = account.Email,
///             EventFilters = new[]
///             {
///                 new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerEventFilterArgs
///                 {
///                     Attribute = "bucket",
///                     Value = trigger_bucket.Name,
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             event_receiving,
///             artifactregistry_reader,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		source_bucket, err := storage.NewBucket(ctx, "source-bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("gcf-source-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: source_bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		trigger_bucket, err := storage.NewBucket(ctx, "trigger-bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("gcf-trigger-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gcsAccount, err := storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// To use GCS CloudEvent triggers, the GCS service account requires the Pub/Sub Publisher(roles/pubsub.publisher) IAM role in the specified project.
/// 		// (See https://cloud.google.com/eventarc/docs/run/quickstart-storage#before-you-begin)
/// 		gcs_pubsub_publishing, err := projects.NewIAMMember(ctx, "gcs-pubsub-publishing", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/pubsub.publisher"),
/// 			Member:  pulumi.Sprintf("serviceAccount:%v", gcsAccount.EmailAddress),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		account, err := serviceaccount.NewAccount(ctx, "account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gcf-sa"),
/// 			DisplayName: pulumi.String("Test Service Account - used for both the cloud function and eventarc trigger in the test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Permissions on the service account used by the function and Eventarc trigger
/// 		invoking, err := projects.NewIAMMember(ctx, "invoking", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/run.invoker"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gcs_pubsub_publishing,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		event_receiving, err := projects.NewIAMMember(ctx, "event-receiving", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/eventarc.eventReceiver"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			invoking,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		artifactregistry_reader, err := projects.NewIAMMember(ctx, "artifactregistry-reader", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/artifactregistry.reader"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			event_receiving,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("gcf-function"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("entryPoint"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"BUILD_CONFIG_TEST": pulumi.String("build_test"),
/// 				},
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: source_bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(3),
/// 				MinInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"SERVICE_CONFIG_TEST": pulumi.String("config_test"),
/// 				},
/// 				IngressSettings:            pulumi.String("ALLOW_INTERNAL_ONLY"),
/// 				AllTrafficOnLatestRevision: pulumi.Bool(true),
/// 				ServiceAccountEmail:        account.Email,
/// 			},
/// 			EventTrigger: &cloudfunctionsv2.FunctionEventTriggerArgs{
/// 				EventType:           pulumi.String("google.cloud.storage.object.v1.finalized"),
/// 				RetryPolicy:         pulumi.String("RETRY_POLICY_RETRY"),
/// 				ServiceAccountEmail: account.Email,
/// 				EventFilters: cloudfunctionsv2.FunctionEventTriggerEventFilterArray{
/// 					&cloudfunctionsv2.FunctionEventTriggerEventFilterArgs{
/// 						Attribute: pulumi.String("bucket"),
/// 						Value:     trigger_bucket.Name,
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			event_receiving,
/// 			artifactregistry_reader,
/// 		}))
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionEventTriggerArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var source_bucket = new Bucket("source-bucket", BucketArgs.builder()
///             .name("gcf-source-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(source_bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var trigger_bucket = new Bucket("trigger-bucket", BucketArgs.builder()
///             .name("gcf-trigger-bucket")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .build());
///
///         // To use GCS CloudEvent triggers, the GCS service account requires the Pub/Sub Publisher(roles/pubsub.publisher) IAM role in the specified project.
///         // (See https://cloud.google.com/eventarc/docs/run/quickstart-storage#before-you-begin)
///         var gcs_pubsub_publishing = new IAMMember("gcs-pubsub-publishing", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/pubsub.publisher")
///             .member(String.format("serviceAccount:%s", gcsAccount.emailAddress()))
///             .build());
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("gcf-sa")
///             .displayName("Test Service Account - used for both the cloud function and eventarc trigger in the test")
///             .build());
///
///         // Permissions on the service account used by the function and Eventarc trigger
///         var invoking = new IAMMember("invoking", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/run.invoker")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gcs_pubsub_publishing)
///                 .build());
///
///         var event_receiving = new IAMMember("event-receiving", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/eventarc.eventReceiver")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(invoking)
///                 .build());
///
///         var artifactregistry_reader = new IAMMember("artifactregistry-reader", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/artifactregistry.reader")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(event_receiving)
///                 .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("gcf-function")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("entryPoint")
///                 .environmentVariables(Map.of("BUILD_CONFIG_TEST", "build_test"))
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(source_bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(3)
///                 .minInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .environmentVariables(Map.of("SERVICE_CONFIG_TEST", "config_test"))
///                 .ingressSettings("ALLOW_INTERNAL_ONLY")
///                 .allTrafficOnLatestRevision(true)
///                 .serviceAccountEmail(account.email())
///                 .build())
///             .eventTrigger(FunctionEventTriggerArgs.builder()
///                 .eventType("google.cloud.storage.object.v1.finalized")
///                 .retryPolicy("RETRY_POLICY_RETRY")
///                 .serviceAccountEmail(account.email())
///                 .eventFilters(FunctionEventTriggerEventFilterArgs.builder()
///                     .attribute("bucket")
///                     .value(trigger_bucket.name())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     event_receiving,
///                     artifactregistry_reader)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   source-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: gcf-source-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${["source-bucket"].name}
///       source:
///         fn::FileAsset: function-source.zip
///   trigger-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: gcf-trigger-bucket
///       location: us-central1
///       uniformBucketLevelAccess: true
///   # To use GCS CloudEvent triggers, the GCS service account requires the Pub/Sub Publisher(roles/pubsub.publisher) IAM role in the specified project.
///   # (See https://cloud.google.com/eventarc/docs/run/quickstart-storage#before-you-begin)
///   gcs-pubsub-publishing:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/pubsub.publisher
///       member: serviceAccount:${gcsAccount.emailAddress}
///   account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: gcf-sa
///       displayName: Test Service Account - used for both the cloud function and eventarc trigger in the test
///   # Permissions on the service account used by the function and Eventarc trigger
///   invoking:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/run.invoker
///       member: serviceAccount:${account.email}
///     options:
///       dependsOn:
///         - ${["gcs-pubsub-publishing"]}
///   event-receiving:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/eventarc.eventReceiver
///       member: serviceAccount:${account.email}
///     options:
///       dependsOn:
///         - ${invoking}
///   artifactregistry-reader:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/artifactregistry.reader
///       member: serviceAccount:${account.email}
///     options:
///       dependsOn:
///         - ${["event-receiving"]}
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: gcf-function
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: entryPoint
///         environmentVariables:
///           BUILD_CONFIG_TEST: build_test
///         source:
///           storageSource:
///             bucket: ${["source-bucket"].name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 3
///         minInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///         environmentVariables:
///           SERVICE_CONFIG_TEST: config_test
///         ingressSettings: ALLOW_INTERNAL_ONLY
///         allTrafficOnLatestRevision: true
///         serviceAccountEmail: ${account.email}
///       eventTrigger:
///         eventType: google.cloud.storage.object.v1.finalized
///         retryPolicy: RETRY_POLICY_RETRY
///         serviceAccountEmail: ${account.email}
///         eventFilters:
///           - attribute: bucket
///             value: ${["trigger-bucket"].name}
///     options:
///       dependsOn:
///         - ${["event-receiving"]}
///         - ${["artifactregistry-reader"]}
/// variables:
///   gcsAccount:
///     fn::invoke:
///       function: gcp:storage:getProjectServiceAccount
///       arguments: {}
/// ```
///
/// ### Cloudfunctions2 Basic Auditlogs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This example follows the examples shown in this Google Cloud Community blog post
/// // https://medium.com/google-cloud/applying-a-path-pattern-when-filtering-in-eventarc-f06b937b4c34
/// // and the docs:
/// // https://cloud.google.com/eventarc/docs/path-patterns
/// const source_bucket = new gcp.storage.Bucket("source-bucket", {
///     name: "gcf-source-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: source_bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const account = new gcp.serviceaccount.Account("account", {
///     accountId: "gcf-sa",
///     displayName: "Test Service Account - used for both the cloud function and eventarc trigger in the test",
/// });
/// // Note: The right way of listening for Cloud Storage events is to use a Cloud Storage trigger.
/// // Here we use Audit Logs to monitor the bucket so path patterns can be used in the example of
/// // google_cloudfunctions2_function below (Audit Log events have path pattern support)
/// const audit_log_bucket = new gcp.storage.Bucket("audit-log-bucket", {
///     name: "gcf-auditlog-bucket",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// // Permissions on the service account used by the function and Eventarc trigger
/// const invoking = new gcp.projects.IAMMember("invoking", {
///     project: "my-project-name",
///     role: "roles/run.invoker",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// });
/// const event_receiving = new gcp.projects.IAMMember("event-receiving", {
///     project: "my-project-name",
///     role: "roles/eventarc.eventReceiver",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// }, {
///     dependsOn: [invoking],
/// });
/// const artifactregistry_reader = new gcp.projects.IAMMember("artifactregistry-reader", {
///     project: "my-project-name",
///     role: "roles/artifactregistry.reader",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// }, {
///     dependsOn: [event_receiving],
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "gcf-function",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "entryPoint",
///         environmentVariables: {
///             BUILD_CONFIG_TEST: "build_test",
///         },
///         source: {
///             storageSource: {
///                 bucket: source_bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 3,
///         minInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///         environmentVariables: {
///             SERVICE_CONFIG_TEST: "config_test",
///         },
///         ingressSettings: "ALLOW_INTERNAL_ONLY",
///         allTrafficOnLatestRevision: true,
///         serviceAccountEmail: account.email,
///     },
///     eventTrigger: {
///         triggerRegion: "us-central1",
///         eventType: "google.cloud.audit.log.v1.written",
///         retryPolicy: "RETRY_POLICY_RETRY",
///         serviceAccountEmail: account.email,
///         eventFilters: [
///             {
///                 attribute: "serviceName",
///                 value: "storage.googleapis.com",
///             },
///             {
///                 attribute: "methodName",
///                 value: "storage.objects.create",
///             },
///             {
///                 attribute: "resourceName",
///                 value: pulumi.interpolate`/projects/_/buckets/${audit_log_bucket.name}/objects/*.txt`,
///                 operator: "match-path-pattern",
///             },
///         ],
///     },
/// }, {
///     dependsOn: [
///         event_receiving,
///         artifactregistry_reader,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This example follows the examples shown in this Google Cloud Community blog post
/// # https://medium.com/google-cloud/applying-a-path-pattern-when-filtering-in-eventarc-f06b937b4c34
/// # and the docs:
/// # https://cloud.google.com/eventarc/docs/path-patterns
/// source_bucket = gcp.storage.Bucket("source-bucket",
///     name="gcf-source-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=source_bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// account = gcp.serviceaccount.Account("account",
///     account_id="gcf-sa",
///     display_name="Test Service Account - used for both the cloud function and eventarc trigger in the test")
/// # Note: The right way of listening for Cloud Storage events is to use a Cloud Storage trigger.
/// # Here we use Audit Logs to monitor the bucket so path patterns can be used in the example of
/// # google_cloudfunctions2_function below (Audit Log events have path pattern support)
/// audit_log_bucket = gcp.storage.Bucket("audit-log-bucket",
///     name="gcf-auditlog-bucket",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// # Permissions on the service account used by the function and Eventarc trigger
/// invoking = gcp.projects.IAMMember("invoking",
///     project="my-project-name",
///     role="roles/run.invoker",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"))
/// event_receiving = gcp.projects.IAMMember("event-receiving",
///     project="my-project-name",
///     role="roles/eventarc.eventReceiver",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"),
///     opts = pulumi.ResourceOptions(depends_on=[invoking]))
/// artifactregistry_reader = gcp.projects.IAMMember("artifactregistry-reader",
///     project="my-project-name",
///     role="roles/artifactregistry.reader",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"),
///     opts = pulumi.ResourceOptions(depends_on=[event_receiving]))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="gcf-function",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "entryPoint",
///         "environment_variables": {
///             "BUILD_CONFIG_TEST": "build_test",
///         },
///         "source": {
///             "storage_source": {
///                 "bucket": source_bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 3,
///         "min_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///         "environment_variables": {
///             "SERVICE_CONFIG_TEST": "config_test",
///         },
///         "ingress_settings": "ALLOW_INTERNAL_ONLY",
///         "all_traffic_on_latest_revision": True,
///         "service_account_email": account.email,
///     },
///     event_trigger={
///         "trigger_region": "us-central1",
///         "event_type": "google.cloud.audit.log.v1.written",
///         "retry_policy": "RETRY_POLICY_RETRY",
///         "service_account_email": account.email,
///         "event_filters": [
///             {
///                 "attribute": "serviceName",
///                 "value": "storage.googleapis.com",
///             },
///             {
///                 "attribute": "methodName",
///                 "value": "storage.objects.create",
///             },
///             {
///                 "attribute": "resourceName",
///                 "value": audit_log_bucket.name.apply(lambda name: f"/projects/_/buckets/{name}/objects/*.txt"),
///                 "operator": "match-path-pattern",
///             },
///         ],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             event_receiving,
///             artifactregistry_reader,
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
///     // This example follows the examples shown in this Google Cloud Community blog post
///     // https://medium.com/google-cloud/applying-a-path-pattern-when-filtering-in-eventarc-f06b937b4c34
///     // and the docs:
///     // https://cloud.google.com/eventarc/docs/path-patterns
///     var source_bucket = new Gcp.Storage.Bucket("source-bucket", new()
///     {
///         Name = "gcf-source-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = source_bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var account = new Gcp.ServiceAccount.Account("account", new()
///     {
///         AccountId = "gcf-sa",
///         DisplayName = "Test Service Account - used for both the cloud function and eventarc trigger in the test",
///     });
///
///     // Note: The right way of listening for Cloud Storage events is to use a Cloud Storage trigger.
///     // Here we use Audit Logs to monitor the bucket so path patterns can be used in the example of
///     // google_cloudfunctions2_function below (Audit Log events have path pattern support)
///     var audit_log_bucket = new Gcp.Storage.Bucket("audit-log-bucket", new()
///     {
///         Name = "gcf-auditlog-bucket",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     // Permissions on the service account used by the function and Eventarc trigger
///     var invoking = new Gcp.Projects.IAMMember("invoking", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/run.invoker",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var event_receiving = new Gcp.Projects.IAMMember("event-receiving", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/eventarc.eventReceiver",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             invoking,
///         },
///     });
///
///     var artifactregistry_reader = new Gcp.Projects.IAMMember("artifactregistry-reader", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/artifactregistry.reader",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             event_receiving,
///         },
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "gcf-function",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "entryPoint",
///             EnvironmentVariables =
///             {
///                 { "BUILD_CONFIG_TEST", "build_test" },
///             },
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = source_bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 3,
///             MinInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///             EnvironmentVariables =
///             {
///                 { "SERVICE_CONFIG_TEST", "config_test" },
///             },
///             IngressSettings = "ALLOW_INTERNAL_ONLY",
///             AllTrafficOnLatestRevision = true,
///             ServiceAccountEmail = account.Email,
///         },
///         EventTrigger = new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerArgs
///         {
///             TriggerRegion = "us-central1",
///             EventType = "google.cloud.audit.log.v1.written",
///             RetryPolicy = "RETRY_POLICY_RETRY",
///             ServiceAccountEmail = account.Email,
///             EventFilters = new[]
///             {
///                 new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerEventFilterArgs
///                 {
///                     Attribute = "serviceName",
///                     Value = "storage.googleapis.com",
///                 },
///                 new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerEventFilterArgs
///                 {
///                     Attribute = "methodName",
///                     Value = "storage.objects.create",
///                 },
///                 new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerEventFilterArgs
///                 {
///                     Attribute = "resourceName",
///                     Value = audit_log_bucket.Name.Apply(name => $"/projects/_/buckets/{name}/objects/*.txt"),
///                     Operator = "match-path-pattern",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             event_receiving,
///             artifactregistry_reader,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This example follows the examples shown in this Google Cloud Community blog post
/// 		// https://medium.com/google-cloud/applying-a-path-pattern-when-filtering-in-eventarc-f06b937b4c34
/// 		// and the docs:
/// 		// https://cloud.google.com/eventarc/docs/path-patterns
/// 		source_bucket, err := storage.NewBucket(ctx, "source-bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("gcf-source-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: source_bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		account, err := serviceaccount.NewAccount(ctx, "account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gcf-sa"),
/// 			DisplayName: pulumi.String("Test Service Account - used for both the cloud function and eventarc trigger in the test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Note: The right way of listening for Cloud Storage events is to use a Cloud Storage trigger.
/// 		// Here we use Audit Logs to monitor the bucket so path patterns can be used in the example of
/// 		// google_cloudfunctions2_function below (Audit Log events have path pattern support)
/// 		audit_log_bucket, err := storage.NewBucket(ctx, "audit-log-bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("gcf-auditlog-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Permissions on the service account used by the function and Eventarc trigger
/// 		invoking, err := projects.NewIAMMember(ctx, "invoking", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/run.invoker"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		event_receiving, err := projects.NewIAMMember(ctx, "event-receiving", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/eventarc.eventReceiver"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			invoking,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		artifactregistry_reader, err := projects.NewIAMMember(ctx, "artifactregistry-reader", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/artifactregistry.reader"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			event_receiving,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("gcf-function"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("entryPoint"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"BUILD_CONFIG_TEST": pulumi.String("build_test"),
/// 				},
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: source_bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(3),
/// 				MinInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"SERVICE_CONFIG_TEST": pulumi.String("config_test"),
/// 				},
/// 				IngressSettings:            pulumi.String("ALLOW_INTERNAL_ONLY"),
/// 				AllTrafficOnLatestRevision: pulumi.Bool(true),
/// 				ServiceAccountEmail:        account.Email,
/// 			},
/// 			EventTrigger: &cloudfunctionsv2.FunctionEventTriggerArgs{
/// 				TriggerRegion:       pulumi.String("us-central1"),
/// 				EventType:           pulumi.String("google.cloud.audit.log.v1.written"),
/// 				RetryPolicy:         pulumi.String("RETRY_POLICY_RETRY"),
/// 				ServiceAccountEmail: account.Email,
/// 				EventFilters: cloudfunctionsv2.FunctionEventTriggerEventFilterArray{
/// 					&cloudfunctionsv2.FunctionEventTriggerEventFilterArgs{
/// 						Attribute: pulumi.String("serviceName"),
/// 						Value:     pulumi.String("storage.googleapis.com"),
/// 					},
/// 					&cloudfunctionsv2.FunctionEventTriggerEventFilterArgs{
/// 						Attribute: pulumi.String("methodName"),
/// 						Value:     pulumi.String("storage.objects.create"),
/// 					},
/// 					&cloudfunctionsv2.FunctionEventTriggerEventFilterArgs{
/// 						Attribute: pulumi.String("resourceName"),
/// 						Value: audit_log_bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("/projects/_/buckets/%v/objects/*.txt", name), nil
/// 						}).(pulumi.StringOutput),
/// 						Operator: pulumi.String("match-path-pattern"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			event_receiving,
/// 			artifactregistry_reader,
/// 		}))
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionEventTriggerArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         // This example follows the examples shown in this Google Cloud Community blog post
///         // https://medium.com/google-cloud/applying-a-path-pattern-when-filtering-in-eventarc-f06b937b4c34
///         // and the docs:
///         // https://cloud.google.com/eventarc/docs/path-patterns
///         var source_bucket = new Bucket("source-bucket", BucketArgs.builder()
///             .name("gcf-source-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(source_bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("gcf-sa")
///             .displayName("Test Service Account - used for both the cloud function and eventarc trigger in the test")
///             .build());
///
///         // Note: The right way of listening for Cloud Storage events is to use a Cloud Storage trigger.
///         // Here we use Audit Logs to monitor the bucket so path patterns can be used in the example of
///         // google_cloudfunctions2_function below (Audit Log events have path pattern support)
///         var audit_log_bucket = new Bucket("audit-log-bucket", BucketArgs.builder()
///             .name("gcf-auditlog-bucket")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         // Permissions on the service account used by the function and Eventarc trigger
///         var invoking = new IAMMember("invoking", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/run.invoker")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var event_receiving = new IAMMember("event-receiving", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/eventarc.eventReceiver")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(invoking)
///                 .build());
///
///         var artifactregistry_reader = new IAMMember("artifactregistry-reader", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/artifactregistry.reader")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(event_receiving)
///                 .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("gcf-function")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("entryPoint")
///                 .environmentVariables(Map.of("BUILD_CONFIG_TEST", "build_test"))
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(source_bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(3)
///                 .minInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .environmentVariables(Map.of("SERVICE_CONFIG_TEST", "config_test"))
///                 .ingressSettings("ALLOW_INTERNAL_ONLY")
///                 .allTrafficOnLatestRevision(true)
///                 .serviceAccountEmail(account.email())
///                 .build())
///             .eventTrigger(FunctionEventTriggerArgs.builder()
///                 .triggerRegion("us-central1")
///                 .eventType("google.cloud.audit.log.v1.written")
///                 .retryPolicy("RETRY_POLICY_RETRY")
///                 .serviceAccountEmail(account.email())
///                 .eventFilters(
///                     FunctionEventTriggerEventFilterArgs.builder()
///                         .attribute("serviceName")
///                         .value("storage.googleapis.com")
///                         .build(),
///                     FunctionEventTriggerEventFilterArgs.builder()
///                         .attribute("methodName")
///                         .value("storage.objects.create")
///                         .build(),
///                     FunctionEventTriggerEventFilterArgs.builder()
///                         .attribute("resourceName")
///                         .value(audit_log_bucket.name().applyValue(_name -> String.format("/projects/_/buckets/%s/objects/*.txt", _name)))
///                         .operator("match-path-pattern")
///                         .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     event_receiving,
///                     artifactregistry_reader)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # This example follows the examples shown in this Google Cloud Community blog post
///   # https://medium.com/google-cloud/applying-a-path-pattern-when-filtering-in-eventarc-f06b937b4c34
///   # and the docs:
///   # https://cloud.google.com/eventarc/docs/path-patterns
///   source-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: gcf-source-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${["source-bucket"].name}
///       source:
///         fn::FileAsset: function-source.zip
///   account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: gcf-sa
///       displayName: Test Service Account - used for both the cloud function and eventarc trigger in the test
///   # Note: The right way of listening for Cloud Storage events is to use a Cloud Storage trigger.
///   # Here we use Audit Logs to monitor the bucket so path patterns can be used in the example of
///   # google_cloudfunctions2_function below (Audit Log events have path pattern support)
///   audit-log-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: gcf-auditlog-bucket
///       location: us-central1
///       uniformBucketLevelAccess: true
///   # Permissions on the service account used by the function and Eventarc trigger
///   invoking:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/run.invoker
///       member: serviceAccount:${account.email}
///   event-receiving:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/eventarc.eventReceiver
///       member: serviceAccount:${account.email}
///     options:
///       dependsOn:
///         - ${invoking}
///   artifactregistry-reader:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/artifactregistry.reader
///       member: serviceAccount:${account.email}
///     options:
///       dependsOn:
///         - ${["event-receiving"]}
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: gcf-function
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: entryPoint
///         environmentVariables:
///           BUILD_CONFIG_TEST: build_test
///         source:
///           storageSource:
///             bucket: ${["source-bucket"].name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 3
///         minInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///         environmentVariables:
///           SERVICE_CONFIG_TEST: config_test
///         ingressSettings: ALLOW_INTERNAL_ONLY
///         allTrafficOnLatestRevision: true
///         serviceAccountEmail: ${account.email}
///       eventTrigger:
///         triggerRegion: us-central1
///         eventType: google.cloud.audit.log.v1.written
///         retryPolicy: RETRY_POLICY_RETRY
///         serviceAccountEmail: ${account.email}
///         eventFilters:
///           - attribute: serviceName
///             value: storage.googleapis.com
///           - attribute: methodName
///             value: storage.objects.create
///           - attribute: resourceName
///             value: /projects/_/buckets/${["audit-log-bucket"].name}/objects/*.txt
///             operator: match-path-pattern
///     options:
///       dependsOn:
///         - ${["event-receiving"]}
///         - ${["artifactregistry-reader"]}
/// ```
///
/// ### Cloudfunctions2 Basic Builder
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = "my-project-name";
/// const account = new gcp.serviceaccount.Account("account", {
///     accountId: "gcf-sa",
///     displayName: "Test Service Account",
/// });
/// const logWriter = new gcp.projects.IAMMember("log_writer", {
///     project: account.project,
///     role: "roles/logging.logWriter",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// });
/// const artifactRegistryWriter = new gcp.projects.IAMMember("artifact_registry_writer", {
///     project: account.project,
///     role: "roles/artifactregistry.writer",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// });
/// const storageObjectAdmin = new gcp.projects.IAMMember("storage_object_admin", {
///     project: account.project,
///     role: "roles/storage.objectAdmin",
///     member: pulumi.interpolate`serviceAccount:${account.email}`,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// // builder permissions need to stablize before it can pull the source zip
/// const wait60s = new time.Sleep("wait_60s", {createDuration: "60s"}, {
///     dependsOn: [
///         logWriter,
///         artifactRegistryWriter,
///         storageObjectAdmin,
///     ],
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "function-v2",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///         serviceAccount: account.id,
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///     },
/// }, {
///     dependsOn: [wait60s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = "my-project-name"
/// account = gcp.serviceaccount.Account("account",
///     account_id="gcf-sa",
///     display_name="Test Service Account")
/// log_writer = gcp.projects.IAMMember("log_writer",
///     project=account.project,
///     role="roles/logging.logWriter",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"))
/// artifact_registry_writer = gcp.projects.IAMMember("artifact_registry_writer",
///     project=account.project,
///     role="roles/artifactregistry.writer",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"))
/// storage_object_admin = gcp.projects.IAMMember("storage_object_admin",
///     project=account.project,
///     role="roles/storage.objectAdmin",
///     member=account.email.apply(lambda email: f"serviceAccount:{email}"))
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// # builder permissions need to stablize before it can pull the source zip
/// wait60s = time.Sleep("wait_60s", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         log_writer,
///         artifact_registry_writer,
///         storage_object_admin,
///     ]))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="function-v2",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///         "service_account": account.id,
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait60s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = "my-project-name";
///
///     var account = new Gcp.ServiceAccount.Account("account", new()
///     {
///         AccountId = "gcf-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var logWriter = new Gcp.Projects.IAMMember("log_writer", new()
///     {
///         Project = account.Project,
///         Role = "roles/logging.logWriter",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var artifactRegistryWriter = new Gcp.Projects.IAMMember("artifact_registry_writer", new()
///     {
///         Project = account.Project,
///         Role = "roles/artifactregistry.writer",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var storageObjectAdmin = new Gcp.Projects.IAMMember("storage_object_admin", new()
///     {
///         Project = account.Project,
///         Role = "roles/storage.objectAdmin",
///         Member = account.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     // builder permissions need to stablize before it can pull the source zip
///     var wait60s = new Time.Sleep("wait_60s", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             logWriter,
///             artifactRegistryWriter,
///             storageObjectAdmin,
///         },
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "function-v2",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///             ServiceAccount = account.Id,
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60s,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		account, err := serviceaccount.NewAccount(ctx, "account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gcf-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logWriter, err := projects.NewIAMMember(ctx, "log_writer", &projects.IAMMemberArgs{
/// 			Project: account.Project,
/// 			Role:    pulumi.String("roles/logging.logWriter"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		artifactRegistryWriter, err := projects.NewIAMMember(ctx, "artifact_registry_writer", &projects.IAMMemberArgs{
/// 			Project: account.Project,
/// 			Role:    pulumi.String("roles/artifactregistry.writer"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		storageObjectAdmin, err := projects.NewIAMMember(ctx, "storage_object_admin", &projects.IAMMemberArgs{
/// 			Project: account.Project,
/// 			Role:    pulumi.String("roles/storage.objectAdmin"),
/// 			Member: account.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// builder permissions need to stablize before it can pull the source zip
/// 		wait60s, err := time.NewSleep(ctx, "wait_60s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			logWriter,
/// 			artifactRegistryWriter,
/// 			storageObjectAdmin,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("function-v2"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 				ServiceAccount: account.ID(),
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60s,
/// 		}))
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = "my-project-name";
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("gcf-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var logWriter = new IAMMember("logWriter", IAMMemberArgs.builder()
///             .project(account.project())
///             .role("roles/logging.logWriter")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var artifactRegistryWriter = new IAMMember("artifactRegistryWriter", IAMMemberArgs.builder()
///             .project(account.project())
///             .role("roles/artifactregistry.writer")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var storageObjectAdmin = new IAMMember("storageObjectAdmin", IAMMemberArgs.builder()
///             .project(account.project())
///             .role("roles/storage.objectAdmin")
///             .member(account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         // builder permissions need to stablize before it can pull the source zip
///         var wait60s = new Sleep("wait60s", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     logWriter,
///                     artifactRegistryWriter,
///                     storageObjectAdmin)
///                 .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-v2")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .serviceAccount(account.id())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: gcf-sa
///       displayName: Test Service Account
///   logWriter:
///     type: gcp:projects:IAMMember
///     name: log_writer
///     properties:
///       project: ${account.project}
///       role: roles/logging.logWriter
///       member: serviceAccount:${account.email}
///   artifactRegistryWriter:
///     type: gcp:projects:IAMMember
///     name: artifact_registry_writer
///     properties:
///       project: ${account.project}
///       role: roles/artifactregistry.writer
///       member: serviceAccount:${account.email}
///   storageObjectAdmin:
///     type: gcp:projects:IAMMember
///     name: storage_object_admin
///     properties:
///       project: ${account.project}
///       role: roles/storage.objectAdmin
///       member: serviceAccount:${account.email}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   # builder permissions need to stablize before it can pull the source zip
///   wait60s:
///     type: time:Sleep
///     name: wait_60s
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${logWriter}
///         - ${artifactRegistryWriter}
///         - ${storageObjectAdmin}
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: function-v2
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///         serviceAccount: ${account.id}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///     options:
///       dependsOn:
///         - ${wait60s}
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Secret Env
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const secretSecretVersion = new gcp.secretmanager.SecretVersion("secret", {
///     secret: secret.name,
///     secretData: "secret",
///     enabled: true,
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "function-secret",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///         secretEnvironmentVariables: [{
///             key: "TEST",
///             projectId: project,
///             secret: secret.secretId,
///             version: "latest",
///         }],
///     },
/// }, {
///     dependsOn: [secretSecretVersion],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// secret_secret_version = gcp.secretmanager.SecretVersion("secret",
///     secret=secret.name,
///     secret_data="secret",
///     enabled=True)
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="function-secret",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///         "secret_environment_variables": [{
///             "key": "TEST",
///             "project_id": project,
///             "secret": secret.secret_id,
///             "version": "latest",
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secret_secret_version]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = "my-project-name";
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var secretSecretVersion = new Gcp.SecretManager.SecretVersion("secret", new()
///     {
///         Secret = secret.Name,
///         SecretData = "secret",
///         Enabled = true,
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "function-secret",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///             SecretEnvironmentVariables = new[]
///             {
///                 new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigSecretEnvironmentVariableArgs
///                 {
///                     Key = "TEST",
///                     ProjectId = project,
///                     Secret = secret.SecretId,
///                     Version = "latest",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secretSecretVersion,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretSecretVersion, err := secretmanager.NewSecretVersion(ctx, "secret", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.Name,
/// 			SecretData: pulumi.String("secret"),
/// 			Enabled:    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("function-secret"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 				SecretEnvironmentVariables: cloudfunctionsv2.FunctionServiceConfigSecretEnvironmentVariableArray{
/// 					&cloudfunctionsv2.FunctionServiceConfigSecretEnvironmentVariableArgs{
/// 						Key:       pulumi.String("TEST"),
/// 						ProjectId: pulumi.String(project),
/// 						Secret:    secret.SecretId,
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secretSecretVersion,
/// 		}))
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = "my-project-name";
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var secretSecretVersion = new SecretVersion("secretSecretVersion", SecretVersionArgs.builder()
///             .secret(secret.name())
///             .secretData("secret")
///             .enabled(true)
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-secret")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .secretEnvironmentVariables(FunctionServiceConfigSecretEnvironmentVariableArgs.builder()
///                     .key("TEST")
///                     .projectId(project)
///                     .secret(secret.secretId())
///                     .version("latest")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secretSecretVersion)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: function-secret
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///         secretEnvironmentVariables:
///           - key: TEST
///             projectId: ${project}
///             secret: ${secret.secretId}
///             version: latest
///     options:
///       dependsOn:
///         - ${secretSecretVersion}
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   secretSecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: secret
///     properties:
///       secret: ${secret.name}
///       secretData: secret
///       enabled: true
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Secret Volume
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const secretSecretVersion = new gcp.secretmanager.SecretVersion("secret", {
///     secret: secret.name,
///     secretData: "secret",
///     enabled: true,
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "function-secret",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///         secretVolumes: [{
///             mountPath: "/etc/secrets",
///             projectId: project,
///             secret: secret.secretId,
///         }],
///     },
/// }, {
///     dependsOn: [secretSecretVersion],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// secret_secret_version = gcp.secretmanager.SecretVersion("secret",
///     secret=secret.name,
///     secret_data="secret",
///     enabled=True)
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="function-secret",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///         "secret_volumes": [{
///             "mount_path": "/etc/secrets",
///             "project_id": project,
///             "secret": secret.secret_id,
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secret_secret_version]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = "my-project-name";
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var secretSecretVersion = new Gcp.SecretManager.SecretVersion("secret", new()
///     {
///         Secret = secret.Name,
///         SecretData = "secret",
///         Enabled = true,
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "function-secret",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///             SecretVolumes = new[]
///             {
///                 new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigSecretVolumeArgs
///                 {
///                     MountPath = "/etc/secrets",
///                     ProjectId = project,
///                     Secret = secret.SecretId,
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secretSecretVersion,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretSecretVersion, err := secretmanager.NewSecretVersion(ctx, "secret", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.Name,
/// 			SecretData: pulumi.String("secret"),
/// 			Enabled:    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("function-secret"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 				SecretVolumes: cloudfunctionsv2.FunctionServiceConfigSecretVolumeArray{
/// 					&cloudfunctionsv2.FunctionServiceConfigSecretVolumeArgs{
/// 						MountPath: pulumi.String("/etc/secrets"),
/// 						ProjectId: pulumi.String(project),
/// 						Secret:    secret.SecretId,
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secretSecretVersion,
/// 		}))
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = "my-project-name";
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var secretSecretVersion = new SecretVersion("secretSecretVersion", SecretVersionArgs.builder()
///             .secret(secret.name())
///             .secretData("secret")
///             .enabled(true)
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-secret")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .secretVolumes(FunctionServiceConfigSecretVolumeArgs.builder()
///                     .mountPath("/etc/secrets")
///                     .projectId(project)
///                     .secret(secret.secretId())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secretSecretVersion)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: function-secret
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///         secretVolumes:
///           - mountPath: /etc/secrets
///             projectId: ${project}
///             secret: ${secret.secretId}
///     options:
///       dependsOn:
///         - ${secretSecretVersion}
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   secretSecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: secret
///     properties:
///       secret: ${secret.name}
///       secretData: secret
///       enabled: true
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Private Workerpool
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const pool = new gcp.cloudbuild.WorkerPool("pool", {
///     name: "workerpool",
///     location: "us-central1",
///     workerConfig: {
///         diskSizeGb: 100,
///         machineType: "e2-standard-8",
///         noExternalIp: false,
///     },
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "function-workerpool",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///         workerPool: pool.id,
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// pool = gcp.cloudbuild.WorkerPool("pool",
///     name="workerpool",
///     location="us-central1",
///     worker_config={
///         "disk_size_gb": 100,
///         "machine_type": "e2-standard-8",
///         "no_external_ip": False,
///     })
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="function-workerpool",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///         "worker_pool": pool.id,
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
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
///     var project = "my-project-name";
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var pool = new Gcp.CloudBuild.WorkerPool("pool", new()
///     {
///         Name = "workerpool",
///         Location = "us-central1",
///         WorkerConfig = new Gcp.CloudBuild.Inputs.WorkerPoolWorkerConfigArgs
///         {
///             DiskSizeGb = 100,
///             MachineType = "e2-standard-8",
///             NoExternalIp = false,
///         },
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "function-workerpool",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///             WorkerPool = pool.Id,
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pool, err := cloudbuild.NewWorkerPool(ctx, "pool", &cloudbuild.WorkerPoolArgs{
/// 			Name:     pulumi.String("workerpool"),
/// 			Location: pulumi.String("us-central1"),
/// 			WorkerConfig: &cloudbuild.WorkerPoolWorkerConfigArgs{
/// 				DiskSizeGb:   pulumi.Int(100),
/// 				MachineType:  pulumi.String("e2-standard-8"),
/// 				NoExternalIp: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("function-workerpool"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 				WorkerPool: pool.ID(),
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudbuild.WorkerPool;
/// import com.pulumi.gcp.cloudbuild.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.WorkerPoolWorkerConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var project = "my-project-name";
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var pool = new WorkerPool("pool", WorkerPoolArgs.builder()
///             .name("workerpool")
///             .location("us-central1")
///             .workerConfig(WorkerPoolWorkerConfigArgs.builder()
///                 .diskSizeGb(100)
///                 .machineType("e2-standard-8")
///                 .noExternalIp(false)
///                 .build())
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-workerpool")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .workerPool(pool.id())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   pool:
///     type: gcp:cloudbuild:WorkerPool
///     properties:
///       name: workerpool
///       location: us-central1
///       workerConfig:
///         diskSizeGb: 100
///         machineType: e2-standard-8
///         noExternalIp: false
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: function-workerpool
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///         workerPool: ${pool.id}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Cmek Docs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const projectGetProject = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const eaSa = new gcp.projects.ServiceIdentity("ea_sa", {
///     project: projectGetProject.then(projectGetProject => projectGetProject.projectId),
///     service: "eventarc.googleapis.com",
/// });
/// const unencoded_ar_repo = new gcp.artifactregistry.Repository("unencoded-ar-repo", {
///     repositoryId: "ar-repo",
///     location: "us-central1",
///     format: "DOCKER",
/// });
/// const gcfCmekKeyuser = new gcp.kms.CryptoKeyIAMBinding("gcf_cmek_keyuser", {
///     cryptoKeyId: "cmek-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members: [
///         projectGetProject.then(projectGetProject => `serviceAccount:service-${projectGetProject.number}@gcf-admin-robot.iam.gserviceaccount.com`),
///         projectGetProject.then(projectGetProject => `serviceAccount:service-${projectGetProject.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
///         projectGetProject.then(projectGetProject => `serviceAccount:service-${projectGetProject.number}@gs-project-accounts.iam.gserviceaccount.com`),
///         projectGetProject.then(projectGetProject => `serviceAccount:service-${projectGetProject.number}@serverless-robot-prod.iam.gserviceaccount.com`),
///         eaSa.member,
///     ],
/// }, {
///     dependsOn: [eaSa],
/// });
/// const encoded_ar_repo = new gcp.artifactregistry.Repository("encoded-ar-repo", {
///     location: "us-central1",
///     repositoryId: "cmek-repo",
///     format: "DOCKER",
///     kmsKeyName: "cmek-key",
/// }, {
///     dependsOn: [gcfCmekKeyuser],
/// });
/// const binding = new gcp.artifactregistry.RepositoryIamBinding("binding", {
///     location: encoded_ar_repo.location,
///     repository: encoded_ar_repo.name,
///     role: "roles/artifactregistry.admin",
///     members: [projectGetProject.then(projectGetProject => `serviceAccount:service-${projectGetProject.number}@gcf-admin-robot.iam.gserviceaccount.com`)],
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "function-cmek",
///     location: "us-central1",
///     description: "CMEK function",
///     kmsKeyName: "cmek-key",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         dockerRepository: encoded_ar_repo.id,
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///     },
/// }, {
///     dependsOn: [gcfCmekKeyuser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// project_get_project = gcp.organizations.get_project()
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// ea_sa = gcp.projects.ServiceIdentity("ea_sa",
///     project=project_get_project.project_id,
///     service="eventarc.googleapis.com")
/// unencoded_ar_repo = gcp.artifactregistry.Repository("unencoded-ar-repo",
///     repository_id="ar-repo",
///     location="us-central1",
///     format="DOCKER")
/// gcf_cmek_keyuser = gcp.kms.CryptoKeyIAMBinding("gcf_cmek_keyuser",
///     crypto_key_id="cmek-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members=[
///         f"serviceAccount:service-{project_get_project.number}@gcf-admin-robot.iam.gserviceaccount.com",
///         f"serviceAccount:service-{project_get_project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///         f"serviceAccount:service-{project_get_project.number}@gs-project-accounts.iam.gserviceaccount.com",
///         f"serviceAccount:service-{project_get_project.number}@serverless-robot-prod.iam.gserviceaccount.com",
///         ea_sa.member,
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[ea_sa]))
/// encoded_ar_repo = gcp.artifactregistry.Repository("encoded-ar-repo",
///     location="us-central1",
///     repository_id="cmek-repo",
///     format="DOCKER",
///     kms_key_name="cmek-key",
///     opts = pulumi.ResourceOptions(depends_on=[gcf_cmek_keyuser]))
/// binding = gcp.artifactregistry.RepositoryIamBinding("binding",
///     location=encoded_ar_repo.location,
///     repository=encoded_ar_repo.name,
///     role="roles/artifactregistry.admin",
///     members=[f"serviceAccount:service-{project_get_project.number}@gcf-admin-robot.iam.gserviceaccount.com"])
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="function-cmek",
///     location="us-central1",
///     description="CMEK function",
///     kms_key_name="cmek-key",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "docker_repository": encoded_ar_repo.id,
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[gcf_cmek_keyuser]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = "my-project-name";
///
///     var projectGetProject = Gcp.Organizations.GetProject.Invoke();
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var eaSa = new Gcp.Projects.ServiceIdentity("ea_sa", new()
///     {
///         Project = projectGetProject.Apply(getProjectResult => getProjectResult.ProjectId),
///         Service = "eventarc.googleapis.com",
///     });
///
///     var unencoded_ar_repo = new Gcp.ArtifactRegistry.Repository("unencoded-ar-repo", new()
///     {
///         RepositoryId = "ar-repo",
///         Location = "us-central1",
///         Format = "DOCKER",
///     });
///
///     var gcfCmekKeyuser = new Gcp.Kms.CryptoKeyIAMBinding("gcf_cmek_keyuser", new()
///     {
///         CryptoKeyId = "cmek-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Members = new[]
///         {
///             $"serviceAccount:service-{projectGetProject.Apply(getProjectResult => getProjectResult.Number)}@gcf-admin-robot.iam.gserviceaccount.com",
///             $"serviceAccount:service-{projectGetProject.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///             $"serviceAccount:service-{projectGetProject.Apply(getProjectResult => getProjectResult.Number)}@gs-project-accounts.iam.gserviceaccount.com",
///             $"serviceAccount:service-{projectGetProject.Apply(getProjectResult => getProjectResult.Number)}@serverless-robot-prod.iam.gserviceaccount.com",
///             eaSa.Member,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             eaSa,
///         },
///     });
///
///     var encoded_ar_repo = new Gcp.ArtifactRegistry.Repository("encoded-ar-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "cmek-repo",
///         Format = "DOCKER",
///         KmsKeyName = "cmek-key",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gcfCmekKeyuser,
///         },
///     });
///
///     var binding = new Gcp.ArtifactRegistry.RepositoryIamBinding("binding", new()
///     {
///         Location = encoded_ar_repo.Location,
///         Repository = encoded_ar_repo.Name,
///         Role = "roles/artifactregistry.admin",
///         Members = new[]
///         {
///             $"serviceAccount:service-{projectGetProject.Apply(getProjectResult => getProjectResult.Number)}@gcf-admin-robot.iam.gserviceaccount.com",
///         },
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "function-cmek",
///         Location = "us-central1",
///         Description = "CMEK function",
///         KmsKeyName = "cmek-key",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             DockerRepository = encoded_ar_repo.Id,
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gcfCmekKeyuser,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		projectGetProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eaSa, err := projects.NewServiceIdentity(ctx, "ea_sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.String(projectGetProject.ProjectId),
/// 			Service: pulumi.String("eventarc.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "unencoded-ar-repo", &artifactregistry.RepositoryArgs{
/// 			RepositoryId: pulumi.String("ar-repo"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gcfCmekKeyuser, err := kms.NewCryptoKeyIAMBinding(ctx, "gcf_cmek_keyuser", &kms.CryptoKeyIAMBindingArgs{
/// 			CryptoKeyId: pulumi.String("cmek-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcf-admin-robot.iam.gserviceaccount.com", projectGetProject.Number),
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", projectGetProject.Number),
/// 				pulumi.Sprintf("serviceAccount:service-%v@gs-project-accounts.iam.gserviceaccount.com", projectGetProject.Number),
/// 				pulumi.Sprintf("serviceAccount:service-%v@serverless-robot-prod.iam.gserviceaccount.com", projectGetProject.Number),
/// 				eaSa.Member,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			eaSa,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		encoded_ar_repo, err := artifactregistry.NewRepository(ctx, "encoded-ar-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("cmek-repo"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			KmsKeyName:   pulumi.String("cmek-key"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gcfCmekKeyuser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepositoryIamBinding(ctx, "binding", &artifactregistry.RepositoryIamBindingArgs{
/// 			Location:   encoded_ar_repo.Location,
/// 			Repository: encoded_ar_repo.Name,
/// 			Role:       pulumi.String("roles/artifactregistry.admin"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcf-admin-robot.iam.gserviceaccount.com", projectGetProject.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("function-cmek"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("CMEK function"),
/// 			KmsKeyName:  pulumi.String("cmek-key"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:          pulumi.String("nodejs20"),
/// 				EntryPoint:       pulumi.String("helloHttp"),
/// 				DockerRepository: encoded_ar_repo.ID(),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gcfCmekKeyuser,
/// 		}))
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBinding;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBindingArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = "my-project-name";
///
///         final var projectGetProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var eaSa = new ServiceIdentity("eaSa", ServiceIdentityArgs.builder()
///             .project(projectGetProject.projectId())
///             .service("eventarc.googleapis.com")
///             .build());
///
///         var unencoded_ar_repo = new Repository("unencoded-ar-repo", RepositoryArgs.builder()
///             .repositoryId("ar-repo")
///             .location("us-central1")
///             .format("DOCKER")
///             .build());
///
///         var gcfCmekKeyuser = new CryptoKeyIAMBinding("gcfCmekKeyuser", CryptoKeyIAMBindingArgs.builder()
///             .cryptoKeyId("cmek-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .members(
///                 String.format("serviceAccount:service-%s@gcf-admin-robot.iam.gserviceaccount.com", projectGetProject.number()),
///                 String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", projectGetProject.number()),
///                 String.format("serviceAccount:service-%s@gs-project-accounts.iam.gserviceaccount.com", projectGetProject.number()),
///                 String.format("serviceAccount:service-%s@serverless-robot-prod.iam.gserviceaccount.com", projectGetProject.number()),
///                 eaSa.member())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(eaSa)
///                 .build());
///
///         var encoded_ar_repo = new Repository("encoded-ar-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("cmek-repo")
///             .format("DOCKER")
///             .kmsKeyName("cmek-key")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gcfCmekKeyuser)
///                 .build());
///
///         var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
///             .location(encoded_ar_repo.location())
///             .repository(encoded_ar_repo.name())
///             .role("roles/artifactregistry.admin")
///             .members(String.format("serviceAccount:service-%s@gcf-admin-robot.iam.gserviceaccount.com", projectGetProject.number()))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-cmek")
///             .location("us-central1")
///             .description("CMEK function")
///             .kmsKeyName("cmek-key")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .dockerRepository(encoded_ar_repo.id())
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gcfCmekKeyuser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   eaSa:
///     type: gcp:projects:ServiceIdentity
///     name: ea_sa
///     properties:
///       project: ${projectGetProject.projectId}
///       service: eventarc.googleapis.com
///   unencoded-ar-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       repositoryId: ar-repo
///       location: us-central1
///       format: DOCKER
///   binding:
///     type: gcp:artifactregistry:RepositoryIamBinding
///     properties:
///       location: ${["encoded-ar-repo"].location}
///       repository: ${["encoded-ar-repo"].name}
///       role: roles/artifactregistry.admin
///       members:
///         - serviceAccount:service-${projectGetProject.number}@gcf-admin-robot.iam.gserviceaccount.com
///   gcfCmekKeyuser:
///     type: gcp:kms:CryptoKeyIAMBinding
///     name: gcf_cmek_keyuser
///     properties:
///       cryptoKeyId: cmek-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       members:
///         - serviceAccount:service-${projectGetProject.number}@gcf-admin-robot.iam.gserviceaccount.com
///         - serviceAccount:service-${projectGetProject.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
///         - serviceAccount:service-${projectGetProject.number}@gs-project-accounts.iam.gserviceaccount.com
///         - serviceAccount:service-${projectGetProject.number}@serverless-robot-prod.iam.gserviceaccount.com
///         - ${eaSa.member}
///     options:
///       dependsOn:
///         - ${eaSa}
///   encoded-ar-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: cmek-repo
///       format: DOCKER
///       kmsKeyName: cmek-key
///     options:
///       dependsOn:
///         - ${gcfCmekKeyuser}
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: function-cmek
///       location: us-central1
///       description: CMEK function
///       kmsKeyName: cmek-key
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         dockerRepository: ${["encoded-ar-repo"].id}
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///     options:
///       dependsOn:
///         - ${gcfCmekKeyuser}
/// variables:
///   project: my-project-name
///   projectGetProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudfunctions2 Automatic Base Image Update
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const account = new gcp.serviceaccount.Account("account", {
///     accountId: "gcf-sa",
///     displayName: "Test Service Account",
/// });
/// const topic = new gcp.pubsub.Topic("topic", {name: "functions2-topic"});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "gcf-function",
///     location: "europe-west6",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloPubSub",
///         environmentVariables: {
///             BUILD_CONFIG_TEST: "build_test",
///         },
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///         automaticUpdatePolicy: {},
///     },
///     serviceConfig: {
///         maxInstanceCount: 3,
///         minInstanceCount: 1,
///         availableMemory: "4Gi",
///         timeoutSeconds: 60,
///         maxInstanceRequestConcurrency: 80,
///         availableCpu: "4",
///         environmentVariables: {
///             SERVICE_CONFIG_TEST: "config_test",
///         },
///         ingressSettings: "ALLOW_INTERNAL_ONLY",
///         allTrafficOnLatestRevision: true,
///         serviceAccountEmail: account.email,
///     },
///     eventTrigger: {
///         triggerRegion: "us-central1",
///         eventType: "google.cloud.pubsub.topic.v1.messagePublished",
///         pubsubTopic: topic.id,
///         retryPolicy: "RETRY_POLICY_RETRY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// account = gcp.serviceaccount.Account("account",
///     account_id="gcf-sa",
///     display_name="Test Service Account")
/// topic = gcp.pubsub.Topic("topic", name="functions2-topic")
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="gcf-function",
///     location="europe-west6",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloPubSub",
///         "environment_variables": {
///             "BUILD_CONFIG_TEST": "build_test",
///         },
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///         "automatic_update_policy": {},
///     },
///     service_config={
///         "max_instance_count": 3,
///         "min_instance_count": 1,
///         "available_memory": "4Gi",
///         "timeout_seconds": 60,
///         "max_instance_request_concurrency": 80,
///         "available_cpu": "4",
///         "environment_variables": {
///             "SERVICE_CONFIG_TEST": "config_test",
///         },
///         "ingress_settings": "ALLOW_INTERNAL_ONLY",
///         "all_traffic_on_latest_revision": True,
///         "service_account_email": account.email,
///     },
///     event_trigger={
///         "trigger_region": "us-central1",
///         "event_type": "google.cloud.pubsub.topic.v1.messagePublished",
///         "pubsub_topic": topic.id,
///         "retry_policy": "RETRY_POLICY_RETRY",
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
///     var project = "my-project-name";
///
///     var account = new Gcp.ServiceAccount.Account("account", new()
///     {
///         AccountId = "gcf-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "functions2-topic",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "gcf-function",
///         Location = "europe-west6",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloPubSub",
///             EnvironmentVariables =
///             {
///                 { "BUILD_CONFIG_TEST", "build_test" },
///             },
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///             AutomaticUpdatePolicy = null,
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 3,
///             MinInstanceCount = 1,
///             AvailableMemory = "4Gi",
///             TimeoutSeconds = 60,
///             MaxInstanceRequestConcurrency = 80,
///             AvailableCpu = "4",
///             EnvironmentVariables =
///             {
///                 { "SERVICE_CONFIG_TEST", "config_test" },
///             },
///             IngressSettings = "ALLOW_INTERNAL_ONLY",
///             AllTrafficOnLatestRevision = true,
///             ServiceAccountEmail = account.Email,
///         },
///         EventTrigger = new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerArgs
///         {
///             TriggerRegion = "us-central1",
///             EventType = "google.cloud.pubsub.topic.v1.messagePublished",
///             PubsubTopic = topic.Id,
///             RetryPolicy = "RETRY_POLICY_RETRY",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		account, err := serviceaccount.NewAccount(ctx, "account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gcf-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("functions2-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("gcf-function"),
/// 			Location:    pulumi.String("europe-west6"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloPubSub"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"BUILD_CONFIG_TEST": pulumi.String("build_test"),
/// 				},
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 				AutomaticUpdatePolicy: &cloudfunctionsv2.FunctionBuildConfigAutomaticUpdatePolicyArgs{},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount:              pulumi.Int(3),
/// 				MinInstanceCount:              pulumi.Int(1),
/// 				AvailableMemory:               pulumi.String("4Gi"),
/// 				TimeoutSeconds:                pulumi.Int(60),
/// 				MaxInstanceRequestConcurrency: pulumi.Int(80),
/// 				AvailableCpu:                  pulumi.String("4"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"SERVICE_CONFIG_TEST": pulumi.String("config_test"),
/// 				},
/// 				IngressSettings:            pulumi.String("ALLOW_INTERNAL_ONLY"),
/// 				AllTrafficOnLatestRevision: pulumi.Bool(true),
/// 				ServiceAccountEmail:        account.Email,
/// 			},
/// 			EventTrigger: &cloudfunctionsv2.FunctionEventTriggerArgs{
/// 				TriggerRegion: pulumi.String("us-central1"),
/// 				EventType:     pulumi.String("google.cloud.pubsub.topic.v1.messagePublished"),
/// 				PubsubTopic:   topic.ID(),
/// 				RetryPolicy:   pulumi.String("RETRY_POLICY_RETRY"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigAutomaticUpdatePolicyArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionEventTriggerArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var project = "my-project-name";
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("gcf-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("functions2-topic")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("gcf-function")
///             .location("europe-west6")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloPubSub")
///                 .environmentVariables(Map.of("BUILD_CONFIG_TEST", "build_test"))
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .automaticUpdatePolicy(FunctionBuildConfigAutomaticUpdatePolicyArgs.builder()
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(3)
///                 .minInstanceCount(1)
///                 .availableMemory("4Gi")
///                 .timeoutSeconds(60)
///                 .maxInstanceRequestConcurrency(80)
///                 .availableCpu("4")
///                 .environmentVariables(Map.of("SERVICE_CONFIG_TEST", "config_test"))
///                 .ingressSettings("ALLOW_INTERNAL_ONLY")
///                 .allTrafficOnLatestRevision(true)
///                 .serviceAccountEmail(account.email())
///                 .build())
///             .eventTrigger(FunctionEventTriggerArgs.builder()
///                 .triggerRegion("us-central1")
///                 .eventType("google.cloud.pubsub.topic.v1.messagePublished")
///                 .pubsubTopic(topic.id())
///                 .retryPolicy("RETRY_POLICY_RETRY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: gcf-sa
///       displayName: Test Service Account
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: functions2-topic
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: gcf-function
///       location: europe-west6
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloPubSub
///         environmentVariables:
///           BUILD_CONFIG_TEST: build_test
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///         automaticUpdatePolicy: {}
///       serviceConfig:
///         maxInstanceCount: 3
///         minInstanceCount: 1
///         availableMemory: 4Gi
///         timeoutSeconds: 60
///         maxInstanceRequestConcurrency: 80
///         availableCpu: '4'
///         environmentVariables:
///           SERVICE_CONFIG_TEST: config_test
///         ingressSettings: ALLOW_INTERNAL_ONLY
///         allTrafficOnLatestRevision: true
///         serviceAccountEmail: ${account.email}
///       eventTrigger:
///         triggerRegion: us-central1
///         eventType: google.cloud.pubsub.topic.v1.messagePublished
///         pubsubTopic: ${topic.id}
///         retryPolicy: RETRY_POLICY_RETRY
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 On Deploy Base Image Update
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const account = new gcp.serviceaccount.Account("account", {
///     accountId: "gcf-sa",
///     displayName: "Test Service Account",
/// });
/// const topic = new gcp.pubsub.Topic("topic", {name: "functions2-topic"});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "gcf-function",
///     location: "europe-west6",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloPubSub",
///         environmentVariables: {
///             BUILD_CONFIG_TEST: "build_test",
///         },
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///         onDeployUpdatePolicy: {},
///     },
///     serviceConfig: {
///         maxInstanceCount: 3,
///         minInstanceCount: 1,
///         availableMemory: "4Gi",
///         timeoutSeconds: 60,
///         maxInstanceRequestConcurrency: 80,
///         availableCpu: "4",
///         environmentVariables: {
///             SERVICE_CONFIG_TEST: "config_test",
///         },
///         ingressSettings: "ALLOW_INTERNAL_ONLY",
///         allTrafficOnLatestRevision: true,
///         serviceAccountEmail: account.email,
///     },
///     eventTrigger: {
///         triggerRegion: "us-central1",
///         eventType: "google.cloud.pubsub.topic.v1.messagePublished",
///         pubsubTopic: topic.id,
///         retryPolicy: "RETRY_POLICY_RETRY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// account = gcp.serviceaccount.Account("account",
///     account_id="gcf-sa",
///     display_name="Test Service Account")
/// topic = gcp.pubsub.Topic("topic", name="functions2-topic")
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="gcf-function",
///     location="europe-west6",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloPubSub",
///         "environment_variables": {
///             "BUILD_CONFIG_TEST": "build_test",
///         },
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///         "on_deploy_update_policy": {},
///     },
///     service_config={
///         "max_instance_count": 3,
///         "min_instance_count": 1,
///         "available_memory": "4Gi",
///         "timeout_seconds": 60,
///         "max_instance_request_concurrency": 80,
///         "available_cpu": "4",
///         "environment_variables": {
///             "SERVICE_CONFIG_TEST": "config_test",
///         },
///         "ingress_settings": "ALLOW_INTERNAL_ONLY",
///         "all_traffic_on_latest_revision": True,
///         "service_account_email": account.email,
///     },
///     event_trigger={
///         "trigger_region": "us-central1",
///         "event_type": "google.cloud.pubsub.topic.v1.messagePublished",
///         "pubsub_topic": topic.id,
///         "retry_policy": "RETRY_POLICY_RETRY",
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
///     var project = "my-project-name";
///
///     var account = new Gcp.ServiceAccount.Account("account", new()
///     {
///         AccountId = "gcf-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "functions2-topic",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "gcf-function",
///         Location = "europe-west6",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloPubSub",
///             EnvironmentVariables =
///             {
///                 { "BUILD_CONFIG_TEST", "build_test" },
///             },
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///             OnDeployUpdatePolicy = null,
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 3,
///             MinInstanceCount = 1,
///             AvailableMemory = "4Gi",
///             TimeoutSeconds = 60,
///             MaxInstanceRequestConcurrency = 80,
///             AvailableCpu = "4",
///             EnvironmentVariables =
///             {
///                 { "SERVICE_CONFIG_TEST", "config_test" },
///             },
///             IngressSettings = "ALLOW_INTERNAL_ONLY",
///             AllTrafficOnLatestRevision = true,
///             ServiceAccountEmail = account.Email,
///         },
///         EventTrigger = new Gcp.CloudFunctionsV2.Inputs.FunctionEventTriggerArgs
///         {
///             TriggerRegion = "us-central1",
///             EventType = "google.cloud.pubsub.topic.v1.messagePublished",
///             PubsubTopic = topic.Id,
///             RetryPolicy = "RETRY_POLICY_RETRY",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		account, err := serviceaccount.NewAccount(ctx, "account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gcf-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("functions2-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("gcf-function"),
/// 			Location:    pulumi.String("europe-west6"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloPubSub"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"BUILD_CONFIG_TEST": pulumi.String("build_test"),
/// 				},
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 				OnDeployUpdatePolicy: &cloudfunctionsv2.FunctionBuildConfigOnDeployUpdatePolicyArgs{},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount:              pulumi.Int(3),
/// 				MinInstanceCount:              pulumi.Int(1),
/// 				AvailableMemory:               pulumi.String("4Gi"),
/// 				TimeoutSeconds:                pulumi.Int(60),
/// 				MaxInstanceRequestConcurrency: pulumi.Int(80),
/// 				AvailableCpu:                  pulumi.String("4"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"SERVICE_CONFIG_TEST": pulumi.String("config_test"),
/// 				},
/// 				IngressSettings:            pulumi.String("ALLOW_INTERNAL_ONLY"),
/// 				AllTrafficOnLatestRevision: pulumi.Bool(true),
/// 				ServiceAccountEmail:        account.Email,
/// 			},
/// 			EventTrigger: &cloudfunctionsv2.FunctionEventTriggerArgs{
/// 				TriggerRegion: pulumi.String("us-central1"),
/// 				EventType:     pulumi.String("google.cloud.pubsub.topic.v1.messagePublished"),
/// 				PubsubTopic:   topic.ID(),
/// 				RetryPolicy:   pulumi.String("RETRY_POLICY_RETRY"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigOnDeployUpdatePolicyArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionEventTriggerArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var project = "my-project-name";
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("gcf-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("functions2-topic")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("gcf-function")
///             .location("europe-west6")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloPubSub")
///                 .environmentVariables(Map.of("BUILD_CONFIG_TEST", "build_test"))
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .onDeployUpdatePolicy(FunctionBuildConfigOnDeployUpdatePolicyArgs.builder()
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(3)
///                 .minInstanceCount(1)
///                 .availableMemory("4Gi")
///                 .timeoutSeconds(60)
///                 .maxInstanceRequestConcurrency(80)
///                 .availableCpu("4")
///                 .environmentVariables(Map.of("SERVICE_CONFIG_TEST", "config_test"))
///                 .ingressSettings("ALLOW_INTERNAL_ONLY")
///                 .allTrafficOnLatestRevision(true)
///                 .serviceAccountEmail(account.email())
///                 .build())
///             .eventTrigger(FunctionEventTriggerArgs.builder()
///                 .triggerRegion("us-central1")
///                 .eventType("google.cloud.pubsub.topic.v1.messagePublished")
///                 .pubsubTopic(topic.id())
///                 .retryPolicy("RETRY_POLICY_RETRY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: gcf-sa
///       displayName: Test Service Account
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: functions2-topic
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: gcf-function
///       location: europe-west6
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloPubSub
///         environmentVariables:
///           BUILD_CONFIG_TEST: build_test
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///         onDeployUpdatePolicy: {}
///       serviceConfig:
///         maxInstanceCount: 3
///         minInstanceCount: 1
///         availableMemory: 4Gi
///         timeoutSeconds: 60
///         maxInstanceRequestConcurrency: 80
///         availableCpu: '4'
///         environmentVariables:
///           SERVICE_CONFIG_TEST: config_test
///         ingressSettings: ALLOW_INTERNAL_ONLY
///         allTrafficOnLatestRevision: true
///         serviceAccountEmail: ${account.email}
///       eventTrigger:
///         triggerRegion: us-central1
///         eventType: google.cloud.pubsub.topic.v1.messagePublished
///         pubsubTopic: ${topic.id}
///         retryPolicy: RETRY_POLICY_RETRY
/// variables:
///   project: my-project-name
/// ```
///
/// ### Cloudfunctions2 Directvpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-gcf-source`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "function-v2",
///     location: "us-central1",
///     description: "a new function",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///         directVpcNetworkInterfaces: [{
///             network: "default",
///             subnetwork: "default",
///             tags: [
///                 "tag1",
///                 "tag2",
///             ],
///         }],
///         directVpcEgress: "VPC_EGRESS_ALL_TRAFFIC",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="function-v2",
///     location="us-central1",
///     description="a new function",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///         "direct_vpc_network_interfaces": [{
///             "network": "default",
///             "subnetwork": "default",
///             "tags": [
///                 "tag1",
///                 "tag2",
///             ],
///         }],
///         "direct_vpc_egress": "VPC_EGRESS_ALL_TRAFFIC",
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
///     var project = "my-project-name";
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "function-v2",
///         Location = "us-central1",
///         Description = "a new function",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///             DirectVpcNetworkInterfaces = new[]
///             {
///                 new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigDirectVpcNetworkInterfaceArgs
///                 {
///                     Network = "default",
///                     Subnetwork = "default",
///                     Tags = new[]
///                     {
///                         "tag1",
///                         "tag2",
///                     },
///                 },
///             },
///             DirectVpcEgress = "VPC_EGRESS_ALL_TRAFFIC",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-gcf-source", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:        pulumi.String("function-v2"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("a new function"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 				DirectVpcNetworkInterfaces: cloudfunctionsv2.FunctionServiceConfigDirectVpcNetworkInterfaceArray{
/// 					&cloudfunctionsv2.FunctionServiceConfigDirectVpcNetworkInterfaceArgs{
/// 						Network:    pulumi.String("default"),
/// 						Subnetwork: pulumi.String("default"),
/// 						Tags: pulumi.StringArray{
/// 							pulumi.String("tag1"),
/// 							pulumi.String("tag2"),
/// 						},
/// 					},
/// 				},
/// 				DirectVpcEgress: pulumi.String("VPC_EGRESS_ALL_TRAFFIC"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var project = "my-project-name";
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-gcf-source", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-v2")
///             .location("us-central1")
///             .description("a new function")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .directVpcNetworkInterfaces(FunctionServiceConfigDirectVpcNetworkInterfaceArgs.builder()
///                     .network("default")
///                     .subnetwork("default")
///                     .tags(
///                         "tag1",
///                         "tag2")
///                     .build())
///                 .directVpcEgress("VPC_EGRESS_ALL_TRAFFIC")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: function-v2
///       location: us-central1
///       description: a new function
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///         directVpcNetworkInterfaces:
///           - network: default
///             subnetwork: default
///             tags:
///               - tag1
///               - tag2
///         directVpcEgress: VPC_EGRESS_ALL_TRAFFIC
/// variables:
///   project: my-project-name
/// ```
///
///
/// ## Import
///
/// function can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/functions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, function can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/function:Function default projects/{{project}}/locations/{{location}}/functions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/function:Function default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/function:Function default {{location}}/{{name}}
/// ```
class FunctionType extends pulumi.CustomResource {
  /// Describes the Build step of the function that builds a container
  /// from the given source.
  /// Structure is documented below.
  late final pulumi.Output<FunctionBuildConfig?> buildConfig;
  /// User-provided description of a function.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The environment the function is hosted on.
  late final pulumi.Output<String> environment;
  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  /// Structure is documented below.
  late final pulumi.Output<FunctionEventTrigger?> eventTrigger;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
  late final pulumi.Output<String?> kmsKeyName;
  /// A set of key/value label pairs associated with this Cloud Function.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of this cloud function.
  late final pulumi.Output<String> location;
  /// A user-defined name of the function. Function names must
  /// be unique globally and match pattern `projects/*/locations/*/functions/*`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Describes the Service being deployed.
  /// Structure is documented below.
  late final pulumi.Output<FunctionServiceConfig?> serviceConfig;
  /// Describes the current state of the function.
  late final pulumi.Output<String> state;
  /// The last update timestamp of a Cloud Function.
  late final pulumi.Output<String> updateTime;
  /// Output only. The deployed url for the function.
  late final pulumi.Output<String> url;

  /// Creates a new [FunctionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionType]. {@macro pulumi_cloudfunctionsv2_function_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionType(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctionsv2/function:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.buildConfig = registerOutput<FunctionBuildConfig?>('buildConfig');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.environment = registerOutput<String>('environment');
    this.eventTrigger = registerOutput<FunctionEventTrigger?>('eventTrigger');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceConfig = registerOutput<FunctionServiceConfig?>('serviceConfig');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.url = registerOutput<String>('url');
  }

  /// Gets an existing [FunctionType] resource's state with the given [name] and [id].
  static FunctionType get(
    String name,
    pulumi.Input<String> id, {
    FunctionState? state,
  }) {
    return FunctionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctionsv2/function:Function',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.buildConfig = registerOutput<FunctionBuildConfig?>('buildConfig');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.environment = registerOutput<String>('environment');
    this.eventTrigger = registerOutput<FunctionEventTrigger?>('eventTrigger');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceConfig = registerOutput<FunctionServiceConfig?>('serviceConfig');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.url = registerOutput<String>('url');
  }
}
