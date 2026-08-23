import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_args.dart';
import 'dns_zone_peering_config.dart';
import 'dns_zone_state.dart';

/// Apigee Dns Zone.
///
///
/// To get more information about DnsZone, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.dnsZones/create)
/// * How-to Guides
/// * [Creating a DnsZone](https://cloud.google.com/apigee/docs/api-platform/get-started/create-dns)
///
/// ## Example Usage
///
/// ### Apigee Dns Zone Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const org = new gcp.apigee.Organization("org", {
///     description: "Terraform-provisioned basic Apigee Org without VPC Peering.",
///     analyticsRegion: "us-central1",
///     projectId: current.then(current => current.project),
///     disableVpcPeering: true,
/// });
/// const apigeeDnsZone = new gcp.apigee.DnsZone("apigee_dns_zone", {
///     orgId: apigeeOrg.id,
///     dnsZoneId: "test1",
///     domain: "foo.com",
///     description: "test",
///     peeringConfig: {
///         targetProjectId: current.then(current => current.project),
///         targetNetworkId: apigeeNetwork.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// org = gcp.apigee.Organization("org",
///     description="Terraform-provisioned basic Apigee Org without VPC Peering.",
///     analytics_region="us-central1",
///     project_id=current.project,
///     disable_vpc_peering=True)
/// apigee_dns_zone = gcp.apigee.DnsZone("apigee_dns_zone",
///     org_id=apigee_org["id"],
///     dns_zone_id="test1",
///     domain="foo.com",
///     description="test",
///     peering_config={
///         "target_project_id": current.project,
///         "target_network_id": apigee_network.id,
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
///     var org = new Gcp.Apigee.Organization("org", new()
///     {
///         Description = "Terraform-provisioned basic Apigee Org without VPC Peering.",
///         AnalyticsRegion = "us-central1",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         DisableVpcPeering = true,
///     });
///
///     var apigeeDnsZone = new Gcp.Apigee.DnsZone("apigee_dns_zone", new()
///     {
///         OrgId = apigeeOrg.Id,
///         DnsZoneId = "test1",
///         Domain = "foo.com",
///         Description = "test",
///         PeeringConfig = new Gcp.Apigee.Inputs.DnsZonePeeringConfigArgs
///         {
///             TargetProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///             TargetNetworkId = apigeeNetwork.Id,
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
/// 		_, err = apigee.NewOrganization(ctx, "org", &apigee.OrganizationArgs{
/// 			Description:       pulumi.String("Terraform-provisioned basic Apigee Org without VPC Peering."),
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.String(current.Project),
/// 			DisableVpcPeering: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewDnsZone(ctx, "apigee_dns_zone", &apigee.DnsZoneArgs{
/// 			OrgId:       pulumi.Any(apigeeOrg.Id),
/// 			DnsZoneId:   pulumi.String("test1"),
/// 			Domain:      pulumi.String("foo.com"),
/// 			Description: pulumi.String("test"),
/// 			PeeringConfig: &apigee.DnsZonePeeringConfigArgs{
/// 				TargetProjectId: pulumi.String(current.Project),
/// 				TargetNetworkId: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_apigee_organization" "org" {
///   description         = "Terraform-provisioned basic Apigee Org without VPC Peering."
///   analytics_region    = "us-central1"
///   project_id          = data.gcp_organizations_getclientconfig.current.project
///   disable_vpc_peering = true
/// }
/// resource "gcp_apigee_dnszone" "apigee_dns_zone" {
///   org_id      = apigeeOrg.id
///   dns_zone_id = "test1"
///   domain      = "foo.com"
///   description = "test"
///   peering_config = {
///     target_project_id = data.gcp_organizations_getclientconfig.current.project
///     target_network_id = gcp_compute_network.apigee_network.id
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
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.DnsZone;
/// import com.pulumi.gcp.apigee.DnsZoneArgs;
/// import com.pulumi.gcp.apigee.inputs.DnsZonePeeringConfigArgs;
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
///         var org = new Organization("org", OrganizationArgs.builder()
///             .description("Terraform-provisioned basic Apigee Org without VPC Peering.")
///             .analyticsRegion("us-central1")
///             .projectId(current.project())
///             .disableVpcPeering(true)
///             .build());
///
///         var apigeeDnsZone = new DnsZone("apigeeDnsZone", DnsZoneArgs.builder()
///             .orgId(apigeeOrg.get("id"))
///             .dnsZoneId("test1")
///             .domain("foo.com")
///             .description("test")
///             .peeringConfig(DnsZonePeeringConfigArgs.builder()
///                 .targetProjectId(current.project())
///                 .targetNetworkId(apigeeNetwork.id())
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
///   org:
///     type: gcp:apigee:Organization
///     properties:
///       description: Terraform-provisioned basic Apigee Org without VPC Peering.
///       analyticsRegion: us-central1
///       projectId: ${current.project}
///       disableVpcPeering: true
///   apigeeDnsZone:
///     type: gcp:apigee:DnsZone
///     name: apigee_dns_zone
///     properties:
///       orgId: ${apigeeOrg.id}
///       dnsZoneId: test1
///       domain: foo.com
///       description: test
///       peeringConfig:
///         targetProjectId: ${current.project}
///         targetNetworkId: ${apigeeNetwork.id}
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
/// DnsZone can be imported using any of these accepted formats:
///
/// * `{{org_id}}/dnsZones/{{dns_zone_id}}`
/// * `{{org_id}}/{{dns_zone_id}}`
///
///
/// When using the `pulumi import` command, DnsZone can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/dnsZone:DnsZone default {{org_id}}/dnsZones/{{dns_zone_id}}
/// $ pulumi import gcp:apigee/dnsZone:DnsZone default {{org_id}}/{{dns_zone_id}}
/// ```
class DnsZone extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description for the zone.
  late final pulumi.Output<String> description;
  /// ID of the dns zone.
  late final pulumi.Output<String> dnsZoneId;
  /// Doamin for the zone.
  late final pulumi.Output<String> domain;
  /// Name of the Dns Zone in the following format:
  /// organizations/{organization}/dnsZones/{dnsZone}.
  late final pulumi.Output<String> name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// Peering zone config
  /// Structure is documented below.
  late final pulumi.Output<DnsZonePeeringConfig> peeringConfig;

  /// Creates a new [DnsZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsZone]. {@macro pulumi_apigee_dns_zone_dns_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsZone(
    String name, {
    DnsZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/dnsZone:DnsZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    dnsZoneId = registerOutput<String>('dnsZoneId');
    domain = registerOutput<String>('domain');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    peeringConfig = registerOutput<DnsZonePeeringConfig>('peeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsZonePeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DnsZone] resource's state with the given [name] and [id].
  static DnsZone get(
    String name,
    pulumi.Input<String> id, {
    DnsZoneState? state,
  }) {
    return DnsZone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DnsZone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/dnsZone:DnsZone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    dnsZoneId = registerOutput<String>('dnsZoneId');
    domain = registerOutput<String>('domain');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    peeringConfig = registerOutput<DnsZonePeeringConfig>('peeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsZonePeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
