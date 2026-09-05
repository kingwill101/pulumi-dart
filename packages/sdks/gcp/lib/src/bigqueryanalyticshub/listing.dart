import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_args.dart';
import 'listing_bigquery_dataset.dart';
import 'listing_commercial_info.dart';
import 'listing_data_provider.dart';
import 'listing_publisher.dart';
import 'listing_pubsub_topic.dart';
import 'listing_restricted_export_config.dart';
import 'listing_state.dart';

/// A Bigquery Analytics Hub data exchange listing
///
///
/// To get more information about Listing, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.dataExchanges.listings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)
///
/// ## Example Usage
///
/// ### Bigquery Analyticshub Listing Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listing = new gcp.bigqueryanalyticshub.DataExchange("listing", {
///     location: "US",
///     dataExchangeId: "my_data_exchange",
///     displayName: "my_data_exchange",
///     description: "example data exchange",
/// });
/// const listingDataset = new gcp.bigquery.Dataset("listing", {
///     datasetId: "my_listing",
///     friendlyName: "my_listing",
///     description: "example data exchange",
///     location: "US",
/// });
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: listing.dataExchangeId,
///     listingId: "my_listing",
///     displayName: "my_listing",
///     description: "example data exchange",
///     bigqueryDataset: {
///         dataset: listingDataset.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing = gcp.bigqueryanalyticshub.DataExchange("listing",
///     location="US",
///     data_exchange_id="my_data_exchange",
///     display_name="my_data_exchange",
///     description="example data exchange")
/// listing_dataset = gcp.bigquery.Dataset("listing",
///     dataset_id="my_listing",
///     friendly_name="my_listing",
///     description="example data exchange",
///     location="US")
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=listing.data_exchange_id,
///     listing_id="my_listing",
///     display_name="my_listing",
///     description="example data exchange",
///     bigquery_dataset={
///         "dataset": listing_dataset.id,
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
///     var listing = new Gcp.BigQueryAnalyticsHub.DataExchange("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = "my_data_exchange",
///         DisplayName = "my_data_exchange",
///         Description = "example data exchange",
///     });
///
///     var listingDataset = new Gcp.BigQuery.Dataset("listing", new()
///     {
///         DatasetId = "my_listing",
///         FriendlyName = "my_listing",
///         Description = "example data exchange",
///         Location = "US",
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = "my_listing",
///         DisplayName = "my_listing",
///         Description = "example data exchange",
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = listingDataset.Id,
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
/// 		listing, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			DisplayName:    pulumi.String("my_data_exchange"),
/// 			Description:    pulumi.String("example data exchange"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listingDataset, err := bigquery.NewDataset(ctx, "listing", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("my_listing"),
/// 			FriendlyName: pulumi.String("my_listing"),
/// 			Description:  pulumi.String("example data exchange"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: listing.DataExchangeId,
/// 			ListingId:      pulumi.String("my_listing"),
/// 			DisplayName:    pulumi.String("my_listing"),
/// 			Description:    pulumi.String("example data exchange"),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: listingDataset.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing" {
///   location         = "US"
///   data_exchange_id = "my_data_exchange"
///   display_name     = "my_data_exchange"
///   description      = "example data exchange"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location         = "US"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.listing.data_exchange_id
///   listing_id       = "my_listing"
///   display_name     = "my_listing"
///   description      = "example data exchange"
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.listing.id
///   }
/// }
/// resource "gcp_bigquery_dataset" "listing" {
///   dataset_id    = "my_listing"
///   friendly_name = "my_listing"
///   description   = "example data exchange"
///   location      = "US"
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
///         var listing = new DataExchange("listing", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("my_data_exchange")
///             .displayName("my_data_exchange")
///             .description("example data exchange")
///             .build());
///
///         var listingDataset = new Dataset("listingDataset", DatasetArgs.builder()
///             .datasetId("my_listing")
///             .friendlyName("my_listing")
///             .description("example data exchange")
///             .location("US")
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId("my_listing")
///             .displayName("my_listing")
///             .description("example data exchange")
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(listingDataset.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listing:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: US
///       dataExchangeId: my_data_exchange
///       displayName: my_data_exchange
///       description: example data exchange
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: US
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: my_listing
///       displayName: my_listing
///       description: example data exchange
///       bigqueryDataset:
///         dataset: ${listingDataset.id}
///   listingDataset:
///     type: gcp:bigquery:Dataset
///     name: listing
///     properties:
///       datasetId: my_listing
///       friendlyName: my_listing
///       description: example data exchange
///       location: US
/// ```
///
/// ### Bigquery Analyticshub Listing Restricted
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listing = new gcp.bigqueryanalyticshub.DataExchange("listing", {
///     location: "US",
///     dataExchangeId: "my_data_exchange",
///     displayName: "my_data_exchange",
///     description: "example data exchange",
/// });
/// const listingDataset = new gcp.bigquery.Dataset("listing", {
///     datasetId: "my_listing",
///     friendlyName: "my_listing",
///     description: "example data exchange",
///     location: "US",
/// });
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: listing.dataExchangeId,
///     listingId: "my_listing",
///     displayName: "my_listing",
///     description: "example data exchange",
///     bigqueryDataset: {
///         dataset: listingDataset.id,
///     },
///     restrictedExportConfig: {
///         enabled: true,
///         restrictQueryResult: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing = gcp.bigqueryanalyticshub.DataExchange("listing",
///     location="US",
///     data_exchange_id="my_data_exchange",
///     display_name="my_data_exchange",
///     description="example data exchange")
/// listing_dataset = gcp.bigquery.Dataset("listing",
///     dataset_id="my_listing",
///     friendly_name="my_listing",
///     description="example data exchange",
///     location="US")
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=listing.data_exchange_id,
///     listing_id="my_listing",
///     display_name="my_listing",
///     description="example data exchange",
///     bigquery_dataset={
///         "dataset": listing_dataset.id,
///     },
///     restricted_export_config={
///         "enabled": True,
///         "restrict_query_result": True,
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
///     var listing = new Gcp.BigQueryAnalyticsHub.DataExchange("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = "my_data_exchange",
///         DisplayName = "my_data_exchange",
///         Description = "example data exchange",
///     });
///
///     var listingDataset = new Gcp.BigQuery.Dataset("listing", new()
///     {
///         DatasetId = "my_listing",
///         FriendlyName = "my_listing",
///         Description = "example data exchange",
///         Location = "US",
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = "my_listing",
///         DisplayName = "my_listing",
///         Description = "example data exchange",
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = listingDataset.Id,
///         },
///         RestrictedExportConfig = new Gcp.BigQueryAnalyticsHub.Inputs.ListingRestrictedExportConfigArgs
///         {
///             Enabled = true,
///             RestrictQueryResult = true,
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
/// 		listing, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			DisplayName:    pulumi.String("my_data_exchange"),
/// 			Description:    pulumi.String("example data exchange"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listingDataset, err := bigquery.NewDataset(ctx, "listing", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("my_listing"),
/// 			FriendlyName: pulumi.String("my_listing"),
/// 			Description:  pulumi.String("example data exchange"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: listing.DataExchangeId,
/// 			ListingId:      pulumi.String("my_listing"),
/// 			DisplayName:    pulumi.String("my_listing"),
/// 			Description:    pulumi.String("example data exchange"),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: listingDataset.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			RestrictedExportConfig: &bigqueryanalyticshub.ListingRestrictedExportConfigArgs{
/// 				Enabled:             pulumi.Bool(true),
/// 				RestrictQueryResult: pulumi.Bool(true),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing" {
///   location         = "US"
///   data_exchange_id = "my_data_exchange"
///   display_name     = "my_data_exchange"
///   description      = "example data exchange"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location         = "US"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.listing.data_exchange_id
///   listing_id       = "my_listing"
///   display_name     = "my_listing"
///   description      = "example data exchange"
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.listing.id
///   }
///   restricted_export_config = {
///     enabled               = true
///     restrict_query_result = true
///   }
/// }
/// resource "gcp_bigquery_dataset" "listing" {
///   dataset_id    = "my_listing"
///   friendly_name = "my_listing"
///   description   = "example data exchange"
///   location      = "US"
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
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingRestrictedExportConfigArgs;
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
///         var listing = new DataExchange("listing", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("my_data_exchange")
///             .displayName("my_data_exchange")
///             .description("example data exchange")
///             .build());
///
///         var listingDataset = new Dataset("listingDataset", DatasetArgs.builder()
///             .datasetId("my_listing")
///             .friendlyName("my_listing")
///             .description("example data exchange")
///             .location("US")
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId("my_listing")
///             .displayName("my_listing")
///             .description("example data exchange")
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(listingDataset.id())
///                 .build())
///             .restrictedExportConfig(ListingRestrictedExportConfigArgs.builder()
///                 .enabled(true)
///                 .restrictQueryResult(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listing:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: US
///       dataExchangeId: my_data_exchange
///       displayName: my_data_exchange
///       description: example data exchange
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: US
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: my_listing
///       displayName: my_listing
///       description: example data exchange
///       bigqueryDataset:
///         dataset: ${listingDataset.id}
///       restrictedExportConfig:
///         enabled: true
///         restrictQueryResult: true
///   listingDataset:
///     type: gcp:bigquery:Dataset
///     name: listing
///     properties:
///       datasetId: my_listing
///       friendlyName: my_listing
///       description: example data exchange
///       location: US
/// ```
///
/// ### Bigquery Analyticshub Listing Dcr
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listing = new gcp.bigqueryanalyticshub.DataExchange("listing", {
///     location: "US",
///     dataExchangeId: "dcr_data_exchange",
///     displayName: "dcr_data_exchange",
///     description: "example dcr data exchange",
///     sharingEnvironmentConfig: {
///         dcrExchangeConfig: {},
///     },
/// });
/// const listingDataset = new gcp.bigquery.Dataset("listing", {
///     datasetId: "dcr_listing",
///     friendlyName: "dcr_listing",
///     description: "example dcr data exchange",
///     location: "US",
/// });
/// const listingTable = new gcp.bigquery.Table("listing", {
///     deletionProtection: false,
///     tableId: "dcr_listing",
///     datasetId: listingDataset.datasetId,
///     schema: `[
///   {
///     \\"name\\": \\"name\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"post_abbr\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"date\\",
///     \\"type\\": \\"DATE\\",
///     \\"mode\\": \\"NULLABLE\\"
///   }
/// ]
/// `,
/// });
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: listing.dataExchangeId,
///     listingId: "dcr_listing",
///     displayName: "dcr_listing",
///     description: "example dcr data exchange",
///     bigqueryDataset: {
///         dataset: listingDataset.id,
///         selectedResources: [{
///             table: listingTable.id,
///         }],
///     },
///     restrictedExportConfig: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing = gcp.bigqueryanalyticshub.DataExchange("listing",
///     location="US",
///     data_exchange_id="dcr_data_exchange",
///     display_name="dcr_data_exchange",
///     description="example dcr data exchange",
///     sharing_environment_config={
///         "dcr_exchange_config": {},
///     })
/// listing_dataset = gcp.bigquery.Dataset("listing",
///     dataset_id="dcr_listing",
///     friendly_name="dcr_listing",
///     description="example dcr data exchange",
///     location="US")
/// listing_table = gcp.bigquery.Table("listing",
///     deletion_protection=False,
///     table_id="dcr_listing",
///     dataset_id=listing_dataset.dataset_id,
///     schema="""[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// """)
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=listing.data_exchange_id,
///     listing_id="dcr_listing",
///     display_name="dcr_listing",
///     description="example dcr data exchange",
///     bigquery_dataset={
///         "dataset": listing_dataset.id,
///         "selected_resources": [{
///             "table": listing_table.id,
///         }],
///     },
///     restricted_export_config={
///         "enabled": True,
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
///     var listing = new Gcp.BigQueryAnalyticsHub.DataExchange("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = "dcr_data_exchange",
///         DisplayName = "dcr_data_exchange",
///         Description = "example dcr data exchange",
///         SharingEnvironmentConfig = new Gcp.BigQueryAnalyticsHub.Inputs.DataExchangeSharingEnvironmentConfigArgs
///         {
///             DcrExchangeConfig = null,
///         },
///     });
///
///     var listingDataset = new Gcp.BigQuery.Dataset("listing", new()
///     {
///         DatasetId = "dcr_listing",
///         FriendlyName = "dcr_listing",
///         Description = "example dcr data exchange",
///         Location = "US",
///     });
///
///     var listingTable = new Gcp.BigQuery.Table("listing", new()
///     {
///         DeletionProtection = false,
///         TableId = "dcr_listing",
///         DatasetId = listingDataset.DatasetId,
///         Schema = @"[
///   {
///     \""name\"": \""name\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""post_abbr\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""date\"",
///     \""type\"": \""DATE\"",
///     \""mode\"": \""NULLABLE\""
///   }
/// ]
/// ",
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = "dcr_listing",
///         DisplayName = "dcr_listing",
///         Description = "example dcr data exchange",
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = listingDataset.Id,
///             SelectedResources = new[]
///             {
///                 new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetSelectedResourceArgs
///                 {
///                     Table = listingTable.Id,
///                 },
///             },
///         },
///         RestrictedExportConfig = new Gcp.BigQueryAnalyticsHub.Inputs.ListingRestrictedExportConfigArgs
///         {
///             Enabled = true,
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
/// 		listing, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("dcr_data_exchange"),
/// 			DisplayName:    pulumi.String("dcr_data_exchange"),
/// 			Description:    pulumi.String("example dcr data exchange"),
/// 			SharingEnvironmentConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigArgs{
/// 				DcrExchangeConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listingDataset, err := bigquery.NewDataset(ctx, "listing", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("dcr_listing"),
/// 			FriendlyName: pulumi.String("dcr_listing"),
/// 			Description:  pulumi.String("example dcr data exchange"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listingTable, err := bigquery.NewTable(ctx, "listing", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			TableId:            pulumi.String("dcr_listing"),
/// 			DatasetId:          listingDataset.DatasetId,
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: listing.DataExchangeId,
/// 			ListingId:      pulumi.String("dcr_listing"),
/// 			DisplayName:    pulumi.String("dcr_listing"),
/// 			Description:    pulumi.String("example dcr data exchange"),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: listingDataset.ID().ToIDOutput().ToStringOutput(),
/// 				SelectedResources: bigqueryanalyticshub.ListingBigqueryDatasetSelectedResourceArray{
/// 					&bigqueryanalyticshub.ListingBigqueryDatasetSelectedResourceArgs{
/// 						Table: listingTable.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			RestrictedExportConfig: &bigqueryanalyticshub.ListingRestrictedExportConfigArgs{
/// 				Enabled: pulumi.Bool(true),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing" {
///   location         = "US"
///   data_exchange_id = "dcr_data_exchange"
///   display_name     = "dcr_data_exchange"
///   description      = "example dcr data exchange"
///   sharing_environment_config = {
///     dcr_exchange_config = {}
///   }
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location         = "US"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.listing.data_exchange_id
///   listing_id       = "dcr_listing"
///   display_name     = "dcr_listing"
///   description      = "example dcr data exchange"
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.listing.id
///     selected_resources = [{
///       "table" = gcp_bigquery_table.listing.id
///     }]
///   }
///   restricted_export_config = {
///     enabled = true
///   }
/// }
/// resource "gcp_bigquery_dataset" "listing" {
///   dataset_id    = "dcr_listing"
///   friendly_name = "dcr_listing"
///   description   = "example dcr data exchange"
///   location      = "US"
/// }
/// resource "gcp_bigquery_table" "listing" {
///   deletion_protection = false
///   table_id            = "dcr_listing"
///   dataset_id          = gcp_bigquery_dataset.listing.dataset_id
///   schema              = "[\n  {\n    \\\"name\\\": \\\"name\\\",\n    \\\"type\\\": \\\"STRING\\\",\n    \\\"mode\\\": \\\"NULLABLE\\\"\n  },\n  {\n    \\\"name\\\": \\\"post_abbr\\\",\n    \\\"type\\\": \\\"STRING\\\",\n    \\\"mode\\\": \\\"NULLABLE\\\"\n  },\n  {\n    \\\"name\\\": \\\"date\\\",\n    \\\"type\\\": \\\"DATE\\\",\n    \\\"mode\\\": \\\"NULLABLE\\\"\n  }\n]\n"
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
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.Listing;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingBigqueryDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingBigqueryDatasetSelectedResourceArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingRestrictedExportConfigArgs;
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
///         var listing = new DataExchange("listing", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("dcr_data_exchange")
///             .displayName("dcr_data_exchange")
///             .description("example dcr data exchange")
///             .sharingEnvironmentConfig(DataExchangeSharingEnvironmentConfigArgs.builder()
///                 .dcrExchangeConfig(DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var listingDataset = new Dataset("listingDataset", DatasetArgs.builder()
///             .datasetId("dcr_listing")
///             .friendlyName("dcr_listing")
///             .description("example dcr data exchange")
///             .location("US")
///             .build());
///
///         var listingTable = new Table("listingTable", TableArgs.builder()
///             .deletionProtection(false)
///             .tableId("dcr_listing")
///             .datasetId(listingDataset.datasetId())
///             .schema("""
/// [
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
///             """)
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId("dcr_listing")
///             .displayName("dcr_listing")
///             .description("example dcr data exchange")
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(listingDataset.id())
///                 .selectedResources(ListingBigqueryDatasetSelectedResourceArgs.builder()
///                     .table(listingTable.id())
///                     .build())
///                 .build())
///             .restrictedExportConfig(ListingRestrictedExportConfigArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listing:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: US
///       dataExchangeId: dcr_data_exchange
///       displayName: dcr_data_exchange
///       description: example dcr data exchange
///       sharingEnvironmentConfig:
///         dcrExchangeConfig: {}
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: US
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: dcr_listing
///       displayName: dcr_listing
///       description: example dcr data exchange
///       bigqueryDataset:
///         dataset: ${listingDataset.id}
///         selectedResources:
///           - table: ${listingTable.id}
///       restrictedExportConfig:
///         enabled: true
///   listingDataset:
///     type: gcp:bigquery:Dataset
///     name: listing
///     properties:
///       datasetId: dcr_listing
///       friendlyName: dcr_listing
///       description: example dcr data exchange
///       location: US
///   listingTable:
///     type: gcp:bigquery:Table
///     name: listing
///     properties:
///       deletionProtection: false
///       tableId: dcr_listing
///       datasetId: ${listingDataset.datasetId}
///       schema: |
///         [
///           {
///             \"name\": \"name\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\"
///           },
///           {
///             \"name\": \"post_abbr\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\"
///           },
///           {
///             \"name\": \"date\",
///             \"type\": \"DATE\",
///             \"mode\": \"NULLABLE\"
///           }
///         ]
/// ```
///
/// ### Bigquery Analyticshub Listing Log Linked Dataset Query User
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listingLogEmail = new gcp.bigqueryanalyticshub.DataExchange("listing_log_email", {
///     location: "US",
///     dataExchangeId: "tf_test_log_email_de",
///     displayName: "tf_test_log_email_de",
///     description: "Example for log email test",
/// });
/// const listingLogEmailDataset = new gcp.bigquery.Dataset("listing_log_email", {
///     datasetId: "tf_test_log_email_ds",
///     friendlyName: "tf_test_log_email_ds",
///     description: "Example for log email test",
///     location: "US",
/// });
/// const listing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: listingLogEmail.dataExchangeId,
///     listingId: "tf_test_log_email_listing",
///     displayName: "tf_test_log_email_listing",
///     description: "Example for log email test",
///     logLinkedDatasetQueryUserEmail: true,
///     bigqueryDataset: {
///         dataset: listingLogEmailDataset.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing_log_email = gcp.bigqueryanalyticshub.DataExchange("listing_log_email",
///     location="US",
///     data_exchange_id="tf_test_log_email_de",
///     display_name="tf_test_log_email_de",
///     description="Example for log email test")
/// listing_log_email_dataset = gcp.bigquery.Dataset("listing_log_email",
///     dataset_id="tf_test_log_email_ds",
///     friendly_name="tf_test_log_email_ds",
///     description="Example for log email test",
///     location="US")
/// listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=listing_log_email.data_exchange_id,
///     listing_id="tf_test_log_email_listing",
///     display_name="tf_test_log_email_listing",
///     description="Example for log email test",
///     log_linked_dataset_query_user_email=True,
///     bigquery_dataset={
///         "dataset": listing_log_email_dataset.id,
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
///     var listingLogEmail = new Gcp.BigQueryAnalyticsHub.DataExchange("listing_log_email", new()
///     {
///         Location = "US",
///         DataExchangeId = "tf_test_log_email_de",
///         DisplayName = "tf_test_log_email_de",
///         Description = "Example for log email test",
///     });
///
///     var listingLogEmailDataset = new Gcp.BigQuery.Dataset("listing_log_email", new()
///     {
///         DatasetId = "tf_test_log_email_ds",
///         FriendlyName = "tf_test_log_email_ds",
///         Description = "Example for log email test",
///         Location = "US",
///     });
///
///     var listing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = listingLogEmail.DataExchangeId,
///         ListingId = "tf_test_log_email_listing",
///         DisplayName = "tf_test_log_email_listing",
///         Description = "Example for log email test",
///         LogLinkedDatasetQueryUserEmail = true,
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = listingLogEmailDataset.Id,
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
/// 		listingLogEmail, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing_log_email", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("tf_test_log_email_de"),
/// 			DisplayName:    pulumi.String("tf_test_log_email_de"),
/// 			Description:    pulumi.String("Example for log email test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listingLogEmailDataset, err := bigquery.NewDataset(ctx, "listing_log_email", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("tf_test_log_email_ds"),
/// 			FriendlyName: pulumi.String("tf_test_log_email_ds"),
/// 			Description:  pulumi.String("Example for log email test"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:                       pulumi.String("US"),
/// 			DataExchangeId:                 listingLogEmail.DataExchangeId,
/// 			ListingId:                      pulumi.String("tf_test_log_email_listing"),
/// 			DisplayName:                    pulumi.String("tf_test_log_email_listing"),
/// 			Description:                    pulumi.String("Example for log email test"),
/// 			LogLinkedDatasetQueryUserEmail: pulumi.Bool(true),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: listingLogEmailDataset.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing_log_email" {
///   location         = "US"
///   data_exchange_id = "tf_test_log_email_de"
///   display_name     = "tf_test_log_email_de"
///   description      = "Example for log email test"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location                            = "US"
///   data_exchange_id                    = gcp_bigqueryanalyticshub_dataexchange.listing_log_email.data_exchange_id
///   listing_id                          = "tf_test_log_email_listing"
///   display_name                        = "tf_test_log_email_listing"
///   description                         = "Example for log email test"
///   log_linked_dataset_query_user_email = true
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.listing_log_email.id
///   }
/// }
/// resource "gcp_bigquery_dataset" "listing_log_email" {
///   dataset_id    = "tf_test_log_email_ds"
///   friendly_name = "tf_test_log_email_ds"
///   description   = "Example for log email test"
///   location      = "US"
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
///         var listingLogEmail = new DataExchange("listingLogEmail", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("tf_test_log_email_de")
///             .displayName("tf_test_log_email_de")
///             .description("Example for log email test")
///             .build());
///
///         var listingLogEmailDataset = new Dataset("listingLogEmailDataset", DatasetArgs.builder()
///             .datasetId("tf_test_log_email_ds")
///             .friendlyName("tf_test_log_email_ds")
///             .description("Example for log email test")
///             .location("US")
///             .build());
///
///         var listing = new Listing("listing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(listingLogEmail.dataExchangeId())
///             .listingId("tf_test_log_email_listing")
///             .displayName("tf_test_log_email_listing")
///             .description("Example for log email test")
///             .logLinkedDatasetQueryUserEmail(true)
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(listingLogEmailDataset.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listingLogEmail:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     name: listing_log_email
///     properties:
///       location: US
///       dataExchangeId: tf_test_log_email_de
///       displayName: tf_test_log_email_de
///       description: Example for log email test
///   listing:
///     type: gcp:bigqueryanalyticshub:Listing
///     properties:
///       location: US
///       dataExchangeId: ${listingLogEmail.dataExchangeId}
///       listingId: tf_test_log_email_listing
///       displayName: tf_test_log_email_listing
///       description: Example for log email test
///       logLinkedDatasetQueryUserEmail: true
///       bigqueryDataset:
///         dataset: ${listingLogEmailDataset.id}
///   listingLogEmailDataset:
///     type: gcp:bigquery:Dataset
///     name: listing_log_email
///     properties:
///       datasetId: tf_test_log_email_ds
///       friendlyName: tf_test_log_email_ds
///       description: Example for log email test
///       location: US
/// ```
///
/// ### Bigquery Analyticshub Listing Pubsub
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listing = new gcp.bigqueryanalyticshub.DataExchange("listing", {
///     location: "US",
///     dataExchangeId: "tf_test_pubsub_data_exchange",
///     displayName: "tf_test_pubsub_data_exchange",
///     description: "Example for pubsub topic source",
/// });
/// const tfTestPubsubTopic = new gcp.pubsub.Topic("tf_test_pubsub_topic", {name: "test_pubsub"});
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: listing.dataExchangeId,
///     listingId: "tf_test_pubsub_listing",
///     displayName: "tf_test_pubsub_listing",
///     description: "Example for pubsub topic source",
///     pubsubTopic: {
///         topic: tfTestPubsubTopic.id,
///         dataAffinityRegions: [
///             "us-central1",
///             "europe-west1",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing = gcp.bigqueryanalyticshub.DataExchange("listing",
///     location="US",
///     data_exchange_id="tf_test_pubsub_data_exchange",
///     display_name="tf_test_pubsub_data_exchange",
///     description="Example for pubsub topic source")
/// tf_test_pubsub_topic = gcp.pubsub.Topic("tf_test_pubsub_topic", name="test_pubsub")
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=listing.data_exchange_id,
///     listing_id="tf_test_pubsub_listing",
///     display_name="tf_test_pubsub_listing",
///     description="Example for pubsub topic source",
///     pubsub_topic={
///         "topic": tf_test_pubsub_topic.id,
///         "data_affinity_regions": [
///             "us-central1",
///             "europe-west1",
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
///     var listing = new Gcp.BigQueryAnalyticsHub.DataExchange("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = "tf_test_pubsub_data_exchange",
///         DisplayName = "tf_test_pubsub_data_exchange",
///         Description = "Example for pubsub topic source",
///     });
///
///     var tfTestPubsubTopic = new Gcp.PubSub.Topic("tf_test_pubsub_topic", new()
///     {
///         Name = "test_pubsub",
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = "tf_test_pubsub_listing",
///         DisplayName = "tf_test_pubsub_listing",
///         Description = "Example for pubsub topic source",
///         PubsubTopic = new Gcp.BigQueryAnalyticsHub.Inputs.ListingPubsubTopicArgs
///         {
///             Topic = tfTestPubsubTopic.Id,
///             DataAffinityRegions = new[]
///             {
///                 "us-central1",
///                 "europe-west1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		listing, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("tf_test_pubsub_data_exchange"),
/// 			DisplayName:    pulumi.String("tf_test_pubsub_data_exchange"),
/// 			Description:    pulumi.String("Example for pubsub topic source"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestPubsubTopic, err := pubsub.NewTopic(ctx, "tf_test_pubsub_topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("test_pubsub"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: listing.DataExchangeId,
/// 			ListingId:      pulumi.String("tf_test_pubsub_listing"),
/// 			DisplayName:    pulumi.String("tf_test_pubsub_listing"),
/// 			Description:    pulumi.String("Example for pubsub topic source"),
/// 			PubsubTopic: &bigqueryanalyticshub.ListingPubsubTopicArgs{
/// 				Topic: tfTestPubsubTopic.ID().ToIDOutput().ToStringOutput(),
/// 				DataAffinityRegions: pulumi.StringArray{
/// 					pulumi.String("us-central1"),
/// 					pulumi.String("europe-west1"),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing" {
///   location         = "US"
///   data_exchange_id = "tf_test_pubsub_data_exchange"
///   display_name     = "tf_test_pubsub_data_exchange"
///   description      = "Example for pubsub topic source"
/// }
/// resource "gcp_pubsub_topic" "tf_test_pubsub_topic" {
///   name = "test_pubsub"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location         = "US"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.listing.data_exchange_id
///   listing_id       = "tf_test_pubsub_listing"
///   display_name     = "tf_test_pubsub_listing"
///   description      = "Example for pubsub topic source"
///   pubsub_topic = {
///     topic                 = gcp_pubsub_topic.tf_test_pubsub_topic.id
///     data_affinity_regions = ["us-central1", "europe-west1"]
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.Listing;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingPubsubTopicArgs;
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
///         var listing = new DataExchange("listing", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("tf_test_pubsub_data_exchange")
///             .displayName("tf_test_pubsub_data_exchange")
///             .description("Example for pubsub topic source")
///             .build());
///
///         var tfTestPubsubTopic = new Topic("tfTestPubsubTopic", TopicArgs.builder()
///             .name("test_pubsub")
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId("tf_test_pubsub_listing")
///             .displayName("tf_test_pubsub_listing")
///             .description("Example for pubsub topic source")
///             .pubsubTopic(ListingPubsubTopicArgs.builder()
///                 .topic(tfTestPubsubTopic.id())
///                 .dataAffinityRegions(
///                     "us-central1",
///                     "europe-west1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listing:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: US
///       dataExchangeId: tf_test_pubsub_data_exchange
///       displayName: tf_test_pubsub_data_exchange
///       description: Example for pubsub topic source
///   tfTestPubsubTopic:
///     type: gcp:pubsub:Topic
///     name: tf_test_pubsub_topic
///     properties:
///       name: test_pubsub
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: US
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: tf_test_pubsub_listing
///       displayName: tf_test_pubsub_listing
///       description: Example for pubsub topic source
///       pubsubTopic:
///         topic: ${tfTestPubsubTopic.id}
///         dataAffinityRegions:
///           - us-central1
///           - europe-west1
/// ```
///
/// ### Bigquery Analyticshub Listing Dcr Routine
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dcrDataExchangeExample = new gcp.bigqueryanalyticshub.DataExchange("dcr_data_exchange_example", {
///     location: "us",
///     dataExchangeId: "tf_test_data_exchange",
///     displayName: "tf_test_data_exchange",
///     description: "Example for listing with routine",
///     sharingEnvironmentConfig: {
///         dcrExchangeConfig: {},
///     },
/// });
/// const listing = new gcp.bigquery.Dataset("listing", {
///     datasetId: "tf_test_dataset",
///     friendlyName: "tf_test_dataset",
///     description: "Example for listing with routine",
///     location: "us",
/// });
/// const listingRoutine = new gcp.bigquery.Routine("listing", {
///     datasetId: listing.datasetId,
///     routineId: "tf_test_routine",
///     routineType: "TABLE_VALUED_FUNCTION",
///     language: "SQL",
///     description: "A DCR routine example.",
///     definitionBody: "SELECT 1 + value AS value\n",
///     arguments: [{
///         name: "value",
///         argumentKind: "FIXED_TYPE",
///         dataType: JSON.stringify({
///             typeKind: "INT64",
///         }),
///     }],
///     returnTableType: JSON.stringify({
///         columns: [{
///             name: "value",
///             type: {
///                 typeKind: "INT64",
///             },
///         }],
///     }),
/// });
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: dcrDataExchangeExample.dataExchangeId,
///     listingId: "tf_test_listing_routine",
///     displayName: "tf_test_listing_routine",
///     description: "Example for listing with routine",
///     bigqueryDataset: {
///         dataset: listing.id,
///         selectedResources: [{
///             routine: listingRoutine.id,
///         }],
///     },
///     restrictedExportConfig: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// dcr_data_exchange_example = gcp.bigqueryanalyticshub.DataExchange("dcr_data_exchange_example",
///     location="us",
///     data_exchange_id="tf_test_data_exchange",
///     display_name="tf_test_data_exchange",
///     description="Example for listing with routine",
///     sharing_environment_config={
///         "dcr_exchange_config": {},
///     })
/// listing = gcp.bigquery.Dataset("listing",
///     dataset_id="tf_test_dataset",
///     friendly_name="tf_test_dataset",
///     description="Example for listing with routine",
///     location="us")
/// listing_routine = gcp.bigquery.Routine("listing",
///     dataset_id=listing.dataset_id,
///     routine_id="tf_test_routine",
///     routine_type="TABLE_VALUED_FUNCTION",
///     language="SQL",
///     description="A DCR routine example.",
///     definition_body="SELECT 1 + value AS value\n",
///     arguments=[{
///         "name": "value",
///         "argument_kind": "FIXED_TYPE",
///         "data_type": json.dumps({
///             "typeKind": "INT64",
///         }),
///     }],
///     return_table_type=json.dumps({
///         "columns": [{
///             "name": "value",
///             "type": {
///                 "typeKind": "INT64",
///             },
///         }],
///     }))
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=dcr_data_exchange_example.data_exchange_id,
///     listing_id="tf_test_listing_routine",
///     display_name="tf_test_listing_routine",
///     description="Example for listing with routine",
///     bigquery_dataset={
///         "dataset": listing.id,
///         "selected_resources": [{
///             "routine": listing_routine.id,
///         }],
///     },
///     restricted_export_config={
///         "enabled": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dcrDataExchangeExample = new Gcp.BigQueryAnalyticsHub.DataExchange("dcr_data_exchange_example", new()
///     {
///         Location = "us",
///         DataExchangeId = "tf_test_data_exchange",
///         DisplayName = "tf_test_data_exchange",
///         Description = "Example for listing with routine",
///         SharingEnvironmentConfig = new Gcp.BigQueryAnalyticsHub.Inputs.DataExchangeSharingEnvironmentConfigArgs
///         {
///             DcrExchangeConfig = null,
///         },
///     });
///
///     var listing = new Gcp.BigQuery.Dataset("listing", new()
///     {
///         DatasetId = "tf_test_dataset",
///         FriendlyName = "tf_test_dataset",
///         Description = "Example for listing with routine",
///         Location = "us",
///     });
///
///     var listingRoutine = new Gcp.BigQuery.Routine("listing", new()
///     {
///         DatasetId = listing.DatasetId,
///         RoutineId = "tf_test_routine",
///         RoutineType = "TABLE_VALUED_FUNCTION",
///         Language = "SQL",
///         Description = "A DCR routine example.",
///         DefinitionBody = @"SELECT 1 + value AS value
/// ",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "value",
///                 ArgumentKind = "FIXED_TYPE",
///                 DataType = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["typeKind"] = "INT64",
///                 }),
///             },
///         },
///         ReturnTableType = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["columns"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "value",
///                     ["type"] = new Dictionary<string, object?>
///                     {
///                         ["typeKind"] = "INT64",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = dcrDataExchangeExample.DataExchangeId,
///         ListingId = "tf_test_listing_routine",
///         DisplayName = "tf_test_listing_routine",
///         Description = "Example for listing with routine",
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = listing.Id,
///             SelectedResources = new[]
///             {
///                 new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetSelectedResourceArgs
///                 {
///                     Routine = listingRoutine.Id,
///                 },
///             },
///         },
///         RestrictedExportConfig = new Gcp.BigQueryAnalyticsHub.Inputs.ListingRestrictedExportConfigArgs
///         {
///             Enabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dcrDataExchangeExample, err := bigqueryanalyticshub.NewDataExchange(ctx, "dcr_data_exchange_example", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: pulumi.String("tf_test_data_exchange"),
/// 			DisplayName:    pulumi.String("tf_test_data_exchange"),
/// 			Description:    pulumi.String("Example for listing with routine"),
/// 			SharingEnvironmentConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigArgs{
/// 				DcrExchangeConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listing, err := bigquery.NewDataset(ctx, "listing", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("tf_test_dataset"),
/// 			FriendlyName: pulumi.String("tf_test_dataset"),
/// 			Description:  pulumi.String("Example for listing with routine"),
/// 			Location:     pulumi.String("us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"typeKind": "INT64",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"columns": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name": "value",
/// 					"type": map[string]string{
/// 						"typeKind": "INT64",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		listingRoutine, err := bigquery.NewRoutine(ctx, "listing", &bigquery.RoutineArgs{
/// 			DatasetId:      listing.DatasetId,
/// 			RoutineId:      pulumi.String("tf_test_routine"),
/// 			RoutineType:    pulumi.String("TABLE_VALUED_FUNCTION"),
/// 			Language:       pulumi.String("SQL"),
/// 			Description:    pulumi.String("A DCR routine example."),
/// 			DefinitionBody: pulumi.String("SELECT 1 + value AS value\n"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:         pulumi.String("value"),
/// 					ArgumentKind: pulumi.String("FIXED_TYPE"),
/// 					DataType:     pulumi.String(json0),
/// 				},
/// 			},
/// 			ReturnTableType: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: dcrDataExchangeExample.DataExchangeId,
/// 			ListingId:      pulumi.String("tf_test_listing_routine"),
/// 			DisplayName:    pulumi.String("tf_test_listing_routine"),
/// 			Description:    pulumi.String("Example for listing with routine"),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: listing.ID().ToIDOutput().ToStringOutput(),
/// 				SelectedResources: bigqueryanalyticshub.ListingBigqueryDatasetSelectedResourceArray{
/// 					&bigqueryanalyticshub.ListingBigqueryDatasetSelectedResourceArgs{
/// 						Routine: listingRoutine.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			RestrictedExportConfig: &bigqueryanalyticshub.ListingRestrictedExportConfigArgs{
/// 				Enabled: pulumi.Bool(true),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "dcr_data_exchange_example" {
///   location         = "us"
///   data_exchange_id = "tf_test_data_exchange"
///   display_name     = "tf_test_data_exchange"
///   description      = "Example for listing with routine"
///   sharing_environment_config = {
///     dcr_exchange_config = {}
///   }
/// }
/// resource "gcp_bigquery_dataset" "listing" {
///   dataset_id    = "tf_test_dataset"
///   friendly_name = "tf_test_dataset"
///   description   = "Example for listing with routine"
///   location      = "us"
/// }
/// resource "gcp_bigquery_routine" "listing" {
///   dataset_id      = gcp_bigquery_dataset.listing.dataset_id
///   routine_id      = "tf_test_routine"
///   routine_type    = "TABLE_VALUED_FUNCTION"
///   language        = "SQL"
///   description     = "A DCR routine example."
///   definition_body = "SELECT 1 + value AS value\n"
///   arguments {
///     name          = "value"
///     argument_kind = "FIXED_TYPE"
///     data_type = jsonencode({
///       "typeKind" = "INT64"
///     })
///   }
///   return_table_type = jsonencode({
///     "columns" = [{
///       "name" = "value"
///       "type" = {
///         "typeKind" = "INT64"
///       }
///     }]
///   })
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location         = "US"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.dcr_data_exchange_example.data_exchange_id
///   listing_id       = "tf_test_listing_routine"
///   display_name     = "tf_test_listing_routine"
///   description      = "Example for listing with routine"
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.listing.id
///     selected_resources = [{
///       "routine" = gcp_bigquery_routine.listing.id
///     }]
///   }
///   restricted_export_config = {
///     enabled = true
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
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.Listing;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingBigqueryDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingBigqueryDatasetSelectedResourceArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingRestrictedExportConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var dcrDataExchangeExample = new DataExchange("dcrDataExchangeExample", DataExchangeArgs.builder()
///             .location("us")
///             .dataExchangeId("tf_test_data_exchange")
///             .displayName("tf_test_data_exchange")
///             .description("Example for listing with routine")
///             .sharingEnvironmentConfig(DataExchangeSharingEnvironmentConfigArgs.builder()
///                 .dcrExchangeConfig(DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var listing = new Dataset("listing", DatasetArgs.builder()
///             .datasetId("tf_test_dataset")
///             .friendlyName("tf_test_dataset")
///             .description("Example for listing with routine")
///             .location("us")
///             .build());
///
///         var listingRoutine = new Routine("listingRoutine", RoutineArgs.builder()
///             .datasetId(listing.datasetId())
///             .routineId("tf_test_routine")
///             .routineType("TABLE_VALUED_FUNCTION")
///             .language("SQL")
///             .description("A DCR routine example.")
///             .definitionBody("""
/// SELECT 1 + value AS value
///             """)
///             .arguments(RoutineArgumentArgs.builder()
///                 .name("value")
///                 .argumentKind("FIXED_TYPE")
///                 .dataType(serializeJson(
///                     jsonObject(
///                         jsonProperty("typeKind", "INT64")
///                     )))
///                 .build())
///             .returnTableType(serializeJson(
///                 jsonObject(
///                     jsonProperty("columns", jsonArray(jsonObject(
///                         jsonProperty("name", "value"),
///                         jsonProperty("type", jsonObject(
///                             jsonProperty("typeKind", "INT64")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(dcrDataExchangeExample.dataExchangeId())
///             .listingId("tf_test_listing_routine")
///             .displayName("tf_test_listing_routine")
///             .description("Example for listing with routine")
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(listing.id())
///                 .selectedResources(ListingBigqueryDatasetSelectedResourceArgs.builder()
///                     .routine(listingRoutine.id())
///                     .build())
///                 .build())
///             .restrictedExportConfig(ListingRestrictedExportConfigArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dcrDataExchangeExample:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     name: dcr_data_exchange_example
///     properties:
///       location: us
///       dataExchangeId: tf_test_data_exchange
///       displayName: tf_test_data_exchange
///       description: Example for listing with routine
///       sharingEnvironmentConfig:
///         dcrExchangeConfig: {}
///   listing:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: tf_test_dataset
///       friendlyName: tf_test_dataset
///       description: Example for listing with routine
///       location: us
///   listingRoutine:
///     type: gcp:bigquery:Routine
///     name: listing
///     properties:
///       datasetId: ${listing.datasetId}
///       routineId: tf_test_routine
///       routineType: TABLE_VALUED_FUNCTION
///       language: SQL
///       description: A DCR routine example.
///       definitionBody: |
///         SELECT 1 + value AS value
///       arguments:
///         - name: value
///           argumentKind: FIXED_TYPE
///           dataType:
///             fn::toJSON:
///               typeKind: INT64
///       returnTableType:
///         fn::toJSON:
///           columns:
///             - name: value
///               type:
///                 typeKind: INT64
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: US
///       dataExchangeId: ${dcrDataExchangeExample.dataExchangeId}
///       listingId: tf_test_listing_routine
///       displayName: tf_test_listing_routine
///       description: Example for listing with routine
///       bigqueryDataset:
///         dataset: ${listing.id}
///         selectedResources:
///           - routine: ${listingRoutine.id}
///       restrictedExportConfig:
///         enabled: true
/// ```
///
/// ### Bigquery Analyticshub Public Listing
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listing = new gcp.bigqueryanalyticshub.DataExchange("listing", {
///     location: "US",
///     dataExchangeId: "my_data_exchange",
///     displayName: "my_data_exchange",
///     description: "example public listing",
///     discoveryType: "DISCOVERY_TYPE_PUBLIC",
/// });
/// const listingDataset = new gcp.bigquery.Dataset("listing", {
///     datasetId: "my_listing",
///     friendlyName: "my_listing",
///     description: "example public listing",
///     location: "US",
/// });
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: listing.dataExchangeId,
///     listingId: "my_listing",
///     displayName: "my_listing",
///     description: "example public listing",
///     discoveryType: "DISCOVERY_TYPE_PUBLIC",
///     allowOnlyMetadataSharing: false,
///     bigqueryDataset: {
///         dataset: listingDataset.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing = gcp.bigqueryanalyticshub.DataExchange("listing",
///     location="US",
///     data_exchange_id="my_data_exchange",
///     display_name="my_data_exchange",
///     description="example public listing",
///     discovery_type="DISCOVERY_TYPE_PUBLIC")
/// listing_dataset = gcp.bigquery.Dataset("listing",
///     dataset_id="my_listing",
///     friendly_name="my_listing",
///     description="example public listing",
///     location="US")
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=listing.data_exchange_id,
///     listing_id="my_listing",
///     display_name="my_listing",
///     description="example public listing",
///     discovery_type="DISCOVERY_TYPE_PUBLIC",
///     allow_only_metadata_sharing=False,
///     bigquery_dataset={
///         "dataset": listing_dataset.id,
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
///     var listing = new Gcp.BigQueryAnalyticsHub.DataExchange("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = "my_data_exchange",
///         DisplayName = "my_data_exchange",
///         Description = "example public listing",
///         DiscoveryType = "DISCOVERY_TYPE_PUBLIC",
///     });
///
///     var listingDataset = new Gcp.BigQuery.Dataset("listing", new()
///     {
///         DatasetId = "my_listing",
///         FriendlyName = "my_listing",
///         Description = "example public listing",
///         Location = "US",
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = "my_listing",
///         DisplayName = "my_listing",
///         Description = "example public listing",
///         DiscoveryType = "DISCOVERY_TYPE_PUBLIC",
///         AllowOnlyMetadataSharing = false,
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = listingDataset.Id,
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
/// 		listing, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			DisplayName:    pulumi.String("my_data_exchange"),
/// 			Description:    pulumi.String("example public listing"),
/// 			DiscoveryType:  pulumi.String("DISCOVERY_TYPE_PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listingDataset, err := bigquery.NewDataset(ctx, "listing", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("my_listing"),
/// 			FriendlyName: pulumi.String("my_listing"),
/// 			Description:  pulumi.String("example public listing"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:                 pulumi.String("US"),
/// 			DataExchangeId:           listing.DataExchangeId,
/// 			ListingId:                pulumi.String("my_listing"),
/// 			DisplayName:              pulumi.String("my_listing"),
/// 			Description:              pulumi.String("example public listing"),
/// 			DiscoveryType:            pulumi.String("DISCOVERY_TYPE_PUBLIC"),
/// 			AllowOnlyMetadataSharing: pulumi.Bool(false),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: listingDataset.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing" {
///   location         = "US"
///   data_exchange_id = "my_data_exchange"
///   display_name     = "my_data_exchange"
///   description      = "example public listing"
///   discovery_type   = "DISCOVERY_TYPE_PUBLIC"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location                    = "US"
///   data_exchange_id            = gcp_bigqueryanalyticshub_dataexchange.listing.data_exchange_id
///   listing_id                  = "my_listing"
///   display_name                = "my_listing"
///   description                 = "example public listing"
///   discovery_type              = "DISCOVERY_TYPE_PUBLIC"
///   allow_only_metadata_sharing = false
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.listing.id
///   }
/// }
/// resource "gcp_bigquery_dataset" "listing" {
///   dataset_id    = "my_listing"
///   friendly_name = "my_listing"
///   description   = "example public listing"
///   location      = "US"
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
///         var listing = new DataExchange("listing", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("my_data_exchange")
///             .displayName("my_data_exchange")
///             .description("example public listing")
///             .discoveryType("DISCOVERY_TYPE_PUBLIC")
///             .build());
///
///         var listingDataset = new Dataset("listingDataset", DatasetArgs.builder()
///             .datasetId("my_listing")
///             .friendlyName("my_listing")
///             .description("example public listing")
///             .location("US")
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId("my_listing")
///             .displayName("my_listing")
///             .description("example public listing")
///             .discoveryType("DISCOVERY_TYPE_PUBLIC")
///             .allowOnlyMetadataSharing(false)
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(listingDataset.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listing:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: US
///       dataExchangeId: my_data_exchange
///       displayName: my_data_exchange
///       description: example public listing
///       discoveryType: DISCOVERY_TYPE_PUBLIC
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: US
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: my_listing
///       displayName: my_listing
///       description: example public listing
///       discoveryType: DISCOVERY_TYPE_PUBLIC
///       allowOnlyMetadataSharing: false
///       bigqueryDataset:
///         dataset: ${listingDataset.id}
///   listingDataset:
///     type: gcp:bigquery:Dataset
///     name: listing
///     properties:
///       datasetId: my_listing
///       friendlyName: my_listing
///       description: example public listing
///       location: US
/// ```
///
/// ### Bigquery Analyticshub Listing Marketplace
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listing = new gcp.bigqueryanalyticshub.DataExchange("listing", {
///     location: "US",
///     dataExchangeId: "my_data_exchange",
///     displayName: "my_data_exchange",
///     description: "example data exchange",
/// });
/// const listingDataset = new gcp.bigquery.Dataset("listing", {
///     datasetId: "my_listing",
///     friendlyName: "my_listing",
///     description: "example data exchange",
///     location: "US",
/// });
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "US",
///     dataExchangeId: listing.dataExchangeId,
///     listingId: "my_listing",
///     displayName: "my_listing",
///     description: "example data exchange",
///     deleteCommercial: true,
///     bigqueryDataset: {
///         dataset: listingDataset.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing = gcp.bigqueryanalyticshub.DataExchange("listing",
///     location="US",
///     data_exchange_id="my_data_exchange",
///     display_name="my_data_exchange",
///     description="example data exchange")
/// listing_dataset = gcp.bigquery.Dataset("listing",
///     dataset_id="my_listing",
///     friendly_name="my_listing",
///     description="example data exchange",
///     location="US")
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="US",
///     data_exchange_id=listing.data_exchange_id,
///     listing_id="my_listing",
///     display_name="my_listing",
///     description="example data exchange",
///     delete_commercial=True,
///     bigquery_dataset={
///         "dataset": listing_dataset.id,
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
///     var listing = new Gcp.BigQueryAnalyticsHub.DataExchange("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = "my_data_exchange",
///         DisplayName = "my_data_exchange",
///         Description = "example data exchange",
///     });
///
///     var listingDataset = new Gcp.BigQuery.Dataset("listing", new()
///     {
///         DatasetId = "my_listing",
///         FriendlyName = "my_listing",
///         Description = "example data exchange",
///         Location = "US",
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "US",
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = "my_listing",
///         DisplayName = "my_listing",
///         Description = "example data exchange",
///         DeleteCommercial = true,
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = listingDataset.Id,
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
/// 		listing, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("US"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			DisplayName:    pulumi.String("my_data_exchange"),
/// 			Description:    pulumi.String("example data exchange"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listingDataset, err := bigquery.NewDataset(ctx, "listing", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("my_listing"),
/// 			FriendlyName: pulumi.String("my_listing"),
/// 			Description:  pulumi.String("example data exchange"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:         pulumi.String("US"),
/// 			DataExchangeId:   listing.DataExchangeId,
/// 			ListingId:        pulumi.String("my_listing"),
/// 			DisplayName:      pulumi.String("my_listing"),
/// 			Description:      pulumi.String("example data exchange"),
/// 			DeleteCommercial: pulumi.Bool(true),
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: listingDataset.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing" {
///   location         = "US"
///   data_exchange_id = "my_data_exchange"
///   display_name     = "my_data_exchange"
///   description      = "example data exchange"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location          = "US"
///   data_exchange_id  = gcp_bigqueryanalyticshub_dataexchange.listing.data_exchange_id
///   listing_id        = "my_listing"
///   display_name      = "my_listing"
///   description       = "example data exchange"
///   delete_commercial = true
///   bigquery_dataset = {
///     dataset = gcp_bigquery_dataset.listing.id
///   }
/// }
/// resource "gcp_bigquery_dataset" "listing" {
///   dataset_id    = "my_listing"
///   friendly_name = "my_listing"
///   description   = "example data exchange"
///   location      = "US"
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
///         var listing = new DataExchange("listing", DataExchangeArgs.builder()
///             .location("US")
///             .dataExchangeId("my_data_exchange")
///             .displayName("my_data_exchange")
///             .description("example data exchange")
///             .build());
///
///         var listingDataset = new Dataset("listingDataset", DatasetArgs.builder()
///             .datasetId("my_listing")
///             .friendlyName("my_listing")
///             .description("example data exchange")
///             .location("US")
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("US")
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId("my_listing")
///             .displayName("my_listing")
///             .description("example data exchange")
///             .deleteCommercial(true)
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(listingDataset.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listing:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: US
///       dataExchangeId: my_data_exchange
///       displayName: my_data_exchange
///       description: example data exchange
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: US
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: my_listing
///       displayName: my_listing
///       description: example data exchange
///       deleteCommercial: true
///       bigqueryDataset:
///         dataset: ${listingDataset.id}
///   listingDataset:
///     type: gcp:bigquery:Dataset
///     name: listing
///     properties:
///       datasetId: my_listing
///       friendlyName: my_listing
///       description: example data exchange
///       location: US
/// ```
///
/// ### Bigquery Analyticshub Listing Multiregion
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const listing = new gcp.bigqueryanalyticshub.DataExchange("listing", {
///     location: "us",
///     dataExchangeId: "my_data_exchange",
///     displayName: "my_data_exchange",
/// });
/// const listingListing = new gcp.bigqueryanalyticshub.Listing("listing", {
///     location: "us",
///     dataExchangeId: listing.dataExchangeId,
///     listingId: "my_listing",
///     displayName: "my_listing",
///     bigqueryDataset: {
///         dataset: "projects/project_id/datasets/my_listing_example2",
///         replicaLocations: ["eu"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// listing = gcp.bigqueryanalyticshub.DataExchange("listing",
///     location="us",
///     data_exchange_id="my_data_exchange",
///     display_name="my_data_exchange")
/// listing_listing = gcp.bigqueryanalyticshub.Listing("listing",
///     location="us",
///     data_exchange_id=listing.data_exchange_id,
///     listing_id="my_listing",
///     display_name="my_listing",
///     bigquery_dataset={
///         "dataset": "projects/project_id/datasets/my_listing_example2",
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
///     var listing = new Gcp.BigQueryAnalyticsHub.DataExchange("listing", new()
///     {
///         Location = "us",
///         DataExchangeId = "my_data_exchange",
///         DisplayName = "my_data_exchange",
///     });
///
///     var listingListing = new Gcp.BigQueryAnalyticsHub.Listing("listing", new()
///     {
///         Location = "us",
///         DataExchangeId = listing.DataExchangeId,
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
/// 		listing, err := bigqueryanalyticshub.NewDataExchange(ctx, "listing", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			DisplayName:    pulumi.String("my_data_exchange"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "listing", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: listing.DataExchangeId,
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
/// resource "gcp_bigqueryanalyticshub_dataexchange" "listing" {
///   location         = "us"
///   data_exchange_id = "my_data_exchange"
///   display_name     = "my_data_exchange"
/// }
/// resource "gcp_bigqueryanalyticshub_listing" "listing" {
///   location         = "us"
///   data_exchange_id = gcp_bigqueryanalyticshub_dataexchange.listing.data_exchange_id
///   listing_id       = "my_listing"
///   display_name     = "my_listing"
///   bigquery_dataset = {
///     dataset           = "projects/project_id/datasets/my_listing_example2"
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
///         var listing = new DataExchange("listing", DataExchangeArgs.builder()
///             .location("us")
///             .dataExchangeId("my_data_exchange")
///             .displayName("my_data_exchange")
///             .build());
///
///         var listingListing = new Listing("listingListing", ListingArgs.builder()
///             .location("us")
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId("my_listing")
///             .displayName("my_listing")
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset("projects/project_id/datasets/my_listing_example2")
///                 .replicaLocations("eu")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listing:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: us
///       dataExchangeId: my_data_exchange
///       displayName: my_data_exchange
///   listingListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: listing
///     properties:
///       location: us
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: my_listing
///       displayName: my_listing
///       bigqueryDataset:
///         dataset: projects/project_id/datasets/my_listing_example2
///         replicaLocations:
///           - eu
/// ```
///
///
/// ## Import
///
/// Listing can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}`
/// * `{{project}}/{{location}}/{{data_exchange_id}}/{{listing_id}}`
/// * `{{location}}/{{data_exchange_id}}/{{listing_id}}`
///
///
/// When using the `pulumi import` command, Listing can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listing:Listing default projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}
/// $ pulumi import gcp:bigqueryanalyticshub/listing:Listing default {{project}}/{{location}}/{{data_exchange_id}}/{{listing_id}}
/// $ pulumi import gcp:bigqueryanalyticshub/listing:Listing default {{location}}/{{data_exchange_id}}/{{listing_id}}
/// ```
class Listing extends pulumi.CustomResource {
  /// If true, the listing is only available to get the resource metadata. Listing is non subscribable.
  late final pulumi.Output<bool?> allowOnlyMetadataSharing;
  /// Shared dataset i.e. BigQuery dataset source.
  /// Structure is documented below.
  late final pulumi.Output<ListingBigqueryDataset?> bigqueryDataset;
  /// Categories of the listing. Up to two categories are allowed.
  late final pulumi.Output<List<String>?> categories;
  /// Commercial info contains the information about the commercial data products associated with the listing.
  /// Structure is documented below.
  late final pulumi.Output<List<ListingCommercialInfo>> commercialInfos;
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> dataExchangeId;
  /// Details of the data provider who owns the source data.
  /// Structure is documented below.
  late final pulumi.Output<ListingDataProvider?> dataProvider;
  /// If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts as a safety guard to avoid deleting commercial listings accidentally.
  late final pulumi.Output<bool?> deleteCommercial;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF).
  late final pulumi.Output<String?> description;
  /// Specifies the type of discovery on the discovery page. Cannot be set for a restricted listing. Note that this does not control the visibility of the exchange/listing which is defined by IAM permission.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  late final pulumi.Output<String> discoveryType;
  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces.
  late final pulumi.Output<String> displayName;
  /// Documentation describing the listing.
  late final pulumi.Output<String?> documentation;
  /// Base64 encoded image representing the listing.
  late final pulumi.Output<String?> icon;
  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> listingId;
  /// The name of the location this data exchange listing.
  late final pulumi.Output<String> location;
  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  late final pulumi.Output<bool?> logLinkedDatasetQueryUserEmail;
  /// The resource name of the listing. e.g. "projects/myproject/locations/US/dataExchanges/123/listings/456"
  late final pulumi.Output<String> name;
  /// Email or URL of the primary point of contact of the listing.
  late final pulumi.Output<String?> primaryContact;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Details of the publisher who owns the listing and who can share the source data.
  /// Structure is documented below.
  late final pulumi.Output<ListingPublisher?> publisher;
  /// Pub/Sub topic source.
  /// Structure is documented below.
  late final pulumi.Output<ListingPubsubTopic?> pubsubTopic;
  /// Email or URL of the request access of the listing. Subscribers can use this reference to request access.
  late final pulumi.Output<String?> requestAccess;
  /// If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// Structure is documented below.
  late final pulumi.Output<ListingRestrictedExportConfig?> restrictedExportConfig;
  /// Current state of the listing.
  late final pulumi.Output<String> state;

  /// Creates a new [Listing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listing]. {@macro pulumi_bigqueryanalyticshub_listing_listing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listing(
    String name, {
    ListingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listing:Listing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    allowOnlyMetadataSharing = registerOutput<bool?>('allowOnlyMetadataSharing');
    bigqueryDataset = registerOutput<ListingBigqueryDataset?>('bigqueryDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingBigqueryDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    categories = registerOutput<List<String>?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    commercialInfos = registerOutput<List<ListingCommercialInfo>>('commercialInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingCommercialInfo>(guardedValue, (value) => ListingCommercialInfo.fromMap((value as Map).cast<String, dynamic>())); });
    dataExchangeId = registerOutput<String>('dataExchangeId');
    dataProvider = registerOutput<ListingDataProvider?>('dataProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingDataProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteCommercial = registerOutput<bool?>('deleteCommercial');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveryType = registerOutput<String>('discoveryType');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String?>('documentation');
    icon = registerOutput<String?>('icon');
    listingId = registerOutput<String>('listingId');
    location = registerOutput<String>('location');
    logLinkedDatasetQueryUserEmail = registerOutput<bool?>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    primaryContact = registerOutput<String?>('primaryContact');
    project = registerOutput<String>('project');
    publisher = registerOutput<ListingPublisher?>('publisher', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingPublisher.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pubsubTopic = registerOutput<ListingPubsubTopic?>('pubsubTopic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingPubsubTopic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestAccess = registerOutput<String?>('requestAccess');
    restrictedExportConfig = registerOutput<ListingRestrictedExportConfig?>('restrictedExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingRestrictedExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }

  /// Gets an existing [Listing] resource's state with the given [name] and [id].
  static Listing get(
    String name,
    pulumi.Input<String> id, {
    ListingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Listing._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Listing._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listing:Listing',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowOnlyMetadataSharing = registerOutput<bool?>('allowOnlyMetadataSharing');
    bigqueryDataset = registerOutput<ListingBigqueryDataset?>('bigqueryDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingBigqueryDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    categories = registerOutput<List<String>?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    commercialInfos = registerOutput<List<ListingCommercialInfo>>('commercialInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingCommercialInfo>(guardedValue, (value) => ListingCommercialInfo.fromMap((value as Map).cast<String, dynamic>())); });
    dataExchangeId = registerOutput<String>('dataExchangeId');
    dataProvider = registerOutput<ListingDataProvider?>('dataProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingDataProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteCommercial = registerOutput<bool?>('deleteCommercial');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveryType = registerOutput<String>('discoveryType');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String?>('documentation');
    icon = registerOutput<String?>('icon');
    listingId = registerOutput<String>('listingId');
    location = registerOutput<String>('location');
    logLinkedDatasetQueryUserEmail = registerOutput<bool?>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    primaryContact = registerOutput<String?>('primaryContact');
    project = registerOutput<String>('project');
    publisher = registerOutput<ListingPublisher?>('publisher', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingPublisher.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pubsubTopic = registerOutput<ListingPubsubTopic?>('pubsubTopic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingPubsubTopic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestAccess = registerOutput<String?>('requestAccess');
    restrictedExportConfig = registerOutput<ListingRestrictedExportConfig?>('restrictedExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingRestrictedExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [Listing] resource.
  Listing.reference(String urn)
    : super(
        'gcp:bigqueryanalyticshub/listing:Listing',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowOnlyMetadataSharing = registerOutput<bool?>('allowOnlyMetadataSharing');
    bigqueryDataset = registerOutput<ListingBigqueryDataset?>('bigqueryDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingBigqueryDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    categories = registerOutput<List<String>?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    commercialInfos = registerOutput<List<ListingCommercialInfo>>('commercialInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListingCommercialInfo>(guardedValue, (value) => ListingCommercialInfo.fromMap((value as Map).cast<String, dynamic>())); });
    dataExchangeId = registerOutput<String>('dataExchangeId');
    dataProvider = registerOutput<ListingDataProvider?>('dataProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingDataProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteCommercial = registerOutput<bool?>('deleteCommercial');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveryType = registerOutput<String>('discoveryType');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String?>('documentation');
    icon = registerOutput<String?>('icon');
    listingId = registerOutput<String>('listingId');
    location = registerOutput<String>('location');
    logLinkedDatasetQueryUserEmail = registerOutput<bool?>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    primaryContact = registerOutput<String?>('primaryContact');
    project = registerOutput<String>('project');
    publisher = registerOutput<ListingPublisher?>('publisher', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingPublisher.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pubsubTopic = registerOutput<ListingPubsubTopic?>('pubsubTopic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingPubsubTopic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestAccess = registerOutput<String?>('requestAccess');
    restrictedExportConfig = registerOutput<ListingRestrictedExportConfig?>('restrictedExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListingRestrictedExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }
}
