import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_client_ip_resolution_config.dart';
import 'environment_node_config.dart';
import 'environment_properties.dart';
import 'environment_state.dart';

/// An `Environment` in Apigee.
///
///
/// To get more information about Environment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ### Apigee Environment Basic
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
/// const env = new gcp.apigee.Environment("env", {
///     name: "my-environment",
///     description: "Apigee Environment",
///     displayName: "environment-1",
///     orgId: apigeeOrg.id,
///     clientIpResolutionConfig: {
///         headerIndexAlgorithm: {
///             ipHeaderName: "X-Forwarded-For",
///             ipHeaderIndex: 1,
///         },
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
/// env = gcp.apigee.Environment("env",
///     name="my-environment",
///     description="Apigee Environment",
///     display_name="environment-1",
///     org_id=apigee_org.id,
///     client_ip_resolution_config={
///         "header_index_algorithm": {
///             "ip_header_name": "X-Forwarded-For",
///             "ip_header_index": 1,
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
///     var env = new Gcp.Apigee.Environment("env", new()
///     {
///         Name = "my-environment",
///         Description = "Apigee Environment",
///         DisplayName = "environment-1",
///         OrgId = apigeeOrg.Id,
///         ClientIpResolutionConfig = new Gcp.Apigee.Inputs.EnvironmentClientIpResolutionConfigArgs
///         {
///             HeaderIndexAlgorithm = new Gcp.Apigee.Inputs.EnvironmentClientIpResolutionConfigHeaderIndexAlgorithmArgs
///             {
///                 IpHeaderName = "X-Forwarded-For",
///                 IpHeaderIndex = 1,
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
/// 		_, err = apigee.NewEnvironment(ctx, "env", &apigee.EnvironmentArgs{
/// 			Name:        pulumi.String("my-environment"),
/// 			Description: pulumi.String("Apigee Environment"),
/// 			DisplayName: pulumi.String("environment-1"),
/// 			OrgId:       apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			ClientIpResolutionConfig: &apigee.EnvironmentClientIpResolutionConfigArgs{
/// 				HeaderIndexAlgorithm: &apigee.EnvironmentClientIpResolutionConfigHeaderIndexAlgorithmArgs{
/// 					IpHeaderName:  pulumi.String("X-Forwarded-For"),
/// 					IpHeaderIndex: pulumi.Int(1),
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
/// resource "gcp_apigee_environment" "env" {
///   name         = "my-environment"
///   description  = "Apigee Environment"
///   display_name = "environment-1"
///   org_id       = gcp_apigee_organization.apigee_org.id
///   client_ip_resolution_config = {
///     header_index_algorithm = {
///       ip_header_name  = "X-Forwarded-For"
///       ip_header_index = 1
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Environment;
/// import com.pulumi.gcp.apigee.EnvironmentArgs;
/// import com.pulumi.gcp.apigee.inputs.EnvironmentClientIpResolutionConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.EnvironmentClientIpResolutionConfigHeaderIndexAlgorithmArgs;
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
///         var env = new Environment("env", EnvironmentArgs.builder()
///             .name("my-environment")
///             .description("Apigee Environment")
///             .displayName("environment-1")
///             .orgId(apigeeOrg.id())
///             .clientIpResolutionConfig(EnvironmentClientIpResolutionConfigArgs.builder()
///                 .headerIndexAlgorithm(EnvironmentClientIpResolutionConfigHeaderIndexAlgorithmArgs.builder()
///                     .ipHeaderName("X-Forwarded-For")
///                     .ipHeaderIndex(1)
///                     .build())
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
///   env:
///     type: gcp:apigee:Environment
///     properties:
///       name: my-environment
///       description: Apigee Environment
///       displayName: environment-1
///       orgId: ${apigeeOrg.id}
///       clientIpResolutionConfig:
///         headerIndexAlgorithm:
///           ipHeaderName: X-Forwarded-For
///           ipHeaderIndex: 1
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
/// Environment can be imported using any of these accepted formats:
///
/// * `{{org_id}}/environments/{{name}}`
/// * `{{org_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environment:Environment default {{org_id}}/environments/{{name}}
/// $ pulumi import gcp:apigee/environment:Environment default {{org_id}}/{{name}}
/// ```
class Environment extends pulumi.CustomResource {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating
  /// the Environment and cannot be changed.
  /// Possible values are: `API_PROXY_TYPE_UNSPECIFIED`, `PROGRAMMABLE`, `CONFIGURABLE`.
  late final pulumi.Output<String> apiProxyType;
  /// The algorithm to resolve IP. This will affect Analytics, API Security, and other features that use the client ip. To remove a client ip resolution config, update the field to an empty value. Example: '{ "clientIpResolutionConfig" = {} }' For more information, see: https://cloud.google.com/apigee/docs/api-platform/system-administration/client-ip-resolution
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentClientIpResolutionConfig?> clientIpResolutionConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Deployment type supported by the environment. The deployment type can be
  /// set when creating the environment and cannot be changed. When you enable archive
  /// deployment, you will be prevented from performing a subset of actions within the
  /// environment, including:
  /// Managing the deployment of API proxy or shared flow revisions;
  /// Creating, updating, or deleting resource files;
  /// Creating, updating, or deleting target servers.
  /// Possible values are: `DEPLOYMENT_TYPE_UNSPECIFIED`, `PROXY`, `ARCHIVE`.
  late final pulumi.Output<String> deploymentType;
  /// Description of the environment.
  late final pulumi.Output<String?> description;
  /// Display name of the environment.
  late final pulumi.Output<String?> displayName;
  /// Optional. URI of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that the scheme must be one of "http" or "https", and the port must be supplied.
  late final pulumi.Output<String?> forwardProxyUri;
  /// The resource ID of the environment.
  late final pulumi.Output<String> name;
  /// NodeConfig for setting the min/max number of nodes associated with the environment.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentNodeConfig> nodeConfig;
  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// Key-value pairs that may be used for customizing the environment.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentProperties?> properties;
  /// Types that can be selected for an Environment. Each of the types are
  /// limited by capability and capacity. Refer to Apigee's public documentation
  /// to understand about each of these types in details.
  /// An Apigee org can support heterogeneous Environments.
  /// Possible values are: `ENVIRONMENT_TYPE_UNSPECIFIED`, `BASE`, `INTERMEDIATE`, `COMPREHENSIVE`.
  late final pulumi.Output<String> type;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_apigee_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiProxyType = registerOutput<String>('apiProxyType');
    clientIpResolutionConfig = registerOutput<EnvironmentClientIpResolutionConfig?>('clientIpResolutionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentClientIpResolutionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentType = registerOutput<String>('deploymentType');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    forwardProxyUri = registerOutput<String?>('forwardProxyUri');
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<EnvironmentNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    properties = registerOutput<EnvironmentProperties?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiProxyType = registerOutput<String>('apiProxyType');
    clientIpResolutionConfig = registerOutput<EnvironmentClientIpResolutionConfig?>('clientIpResolutionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentClientIpResolutionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentType = registerOutput<String>('deploymentType');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    forwardProxyUri = registerOutput<String?>('forwardProxyUri');
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<EnvironmentNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    properties = registerOutput<EnvironmentProperties?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
