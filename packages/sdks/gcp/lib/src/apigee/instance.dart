import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_logging_config.dart';
import 'instance_args.dart';
import 'instance_state.dart';

/// An `Instance` is the runtime dataplane in Apigee.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances/create)
/// * How-to Guides
/// * [Creating a runtime instance](https://cloud.google.com/apigee/docs/api-platform/get-started/create-instance)
///
/// ## Example Usage
///
/// ### Apigee Instance Basic
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
///     name: "my-instance-name",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
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
///     name="my-instance-name",
///     location="us-central1",
///     org_id=apigee_org.id)
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
///         Name = "my-instance-name",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
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
/// 		_, err = apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:     pulumi.String("my-instance-name"),
/// 			Location: pulumi.String("us-central1"),
/// 			OrgId:    apigeeOrg.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name     = "my-instance-name"
///   location = "us-central1"
///   org_id   = gcp_apigee_organization.apigee_org.id
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
///             .name("my-instance-name")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
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
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: my-instance-name
///       location: us-central1
///       orgId: ${apigeeOrg.id}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Instance Cidr Range
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
///     prefixLength: 22,
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
///     name: "my-instance-name",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
///     peeringCidrRange: "SLASH_22",
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
///     prefix_length=22,
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
///     name="my-instance-name",
///     location="us-central1",
///     org_id=apigee_org.id,
///     peering_cidr_range="SLASH_22")
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
///         PrefixLength = 22,
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
///         Name = "my-instance-name",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///         PeeringCidrRange = "SLASH_22",
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
/// 			PrefixLength: pulumi.Int(22),
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
/// 		_, err = apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:             pulumi.String("my-instance-name"),
/// 			Location:         pulumi.String("us-central1"),
/// 			OrgId:            apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			PeeringCidrRange: pulumi.String("SLASH_22"),
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
///   prefix_length = 22
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
///   name               = "my-instance-name"
///   location           = "us-central1"
///   org_id             = gcp_apigee_organization.apigee_org.id
///   peering_cidr_range = "SLASH_22"
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
///             .prefixLength(22)
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
///             .name("my-instance-name")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .peeringCidrRange("SLASH_22")
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
///       prefixLength: 22
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
///       name: my-instance-name
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///       peeringCidrRange: SLASH_22
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Instance Ip Range
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
///     prefixLength: 22,
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
///     name: "my-instance-name",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
///     ipRange: "10.87.8.0/22",
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
///     prefix_length=22,
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
///     name="my-instance-name",
///     location="us-central1",
///     org_id=apigee_org.id,
///     ip_range="10.87.8.0/22")
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
///         PrefixLength = 22,
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
///         Name = "my-instance-name",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///         IpRange = "10.87.8.0/22",
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
/// 			PrefixLength: pulumi.Int(22),
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
/// 		_, err = apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:     pulumi.String("my-instance-name"),
/// 			Location: pulumi.String("us-central1"),
/// 			OrgId:    apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			IpRange:  pulumi.String("10.87.8.0/22"),
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
///   prefix_length = 22
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
///   name     = "my-instance-name"
///   location = "us-central1"
///   org_id   = gcp_apigee_organization.apigee_org.id
///   ip_range = "10.87.8.0/22"
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
///             .prefixLength(22)
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
///             .name("my-instance-name")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .ipRange("10.87.8.0/22")
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
///       prefixLength: 22
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
///       name: my-instance-name
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///       ipRange: 10.87.8.0/22
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Instance Full
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
/// const apigeeKeyring = new gcp.kms.KeyRing("apigee_keyring", {
///     name: "apigee-keyring",
///     location: "us-central1",
/// });
/// const apigeeKey = new gcp.kms.CryptoKey("apigee_key", {
///     name: "apigee-key",
///     keyRing: apigeeKeyring.id,
/// });
/// const apigeeSa = new gcp.projects.ServiceIdentity("apigee_sa", {
///     project: project.projectId,
///     service: apigee.service,
/// });
/// const apigeeSaKeyuser = new gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser", {
///     cryptoKeyId: apigeeKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: apigeeSa.member,
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     displayName: "apigee-org",
///     description: "Auto-provisioned Apigee Org.",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
///     runtimeDatabaseEncryptionKeyName: apigeeKey.id,
/// }, {
///     dependsOn: [
///         apigeeVpcConnection,
///         apigeeSaKeyuser,
///     ],
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "my-instance-name",
///     location: "us-central1",
///     description: "Auto-managed Apigee Runtime Instance",
///     displayName: "my-instance-name",
///     orgId: apigeeOrg.id,
///     diskEncryptionKeyName: apigeeKey.id,
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
/// apigee_keyring = gcp.kms.KeyRing("apigee_keyring",
///     name="apigee-keyring",
///     location="us-central1")
/// apigee_key = gcp.kms.CryptoKey("apigee_key",
///     name="apigee-key",
///     key_ring=apigee_keyring.id)
/// apigee_sa = gcp.projects.ServiceIdentity("apigee_sa",
///     project=project["projectId"],
///     service=apigee["service"])
/// apigee_sa_keyuser = gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser",
///     crypto_key_id=apigee_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=apigee_sa.member)
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     display_name="apigee-org",
///     description="Auto-provisioned Apigee Org.",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     runtime_database_encryption_key_name=apigee_key.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_vpc_connection,
///             apigee_sa_keyuser,
///         ]))
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="my-instance-name",
///     location="us-central1",
///     description="Auto-managed Apigee Runtime Instance",
///     display_name="my-instance-name",
///     org_id=apigee_org.id,
///     disk_encryption_key_name=apigee_key.id)
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
///     var apigeeKeyring = new Gcp.Kms.KeyRing("apigee_keyring", new()
///     {
///         Name = "apigee-keyring",
///         Location = "us-central1",
///     });
///
///     var apigeeKey = new Gcp.Kms.CryptoKey("apigee_key", new()
///     {
///         Name = "apigee-key",
///         KeyRing = apigeeKeyring.Id,
///     });
///
///     var apigeeSa = new Gcp.Projects.ServiceIdentity("apigee_sa", new()
///     {
///         Project = project.ProjectId,
///         Service = apigee.Service,
///     });
///
///     var apigeeSaKeyuser = new Gcp.Kms.CryptoKeyIAMMember("apigee_sa_keyuser", new()
///     {
///         CryptoKeyId = apigeeKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = apigeeSa.Member,
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         DisplayName = "apigee-org",
///         Description = "Auto-provisioned Apigee Org.",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///         RuntimeDatabaseEncryptionKeyName = apigeeKey.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///             apigeeSaKeyuser,
///         },
///     });
///
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "my-instance-name",
///         Location = "us-central1",
///         Description = "Auto-managed Apigee Runtime Instance",
///         DisplayName = "my-instance-name",
///         OrgId = apigeeOrg.Id,
///         DiskEncryptionKeyName = apigeeKey.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
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
/// 		apigeeKeyring, err := kms.NewKeyRing(ctx, "apigee_keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("apigee-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKey, err := kms.NewCryptoKey(ctx, "apigee_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("apigee-key"),
/// 			KeyRing: apigeeKeyring.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSa, err := projects.NewServiceIdentity(ctx, "apigee_sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.Any(project.ProjectId),
/// 			Service: pulumi.Any(apigee.Service),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSaKeyuser, err := kms.NewCryptoKeyIAMMember(ctx, "apigee_sa_keyuser", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      apigeeSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:                  pulumi.String("us-central1"),
/// 			DisplayName:                      pulumi.String("apigee-org"),
/// 			Description:                      pulumi.String("Auto-provisioned Apigee Org."),
/// 			ProjectId:                        pulumi.String(current.Project),
/// 			AuthorizedNetwork:                apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			RuntimeDatabaseEncryptionKeyName: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 			apigeeSaKeyuser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:                  pulumi.String("my-instance-name"),
/// 			Location:              pulumi.String("us-central1"),
/// 			Description:           pulumi.String("Auto-managed Apigee Runtime Instance"),
/// 			DisplayName:           pulumi.String("my-instance-name"),
/// 			OrgId:                 apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DiskEncryptionKeyName: apigeeKey.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_kms_keyring" "apigee_keyring" {
///   name     = "apigee-keyring"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokey" "apigee_key" {
///   name     = "apigee-key"
///   key_ring = gcp_kms_keyring.apigee_keyring.id
/// }
/// resource "gcp_projects_serviceidentity" "apigee_sa" {
///   project = project.projectId
///   service = apigee.service
/// }
/// resource "gcp_kms_cryptokeyiammember" "apigee_sa_keyuser" {
///   crypto_key_id = gcp_kms_cryptokey.apigee_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        = gcp_projects_serviceidentity.apigee_sa.member
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on                           = [gcp_servicenetworking_connection.apigee_vpc_connection, gcp_kms_cryptokeyiammember.apigee_sa_keyuser]
///   analytics_region                     = "us-central1"
///   display_name                         = "apigee-org"
///   description                          = "Auto-provisioned Apigee Org."
///   project_id                           = data.gcp_organizations_getclientconfig.current.project
///   authorized_network                   = gcp_compute_network.apigee_network.id
///   runtime_database_encryption_key_name = gcp_kms_cryptokey.apigee_key.id
/// }
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name                     = "my-instance-name"
///   location                 = "us-central1"
///   description              = "Auto-managed Apigee Runtime Instance"
///   display_name             = "my-instance-name"
///   org_id                   = gcp_apigee_organization.apigee_org.id
///   disk_encryption_key_name = gcp_kms_cryptokey.apigee_key.id
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
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
///         var apigeeKeyring = new KeyRing("apigeeKeyring", KeyRingArgs.builder()
///             .name("apigee-keyring")
///             .location("us-central1")
///             .build());
///
///         var apigeeKey = new CryptoKey("apigeeKey", CryptoKeyArgs.builder()
///             .name("apigee-key")
///             .keyRing(apigeeKeyring.id())
///             .build());
///
///         var apigeeSa = new ServiceIdentity("apigeeSa", ServiceIdentityArgs.builder()
///             .project(project.get("projectId"))
///             .service(apigee.get("service"))
///             .build());
///
///         var apigeeSaKeyuser = new CryptoKeyIAMMember("apigeeSaKeyuser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(apigeeKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(apigeeSa.member())
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .displayName("apigee-org")
///             .description("Auto-provisioned Apigee Org.")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .runtimeDatabaseEncryptionKeyName(apigeeKey.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeVpcConnection,
///                     apigeeSaKeyuser)
///                 .build());
///
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("my-instance-name")
///             .location("us-central1")
///             .description("Auto-managed Apigee Runtime Instance")
///             .displayName("my-instance-name")
///             .orgId(apigeeOrg.id())
///             .diskEncryptionKeyName(apigeeKey.id())
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
///   apigeeKeyring:
///     type: gcp:kms:KeyRing
///     name: apigee_keyring
///     properties:
///       name: apigee-keyring
///       location: us-central1
///   apigeeKey:
///     type: gcp:kms:CryptoKey
///     name: apigee_key
///     properties:
///       name: apigee-key
///       keyRing: ${apigeeKeyring.id}
///   apigeeSa:
///     type: gcp:projects:ServiceIdentity
///     name: apigee_sa
///     properties:
///       project: ${project.projectId}
///       service: ${apigee.service}
///   apigeeSaKeyuser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: apigee_sa_keyuser
///     properties:
///       cryptoKeyId: ${apigeeKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${apigeeSa.member}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       displayName: apigee-org
///       description: Auto-provisioned Apigee Org.
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///       runtimeDatabaseEncryptionKeyName: ${apigeeKey.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///         - ${apigeeSaKeyuser}
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: my-instance-name
///       location: us-central1
///       description: Auto-managed Apigee Runtime Instance
///       displayName: my-instance-name
///       orgId: ${apigeeOrg.id}
///       diskEncryptionKeyName: ${apigeeKey.id}
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
/// Instance can be imported using any of these accepted formats:
///
/// * `{{org_id}}/instances/{{name}}`
/// * `{{org_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/instance:Instance default {{org_id}}/instances/{{name}}
/// $ pulumi import gcp:apigee/instance:Instance default {{org_id}}/{{name}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Access logging configuration enables the access logging feature at the instance.
  /// Apigee customers can enable access logging to ship the access logs to their own project's cloud logging.
  /// Structure is documented below.
  late final pulumi.Output<InstanceAccessLoggingConfig?> accessLoggingConfig;
  /// Optional. Customer accept list represents the list of projects (id/number) on customer
  /// side that can privately connect to the service attachment. It is an optional field
  /// which the customers can provide during the instance creation. By default, the customer
  /// project associated with the Apigee organization will be included to the list.
  late final pulumi.Output<List<String>> consumerAcceptLists;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the instance.
  late final pulumi.Output<String?> description;
  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
  /// Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  late final pulumi.Output<String?> diskEncryptionKeyName;
  /// Display name of the instance.
  late final pulumi.Output<String?> displayName;
  /// Output only. Hostname or IP address of the exposed Apigee endpoint used by clients to connect to the service.
  late final pulumi.Output<String> host;
  /// IP range represents the customer-provided CIDR block of length 22 that will be used for
  /// the Apigee instance creation. This optional range, if provided, should be freely
  /// available as part of larger named range the customer has allocated to the Service
  /// Networking peering. If this is not provided, Apigee will automatically request for any
  /// available /22 CIDR block from Service Networking. The customer should use this CIDR block
  /// for configuring their firewall needs to allow traffic from Apigee.
  /// Input format: "a.b.c.d/22"
  late final pulumi.Output<String?> ipRange;
  /// Required. Compute Engine location where the instance resides.
  late final pulumi.Output<String> location;
  /// Resource ID of the instance.
  late final pulumi.Output<String> name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// The size of the CIDR block range that will be reserved by the instance. For valid values,
  /// see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation.
  late final pulumi.Output<String> peeringCidrRange;
  /// Output only. Port number of the exposed Apigee endpoint.
  late final pulumi.Output<String> port;
  /// Output only. Resource name of the service attachment created for the instance in
  /// the format: projects/*/regions/*/serviceAttachments/* Apigee customers can privately
  /// forward traffic to this service attachment using the PSC endpoints.
  late final pulumi.Output<String> serviceAttachment;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_apigee_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    accessLoggingConfig = registerOutput<InstanceAccessLoggingConfig?>('accessLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAccessLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    consumerAcceptLists = registerOutput<List<String>>('consumerAcceptLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKeyName = registerOutput<String?>('diskEncryptionKeyName');
    displayName = registerOutput<String?>('displayName');
    host = registerOutput<String>('host');
    ipRange = registerOutput<String?>('ipRange');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    peeringCidrRange = registerOutput<String>('peeringCidrRange');
    port = registerOutput<String>('port');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLoggingConfig = registerOutput<InstanceAccessLoggingConfig?>('accessLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAccessLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    consumerAcceptLists = registerOutput<List<String>>('consumerAcceptLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKeyName = registerOutput<String?>('diskEncryptionKeyName');
    displayName = registerOutput<String?>('displayName');
    host = registerOutput<String>('host');
    ipRange = registerOutput<String?>('ipRange');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    peeringCidrRange = registerOutput<String>('peeringCidrRange');
    port = registerOutput<String>('port');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }

  /// Creates a typed reference to an existing [Instance] resource.
  Instance.reference(String urn)
    : super(
        'gcp:apigee/instance:Instance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessLoggingConfig = registerOutput<InstanceAccessLoggingConfig?>('accessLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAccessLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    consumerAcceptLists = registerOutput<List<String>>('consumerAcceptLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKeyName = registerOutput<String?>('diskEncryptionKeyName');
    displayName = registerOutput<String?>('displayName');
    host = registerOutput<String>('host');
    ipRange = registerOutput<String?>('ipRange');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    peeringCidrRange = registerOutput<String>('peeringCidrRange');
    port = registerOutput<String>('port');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }
}
