import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_args.dart';
import 'app_group_state.dart';

/// An `AppGroup` in Apigee.
///
///
/// To get more information about AppGroup, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.appgroups)
/// * How-to Guides
/// * [Organizing client app ownership](https://cloud.google.com/apigee/docs/api-platform/publish/organizing-client-app-ownership)
///
/// ## Example Usage
///
/// ### Apigee App Group Basic
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
///     name: "instance",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
///     peeringCidrRange: "SLASH_22",
/// });
/// const apigeeAppGroup = new gcp.apigee.AppGroup("apigee_app_group", {
///     name: "my-app-group",
///     displayName: "Test app group",
///     channelId: "storefront",
///     channelUri: "https://my-dev-portal.org/groups/my-group",
///     status: "active",
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
///     name="instance",
///     location="us-central1",
///     org_id=apigee_org.id,
///     peering_cidr_range="SLASH_22")
/// apigee_app_group = gcp.apigee.AppGroup("apigee_app_group",
///     name="my-app-group",
///     display_name="Test app group",
///     channel_id="storefront",
///     channel_uri="https://my-dev-portal.org/groups/my-group",
///     status="active",
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
///         Name = "instance",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///         PeeringCidrRange = "SLASH_22",
///     });
///
///     var apigeeAppGroup = new Gcp.Apigee.AppGroup("apigee_app_group", new()
///     {
///         Name = "my-app-group",
///         DisplayName = "Test app group",
///         ChannelId = "storefront",
///         ChannelUri = "https://my-dev-portal.org/groups/my-group",
///         Status = "active",
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
/// 			Network:      apigeeNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID(),
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
/// 			AuthorizedNetwork: apigeeNetwork.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:             pulumi.String("instance"),
/// 			Location:         pulumi.String("us-central1"),
/// 			OrgId:            apigeeOrg.ID(),
/// 			PeeringCidrRange: pulumi.String("SLASH_22"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewAppGroup(ctx, "apigee_app_group", &apigee.AppGroupArgs{
/// 			Name:        pulumi.String("my-app-group"),
/// 			DisplayName: pulumi.String("Test app group"),
/// 			ChannelId:   pulumi.String("storefront"),
/// 			ChannelUri:  pulumi.String("https://my-dev-portal.org/groups/my-group"),
/// 			Status:      pulumi.String("active"),
/// 			OrgId:       apigeeOrg.ID(),
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
/// import com.pulumi.gcp.apigee.AppGroup;
/// import com.pulumi.gcp.apigee.AppGroupArgs;
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
///             .name("instance")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .peeringCidrRange("SLASH_22")
///             .build());
///
///         var apigeeAppGroup = new AppGroup("apigeeAppGroup", AppGroupArgs.builder()
///             .name("my-app-group")
///             .displayName("Test app group")
///             .channelId("storefront")
///             .channelUri("https://my-dev-portal.org/groups/my-group")
///             .status("active")
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
///       name: instance
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///       peeringCidrRange: SLASH_22
///   apigeeAppGroup:
///     type: gcp:apigee:AppGroup
///     name: apigee_app_group
///     properties:
///       name: my-app-group
///       displayName: Test app group
///       channelId: storefront
///       channelUri: https://my-dev-portal.org/groups/my-group
///       status: active
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
/// ### Apigee App Group With Attributes
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
///     name: "instance",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
///     peeringCidrRange: "SLASH_22",
/// });
/// const apigeeAppGroup = new gcp.apigee.AppGroup("apigee_app_group", {
///     name: "my-app-group",
///     displayName: "Test app group",
///     channelId: "storefront",
///     channelUri: "https://my-dev-portal.org/groups/my-group",
///     status: "active",
///     orgId: apigeeOrg.id,
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
///     name="instance",
///     location="us-central1",
///     org_id=apigee_org.id,
///     peering_cidr_range="SLASH_22")
/// apigee_app_group = gcp.apigee.AppGroup("apigee_app_group",
///     name="my-app-group",
///     display_name="Test app group",
///     channel_id="storefront",
///     channel_uri="https://my-dev-portal.org/groups/my-group",
///     status="active",
///     org_id=apigee_org.id,
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
///         Name = "instance",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///         PeeringCidrRange = "SLASH_22",
///     });
///
///     var apigeeAppGroup = new Gcp.Apigee.AppGroup("apigee_app_group", new()
///     {
///         Name = "my-app-group",
///         DisplayName = "Test app group",
///         ChannelId = "storefront",
///         ChannelUri = "https://my-dev-portal.org/groups/my-group",
///         Status = "active",
///         OrgId = apigeeOrg.Id,
///         Attributes = new[]
///         {
///             new Gcp.Apigee.Inputs.AppGroupAttributeArgs
///             {
///                 Name = "business_unit",
///                 Value = "HR",
///             },
///             new Gcp.Apigee.Inputs.AppGroupAttributeArgs
///             {
///                 Name = "department",
///                 Value = "payroll",
///             },
///         },
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
/// 			Network:      apigeeNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID(),
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
/// 			AuthorizedNetwork: apigeeNetwork.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:             pulumi.String("instance"),
/// 			Location:         pulumi.String("us-central1"),
/// 			OrgId:            apigeeOrg.ID(),
/// 			PeeringCidrRange: pulumi.String("SLASH_22"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewAppGroup(ctx, "apigee_app_group", &apigee.AppGroupArgs{
/// 			Name:        pulumi.String("my-app-group"),
/// 			DisplayName: pulumi.String("Test app group"),
/// 			ChannelId:   pulumi.String("storefront"),
/// 			ChannelUri:  pulumi.String("https://my-dev-portal.org/groups/my-group"),
/// 			Status:      pulumi.String("active"),
/// 			OrgId:       apigeeOrg.ID(),
/// 			Attributes: apigee.AppGroupAttributeArray{
/// 				&apigee.AppGroupAttributeArgs{
/// 					Name:  pulumi.String("business_unit"),
/// 					Value: pulumi.String("HR"),
/// 				},
/// 				&apigee.AppGroupAttributeArgs{
/// 					Name:  pulumi.String("department"),
/// 					Value: pulumi.String("payroll"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.apigee.AppGroup;
/// import com.pulumi.gcp.apigee.AppGroupArgs;
/// import com.pulumi.gcp.apigee.inputs.AppGroupAttributeArgs;
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
///             .name("instance")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .peeringCidrRange("SLASH_22")
///             .build());
///
///         var apigeeAppGroup = new AppGroup("apigeeAppGroup", AppGroupArgs.builder()
///             .name("my-app-group")
///             .displayName("Test app group")
///             .channelId("storefront")
///             .channelUri("https://my-dev-portal.org/groups/my-group")
///             .status("active")
///             .orgId(apigeeOrg.id())
///             .attributes(
///                 AppGroupAttributeArgs.builder()
///                     .name("business_unit")
///                     .value("HR")
///                     .build(),
///                 AppGroupAttributeArgs.builder()
///                     .name("department")
///                     .value("payroll")
///                     .build())
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
///       name: instance
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///       peeringCidrRange: SLASH_22
///   apigeeAppGroup:
///     type: gcp:apigee:AppGroup
///     name: apigee_app_group
///     properties:
///       name: my-app-group
///       displayName: Test app group
///       channelId: storefront
///       channelUri: https://my-dev-portal.org/groups/my-group
///       status: active
///       orgId: ${apigeeOrg.id}
///       attributes:
///         - name: business_unit
///           value: HR
///         - name: department
///           value: payroll
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
/// AppGroup can be imported using any of these accepted formats:
///
/// * `{{org_id}}/appgroups/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, AppGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/appGroup:AppGroup default {{org_id}}/appgroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/appGroup:AppGroup default {{org_id}}/{{name}}
/// ```
class AppGroup extends pulumi.CustomResource {
  /// Internal identifier that cannot be edited
  late final pulumi.Output<String> appGroupId;
  /// A list of attributes
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> attributes;
  /// Channel identifier identifies the owner maintaining this grouping.
  late final pulumi.Output<String?> channelId;
  /// A reference to the associated storefront/marketplace.
  late final pulumi.Output<String?> channelUri;
  /// Created time as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// App group name displayed in the UI
  late final pulumi.Output<String?> displayName;
  /// Modified time as milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  late final pulumi.Output<String> name;
  /// The Apigee Organization associated with the Apigee app group,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// App group name displayed in the UI
  late final pulumi.Output<String> organization;
  /// Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  /// Possible values are: `active`, `inactive`.
  late final pulumi.Output<String?> status;

  /// Creates a new [AppGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppGroup]. {@macro pulumi_apigee_app_group_app_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppGroup(
    String name, {
    AppGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/appGroup:AppGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appGroupId = registerOutput<String>('appGroupId');
    attributes = registerOutput<List<Map<String, dynamic>>?>('attributes');
    channelId = registerOutput<String?>('channelId');
    channelUri = registerOutput<String?>('channelUri');
    createdAt = registerOutput<String>('createdAt');
    displayName = registerOutput<String?>('displayName');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    organization = registerOutput<String>('organization');
    status = registerOutput<String?>('status');
  }

  /// Gets an existing [AppGroup] resource's state with the given [name] and [id].
  static AppGroup get(
    String name,
    pulumi.Input<String> id, {
    AppGroupState? state,
  }) {
    return AppGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/appGroup:AppGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appGroupId = registerOutput<String>('appGroupId');
    attributes = registerOutput<List<Map<String, dynamic>>?>('attributes');
    channelId = registerOutput<String?>('channelId');
    channelUri = registerOutput<String?>('channelUri');
    createdAt = registerOutput<String>('createdAt');
    displayName = registerOutput<String?>('displayName');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    organization = registerOutput<String>('organization');
    status = registerOutput<String?>('status');
  }
}
