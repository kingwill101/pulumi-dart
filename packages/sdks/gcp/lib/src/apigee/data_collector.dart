import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collector_args.dart';
import 'data_collector_state.dart';

/// A `DataCollector` collects and stores data from the runtime for use in
/// Analytics custom reports or API monetization. Data collectors are scoped
/// to an Apigee organization.
///
///
/// To get more information about DataCollector, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.datacollectors)
/// * How-to Guides
/// * [Creating a data collector](https://cloud.google.com/apigee/docs/api-platform/analytics/custom-reports)
///
/// ## Example Usage
///
/// ### Apigee Data Collector Basic
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
/// const apigeeDataCollector = new gcp.apigee.DataCollector("apigee_data_collector", {
///     orgId: apigeeOrg.id,
///     dataCollectorId: "dc_my_data_collector",
///     description: "A data collector for custom analytics",
///     type: "INTEGER",
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
/// apigee_data_collector = gcp.apigee.DataCollector("apigee_data_collector",
///     org_id=apigee_org.id,
///     data_collector_id="dc_my_data_collector",
///     description="A data collector for custom analytics",
///     type="INTEGER")
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
///     var apigeeDataCollector = new Gcp.Apigee.DataCollector("apigee_data_collector", new()
///     {
///         OrgId = apigeeOrg.Id,
///         DataCollectorId = "dc_my_data_collector",
///         Description = "A data collector for custom analytics",
///         Type = "INTEGER",
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
/// 		_, err = apigee.NewDataCollector(ctx, "apigee_data_collector", &apigee.DataCollectorArgs{
/// 			OrgId:           apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DataCollectorId: pulumi.String("dc_my_data_collector"),
/// 			Description:     pulumi.String("A data collector for custom analytics"),
/// 			Type:            pulumi.String("INTEGER"),
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
/// resource "gcp_apigee_datacollector" "apigee_data_collector" {
///   org_id            = gcp_apigee_organization.apigee_org.id
///   data_collector_id = "dc_my_data_collector"
///   description       = "A data collector for custom analytics"
///   type              = "INTEGER"
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
/// import com.pulumi.gcp.apigee.DataCollector;
/// import com.pulumi.gcp.apigee.DataCollectorArgs;
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
///         var apigeeDataCollector = new DataCollector("apigeeDataCollector", DataCollectorArgs.builder()
///             .orgId(apigeeOrg.id())
///             .dataCollectorId("dc_my_data_collector")
///             .description("A data collector for custom analytics")
///             .type("INTEGER")
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
///   apigeeDataCollector:
///     type: gcp:apigee:DataCollector
///     name: apigee_data_collector
///     properties:
///       orgId: ${apigeeOrg.id}
///       dataCollectorId: dc_my_data_collector
///       description: A data collector for custom analytics
///       type: INTEGER
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
/// DataCollector can be imported using any of these accepted formats:
///
/// * `{{org_id}}/datacollectors/{{data_collector_id}}`
/// * `{{org_id}}/{{data_collector_id}}`
///
///
/// When using the `pulumi import` command, DataCollector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/dataCollector:DataCollector default {{org_id}}/datacollectors/{{data_collector_id}}
/// $ pulumi import gcp:apigee/dataCollector:DataCollector default {{org_id}}/{{data_collector_id}}
/// ```
class DataCollector extends pulumi.CustomResource {
  /// The time at which the data collector was created in milliseconds since the epoch.
  late final pulumi.Output<String> createdAt;
  /// The ID for the data collector. Must begin with `dc_`.
  late final pulumi.Output<String> dataCollectorId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the data collector.
  late final pulumi.Output<String?> description;
  /// The time at which the data collector was last modified in milliseconds since the epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// The resource name of the data collector, in the format
  /// `organizations/{{org_name}}/datacollectors/{{data_collector_id}}`.
  late final pulumi.Output<String> name;
  /// The Apigee Organization associated with the Apigee data collector,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// The type of data this data collector will collect.
  /// Possible values are: `BOOLEAN`, `DATETIME`, `FLOAT`, `INTEGER`, `STRING`.
  late final pulumi.Output<String> type;

  /// Creates a new [DataCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollector]. {@macro pulumi_apigee_data_collector_data_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollector(
    String name, {
    DataCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/dataCollector:DataCollector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dataCollectorId = registerOutput<String>('dataCollectorId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DataCollector] resource's state with the given [name] and [id].
  static DataCollector get(
    String name,
    pulumi.Input<String> id, {
    DataCollectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataCollector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataCollector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/dataCollector:DataCollector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dataCollectorId = registerOutput<String>('dataCollectorId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DataCollector] resource.
  DataCollector.reference(String urn)
    : super(
        'gcp:apigee/dataCollector:DataCollector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    dataCollectorId = registerOutput<String>('dataCollectorId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    type = registerOutput<String>('type');
  }
}
