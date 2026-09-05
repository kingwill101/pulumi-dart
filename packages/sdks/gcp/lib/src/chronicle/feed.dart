import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_args.dart';
import 'feed_details.dart';
import 'feed_failure_details.dart';
import 'feed_state.dart';

/// The FeedsService is responsible for configuring and managing the ingestion of third-party security data and logs into Google Security Operations through various feed creation, updates, and lifecycle management, and schema validation.
///
///
/// To get more information about Feed, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.feeds)
/// * How-to Guides
/// * [Feed management overview](https://docs.cloud.google.com/chronicle/docs/administration/feed-management-overview)
///
///
///
/// ## Example Usage
///
/// ### Chronicle Feed Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This is a basic example for Terraform support in Chronicle feeds APIs.
/// const exampleFeed = new gcp.chronicle.Feed("example_feed", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "test-feeds",
///     details: {
///         feedSourceType: "HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB",
///         logType: "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///         httpsPushGoogleCloudPubsubSettings: {
///             splitDelimiter: "\n",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This is a basic example for Terraform support in Chronicle feeds APIs.
/// example_feed = gcp.chronicle.Feed("example_feed",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="test-feeds",
///     details={
///         "feed_source_type": "HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB",
///         "log_type": "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///         "https_push_google_cloud_pubsub_settings": {
///             "split_delimiter": "\n",
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
///     // This is a basic example for Terraform support in Chronicle feeds APIs.
///     var exampleFeed = new Gcp.Chronicle.Feed("example_feed", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "test-feeds",
///         Details = new Gcp.Chronicle.Inputs.FeedDetailsArgs
///         {
///             FeedSourceType = "HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB",
///             LogType = "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///             HttpsPushGoogleCloudPubsubSettings = new Gcp.Chronicle.Inputs.FeedDetailsHttpsPushGoogleCloudPubsubSettingsArgs
///             {
///                 SplitDelimiter = @"
/// ",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This is a basic example for Terraform support in Chronicle feeds APIs.
/// 		_, err := chronicle.NewFeed(ctx, "example_feed", &chronicle.FeedArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("test-feeds"),
/// 			Details: &chronicle.FeedDetailsArgs{
/// 				FeedSourceType: pulumi.String("HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB"),
/// 				LogType:        pulumi.String("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"),
/// 				HttpsPushGoogleCloudPubsubSettings: &chronicle.FeedDetailsHttpsPushGoogleCloudPubsubSettingsArgs{
/// 					SplitDelimiter: pulumi.String("\n"),
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
/// # This is a basic example for Terraform support in Chronicle feeds APIs.
/// resource "gcp_chronicle_feed" "example_feed" {
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "test-feeds"
///   details = {
///     feed_source_type = "HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB"
///     log_type         = "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"
///     https_push_google_cloud_pubsub_settings = {
///       split_delimiter = "\n"
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
/// import com.pulumi.gcp.chronicle.Feed;
/// import com.pulumi.gcp.chronicle.FeedArgs;
/// import com.pulumi.gcp.chronicle.inputs.FeedDetailsArgs;
/// import com.pulumi.gcp.chronicle.inputs.FeedDetailsHttpsPushGoogleCloudPubsubSettingsArgs;
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
///         // This is a basic example for Terraform support in Chronicle feeds APIs.
///         var exampleFeed = new Feed("exampleFeed", FeedArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("test-feeds")
///             .details(FeedDetailsArgs.builder()
///                 .feedSourceType("HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB")
///                 .logType("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT")
///                 .httpsPushGoogleCloudPubsubSettings(FeedDetailsHttpsPushGoogleCloudPubsubSettingsArgs.builder()
///                     .splitDelimiter("""
///
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # This is a basic example for Terraform support in Chronicle feeds APIs.
///   exampleFeed:
///     type: gcp:chronicle:Feed
///     name: example_feed
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: test-feeds
///       details:
///         feedSourceType: HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB
///         logType: projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT
///         httpsPushGoogleCloudPubsubSettings:
///           splitDelimiter: |2+
/// ```
///
/// ### Chronicle Feed Gcs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This is an example of a Chronicle feed using the pre_create hook to fetch the service account.
/// // Valid for source type: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN and GOOGLE_CLOUD_STORAGE.
/// // 0. Get the project's GCS service account (for Storage Notifications)
/// const gcsAccount = gcp.storage.getProjectServiceAccount({
///     project: "my-project-name",
/// });
/// // 1. Create the Pub/Sub Topic
/// const testTopic = new gcp.pubsub.Topic("test_topic", {
///     name: "chronicle-test-topic-my-project-name-_64336",
///     project: "my-project-name",
/// });
/// // 2. Grant GCS permission to publish to the topic
/// // This must remain so GCS can send file notifications to Pub/Sub
/// const gcsPublisher = new gcp.pubsub.TopicIAMMember("gcs_publisher", {
///     topic: testTopic.name,
///     role: "roles/pubsub.publisher",
///     member: gcsAccount.then(gcsAccount => `serviceAccount:${gcsAccount.emailAddress}`),
/// });
/// // 3. Create the Pub/Sub Subscription
/// const testSubscription = new gcp.pubsub.Subscription("test_subscription", {
///     name: "chronicle-test-sub-my-project-name-_34962",
///     project: "my-project-name",
///     topic: testTopic.name,
///     messageRetentionDuration: "1200s",
/// });
/// // 4. Define the GCS Bucket
/// const testBucket = new gcp.storage.Bucket("test_bucket", {
///     name: "chronicle-test-bucket-my-project-name-_74000",
///     project: "my-project-name",
///     location: "US",
///     forceDestroy: true,
/// });
/// // 5. Link GCS bucket to Pub/Sub Topic
/// const notification = new gcp.storage.Notification("notification", {
///     bucket: testBucket.name,
///     payloadFormat: "JSON_API_V1",
///     topic: testTopic.id,
///     eventTypes: ["OBJECT_FINALIZE"],
/// }, {
///     dependsOn: [gcsPublisher],
/// });
/// // 6. The Chronicle Feed Resource
/// // The required permissions (Storage Admin and Pub/Sub Subscriber) are assumed to be
/// // granted manually at the project level prior to running this test.
/// const exampleFeed = new gcp.chronicle.Feed("example_feed", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "test-feeds",
///     details: {
///         feedSourceType: "GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN",
///         logType: "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///         googleCloudStorageEventDrivenSettings: {
///             bucketUri: pulumi.interpolate`gs://${testBucket.name}`,
///             pubsubSubscription: pulumi.interpolate`projects/my-project-name/subscriptions/${testSubscription.name}`,
///             maxLookbackDays: 90,
///         },
///     },
/// }, {
///     dependsOn: [notification],
/// });
/// export const fetchedFeedServiceAccount = exampleFeed.feedServiceAccount;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This is an example of a Chronicle feed using the pre_create hook to fetch the service account.
/// # Valid for source type: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN and GOOGLE_CLOUD_STORAGE.
/// # 0. Get the project's GCS service account (for Storage Notifications)
/// gcs_account = gcp.storage.get_project_service_account(project="my-project-name")
/// # 1. Create the Pub/Sub Topic
/// test_topic = gcp.pubsub.Topic("test_topic",
///     name="chronicle-test-topic-my-project-name-_64336",
///     project="my-project-name")
/// # 2. Grant GCS permission to publish to the topic
/// # This must remain so GCS can send file notifications to Pub/Sub
/// gcs_publisher = gcp.pubsub.TopicIAMMember("gcs_publisher",
///     topic=test_topic.name,
///     role="roles/pubsub.publisher",
///     member=f"serviceAccount:{gcs_account.email_address}")
/// # 3. Create the Pub/Sub Subscription
/// test_subscription = gcp.pubsub.Subscription("test_subscription",
///     name="chronicle-test-sub-my-project-name-_34962",
///     project="my-project-name",
///     topic=test_topic.name,
///     message_retention_duration="1200s")
/// # 4. Define the GCS Bucket
/// test_bucket = gcp.storage.Bucket("test_bucket",
///     name="chronicle-test-bucket-my-project-name-_74000",
///     project="my-project-name",
///     location="US",
///     force_destroy=True)
/// # 5. Link GCS bucket to Pub/Sub Topic
/// notification = gcp.storage.Notification("notification",
///     bucket=test_bucket.name,
///     payload_format="JSON_API_V1",
///     topic=test_topic.id,
///     event_types=["OBJECT_FINALIZE"],
///     opts = pulumi.ResourceOptions(depends_on=[gcs_publisher]))
/// # 6. The Chronicle Feed Resource
/// # The required permissions (Storage Admin and Pub/Sub Subscriber) are assumed to be
/// # granted manually at the project level prior to running this test.
/// example_feed = gcp.chronicle.Feed("example_feed",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="test-feeds",
///     details={
///         "feed_source_type": "GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN",
///         "log_type": "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///         "google_cloud_storage_event_driven_settings": {
///             "bucket_uri": test_bucket.name.apply(lambda name: f"gs://{name}"),
///             "pubsub_subscription": test_subscription.name.apply(lambda name: f"projects/my-project-name/subscriptions/{name}"),
///             "max_lookback_days": 90,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[notification]))
/// pulumi.export("fetchedFeedServiceAccount", example_feed.feed_service_account)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // This is an example of a Chronicle feed using the pre_create hook to fetch the service account.
///     // Valid for source type: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN and GOOGLE_CLOUD_STORAGE.
///     // 0. Get the project's GCS service account (for Storage Notifications)
///     var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke(new()
///     {
///         Project = "my-project-name",
///     });
///
///     // 1. Create the Pub/Sub Topic
///     var testTopic = new Gcp.PubSub.Topic("test_topic", new()
///     {
///         Name = "chronicle-test-topic-my-project-name-_64336",
///         Project = "my-project-name",
///     });
///
///     // 2. Grant GCS permission to publish to the topic
///     // This must remain so GCS can send file notifications to Pub/Sub
///     var gcsPublisher = new Gcp.PubSub.TopicIAMMember("gcs_publisher", new()
///     {
///         Topic = testTopic.Name,
///         Role = "roles/pubsub.publisher",
///         Member = $"serviceAccount:{gcsAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.EmailAddress)}",
///     });
///
///     // 3. Create the Pub/Sub Subscription
///     var testSubscription = new Gcp.PubSub.Subscription("test_subscription", new()
///     {
///         Name = "chronicle-test-sub-my-project-name-_34962",
///         Project = "my-project-name",
///         Topic = testTopic.Name,
///         MessageRetentionDuration = "1200s",
///     });
///
///     // 4. Define the GCS Bucket
///     var testBucket = new Gcp.Storage.Bucket("test_bucket", new()
///     {
///         Name = "chronicle-test-bucket-my-project-name-_74000",
///         Project = "my-project-name",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     // 5. Link GCS bucket to Pub/Sub Topic
///     var notification = new Gcp.Storage.Notification("notification", new()
///     {
///         Bucket = testBucket.Name,
///         PayloadFormat = "JSON_API_V1",
///         Topic = testTopic.Id,
///         EventTypes = new[]
///         {
///             "OBJECT_FINALIZE",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gcsPublisher,
///         },
///     });
///
///     // 6. The Chronicle Feed Resource
///     // The required permissions (Storage Admin and Pub/Sub Subscriber) are assumed to be
///     // granted manually at the project level prior to running this test.
///     var exampleFeed = new Gcp.Chronicle.Feed("example_feed", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "test-feeds",
///         Details = new Gcp.Chronicle.Inputs.FeedDetailsArgs
///         {
///             FeedSourceType = "GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN",
///             LogType = "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///             GoogleCloudStorageEventDrivenSettings = new Gcp.Chronicle.Inputs.FeedDetailsGoogleCloudStorageEventDrivenSettingsArgs
///             {
///                 BucketUri = testBucket.Name.Apply(name => $"gs://{name}"),
///                 PubsubSubscription = testSubscription.Name.Apply(name => $"projects/my-project-name/subscriptions/{name}"),
///                 MaxLookbackDays = 90,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             notification,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fetchedFeedServiceAccount"] = exampleFeed.FeedServiceAccount,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This is an example of a Chronicle feed using the pre_create hook to fetch the service account.
/// 		// Valid for source type: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN and GOOGLE_CLOUD_STORAGE.
/// 		// 0. Get the project's GCS service account (for Storage Notifications)
/// 		gcsAccount, err := storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{
/// 			Project: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// 1. Create the Pub/Sub Topic
/// 		testTopic, err := pubsub.NewTopic(ctx, "test_topic", &pubsub.TopicArgs{
/// 			Name:    pulumi.String("chronicle-test-topic-my-project-name-_64336"),
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// 2. Grant GCS permission to publish to the topic
/// 		// This must remain so GCS can send file notifications to Pub/Sub
/// 		gcsPublisher, err := pubsub.NewTopicIAMMember(ctx, "gcs_publisher", &pubsub.TopicIAMMemberArgs{
/// 			Topic:  testTopic.Name,
/// 			Role:   pulumi.String("roles/pubsub.publisher"),
/// 			Member: pulumi.Sprintf("serviceAccount:%v", gcsAccount.EmailAddress),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// 3. Create the Pub/Sub Subscription
/// 		testSubscription, err := pubsub.NewSubscription(ctx, "test_subscription", &pubsub.SubscriptionArgs{
/// 			Name:                     pulumi.String("chronicle-test-sub-my-project-name-_34962"),
/// 			Project:                  pulumi.String("my-project-name"),
/// 			Topic:                    testTopic.Name,
/// 			MessageRetentionDuration: pulumi.String("1200s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// 4. Define the GCS Bucket
/// 		testBucket, err := storage.NewBucket(ctx, "test_bucket", &storage.BucketArgs{
/// 			Name:         pulumi.String("chronicle-test-bucket-my-project-name-_74000"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// 5. Link GCS bucket to Pub/Sub Topic
/// 		notification, err := storage.NewNotification(ctx, "notification", &storage.NotificationArgs{
/// 			Bucket:        testBucket.Name,
/// 			PayloadFormat: pulumi.String("JSON_API_V1"),
/// 			Topic:         testTopic.ID().ToIDOutput().ToStringOutput(),
/// 			EventTypes: pulumi.StringArray{
/// 				pulumi.String("OBJECT_FINALIZE"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gcsPublisher,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// 6. The Chronicle Feed Resource
/// 		// The required permissions (Storage Admin and Pub/Sub Subscriber) are assumed to be
/// 		// granted manually at the project level prior to running this test.
/// 		exampleFeed, err := chronicle.NewFeed(ctx, "example_feed", &chronicle.FeedArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("test-feeds"),
/// 			Details: &chronicle.FeedDetailsArgs{
/// 				FeedSourceType: pulumi.String("GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN"),
/// 				LogType:        pulumi.String("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"),
/// 				GoogleCloudStorageEventDrivenSettings: &chronicle.FeedDetailsGoogleCloudStorageEventDrivenSettingsArgs{
/// 					BucketUri: testBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					PubsubSubscription: testSubscription.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("projects/my-project-name/subscriptions/%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					MaxLookbackDays: pulumi.Int(90),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			notification,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("fetchedFeedServiceAccount", exampleFeed.FeedServiceAccount)
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
/// data "gcp_storage_getprojectserviceaccount" "gcsAccount" {
///   project = "my-project-name"
/// }
///
/// # 1. Create the Pub/Sub Topic
/// resource "gcp_pubsub_topic" "test_topic" {
///   name    = "chronicle-test-topic-my-project-name-_64336"
///   project = "my-project-name"
/// }
/// # 2. Grant GCS permission to publish to the topic
/// # This must remain so GCS can send file notifications to Pub/Sub
/// resource "gcp_pubsub_topiciammember" "gcs_publisher" {
///   topic  = gcp_pubsub_topic.test_topic.name
///   role   = "roles/pubsub.publisher"
///   member ="serviceAccount:${data.gcp_storage_getprojectserviceaccount.gcsAccount.email_address}"
/// }
/// # 3. Create the Pub/Sub Subscription
/// resource "gcp_pubsub_subscription" "test_subscription" {
///   name                       = "chronicle-test-sub-my-project-name-_34962"
///   project                    = "my-project-name"
///   topic                      = gcp_pubsub_topic.test_topic.name
///   message_retention_duration = "1200s"
/// }
/// # 4. Define the GCS Bucket
/// resource "gcp_storage_bucket" "test_bucket" {
///   name          = "chronicle-test-bucket-my-project-name-_74000"
///   project       = "my-project-name"
///   location      = "US"
///   force_destroy = true
/// }
/// # 5. Link GCS bucket to Pub/Sub Topic
/// resource "gcp_storage_notification" "notification" {
///   depends_on     = [gcp_pubsub_topiciammember.gcs_publisher]
///   bucket         = gcp_storage_bucket.test_bucket.name
///   payload_format = "JSON_API_V1"
///   topic          = gcp_pubsub_topic.test_topic.id
///   event_types    = ["OBJECT_FINALIZE"]
/// }
/// # 6. The Chronicle Feed Resource
/// # The required permissions (Storage Admin and Pub/Sub Subscriber) are assumed to be
/// # granted manually at the project level prior to running this test.
/// resource "gcp_chronicle_feed" "example_feed" {
///   depends_on   = [gcp_storage_notification.notification]
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "test-feeds"
///   details = {
///     feed_source_type = "GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN"
///     log_type         = "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"
///     google_cloud_storage_event_driven_settings = {
///       bucket_uri          ="gs://${gcp_storage_bucket.test_bucket.name}"
///       pubsub_subscription ="projects/my-project-name/subscriptions/${gcp_pubsub_subscription.test_subscription.name}"
///       max_lookback_days   = 90
///     }
///   }
/// }
/// # This is an example of a Chronicle feed using the pre_create hook to fetch the service account.
/// # Valid for source type: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN and GOOGLE_CLOUD_STORAGE.
/// # 0. Get the project's GCS service account (for Storage Notifications)
/// # 7. Output the dynamically fetched service account to prove the pre_create hook worked
/// output "fetchedFeedServiceAccount" {
///   value = gcp_chronicle_feed.example_feed.feed_service_account
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.Notification;
/// import com.pulumi.gcp.storage.NotificationArgs;
/// import com.pulumi.gcp.chronicle.Feed;
/// import com.pulumi.gcp.chronicle.FeedArgs;
/// import com.pulumi.gcp.chronicle.inputs.FeedDetailsArgs;
/// import com.pulumi.gcp.chronicle.inputs.FeedDetailsGoogleCloudStorageEventDrivenSettingsArgs;
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
///         // This is an example of a Chronicle feed using the pre_create hook to fetch the service account.
///         // Valid for source type: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN and GOOGLE_CLOUD_STORAGE.
///         // 0. Get the project's GCS service account (for Storage Notifications)
///         final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .project("my-project-name")
///             .build());
///
///         // 1. Create the Pub/Sub Topic
///         var testTopic = new Topic("testTopic", TopicArgs.builder()
///             .name("chronicle-test-topic-my-project-name-_64336")
///             .project("my-project-name")
///             .build());
///
///         // 2. Grant GCS permission to publish to the topic
///         // This must remain so GCS can send file notifications to Pub/Sub
///         var gcsPublisher = new TopicIAMMember("gcsPublisher", TopicIAMMemberArgs.builder()
///             .topic(testTopic.name())
///             .role("roles/pubsub.publisher")
///             .member(String.format("serviceAccount:%s", gcsAccount.emailAddress()))
///             .build());
///
///         // 3. Create the Pub/Sub Subscription
///         var testSubscription = new Subscription("testSubscription", SubscriptionArgs.builder()
///             .name("chronicle-test-sub-my-project-name-_34962")
///             .project("my-project-name")
///             .topic(testTopic.name())
///             .messageRetentionDuration("1200s")
///             .build());
///
///         // 4. Define the GCS Bucket
///         var testBucket = new Bucket("testBucket", BucketArgs.builder()
///             .name("chronicle-test-bucket-my-project-name-_74000")
///             .project("my-project-name")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         // 5. Link GCS bucket to Pub/Sub Topic
///         var notification = new Notification("notification", NotificationArgs.builder()
///             .bucket(testBucket.name())
///             .payloadFormat("JSON_API_V1")
///             .topic(testTopic.id())
///             .eventTypes("OBJECT_FINALIZE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gcsPublisher)
///                 .build());
///
///         // 6. The Chronicle Feed Resource
///         // The required permissions (Storage Admin and Pub/Sub Subscriber) are assumed to be
///         // granted manually at the project level prior to running this test.
///         var exampleFeed = new Feed("exampleFeed", FeedArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("test-feeds")
///             .details(FeedDetailsArgs.builder()
///                 .feedSourceType("GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN")
///                 .logType("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT")
///                 .googleCloudStorageEventDrivenSettings(FeedDetailsGoogleCloudStorageEventDrivenSettingsArgs.builder()
///                     .bucketUri(testBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                     .pubsubSubscription(testSubscription.name().applyValue(_name -> String.format("projects/my-project-name/subscriptions/%s", _name)))
///                     .maxLookbackDays(90)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(notification)
///                 .build());
///
///         ctx.export("fetchedFeedServiceAccount", exampleFeed.feedServiceAccount());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # 1. Create the Pub/Sub Topic
///   testTopic:
///     type: gcp:pubsub:Topic
///     name: test_topic
///     properties:
///       name: chronicle-test-topic-my-project-name-_64336
///       project: my-project-name
///   # 2. Grant GCS permission to publish to the topic
///   # This must remain so GCS can send file notifications to Pub/Sub
///   gcsPublisher:
///     type: gcp:pubsub:TopicIAMMember
///     name: gcs_publisher
///     properties:
///       topic: ${testTopic.name}
///       role: roles/pubsub.publisher
///       member: serviceAccount:${gcsAccount.emailAddress}
///   # 3. Create the Pub/Sub Subscription
///   testSubscription:
///     type: gcp:pubsub:Subscription
///     name: test_subscription
///     properties:
///       name: chronicle-test-sub-my-project-name-_34962
///       project: my-project-name
///       topic: ${testTopic.name}
///       messageRetentionDuration: 1200s
///   # 4. Define the GCS Bucket
///   testBucket:
///     type: gcp:storage:Bucket
///     name: test_bucket
///     properties:
///       name: chronicle-test-bucket-my-project-name-_74000
///       project: my-project-name
///       location: US
///       forceDestroy: true
///   # 5. Link GCS bucket to Pub/Sub Topic
///   notification:
///     type: gcp:storage:Notification
///     properties:
///       bucket: ${testBucket.name}
///       payloadFormat: JSON_API_V1
///       topic: ${testTopic.id}
///       eventTypes:
///         - OBJECT_FINALIZE
///     options:
///       dependsOn:
///         - ${gcsPublisher}
///   # 6. The Chronicle Feed Resource
///   # The required permissions (Storage Admin and Pub/Sub Subscriber) are assumed to be
///   # granted manually at the project level prior to running this test.
///   exampleFeed:
///     type: gcp:chronicle:Feed
///     name: example_feed
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: test-feeds
///       details:
///         feedSourceType: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN
///         logType: projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT
///         googleCloudStorageEventDrivenSettings:
///           bucketUri: gs://${testBucket.name}
///           pubsubSubscription: projects/my-project-name/subscriptions/${testSubscription.name}
///           maxLookbackDays: 90
///     options:
///       dependsOn:
///         - ${notification}
/// variables:
///   # This is an example of a Chronicle feed using the pre_create hook to fetch the service account.
///   # Valid for source type: GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN and GOOGLE_CLOUD_STORAGE.
///
///   # 0. Get the project's GCS service account (for Storage Notifications)
///   gcsAccount:
///     fn::invoke:
///       function: gcp:storage:getProjectServiceAccount
///       arguments:
///         project: my-project-name
/// outputs:
///   # 7. Output the dynamically fetched service account to prove the pre_create hook worked
///   fetchedFeedServiceAccount: ${exampleFeed.feedServiceAccount}
/// ```
///
/// ### Chronicle Feed Https Push
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This is an example of a Chronicle feed using the post_create hook to fetch the secret.
/// // Valid for source type: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
/// const exampleFeed = new gcp.chronicle.Feed("example_feed", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "test-feeds",
///     details: {
///         feedSourceType: "HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE",
///         logType: "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///         httpsPushAmazonKinesisFirehoseSettings: {
///             splitDelimiter: "\n",
///         },
///     },
/// });
/// export const feedSecret = exampleFeed.secret;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This is an example of a Chronicle feed using the post_create hook to fetch the secret.
/// # Valid for source type: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
/// example_feed = gcp.chronicle.Feed("example_feed",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="test-feeds",
///     details={
///         "feed_source_type": "HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE",
///         "log_type": "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///         "https_push_amazon_kinesis_firehose_settings": {
///             "split_delimiter": "\n",
///         },
///     })
/// pulumi.export("feedSecret", example_feed.secret)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // This is an example of a Chronicle feed using the post_create hook to fetch the secret.
///     // Valid for source type: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
///     var exampleFeed = new Gcp.Chronicle.Feed("example_feed", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "test-feeds",
///         Details = new Gcp.Chronicle.Inputs.FeedDetailsArgs
///         {
///             FeedSourceType = "HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE",
///             LogType = "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT",
///             HttpsPushAmazonKinesisFirehoseSettings = new Gcp.Chronicle.Inputs.FeedDetailsHttpsPushAmazonKinesisFirehoseSettingsArgs
///             {
///                 SplitDelimiter = @"
/// ",
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["feedSecret"] = exampleFeed.Secret,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This is an example of a Chronicle feed using the post_create hook to fetch the secret.
/// 		// Valid for source type: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
/// 		exampleFeed, err := chronicle.NewFeed(ctx, "example_feed", &chronicle.FeedArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("test-feeds"),
/// 			Details: &chronicle.FeedDetailsArgs{
/// 				FeedSourceType: pulumi.String("HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE"),
/// 				LogType:        pulumi.String("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"),
/// 				HttpsPushAmazonKinesisFirehoseSettings: &chronicle.FeedDetailsHttpsPushAmazonKinesisFirehoseSettingsArgs{
/// 					SplitDelimiter: pulumi.String("\n"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("feedSecret", exampleFeed.Secret)
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
/// # This is an example of a Chronicle feed using the post_create hook to fetch the secret.
/// # Valid for source type: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
/// resource "gcp_chronicle_feed" "example_feed" {
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "test-feeds"
///   details = {
///     feed_source_type = "HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE"
///     log_type         = "projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT"
///     https_push_amazon_kinesis_firehose_settings = {
///       split_delimiter = "\n"
///     }
///   }
/// }
/// output "feedSecret" {
///   value = gcp_chronicle_feed.example_feed.secret
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.Feed;
/// import com.pulumi.gcp.chronicle.FeedArgs;
/// import com.pulumi.gcp.chronicle.inputs.FeedDetailsArgs;
/// import com.pulumi.gcp.chronicle.inputs.FeedDetailsHttpsPushAmazonKinesisFirehoseSettingsArgs;
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
///         // This is an example of a Chronicle feed using the post_create hook to fetch the secret.
///         // Valid for source type: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
///         var exampleFeed = new Feed("exampleFeed", FeedArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("test-feeds")
///             .details(FeedDetailsArgs.builder()
///                 .feedSourceType("HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE")
///                 .logType("projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT")
///                 .httpsPushAmazonKinesisFirehoseSettings(FeedDetailsHttpsPushAmazonKinesisFirehoseSettingsArgs.builder()
///                     .splitDelimiter("""
///
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///         ctx.export("feedSecret", exampleFeed.secret());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # This is an example of a Chronicle feed using the post_create hook to fetch the secret.
///   # Valid for source type: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
///   exampleFeed:
///     type: gcp:chronicle:Feed
///     name: example_feed
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: test-feeds
///       details:
///         feedSourceType: HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE
///         logType: projects/my-project-name/locations/us/instances/00000000-0000-0000-0000-000000000000/logTypes/GCP_CLOUDAUDIT
///         httpsPushAmazonKinesisFirehoseSettings:
///           splitDelimiter: |2+
/// outputs:
///   feedSecret: ${exampleFeed.secret}
/// ```
///
///
/// ## Import
///
/// Feed can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/feeds/{{feed}}`
/// * `{{project}}/{{location}}/{{instance}}/{{feed}}`
/// * `{{location}}/{{instance}}/{{feed}}`
///
///
/// When using the `pulumi import` command, Feed can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/feed:Feed default projects/{{project}}/locations/{{location}}/instances/{{instance}}/feeds/{{feed}}
/// $ pulumi import gcp:chronicle/feed:Feed default {{project}}/{{location}}/{{instance}}/{{feed}}
/// $ pulumi import gcp:chronicle/feed:Feed default {{location}}/{{instance}}/{{feed}}
/// ```
class Feed extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Additional details of the feed, these details are dynamic and will be
  /// different for each of the feeds.
  /// Structure is documented below.
  late final pulumi.Output<FeedDetails?> details;
  /// Customer-provided feed name.
  late final pulumi.Output<String?> displayName;
  /// Whether the feed is enabled.
  late final pulumi.Output<bool?> enabled;
  /// FeedFailureDetails contains details about the errors thrown by chronicle for
  /// the feeds. These are user visible details. These details help user identify
  /// the root cause and take appropriate action for the feed errors.
  /// NEXT TAG: 5
  /// Structure is documented below.
  late final pulumi.Output<FeedFailureDetails?> failureDetails;
  /// Details about the most recent failure when feed state is FAILED.
  late final pulumi.Output<String> failureMsg;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> feed;
  /// Output only. The service account used by Chronicle to ingest data from Cloud Storage. This is only available when the feed source type is GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN or GOOGLE_CLOUD_STORAGE.
  late final pulumi.Output<String> feedServiceAccount;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Latest timestamp when the transfer was successful for the feed.
  late final pulumi.Output<String> lastFeedInitiationTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The resource name of the feed.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/feeds/{feed}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Whether this feed can be updated or deleted.
  late final pulumi.Output<bool> readOnly;
  /// Reference ID, this field will contain the legacy id of the feed.
  late final pulumi.Output<String> referenceId;
  /// Output only. The secret generated for the feed. This is only available when the feed source type is HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
  late final pulumi.Output<String> secret;
  /// The state of the feed (e.g., ACTIVE, INACTIVE).
  late final pulumi.Output<String> state;
  /// Unique identifier for the feed.
  late final pulumi.Output<String> uid;

  /// Creates a new [Feed].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Feed]. {@macro pulumi_chronicle_feed_feed_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Feed(
    String name, {
    FeedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/feed:Feed',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<FeedDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeedDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    failureDetails = registerOutput<FeedFailureDetails?>('failureDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeedFailureDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureMsg = registerOutput<String>('failureMsg');
    feed = registerOutput<String>('feed');
    feedServiceAccount = registerOutput<String>('feedServiceAccount');
    instance = registerOutput<String>('instance');
    lastFeedInitiationTime = registerOutput<String>('lastFeedInitiationTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    readOnly = registerOutput<bool>('readOnly');
    referenceId = registerOutput<String>('referenceId');
    secret = registerOutput<String>('secret', isSecret: true);
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [Feed] resource's state with the given [name] and [id].
  static Feed get(
    String name,
    pulumi.Input<String> id, {
    FeedState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Feed._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Feed._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/feed:Feed',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<FeedDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeedDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    failureDetails = registerOutput<FeedFailureDetails?>('failureDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeedFailureDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureMsg = registerOutput<String>('failureMsg');
    feed = registerOutput<String>('feed');
    feedServiceAccount = registerOutput<String>('feedServiceAccount');
    instance = registerOutput<String>('instance');
    lastFeedInitiationTime = registerOutput<String>('lastFeedInitiationTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    readOnly = registerOutput<bool>('readOnly');
    referenceId = registerOutput<String>('referenceId');
    secret = registerOutput<String>('secret', isSecret: true);
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [Feed] resource.
  Feed.reference(String urn)
    : super(
        'gcp:chronicle/feed:Feed',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<FeedDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeedDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    failureDetails = registerOutput<FeedFailureDetails?>('failureDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeedFailureDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureMsg = registerOutput<String>('failureMsg');
    feed = registerOutput<String>('feed');
    feedServiceAccount = registerOutput<String>('feedServiceAccount');
    instance = registerOutput<String>('instance');
    lastFeedInitiationTime = registerOutput<String>('lastFeedInitiationTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    readOnly = registerOutput<bool>('readOnly');
    referenceId = registerOutput<String>('referenceId');
    secret = registerOutput<String>('secret', isSecret: true);
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
  }
}
