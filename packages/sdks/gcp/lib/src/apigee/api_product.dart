import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_args.dart';
import 'api_product_attribute.dart';
import 'api_product_graphql_operation_group.dart';
import 'api_product_grpc_operation_group.dart';
import 'api_product_operation_group.dart';
import 'api_product_state.dart';

/// An `ApiProduct` in Apigee.
///
///
/// To get more information about ApiProduct, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.apiproducts#ApiProduct)
/// * How-to Guides
/// * [Creating an API product](https://cloud.google.com/apigee/docs/api-platform/publish/what-api-product)
///
/// ## Example Usage
///
/// ### Apigee Api Product Basic
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
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "my-instance",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
///     peeringCidrRange: "SLASH_22",
/// });
/// const basicApiProduct = new gcp.apigee.ApiProduct("basic_api_product", {
///     orgId: apigeeOrg.id,
///     name: "my-product",
///     displayName: "My Basic API Product",
///     approvalType: "auto",
/// }, {
///     dependsOn: [apigeeInstance],
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
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="my-instance",
///     location="us-central1",
///     org_id=apigee_org.id,
///     peering_cidr_range="SLASH_22")
/// basic_api_product = gcp.apigee.ApiProduct("basic_api_product",
///     org_id=apigee_org.id,
///     name="my-product",
///     display_name="My Basic API Product",
///     approval_type="auto",
///     opts = pulumi.ResourceOptions(depends_on=[apigee_instance]))
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
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "my-instance",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///         PeeringCidrRange = "SLASH_22",
///     });
///
///     var basicApiProduct = new Gcp.Apigee.ApiProduct("basic_api_product", new()
///     {
///         OrgId = apigeeOrg.Id,
///         Name = "my-product",
///         DisplayName = "My Basic API Product",
///         ApprovalType = "auto",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeInstance,
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
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:             pulumi.String("my-instance"),
/// 			Location:         pulumi.String("us-central1"),
/// 			OrgId:            apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			PeeringCidrRange: pulumi.String("SLASH_22"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewApiProduct(ctx, "basic_api_product", &apigee.ApiProductArgs{
/// 			OrgId:        apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			Name:         pulumi.String("my-product"),
/// 			DisplayName:  pulumi.String("My Basic API Product"),
/// 			ApprovalType: pulumi.String("auto"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeInstance,
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
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name               = "my-instance"
///   location           = "us-central1"
///   org_id             = gcp_apigee_organization.apigee_org.id
///   peering_cidr_range = "SLASH_22"
/// }
/// resource "gcp_apigee_apiproduct" "basic_api_product" {
///   depends_on    = [gcp_apigee_instance.apigee_instance]
///   org_id        = gcp_apigee_organization.apigee_org.id
///   name          = "my-product"
///   display_name  = "My Basic API Product"
///   approval_type = "auto"
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
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.ApiProduct;
/// import com.pulumi.gcp.apigee.ApiProductArgs;
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
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("my-instance")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .peeringCidrRange("SLASH_22")
///             .build());
///
///         var basicApiProduct = new ApiProduct("basicApiProduct", ApiProductArgs.builder()
///             .orgId(apigeeOrg.id())
///             .name("my-product")
///             .displayName("My Basic API Product")
///             .approvalType("auto")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeInstance)
///                 .build());
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
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: my-instance
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///       peeringCidrRange: SLASH_22
///   basicApiProduct:
///     type: gcp:apigee:ApiProduct
///     name: basic_api_product
///     properties:
///       orgId: ${apigeeOrg.id}
///       name: my-product
///       displayName: My Basic API Product
///       approvalType: auto
///     options:
///       dependsOn:
///         - ${apigeeInstance}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Api Product With Legacy Operation
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
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "my-instance",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
///     peeringCidrRange: "SLASH_22",
/// });
/// const envDev = new gcp.apigee.Environment("env_dev", {
///     name: "dev",
///     orgId: apigeeOrg.id,
/// });
/// const testApigeeApi = new gcp.apigee.Api("test_apigee_api", {
///     name: "hello-world",
///     orgId: apigeeOrg.name,
///     configBundle: "apigee_api_bundle.zip",
/// });
/// const fullApiProduct = new gcp.apigee.ApiProduct("full_api_product", {
///     orgId: apigeeOrg.id,
///     name: "my-product",
///     displayName: "My full API Product",
///     approvalType: "auto",
///     description: "This is a sample API Product created with Terraform.",
///     attributes: [{
///         name: "access",
///         value: "private",
///     }],
///     environments: ["dev"],
///     proxies: ["hello-world"],
///     apiResources: [
///         "/",
///         "/weather/**",
///     ],
///     scopes: [
///         "read:weather",
///         "write:reports",
///     ],
///     quota: "10000",
///     quotaInterval: "1",
///     quotaTimeUnit: "day",
///     quotaCounterScope: "PROXY",
/// }, {
///     dependsOn: [
///         apigeeInstance,
///         envDev,
///         testApigeeApi,
///     ],
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
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="my-instance",
///     location="us-central1",
///     org_id=apigee_org.id,
///     peering_cidr_range="SLASH_22")
/// env_dev = gcp.apigee.Environment("env_dev",
///     name="dev",
///     org_id=apigee_org.id)
/// test_apigee_api = gcp.apigee.Api("test_apigee_api",
///     name="hello-world",
///     org_id=apigee_org.name,
///     config_bundle="apigee_api_bundle.zip")
/// full_api_product = gcp.apigee.ApiProduct("full_api_product",
///     org_id=apigee_org.id,
///     name="my-product",
///     display_name="My full API Product",
///     approval_type="auto",
///     description="This is a sample API Product created with Terraform.",
///     attributes=[{
///         "name": "access",
///         "value": "private",
///     }],
///     environments=["dev"],
///     proxies=["hello-world"],
///     api_resources=[
///         "/",
///         "/weather/**",
///     ],
///     scopes=[
///         "read:weather",
///         "write:reports",
///     ],
///     quota="10000",
///     quota_interval="1",
///     quota_time_unit="day",
///     quota_counter_scope="PROXY",
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_instance,
///             env_dev,
///             test_apigee_api,
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
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "my-instance",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///         PeeringCidrRange = "SLASH_22",
///     });
///
///     var envDev = new Gcp.Apigee.Environment("env_dev", new()
///     {
///         Name = "dev",
///         OrgId = apigeeOrg.Id,
///     });
///
///     var testApigeeApi = new Gcp.Apigee.Api("test_apigee_api", new()
///     {
///         Name = "hello-world",
///         OrgId = apigeeOrg.Name,
///         ConfigBundle = "apigee_api_bundle.zip",
///     });
///
///     var fullApiProduct = new Gcp.Apigee.ApiProduct("full_api_product", new()
///     {
///         OrgId = apigeeOrg.Id,
///         Name = "my-product",
///         DisplayName = "My full API Product",
///         ApprovalType = "auto",
///         Description = "This is a sample API Product created with Terraform.",
///         Attributes = new[]
///         {
///             new Gcp.Apigee.Inputs.ApiProductAttributeArgs
///             {
///                 Name = "access",
///                 Value = "private",
///             },
///         },
///         Environments = new[]
///         {
///             "dev",
///         },
///         Proxies = new[]
///         {
///             "hello-world",
///         },
///         ApiResources = new[]
///         {
///             "/",
///             "/weather/**",
///         },
///         Scopes = new[]
///         {
///             "read:weather",
///             "write:reports",
///         },
///         Quota = "10000",
///         QuotaInterval = "1",
///         QuotaTimeUnit = "day",
///         QuotaCounterScope = "PROXY",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeInstance,
///             envDev,
///             testApigeeApi,
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
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:             pulumi.String("my-instance"),
/// 			Location:         pulumi.String("us-central1"),
/// 			OrgId:            apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			PeeringCidrRange: pulumi.String("SLASH_22"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		envDev, err := apigee.NewEnvironment(ctx, "env_dev", &apigee.EnvironmentArgs{
/// 			Name:  pulumi.String("dev"),
/// 			OrgId: apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testApigeeApi, err := apigee.NewApi(ctx, "test_apigee_api", &apigee.ApiArgs{
/// 			Name:         pulumi.String("hello-world"),
/// 			OrgId:        apigeeOrg.Name,
/// 			ConfigBundle: pulumi.String("apigee_api_bundle.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewApiProduct(ctx, "full_api_product", &apigee.ApiProductArgs{
/// 			OrgId:        apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			Name:         pulumi.String("my-product"),
/// 			DisplayName:  pulumi.String("My full API Product"),
/// 			ApprovalType: pulumi.String("auto"),
/// 			Description:  pulumi.String("This is a sample API Product created with Terraform."),
/// 			Attributes: apigee.ApiProductAttributeArray{
/// 				&apigee.ApiProductAttributeArgs{
/// 					Name:  pulumi.String("access"),
/// 					Value: pulumi.String("private"),
/// 				},
/// 			},
/// 			Environments: pulumi.StringArray{
/// 				pulumi.String("dev"),
/// 			},
/// 			Proxies: pulumi.StringArray{
/// 				pulumi.String("hello-world"),
/// 			},
/// 			ApiResources: pulumi.StringArray{
/// 				pulumi.String("/"),
/// 				pulumi.String("/weather/**"),
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("read:weather"),
/// 				pulumi.String("write:reports"),
/// 			},
/// 			Quota:             pulumi.String("10000"),
/// 			QuotaInterval:     pulumi.String("1"),
/// 			QuotaTimeUnit:     pulumi.String("day"),
/// 			QuotaCounterScope: pulumi.String("PROXY"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeInstance,
/// 			envDev,
/// 			testApigeeApi,
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
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name               = "my-instance"
///   location           = "us-central1"
///   org_id             = gcp_apigee_organization.apigee_org.id
///   peering_cidr_range = "SLASH_22"
/// }
/// resource "gcp_apigee_environment" "env_dev" {
///   name   = "dev"
///   org_id = gcp_apigee_organization.apigee_org.id
/// }
/// resource "gcp_apigee_api" "test_apigee_api" {
///   name          = "hello-world"
///   org_id        = gcp_apigee_organization.apigee_org.name
///   config_bundle = "apigee_api_bundle.zip"
/// }
/// resource "gcp_apigee_apiproduct" "full_api_product" {
///   depends_on    = [gcp_apigee_instance.apigee_instance, gcp_apigee_environment.env_dev, gcp_apigee_api.test_apigee_api]
///   org_id        = gcp_apigee_organization.apigee_org.id
///   name          = "my-product"
///   display_name  = "My full API Product"
///   approval_type = "auto"
///   description   = "This is a sample API Product created with Terraform."
///   attributes {
///     name  = "access"
///     value = "private"
///   }
///   environments        = ["dev"]
///   proxies             = ["hello-world"]
///   api_resources       = ["/", "/weather/**"]
///   scopes              = ["read:weather", "write:reports"]
///   quota               = "10000"
///   quota_interval      = "1"
///   quota_time_unit     = "day"
///   quota_counter_scope = "PROXY"
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
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.Environment;
/// import com.pulumi.gcp.apigee.EnvironmentArgs;
/// import com.pulumi.gcp.apigee.Api;
/// import com.pulumi.gcp.apigee.ApiArgs;
/// import com.pulumi.gcp.apigee.ApiProduct;
/// import com.pulumi.gcp.apigee.ApiProductArgs;
/// import com.pulumi.gcp.apigee.inputs.ApiProductAttributeArgs;
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
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("my-instance")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .peeringCidrRange("SLASH_22")
///             .build());
///
///         var envDev = new Environment("envDev", EnvironmentArgs.builder()
///             .name("dev")
///             .orgId(apigeeOrg.id())
///             .build());
///
///         var testApigeeApi = new Api("testApigeeApi", ApiArgs.builder()
///             .name("hello-world")
///             .orgId(apigeeOrg.name())
///             .configBundle("apigee_api_bundle.zip")
///             .build());
///
///         var fullApiProduct = new ApiProduct("fullApiProduct", ApiProductArgs.builder()
///             .orgId(apigeeOrg.id())
///             .name("my-product")
///             .displayName("My full API Product")
///             .approvalType("auto")
///             .description("This is a sample API Product created with Terraform.")
///             .attributes(ApiProductAttributeArgs.builder()
///                 .name("access")
///                 .value("private")
///                 .build())
///             .environments("dev")
///             .proxies("hello-world")
///             .apiResources(
///                 "/",
///                 "/weather/**")
///             .scopes(
///                 "read:weather",
///                 "write:reports")
///             .quota("10000")
///             .quotaInterval("1")
///             .quotaTimeUnit("day")
///             .quotaCounterScope("PROXY")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeInstance,
///                     envDev,
///                     testApigeeApi)
///                 .build());
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
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: my-instance
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///       peeringCidrRange: SLASH_22
///   envDev:
///     type: gcp:apigee:Environment
///     name: env_dev
///     properties:
///       name: dev
///       orgId: ${apigeeOrg.id}
///   testApigeeApi:
///     type: gcp:apigee:Api
///     name: test_apigee_api
///     properties:
///       name: hello-world
///       orgId: ${apigeeOrg.name}
///       configBundle: apigee_api_bundle.zip
///   fullApiProduct:
///     type: gcp:apigee:ApiProduct
///     name: full_api_product
///     properties:
///       orgId: ${apigeeOrg.id}
///       name: my-product
///       displayName: My full API Product
///       approvalType: auto
///       description: This is a sample API Product created with Terraform.
///       attributes:
///         - name: access
///           value: private
///       environments:
///         - dev
///       proxies:
///         - hello-world
///       apiResources:
///         - /
///         - /weather/**
///       scopes:
///         - read:weather
///         - write:reports
///       quota: '10000'
///       quotaInterval: '1'
///       quotaTimeUnit: day
///       quotaCounterScope: PROXY
///     options:
///       dependsOn:
///         - ${apigeeInstance}
///         - ${envDev}
///         - ${testApigeeApi}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ## Import
///
/// ApiProduct can be imported using any of these accepted formats:
///
/// * `{{org_id}}/apiproducts/{{name}}`
/// * `{{org_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, ApiProduct can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/apiProduct:ApiProduct default {{org_id}}/apiproducts/{{name}}
/// $ pulumi import gcp:apigee/apiProduct:ApiProduct default {{org_id}}/{{name}}
/// ```
class ApiProduct extends pulumi.CustomResource {
  /// Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the proxy.pathsuffix variable.
  /// The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the apiResources element is defined to be /forecastrss and the base path defined for the API proxy is /weather, then only requests to /weather/forecastrss are permitted by the API product.
  late final pulumi.Output<List<String>?> apiResources;
  /// Flag that specifies how API keys are approved to access the APIs defined by the API product.
  /// Valid values are `auto` or `manual`.
  /// Possible values are: `auto`, `manual`.
  late final pulumi.Output<String?> approvalType;
  /// Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes.
  /// Use this property to specify the access level of the API product as either public, private, or internal.
  /// Structure is documented below.
  late final pulumi.Output<List<ApiProductAttribute>?> attributes;
  /// Response only. Creation time of this environment as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the API product. Include key information about the API product that is not captured by other fields.
  late final pulumi.Output<String?> description;
  /// Name displayed in the UI or developer portal to developers registering for API access.
  late final pulumi.Output<String> displayName;
  /// Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected.
  /// By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment.
  late final pulumi.Output<List<String>?> environments;
  /// Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  /// Structure is documented below.
  late final pulumi.Output<ApiProductGraphqlOperationGroup?> graphqlOperationGroup;
  /// Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  /// Structure is documented below.
  late final pulumi.Output<ApiProductGrpcOperationGroup?> grpcOperationGroup;
  /// Response only. Modified time of this environment as milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// Internal name of the API product.
  late final pulumi.Output<String> name;
  /// Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the quota setting).
  /// Note: The apiResources setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  /// Structure is documented below.
  late final pulumi.Output<ApiProductOperationGroup?> operationGroup;
  /// The Apigee Organization associated with the Apigee API product,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies.
  /// Apigee rejects requests to API proxies that are not listed.
  late final pulumi.Output<List<String>?> proxies;
  /// Number of request messages permitted per app by this API product for the specified quotaInterval and quotaTimeUnit.
  /// For example, a quota of 50, for a quotaInterval of 12 and a quotaTimeUnit of hours means 50 requests are allowed every 12 hours.
  late final pulumi.Output<String?> quota;
  /// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  /// Possible values are: `QUOTA_COUNTER_SCOPE_UNSPECIFIED`, `PROXY`, `OPERATION`.
  late final pulumi.Output<String?> quotaCounterScope;
  /// Time interval over which the number of request messages is calculated.
  late final pulumi.Output<String?> quotaInterval;
  /// Time unit defined for the quotaInterval. Valid values include second, minute, hour, day, month or year.
  late final pulumi.Output<String?> quotaTimeUnit;
  /// Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  late final pulumi.Output<List<String>?> scopes;
  /// Optional. The resource ID of the parent Space. If not set, the parent resource will be the Organization.
  late final pulumi.Output<String?> space;

