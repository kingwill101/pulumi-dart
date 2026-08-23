import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_args.dart';
import 'developer_state.dart';

/// A `Developer` is an API consumer that can have apps registered in Apigee.
///
///
/// To get more information about Developer, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.developers)
/// * How-to Guides
/// * [Creating a developer](https://cloud.google.com/apigee/docs/api-platform/publish/adding-developers-your-api-product)
///
/// ## Example Usage
///
/// ### Apigee Developer Basic
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
/// const apigeeDeveloper = new gcp.apigee.Developer("apigee_developer", {
///     email: "john.doe@acme.com",
///     firstName: "John",
///     lastName: "Doe",
///     userName: "john.doe",
///     orgId: apigeeOrg.id,
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
/// apigee_developer = gcp.apigee.Developer("apigee_developer",
///     email="john.doe@acme.com",
///     first_name="John",
///     last_name="Doe",
///     user_name="john.doe",
///     org_id=apigee_org.id,
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
///     var apigeeDeveloper = new Gcp.Apigee.Developer("apigee_developer", new()
///     {
///         Email = "john.doe@acme.com",
///         FirstName = "John",
///         LastName = "Doe",
///         UserName = "john.doe",
///         OrgId = apigeeOrg.Id,
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
/// 		_, err = apigee.NewDeveloper(ctx, "apigee_developer", &apigee.DeveloperArgs{
/// 			Email:     pulumi.String("john.doe@acme.com"),
/// 			FirstName: pulumi.String("John"),
/// 			LastName:  pulumi.String("Doe"),
/// 			UserName:  pulumi.String("john.doe"),
/// 			OrgId:     apigeeOrg.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_apigee_developer" "apigee_developer" {
///   depends_on = [gcp_apigee_instance.apigee_instance]
///   email      = "john.doe@acme.com"
///   first_name = "John"
///   last_name  = "Doe"
///   user_name  = "john.doe"
///   org_id     = gcp_apigee_organization.apigee_org.id
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
/// import com.pulumi.gcp.apigee.Developer;
/// import com.pulumi.gcp.apigee.DeveloperArgs;
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
///         var apigeeDeveloper = new Developer("apigeeDeveloper", DeveloperArgs.builder()
///             .email("john.doe@acme.com")
///             .firstName("John")
///             .lastName("Doe")
///             .userName("john.doe")
///             .orgId(apigeeOrg.id())
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
///   apigeeDeveloper:
///     type: gcp:apigee:Developer
///     name: apigee_developer
///     properties:
///       email: john.doe@acme.com
///       firstName: John
///       lastName: Doe
///       userName: john.doe
///       orgId: ${apigeeOrg.id}
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
/// ### Apigee Developer With Attributes
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
/// const apigeeDeveloper = new gcp.apigee.Developer("apigee_developer", {
///     email: "john.doe@acme.com",
///     firstName: "John",
///     lastName: "Doe",
///     userName: "john.doe",
///     attributes: [
///         {
///             name: "business_unit",
///             value: "HR",
///         },
///         {
///             name: "department",
///             value: "payroll",
///         },
///     ],
///     orgId: apigeeOrg.id,
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
/// apigee_developer = gcp.apigee.Developer("apigee_developer",
///     email="john.doe@acme.com",
///     first_name="John",
///     last_name="Doe",
///     user_name="john.doe",
///     attributes=[
///         {
///             "name": "business_unit",
///             "value": "HR",
///         },
///         {
///             "name": "department",
///             "value": "payroll",
///         },
///     ],
///     org_id=apigee_org.id,
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
///     var apigeeDeveloper = new Gcp.Apigee.Developer("apigee_developer", new()
///     {
///         Email = "john.doe@acme.com",
///         FirstName = "John",
///         LastName = "Doe",
///         UserName = "john.doe",
///         Attributes = new[]
///         {
///             new Gcp.Apigee.Inputs.DeveloperAttributeArgs
///             {
///                 Name = "business_unit",
///                 Value = "HR",
///             },
///             new Gcp.Apigee.Inputs.DeveloperAttributeArgs
///             {
///                 Name = "department",
///                 Value = "payroll",
///             },
///         },
///         OrgId = apigeeOrg.Id,
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
/// 		_, err = apigee.NewDeveloper(ctx, "apigee_developer", &apigee.DeveloperArgs{
/// 			Email:     pulumi.String("john.doe@acme.com"),
/// 			FirstName: pulumi.String("John"),
/// 			LastName:  pulumi.String("Doe"),
/// 			UserName:  pulumi.String("john.doe"),
/// 			Attributes: apigee.DeveloperAttributeArray{
/// 				&apigee.DeveloperAttributeArgs{
/// 					Name:  pulumi.String("business_unit"),
/// 					Value: pulumi.String("HR"),
/// 				},
/// 				&apigee.DeveloperAttributeArgs{
/// 					Name:  pulumi.String("department"),
/// 					Value: pulumi.String("payroll"),
/// 				},
/// 			},
/// 			OrgId: apigeeOrg.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_apigee_developer" "apigee_developer" {
///   depends_on = [gcp_apigee_instance.apigee_instance]
///   email      = "john.doe@acme.com"
///   first_name = "John"
///   last_name  = "Doe"
///   user_name  = "john.doe"
///   attributes {
///     name  = "business_unit"
///     value = "HR"
///   }
///   attributes {
///     name  = "department"
///     value = "payroll"
///   }
///   org_id = gcp_apigee_organization.apigee_org.id
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
/// import com.pulumi.gcp.apigee.Developer;
/// import com.pulumi.gcp.apigee.DeveloperArgs;
/// import com.pulumi.gcp.apigee.inputs.DeveloperAttributeArgs;
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
///         var apigeeDeveloper = new Developer("apigeeDeveloper", DeveloperArgs.builder()
///             .email("john.doe@acme.com")
///             .firstName("John")
///             .lastName("Doe")
///             .userName("john.doe")
///             .attributes(
///                 DeveloperAttributeArgs.builder()
///                     .name("business_unit")
///                     .value("HR")
///                     .build(),
///                 DeveloperAttributeArgs.builder()
///                     .name("department")
///                     .value("payroll")
///                     .build())
///             .orgId(apigeeOrg.id())
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
///   apigeeDeveloper:
///     type: gcp:apigee:Developer
///     name: apigee_developer
///     properties:
///       email: john.doe@acme.com
///       firstName: John
///       lastName: Doe
///       userName: john.doe
///       attributes:
///         - name: business_unit
///           value: HR
///         - name: department
///           value: payroll
///       orgId: ${apigeeOrg.id}
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
///
/// ## Import
///
/// Developer can be imported using any of these accepted formats:
///
/// * `{{org_id}}/developers/{{email}}`
/// * `{{org_id}}/{{email}}`
///
///
/// When using the `pulumi import` command, Developer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/developer:Developer default {{org_id}}/developers/{{email}}
/// $ pulumi import gcp:apigee/developer:Developer default {{org_id}}/{{email}}
/// ```
class Developer extends pulumi.CustomResource {
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> attributes;
  /// Time at which the developer was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  late final pulumi.Output<String> email;
  /// First name of the developer.
  late final pulumi.Output<String> firstName;
  /// Time at which the developer was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// Last name of the developer.
  late final pulumi.Output<String> lastName;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// Name of the Apigee organization in which the developer resides.
  late final pulumi.Output<String> organizatioName;
  /// Status of the developer. Valid values are active and inactive.
  late final pulumi.Output<String> status;
  /// User name of the developer. Not used by Apigee hybrid.
  late final pulumi.Output<String> userName;

  /// Creates a new [Developer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Developer]. {@macro pulumi_apigee_developer_developer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Developer(
    String name, {
    DeveloperArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/developer:Developer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<List<Map<String, dynamic>>?>('attributes');
    createdAt = registerOutput<String>('createdAt');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    email = registerOutput<String>('email');
    firstName = registerOutput<String>('firstName');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    lastName = registerOutput<String>('lastName');
    orgId = registerOutput<String>('orgId');
    organizatioName = registerOutput<String>('organizatioName');
    status = registerOutput<String>('status');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [Developer] resource's state with the given [name] and [id].
  static Developer get(
    String name,
    pulumi.Input<String> id, {
    DeveloperState? state,
  }) {
    return Developer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Developer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/developer:Developer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<List<Map<String, dynamic>>?>('attributes');
    createdAt = registerOutput<String>('createdAt');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    email = registerOutput<String>('email');
    firstName = registerOutput<String>('firstName');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    lastName = registerOutput<String>('lastName');
    orgId = registerOutput<String>('orgId');
    organizatioName = registerOutput<String>('organizatioName');
    status = registerOutput<String>('status');
    userName = registerOutput<String>('userName');
  }
}
