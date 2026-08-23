import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_args.dart';
import 'datastore_datastore_config.dart';
import 'datastore_state.dart';

/// An analytics datastore for an Apigee organization. Datastores configure
/// export destinations for Apigee Analytics data, supporting either Google
/// Cloud Storage (GCS) or BigQuery as targets.
///
///
/// To get more information about Datastore, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.analytics.datastores)
/// * How-to Guides
/// * [Export analytics data](https://cloud.google.com/apigee/docs/api-platform/analytics/analytics-export)
///
/// ## Example Usage
///
/// ### Apigee Datastore Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
/// }, {
///     dependsOn: [apigeeVpcConnection],
/// });
/// const analyticsBucket = new gcp.storage.Bucket("analytics_bucket", {
///     name: "my-analytics-bucket",
///     location: "US",
/// });
/// const apigeeDatastore = new gcp.apigee.Datastore("apigee_datastore", {
///     orgId: apigeeOrg.id,
///     displayName: "my_datastore",
///     targetType: "gcs",
///     datastoreConfig: {
///         projectId: current.then(current => current.project),
///         bucketName: analyticsBucket.name,
///         path: "/analytics",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name])
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
/// analytics_bucket = gcp.storage.Bucket("analytics_bucket",
///     name="my-analytics-bucket",
///     location="US")
/// apigee_datastore = gcp.apigee.Datastore("apigee_datastore",
///     org_id=apigee_org.id,
///     display_name="my_datastore",
///     target_type="gcs",
///     datastore_config={
///         "project_id": current.project,
///         "bucket_name": analytics_bucket.name,
///         "path": "/analytics",
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
///     var current = Gcp.Organizations.GetClientConfig.Invoke();
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = apigeeNetwork.Id,
///     });
///
///     var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
///     {
///         Network = apigeeNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             apigeeRange.Name,
///         },
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///         },
///     });
///
///     var analyticsBucket = new Gcp.Storage.Bucket("analytics_bucket", new()
///     {
///         Name = "my-analytics-bucket",
///         Location = "US",
///     });
///
///     var apigeeDatastore = new Gcp.Apigee.Datastore("apigee_datastore", new()
///     {
///         OrgId = apigeeOrg.Id,
///         DisplayName = "my_datastore",
///         TargetType = "gcs",
///         DatastoreConfig = new Gcp.Apigee.Inputs.DatastoreDatastoreConfigArgs
///         {
///             ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///             BucketName = analyticsBucket.Name,
///             Path = "/analytics",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("apigee-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				apigeeRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.String(current.Project),
/// 			AuthorizedNetwork: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		analyticsBucket, err := storage.NewBucket(ctx, "analytics_bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("my-analytics-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewDatastore(ctx, "apigee_datastore", &apigee.DatastoreArgs{
/// 			OrgId:       apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("my_datastore"),
/// 			TargetType:  pulumi.String("gcs"),
/// 			DatastoreConfig: &apigee.DatastoreDatastoreConfigArgs{
/// 				ProjectId:  pulumi.String(current.Project),
/// 				BucketName: analyticsBucket.Name,
/// 				Path:       pulumi.String("/analytics"),
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
/// data "gcp_organizations_getclientconfig" "current" {
/// }
///
/// resource "gcp_compute_network" "apigee_network" {
///   name = "apigee-network"
/// }
/// resource "gcp_compute_globaladdress" "apigee_range" {
///   name          = "apigee-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_servicenetworking_connection" "apigee_vpc_connection" {
///   network                 = gcp_compute_network.apigee_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.apigee_range.name]
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on         = [gcp_servicenetworking_connection.apigee_vpc_connection]
///   analytics_region   = "us-central1"
///   project_id         = data.gcp_organizations_getclientconfig.current.project
///   authorized_network = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_storage_bucket" "analytics_bucket" {
///   name     = "my-analytics-bucket"
///   location = "US"
/// }
/// resource "gcp_apigee_datastore" "apigee_datastore" {
///   org_id       = gcp_apigee_organization.apigee_org.id
///   display_name = "my_datastore"
///   target_type  = "gcs"
///   datastore_config = {
///     project_id  = data.gcp_organizations_getclientconfig.current.project
///     bucket_name = gcp_storage_bucket.analytics_bucket.name
///     path        = "/analytics"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.apigee.Datastore;
/// import com.pulumi.gcp.apigee.DatastoreArgs;
/// import com.pulumi.gcp.apigee.inputs.DatastoreDatastoreConfigArgs;
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
///         final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(apigeeNetwork.id())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeVpcConnection)
///                 .build());
///
///         var analyticsBucket = new Bucket("analyticsBucket", BucketArgs.builder()
///             .name("my-analytics-bucket")
///             .location("US")
///             .build());
///
///         var apigeeDatastore = new Datastore("apigeeDatastore", DatastoreArgs.builder()
///             .orgId(apigeeOrg.id())
///             .displayName("my_datastore")
///             .targetType("gcs")
///             .datastoreConfig(DatastoreDatastoreConfigArgs.builder()
///                 .projectId(current.project())
///                 .bucketName(analyticsBucket.name())
///                 .path("/analytics")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${apigeeNetwork.id}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///   analyticsBucket:
///     type: gcp:storage:Bucket
///     name: analytics_bucket
///     properties:
///       name: my-analytics-bucket
///       location: US
///   apigeeDatastore:
///     type: gcp:apigee:Datastore
///     name: apigee_datastore
///     properties:
///       orgId: ${apigeeOrg.id}
///       displayName: my_datastore
///       targetType: gcs
///       datastoreConfig:
///         projectId: ${current.project}
///         bucketName: ${analyticsBucket.name}
///         path: /analytics
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Datastore Bigquery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
/// }, {
///     dependsOn: [apigeeVpcConnection],
/// });
/// const analyticsDataset = new gcp.bigquery.Dataset("analytics_dataset", {
///     datasetId: "my_analytics_dataset",
///     location: "US",
/// });
/// const apigeeDatastore = new gcp.apigee.Datastore("apigee_datastore", {
///     orgId: apigeeOrg.id,
///     displayName: "my_bigquery_datastore",
///     targetType: "bigquery",
///     datastoreConfig: {
///         projectId: current.then(current => current.project),
///         datasetName: analyticsDataset.datasetId,
///         tablePrefix: "apigee_",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name])
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
/// analytics_dataset = gcp.bigquery.Dataset("analytics_dataset",
///     dataset_id="my_analytics_dataset",
///     location="US")
/// apigee_datastore = gcp.apigee.Datastore("apigee_datastore",
///     org_id=apigee_org.id,
///     display_name="my_bigquery_datastore",
///     target_type="bigquery",
///     datastore_config={
///         "project_id": current.project,
///         "dataset_name": analytics_dataset.dataset_id,
///         "table_prefix": "apigee_",
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
///     var current = Gcp.Organizations.GetClientConfig.Invoke();
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = apigeeNetwork.Id,
///     });
///
///     var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
///     {
///         Network = apigeeNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             apigeeRange.Name,
///         },
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///         },
///     });
///
///     var analyticsDataset = new Gcp.BigQuery.Dataset("analytics_dataset", new()
///     {
///         DatasetId = "my_analytics_dataset",
///         Location = "US",
///     });
///
///     var apigeeDatastore = new Gcp.Apigee.Datastore("apigee_datastore", new()
///     {
///         OrgId = apigeeOrg.Id,
///         DisplayName = "my_bigquery_datastore",
///         TargetType = "bigquery",
///         DatastoreConfig = new Gcp.Apigee.Inputs.DatastoreDatastoreConfigArgs
///         {
///             ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///             DatasetName = analyticsDataset.DatasetId,
///             TablePrefix = "apigee_",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("apigee-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				apigeeRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.String(current.Project),
/// 			AuthorizedNetwork: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		analyticsDataset, err := bigquery.NewDataset(ctx, "analytics_dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("my_analytics_dataset"),
/// 			Location:  pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewDatastore(ctx, "apigee_datastore", &apigee.DatastoreArgs{
/// 			OrgId:       apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("my_bigquery_datastore"),
/// 			TargetType:  pulumi.String("bigquery"),
/// 			DatastoreConfig: &apigee.DatastoreDatastoreConfigArgs{
/// 				ProjectId:   pulumi.String(current.Project),
/// 				DatasetName: analyticsDataset.DatasetId,
/// 				TablePrefix: pulumi.String("apigee_"),
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
/// data "gcp_organizations_getclientconfig" "current" {
/// }
///
/// resource "gcp_compute_network" "apigee_network" {
///   name = "apigee-network"
/// }
/// resource "gcp_compute_globaladdress" "apigee_range" {
///   name          = "apigee-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_servicenetworking_connection" "apigee_vpc_connection" {
///   network                 = gcp_compute_network.apigee_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.apigee_range.name]
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on         = [gcp_servicenetworking_connection.apigee_vpc_connection]
///   analytics_region   = "us-central1"
///   project_id         = data.gcp_organizations_getclientconfig.current.project
///   authorized_network = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_bigquery_dataset" "analytics_dataset" {
///   dataset_id = "my_analytics_dataset"
///   location   = "US"
/// }
/// resource "gcp_apigee_datastore" "apigee_datastore" {
///   org_id       = gcp_apigee_organization.apigee_org.id
///   display_name = "my_bigquery_datastore"
///   target_type  = "bigquery"
///   datastore_config = {
///     project_id   = data.gcp_organizations_getclientconfig.current.project
///     dataset_name = gcp_bigquery_dataset.analytics_dataset.dataset_id
///     table_prefix = "apigee_"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.apigee.Datastore;
/// import com.pulumi.gcp.apigee.DatastoreArgs;
/// import com.pulumi.gcp.apigee.inputs.DatastoreDatastoreConfigArgs;
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
///         final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(apigeeNetwork.id())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeVpcConnection)
///                 .build());
///
///         var analyticsDataset = new Dataset("analyticsDataset", DatasetArgs.builder()
///             .datasetId("my_analytics_dataset")
///             .location("US")
///             .build());
///
///         var apigeeDatastore = new Datastore("apigeeDatastore", DatastoreArgs.builder()
///             .orgId(apigeeOrg.id())
///             .displayName("my_bigquery_datastore")
///             .targetType("bigquery")
///             .datastoreConfig(DatastoreDatastoreConfigArgs.builder()
///                 .projectId(current.project())
///                 .datasetName(analyticsDataset.datasetId())
///                 .tablePrefix("apigee_")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${apigeeNetwork.id}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///   analyticsDataset:
///     type: gcp:bigquery:Dataset
///     name: analytics_dataset
///     properties:
///       datasetId: my_analytics_dataset
///       location: US
///   apigeeDatastore:
///     type: gcp:apigee:Datastore
///     name: apigee_datastore
///     properties:
///       orgId: ${apigeeOrg.id}
///       displayName: my_bigquery_datastore
///       targetType: bigquery
///       datastoreConfig:
///         projectId: ${current.project}
///         datasetName: ${analyticsDataset.datasetId}
///         tablePrefix: apigee_
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Datastore can be imported using any of these accepted formats:
///
/// * `{{org_id}}/analytics/datastores/{{name}}`
/// * `{{org_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, Datastore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/datastore:Datastore default {{org_id}}/analytics/datastores/{{name}}
/// $ pulumi import gcp:apigee/datastore:Datastore default {{org_id}}/{{name}}
/// ```
class Datastore extends pulumi.CustomResource {
  /// The time at which the datastore was created in milliseconds since the epoch.
  late final pulumi.Output<String> createTime;
  /// Configuration of the datastore target.
  /// Structure is documented below.
  late final pulumi.Output<DatastoreDatastoreConfig> datastoreConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name for the datastore.
  late final pulumi.Output<String> displayName;
  /// The time at which the datastore was last updated in milliseconds since the epoch.
  late final pulumi.Output<String> lastUpdateTime;
  /// The server-assigned UUID identifier for the datastore. Extracted
  /// from the `self` field in the API response.
  late final pulumi.Output<String> name;
  /// The Apigee organization name.
  late final pulumi.Output<String> org;
  /// The Apigee Organization associated with the Apigee datastore,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// The resource link for the datastore, including the full API path.
  late final pulumi.Output<String> self;
  /// The type of target for the datastore. Must be `gcs` for Google
  /// Cloud Storage or `bigquery` for BigQuery.
  late final pulumi.Output<String> targetType;

  /// Creates a new [Datastore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datastore]. {@macro pulumi_apigee_datastore_datastore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datastore(
    String name, {
    DatastoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/datastore:Datastore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    datastoreConfig = registerOutput<DatastoreDatastoreConfig>('datastoreConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatastoreDatastoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    this.name = registerOutput<String>('name');
    org = registerOutput<String>('org');
    orgId = registerOutput<String>('orgId');
    self = registerOutput<String>('self');
    targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [Datastore] resource's state with the given [name] and [id].
  static Datastore get(
    String name,
    pulumi.Input<String> id, {
    DatastoreState? state,
  }) {
    return Datastore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Datastore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/datastore:Datastore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    datastoreConfig = registerOutput<DatastoreDatastoreConfig>('datastoreConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatastoreDatastoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    this.name = registerOutput<String>('name');
    org = registerOutput<String>('org');
    orgId = registerOutput<String>('orgId');
    self = registerOutput<String>('self');
    targetType = registerOutput<String>('targetType');
  }
}