  /// Creates a new [ApiProduct].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiProduct]. {@macro pulumi_apigee_api_product_api_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiProduct(
    String name, {
    ApiProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/apiProduct:ApiProduct',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    apiResources = registerOutput<List<String>?>('apiResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    approvalType = registerOutput<String?>('approvalType');
    attributes = registerOutput<List<ApiProductAttribute>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiProductAttribute>(guardedValue, (value) => ApiProductAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    environments = registerOutput<List<String>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    graphqlOperationGroup = registerOutput<ApiProductGraphqlOperationGroup?>('graphqlOperationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductGraphqlOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcOperationGroup = registerOutput<ApiProductGrpcOperationGroup?>('grpcOperationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductGrpcOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    operationGroup = registerOutput<ApiProductOperationGroup?>('operationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    proxies = registerOutput<List<String>?>('proxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    quota = registerOutput<String?>('quota');
    quotaCounterScope = registerOutput<String?>('quotaCounterScope');
    quotaInterval = registerOutput<String?>('quotaInterval');
    quotaTimeUnit = registerOutput<String?>('quotaTimeUnit');
    scopes = registerOutput<List<String>?>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    space = registerOutput<String?>('space');
  }

  /// Gets an existing [ApiProduct] resource's state with the given [name] and [id].
  static ApiProduct get(
    String name,
    pulumi.Input<String> id, {
    ApiProductState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiProduct._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiProduct._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/apiProduct:ApiProduct',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiResources = registerOutput<List<String>?>('apiResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    approvalType = registerOutput<String?>('approvalType');
    attributes = registerOutput<List<ApiProductAttribute>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiProductAttribute>(guardedValue, (value) => ApiProductAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    environments = registerOutput<List<String>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    graphqlOperationGroup = registerOutput<ApiProductGraphqlOperationGroup?>('graphqlOperationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductGraphqlOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcOperationGroup = registerOutput<ApiProductGrpcOperationGroup?>('grpcOperationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductGrpcOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    operationGroup = registerOutput<ApiProductOperationGroup?>('operationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    proxies = registerOutput<List<String>?>('proxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    quota = registerOutput<String?>('quota');
    quotaCounterScope = registerOutput<String?>('quotaCounterScope');
    quotaInterval = registerOutput<String?>('quotaInterval');
    quotaTimeUnit = registerOutput<String?>('quotaTimeUnit');
    scopes = registerOutput<List<String>?>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    space = registerOutput<String?>('space');
  }

  /// Creates a typed reference to an existing [ApiProduct] resource.
  ApiProduct.reference(String urn)
    : super(
        'gcp:apigee/apiProduct:ApiProduct',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiResources = registerOutput<List<String>?>('apiResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    approvalType = registerOutput<String?>('approvalType');
    attributes = registerOutput<List<ApiProductAttribute>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiProductAttribute>(guardedValue, (value) => ApiProductAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    environments = registerOutput<List<String>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    graphqlOperationGroup = registerOutput<ApiProductGraphqlOperationGroup?>('graphqlOperationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductGraphqlOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcOperationGroup = registerOutput<ApiProductGrpcOperationGroup?>('grpcOperationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductGrpcOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    operationGroup = registerOutput<ApiProductOperationGroup?>('operationGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiProductOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    proxies = registerOutput<List<String>?>('proxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    quota = registerOutput<String?>('quota');
    quotaCounterScope = registerOutput<String?>('quotaCounterScope');
    quotaInterval = registerOutput<String?>('quotaInterval');
    quotaTimeUnit = registerOutput<String?>('quotaTimeUnit');
    scopes = registerOutput<List<String>?>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    space = registerOutput<String?>('space');
  }
}
