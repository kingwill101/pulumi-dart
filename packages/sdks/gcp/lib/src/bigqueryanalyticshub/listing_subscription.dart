import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_args.dart';
import 'listing_subscription_commercial_info.dart';
import 'listing_subscription_destination_dataset.dart';
import 'listing_subscription_linked_dataset_map.dart';
import 'listing_subscription_linked_resource.dart';
import 'listing_subscription_state.dart';

/// A Bigquery Analytics Hub listing subscription
///
///
/// To get more information about ListingSubscription, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.subscriptions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)
///
/// &gt; **Note:** When importing the resource with `pulumi import`, provide the destination project and location
/// in the format projects/{{destination_project}}/locations/{{destination_location}}/subscriptions/{{subscription_id}}
/// ## Example Usage
///
/// ### Bigquery Analyticshub Listing Subscription Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subscription = new gcp.bigqueryanalyticshub.DataExchange("subscription", {
///     location: "US",
///     dataExchangeId: "my_data_exchange",
///     displayName: "my_data_exchange",
///     description: "Test Description",
/// });
/// const subscriptionDataset = new gcp.bigquery.Dataset("subscription", {
///     datasetId: "my_listing",
///     friendlyName: "my_listing",
///     description: "Test Description",
///     location: "US",
/// });
/// const subscriptionListing = new gcp.bigqueryanalyticshub.Listing("subscription", {
///     location: "US",
///     dataExchangeId: subscription.dataExchangeId,
///     listingId: "my_listing",
///     displayName: "my_listing",
///     description: "Test Description",
///     bigqueryDataset: {
///         dataset: subscriptionDataset.id,
///     },
/// });
/// const subscriptionListingSubscription = new gcp.bigqueryanalyticshub.ListingSubscription("subscription", {
///     location: "US",
///     dataExchangeId: subscription.dataExchangeId,
///     listingId: subscriptionListing.listingId,
///     destinationDataset: {
///         description: "A test subscription",
///         friendlyName: "👋",
///         labels: {
///             testing: "123",
///         },
///         location: "US",
///         datasetReference: {
///             datasetId: "destination_dataset",
///             projectId: subscriptionDataset.project,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// subscription = gcp.bigqueryanalyticshub.DataExchange("subscription",
///     location="US",
///     data_exchange_id="my_data_exchange",
///     display_name="my_data_exchange",
///     description="Test Description")
/// subscription_dataset = gcp.bigquery.Dataset("subscription",
///     dataset_id="my_listing",
///     friendly_name="my_listing",
///     description="Test Description",
///     location="US")
/// subscription_listing = gcp.bigqueryanalyticshub.Listing("subscription",
///     location="US",
///     data_exchange_id=subscription.data_exchange_id,
///     listing_id="my_listing",
///     display_name="my_listing",
///     description="Test Description",
///     bigquery_dataset={
///         "dataset": subscription_dataset.id,
///     })
/// subscription_listing_subscription = gcp.bigqueryanalyticshub.ListingSubscription("subscription",
///     location="US",
///     data_exchange_id=subscription.data_exchange_id,
///     listing_id=subscription_listing.listing_id,
///     destination_dataset={
///         "description": "A test subscription",
///         "friendly_name": "👋",
///         "labels": {
///             "testing": "123",
///         },
///         "location": "US",
///         "dataset_reference": {
///             "dataset_id": "destination_dataset",
///             "project_id": subscription_dataset.project,
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
///     var subscription = new Gcp.BigQueryAnalyticsHub.DataExchange("subscription", new()
///     {
///         Location = "US",
///         DataExchangeId = "my_data_exchange",
///         DisplayName = "my_data_exchange",
///         Description = "Test Description",
///     });
///
///     var subscriptionDataset = new Gcp.BigQuery.Dataset("subscription", new()
///     {
///         DatasetId = "my_listing",
///         FriendlyName = "my_listing",
///         Description = "Test Description",
///         Location = "US",
///     });
///
///     var subscriptionListing = new Gcp.BigQueryAnalyticsHub.Listing("subscription", new()
///     {
///         Location = "US",
///         DataExchangeId = subscription.DataExchangeId,
///         ListingId = "my_listing",
///         DisplayName = "my_listing",
///         Description = "Test Description",
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = subscriptionDataset.Id,
///         },
///     });
///
///     var subscriptionListingSubscription = new Gcp.BigQueryAnalyticsHub.ListingSubscription("subscription", new()
///     {
///         Location = "US",
///         DataExchangeId = subscription.DataExchangeId,
///         ListingId = subscriptionListing.ListingId,
///         DestinationDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingSubscriptionDestinationDatasetArgs
///         {
///             Description = "A test subscription",
///             FriendlyName = "👋",
///             Labels =
///             {
///                 { "testing", "123" },
///             },
///             Location = "US",
///             DatasetReference = new Gcp.BigQueryAnalyticsHub.Inputs.ListingSubscriptionDestinationDatasetDatasetReferenceArgs
///             {
///                 DatasetId = "destination_dataset",
///                 ProjectId = subscriptionDataset.Project,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		subscription, err := bigqueryanalyticshub.NewDataExchange(ctx, "subscription", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			DisplayName:    pulumi.String("my_data_exchange"),
/// 			Description:    pulumi.String("Test Description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subscriptionDataset, err := bigquery.NewDataset(ctx, "subscription", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("my_listing"),
/// 			FriendlyName: pulumi.String("my_listing"),
/// 			Description:  pulumi.String("Test Description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subscriptionListing, err := bigqueryanalyticshub.NewListing(ctx, "subscription", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: subscription.DataExchangeId,
/// 			ListingId:      pulumi.String("my_listing"),
/// 			DisplayName:    pulumi.String("my_listing"),
/// 			Description:    pulumi.String("Test Description"),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: subscriptionDataset.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListingSubscription(ctx, "subscription", &bigqueryanalyticshub.ListingSubscriptionArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: subscription.DataExchangeId,
/// 			ListingId:      subscriptionListing.ListingId,
/// 			DestinationDataset: &bigqueryanalyticshub.ListingSubscriptionDestinationDatasetArgs{
/// 				Description:  pulumi.String("A test subscription"),
/// 				FriendlyName: pulumi.String("👋"),
/// 				Labels: pulumi.StringMap{
/// 					"testing": pulumi.String("123"),
/// 				},
/// 				Location: pulumi.String("US"),
/// 				DatasetReference: &bigqueryanalyticshub.ListingSubscriptionDestinationDatasetDatasetReferenceArgs{
/// 					DatasetId: pulumi.String("destination_dataset"),
/// 					ProjectId: subscriptionDataset.Project,
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "subscription" {
///   location         = "US"
///   data_exchange_id = "my_data_exchange"
///   display_name     = "my_data_exchange"
///   description      = "Test Description"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "subscription" {
///   location         = "US"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.subscription.data_exchange_id
///   listing_id       = "my_listing"
///   display_name     = "my_listing"
///   description      = "Test Description"
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.subscription.id
///   }
/// }
/// resource "gcp_bigquery_dataset" "subscription" {
///   dataset_id    = "my_listing"
///   friendly_name = "my_listing"
///   description   = "Test Description"
///   location      = "US"
/// }
/// resource "gcp_bigqueryanalyticshub_listingsubscription" "subscription" {
///   location         = "US"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.subscription.data_exchange_id
///   listing_id       = gcp_bigqueryanalyticshub_listing.subscription.listing_id
///   destination_dataset = {
///     description   = "A test subscription"
///     friendly_name = "👋"
///     labels = {
///       "testing" = "123"
///     }
///     location = "US"
///     dataset_reference = {
///       dataset_id = "destination_dataset"
///       project_id = gcp_bigquery_dataset.subscription.project
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.Listing;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingBigqueryDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingSubscription;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingSubscriptionArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingSubscriptionDestinationDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingSubscriptionDestinationDatasetDatasetReferenceArgs;
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
///         var subscription = new DataExchange("subscription", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("my_data_exchange")
///             .displayName("my_data_exchange")
///             .description("Test Description")
///             .build());
///
///         var subscriptionDataset = new Dataset("subscriptionDataset", DatasetArgs.builder()
///             .datasetId("my_listing")
///             .friendlyName("my_listing")
///             .description("Test Description")
///             .location("US")
///             .build());
///
///         var subscriptionListing = new Listing("subscriptionListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(subscription.dataExchangeId())
///             .listingId("my_listing")
///             .displayName("my_listing")
///             .description("Test Description")
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(subscriptionDataset.id())
///                 .build())
///             .build());
///
///         var subscriptionListingSubscription = new ListingSubscription("subscriptionListingSubscription", ListingSubscriptionArgs.builder()
///             .location("US")
///             .dataExchangeId(subscription.dataExchangeId())
///             .listingId(subscriptionListing.listingId())
///             .destinationDataset(ListingSubscriptionDestinationDatasetArgs.builder()
///                 .description("A test subscription")
///                 .friendlyName("👋")
///                 .labels(Map.of("testing", "123"))
///                 .location("US")
///                 .datasetReference(ListingSubscriptionDestinationDatasetDatasetReferenceArgs.builder()
///                     .datasetId("destination_dataset")
///                     .projectId(subscriptionDataset.project())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: US
///       dataExchangeId: my_data_exchange
///       displayName: my_data_exchange
///       description: Test Description
///   subscriptionListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: subscription
///     properties:
///       location: US
///       dataExchangeId: ${subscription.dataExchangeId}
///       listingId: my_listing
///       displayName: my_listing
///       description: Test Description
///       bigqueryDataset:
///         dataset: ${subscriptionDataset.id}
///   subscriptionDataset:
///     type: gcp:bigquery:Dataset
///     name: subscription
///     properties:
///       datasetId: my_listing
///       friendlyName: my_listing
///       description: Test Description
///       location: US
///   subscriptionListingSubscription:
///     type: gcp:bigqueryanalyticshub:ListingSubscription
///     name: subscription
///     properties:
///       location: US
///       dataExchangeId: ${subscription.dataExchangeId}
///       listingId: ${subscriptionListing.listingId}
///       destinationDataset:
///         description: A test subscription
///         friendlyName: "\U0001F44B"
///         labels:
///           testing: '123'
///         location: US
///         datasetReference:
///           datasetId: destination_dataset
///           projectId: ${subscriptionDataset.project}
/// ```
///
/// ### Bigquery Analyticshub Listing Subscription Multiregion
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subscription = new gcp.bigqueryanalyticshub.DataExchange("subscription", {
///     location: "us",
///     dataExchangeId: "my_data_exchange",
///     displayName: "my_data_exchange",
/// });
/// const subscriptionListing = new gcp.bigqueryanalyticshub.Listing("subscription", {
///     location: "us",
///     dataExchangeId: subscription.dataExchangeId,
///     listingId: "my_listing",
///     displayName: "my_listing",
///     bigqueryDataset: {
///         dataset: "projects/project_id/datasets/my_listing_example2",
///         replicaLocations: ["eu"],
///     },
/// });
/// const subscriptionListingSubscription = new gcp.bigqueryanalyticshub.ListingSubscription("subscription", {
///     location: "us",
///     dataExchangeId: subscription.dataExchangeId,
///     listingId: subscriptionListing.listingId,
///     destinationDataset: {
///         location: "us",
///         datasetReference: {
///             projectId: subscription.project,
///             datasetId: "destination_dataset",
///         },
///         replicaLocations: ["eu"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// subscription = gcp.bigqueryanalyticshub.DataExchange("subscription",
///     location="us",
///     data_exchange_id="my_data_exchange",
///     display_name="my_data_exchange")
/// subscription_listing = gcp.bigqueryanalyticshub.Listing("subscription",
///     location="us",
///     data_exchange_id=subscription.data_exchange_id,
///     listing_id="my_listing",
///     display_name="my_listing",
///     bigquery_dataset={
///         "dataset": "projects/project_id/datasets/my_listing_example2",
///         "replica_locations": ["eu"],
///     })
/// subscription_listing_subscription = gcp.bigqueryanalyticshub.ListingSubscription("subscription",
///     location="us",
///     data_exchange_id=subscription.data_exchange_id,
///     listing_id=subscription_listing.listing_id,
///     destination_dataset={
///         "location": "us",
///         "dataset_reference": {
///             "project_id": subscription.project,
///             "dataset_id": "destination_dataset",
///         },
///         "replica_locations": ["eu"],
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
///     var subscription = new Gcp.BigQueryAnalyticsHub.DataExchange("subscription", new()
///     {
///         Location = "us",
///         DataExchangeId = "my_data_exchange",
///         DisplayName = "my_data_exchange",
///     });
///
///     var subscriptionListing = new Gcp.BigQueryAnalyticsHub.Listing("subscription", new()
///     {
///         Location = "us",
///         DataExchangeId = subscription.DataExchangeId,
///         ListingId = "my_listing",
///         DisplayName = "my_listing",
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = "projects/project_id/datasets/my_listing_example2",
///             ReplicaLocations = new[]
///             {
///                 "eu",
///             },
///         },
///     });
///
///     var subscriptionListingSubscription = new Gcp.BigQueryAnalyticsHub.ListingSubscription("subscription", new()
///     {
///         Location = "us",
///         DataExchangeId = subscription.DataExchangeId,
///         ListingId = subscriptionListing.ListingId,
///         DestinationDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingSubscriptionDestinationDatasetArgs
///         {
///             Location = "us",
///             DatasetReference = new Gcp.BigQueryAnalyticsHub.Inputs.ListingSubscriptionDestinationDatasetDatasetReferenceArgs
///             {
///                 ProjectId = subscription.Project,
///                 DatasetId = "destination_dataset",
///             },
///             ReplicaLocations = new[]
///             {
///                 "eu",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		subscription, err := bigqueryanalyticshub.NewDataExchange(ctx, "subscription", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			DisplayName:    pulumi.String("my_data_exchange"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subscriptionListing, err := bigqueryanalyticshub.NewListing(ctx, "subscription", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: subscription.DataExchangeId,
/// 			ListingId:      pulumi.String("my_listing"),
/// 			DisplayName:    pulumi.String("my_listing"),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: pulumi.String("projects/project_id/datasets/my_listing_example2"),
/// 				ReplicaLocations: pulumi.StringArray{
/// 					pulumi.String("eu"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListingSubscription(ctx, "subscription", &bigqueryanalyticshub.ListingSubscriptionArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: subscription.DataExchangeId,
/// 			ListingId:      subscriptionListing.ListingId,
/// 			DestinationDataset: &bigqueryanalyticshub.ListingSubscriptionDestinationDatasetArgs{
/// 				Location: pulumi.String("us"),
/// 				DatasetReference: &bigqueryanalyticshub.ListingSubscriptionDestinationDatasetDatasetReferenceArgs{
/// 					ProjectId: subscription.Project,
/// 					DatasetId: pulumi.String("destination_dataset"),
/// 				},
/// 				ReplicaLocations: pulumi.StringArray{
/// 					pulumi.String("eu"),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "subscription" {
///   location         = "us"
///   data_exchange_id = "my_data_exchange"
///   display_name     = "my_data_exchange"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "subscription" {
///   location         = "us"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.subscription.data_exchange_id
///   listing_id       = "my_listing"
///   display_name     = "my_listing"
///   bigquery_dataset = {
///     dataset           = "projects/project_id/datasets/my_listing_example2"
///     replica_locations = ["eu"]
///   }
/// }
/// resource "gcp_bigqueryanalyticshub_listingsubscription" "subscription" {
///   location         = "us"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.subscription.data_exchange_id
///   listing_id       = gcp_bigqueryanalyticshub_listing.subscription.listing_id
///   destination_dataset = {
///     location = "us"
///     dataset_reference = {
///       project_id = gcp_bigqueryanalyticshub_dataexchange.subscription.project
///       dataset_id = "destination_dataset"
///     }
///     replica_locations = ["eu"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.Listing;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingBigqueryDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingSubscription;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingSubscriptionArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingSubscriptionDestinationDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingSubscriptionDestinationDatasetDatasetReferenceArgs;
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
///         var subscription = new DataExchange("subscription", DataExchangeArgs.builder()
///             .location("us")
///             .dataExchangeId("my_data_exchange")
///             .displayName("my_data_exchange")
///             .build());
///
///         var subscriptionListing = new Listing("subscriptionListing", ListingArgs.builder()
///             .location("us")
///             .dataExchangeId(subscription.dataExchangeId())
///             .listingId("my_listing")
///             .displayName("my_listing")
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset("projects/project_id/datasets/my_listing_example2")
///                 .replicaLocations("eu")
///                 .build())
///             .build());
///
///         var subscriptionListingSubscription = new ListingSubscription("subscriptionListingSubscription", ListingSubscriptionArgs.builder()
///             .location("us")
///             .dataExchangeId(subscription.dataExchangeId())
///             .listingId(subscriptionListing.listingId())
///             .destinationDataset(ListingSubscriptionDestinationDatasetArgs.builder()
///                 .location("us")
///                 .datasetReference(ListingSubscriptionDestinationDatasetDatasetReferenceArgs.builder()
///                     .projectId(subscription.project())
///                     .datasetId("destination_dataset")
///                     .build())
///                 .replicaLocations("eu")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: us
///       dataExchangeId: my_data_exchange
///       displayName: my_data_exchange
///   subscriptionListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: subscription
///     properties:
///       location: us
///       dataExchangeId: ${subscription.dataExchangeId}
///       listingId: my_listing
///       displayName: my_listing
///       bigqueryDataset:
///         dataset: projects/project_id/datasets/my_listing_example2
///         replicaLocations:
///           - eu
///   subscriptionListingSubscription:
///     type: gcp:bigqueryanalyticshub:ListingSubscription
///     name: subscription
///     properties:
///       location: us
///       dataExchangeId: ${subscription.dataExchangeId}
///       listingId: ${subscriptionListing.listingId}
///       destinationDataset:
///         location: us
///         datasetReference:
///           projectId: ${subscription.project}
///           datasetId: destination_dataset
///         replicaLocations:
///           - eu
/// ```
///
///
/// ## Import
///
/// ListingSubscription can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/subscriptions/{{subscription_id}}`
/// * `{{project}}/{{location}}/{{subscription_id}}`
/// * `{{location}}/{{subscription_id}}`
///
///
/// When using the `pulumi import` command, ListingSubscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription default projects/{{project}}/locations/{{location}}/subscriptions/{{subscription_id}}
/// $ pulumi import gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription default {{project}}/{{location}}/{{subscription_id}}
/// $ pulumi import gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription default {{location}}/{{subscription_id}}
/// ```
class ListingSubscription extends pulumi.CustomResource {
  /// Commercial info metadata for this subscription. This is set if this is a commercial subscription i.e. if this subscription was created from subscribing to a commercial listing.
  /// Structure is documented below.
  late final pulumi.Output<List<ListingSubscriptionCommercialInfo>> commercialInfos;
  /// Timestamp when the subscription was created.
  late final pulumi.Output<String> creationTime;
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> dataExchangeId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The destination dataset for this subscription.
  /// Structure is documented below.
  late final pulumi.Output<ListingSubscriptionDestinationDataset> destinationDataset;
  /// Timestamp when the subscription was last modified.
  late final pulumi.Output<String> lastModifyTime;
  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/US/dataExchanges/456/listings/789 &gt; projects/123/datasets/my_dataset
  /// Structure is documented below.
  late final pulumi.Output<List<ListingSubscriptionLinkedDatasetMap>> linkedDatasetMaps;
  /// Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// Structure is documented below.
  late final pulumi.Output<List<ListingSubscriptionLinkedResource>> linkedResources;
  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> listingId;
  /// The name of the location of the data exchange. Distinct from the location of the destination data set.
  late final pulumi.Output<String> location;
  /// Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for Listing.
  late final pulumi.Output<bool> logLinkedDatasetQueryUserEmail;
  /// The resource name of the subscription. e.g. "projects/myproject/locations/US/subscriptions/123"
  late final pulumi.Output<String> name;
  /// Display name of the project of this subscription.
  late final pulumi.Output<String> organizationDisplayName;
  /// Organization of the project this subscription belongs to.
  late final pulumi.Output<String> organizationId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Listing shared asset type.
  late final pulumi.Output<String> resourceType;
  /// Current state of the subscription.
  late final pulumi.Output<String> state;
  /// Email of the subscriber.
  late final pulumi.Output<String> subscriberContact;
  /// The subscription id used to reference the subscription.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [ListingSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListingSubscription]. {@macro pulumi_bigqueryanalyticshub_listing_subscription_listing_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListingSubscription(
    String name, {
    ListingSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    commercialInfos = registerOutput<List<ListingSubscriptionCommercialInfo>>('commercialInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionCommercialInfo>(guardedValue, (value) => ListingSubscriptionCommercialInfo.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<String>('creationTime');
    dataExchangeId = registerOutput<String>('dataExchangeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationDataset = registerOutput<ListingSubscriptionDestinationDataset>('destinationDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingSubscriptionDestinationDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifyTime = registerOutput<String>('lastModifyTime');
    linkedDatasetMaps = registerOutput<List<ListingSubscriptionLinkedDatasetMap>>('linkedDatasetMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionLinkedDatasetMap>(guardedValue, (value) => ListingSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>())); });
    linkedResources = registerOutput<List<ListingSubscriptionLinkedResource>>('linkedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionLinkedResource>(guardedValue, (value) => ListingSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>())); });
    listingId = registerOutput<String>('listingId');
    location = registerOutput<String>('location');
    logLinkedDatasetQueryUserEmail = registerOutput<bool>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    organizationDisplayName = registerOutput<String>('organizationDisplayName');
    organizationId = registerOutput<String>('organizationId');
    project = registerOutput<String>('project');
    resourceType = registerOutput<String>('resourceType');
    state = registerOutput<String>('state');
    subscriberContact = registerOutput<String>('subscriberContact');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [ListingSubscription] resource's state with the given [name] and [id].
  static ListingSubscription get(
    String name,
    pulumi.Input<String> id, {
    ListingSubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ListingSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ListingSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commercialInfos = registerOutput<List<ListingSubscriptionCommercialInfo>>('commercialInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionCommercialInfo>(guardedValue, (value) => ListingSubscriptionCommercialInfo.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<String>('creationTime');
    dataExchangeId = registerOutput<String>('dataExchangeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationDataset = registerOutput<ListingSubscriptionDestinationDataset>('destinationDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingSubscriptionDestinationDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifyTime = registerOutput<String>('lastModifyTime');
    linkedDatasetMaps = registerOutput<List<ListingSubscriptionLinkedDatasetMap>>('linkedDatasetMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionLinkedDatasetMap>(guardedValue, (value) => ListingSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>())); });
    linkedResources = registerOutput<List<ListingSubscriptionLinkedResource>>('linkedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionLinkedResource>(guardedValue, (value) => ListingSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>())); });
    listingId = registerOutput<String>('listingId');
    location = registerOutput<String>('location');
    logLinkedDatasetQueryUserEmail = registerOutput<bool>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    organizationDisplayName = registerOutput<String>('organizationDisplayName');
    organizationId = registerOutput<String>('organizationId');
    project = registerOutput<String>('project');
    resourceType = registerOutput<String>('resourceType');
    this.state = registerOutput<String>('state');
    subscriberContact = registerOutput<String>('subscriberContact');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Creates a typed reference to an existing [ListingSubscription] resource.
  ListingSubscription.reference(String urn)
    : super(
        'gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    commercialInfos = registerOutput<List<ListingSubscriptionCommercialInfo>>('commercialInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionCommercialInfo>(guardedValue, (value) => ListingSubscriptionCommercialInfo.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<String>('creationTime');
    dataExchangeId = registerOutput<String>('dataExchangeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationDataset = registerOutput<ListingSubscriptionDestinationDataset>('destinationDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingSubscriptionDestinationDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifyTime = registerOutput<String>('lastModifyTime');
    linkedDatasetMaps = registerOutput<List<ListingSubscriptionLinkedDatasetMap>>('linkedDatasetMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionLinkedDatasetMap>(guardedValue, (value) => ListingSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>())); });
    linkedResources = registerOutput<List<ListingSubscriptionLinkedResource>>('linkedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingSubscriptionLinkedResource>(guardedValue, (value) => ListingSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>())); });
    listingId = registerOutput<String>('listingId');
    location = registerOutput<String>('location');
    logLinkedDatasetQueryUserEmail = registerOutput<bool>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    organizationDisplayName = registerOutput<String>('organizationDisplayName');
    organizationId = registerOutput<String>('organizationId');
    project = registerOutput<String>('project');
    resourceType = registerOutput<String>('resourceType');
    state = registerOutput<String>('state');
    subscriberContact = registerOutput<String>('subscriberContact');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
