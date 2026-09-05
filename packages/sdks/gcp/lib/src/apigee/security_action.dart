import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_action_args.dart';
import 'security_action_condition_config.dart';
import 'security_action_deny.dart';
import 'security_action_flag.dart';
import 'security_action_state.dart';

/// A SecurityAction is rule that can be enforced at an environment level.
/// The result is one of: - A denied API call - An explicitly allowed API call
/// - A flagged API call (HTTP headers added before the target receives it)
/// At least one condition is required to create a SecurityAction.
///
///
/// To get more information about SecurityAction, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.securityActions/create)
/// * How-to Guides
/// * [Creating security actions](https://cloud.google.com/apigee/docs/api-security/security-actions-api#create-security-actions)
///
/// ## Example Usage
///
/// ### Apigee Security Action Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "my-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "my-address",
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
/// });
/// const apigeeOrgSecurityAddonsConfig = new gcp.apigee.AddonsConfig("apigee_org_security_addons_config", {
///     org: apigeeOrg.name,
///     addonsConfig: {
///         apiSecurityConfig: {
///             enabled: true,
///         },
///     },
/// });
/// const apigeeSecurityAction = new gcp.apigee.SecurityAction("apigee_security_action", {
///     securityActionId: "my-security-action",
///     orgId: apigeeOrg.name,
///     envId: env.name,
///     description: "Apigee Security Action",
///     state: "ENABLED",
///     conditionConfig: {
///         ipAddressRanges: [
///             "100.0.220.1",
///             "200.0.0.1",
///         ],
///         botReasons: [
///             "Flooder",
///             "Public Cloud Azure",
///             "Public Cloud AWS",
///         ],
///     },
///     allow: {},
///     expireTime: "2025-12-31T23:59:59Z",
/// }, {
///     dependsOn: [apigeeOrgSecurityAddonsConfig],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="my-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="my-address",
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
///     org_id=apigee_org.id)
/// apigee_org_security_addons_config = gcp.apigee.AddonsConfig("apigee_org_security_addons_config",
///     org=apigee_org.name,
///     addons_config={
///         "api_security_config": {
///             "enabled": True,
///         },
///     })
/// apigee_security_action = gcp.apigee.SecurityAction("apigee_security_action",
///     security_action_id="my-security-action",
///     org_id=apigee_org.name,
///     env_id=env.name,
///     description="Apigee Security Action",
///     state="ENABLED",
///     condition_config={
///         "ip_address_ranges": [
///             "100.0.220.1",
///             "200.0.0.1",
///         ],
///         "bot_reasons": [
///             "Flooder",
///             "Public Cloud Azure",
///             "Public Cloud AWS",
///         ],
///     },
///     allow={},
///     expire_time="2025-12-31T23:59:59Z",
///     opts = pulumi.ResourceOptions(depends_on=[apigee_org_security_addons_config]))
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
///         Name = "my-network",
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "my-address",
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
///     });
///
///     var apigeeOrgSecurityAddonsConfig = new Gcp.Apigee.AddonsConfig("apigee_org_security_addons_config", new()
///     {
///         Org = apigeeOrg.Name,
///         AddonsConfigDetails = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigArgs
///         {
///             ApiSecurityConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///     });
///
///     var apigeeSecurityAction = new Gcp.Apigee.SecurityAction("apigee_security_action", new()
///     {
///         SecurityActionId = "my-security-action",
///         OrgId = apigeeOrg.Name,
///         EnvId = env.Name,
///         Description = "Apigee Security Action",
///         State = "ENABLED",
///         ConditionConfig = new Gcp.Apigee.Inputs.SecurityActionConditionConfigArgs
///         {
///             IpAddressRanges = new[]
///             {
///                 "100.0.220.1",
///                 "200.0.0.1",
///             },
///             BotReasons = new[]
///             {
///                 "Flooder",
///                 "Public Cloud Azure",
///                 "Public Cloud AWS",
///             },
///         },
///         Allow = new() { },
///         ExpireTime = "2025-12-31T23:59:59Z",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeOrgSecurityAddonsConfig,
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
/// 			Name: pulumi.String("my-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("my-address"),
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
/// 		env, err := apigee.NewEnvironment(ctx, "env", &apigee.EnvironmentArgs{
/// 			Name:        pulumi.String("my-environment"),
/// 			Description: pulumi.String("Apigee Environment"),
/// 			DisplayName: pulumi.String("environment-1"),
/// 			OrgId:       apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrgSecurityAddonsConfig, err := apigee.NewAddonsConfig(ctx, "apigee_org_security_addons_config", &apigee.AddonsConfigArgs{
/// 			Org: apigeeOrg.Name,
/// 			AddonsConfig: &apigee.AddonsConfigAddonsConfigArgs{
/// 				ApiSecurityConfig: &apigee.AddonsConfigAddonsConfigApiSecurityConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewSecurityAction(ctx, "apigee_security_action", &apigee.SecurityActionArgs{
/// 			SecurityActionId: pulumi.String("my-security-action"),
/// 			OrgId:            apigeeOrg.Name,
/// 			EnvId:            env.Name,
/// 			Description:      pulumi.String("Apigee Security Action"),
/// 			State:            pulumi.String("ENABLED"),
/// 			ConditionConfig: &apigee.SecurityActionConditionConfigArgs{
/// 				IpAddressRanges: pulumi.StringArray{
/// 					pulumi.String("100.0.220.1"),
/// 					pulumi.String("200.0.0.1"),
/// 				},
/// 				BotReasons: pulumi.StringArray{
/// 					pulumi.String("Flooder"),
/// 					pulumi.String("Public Cloud Azure"),
/// 					pulumi.String("Public Cloud AWS"),
/// 				},
/// 			},
/// 			Allow:      &apigee.SecurityActionAllowArgs{},
/// 			ExpireTime: pulumi.String("2025-12-31T23:59:59Z"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeOrgSecurityAddonsConfig,
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
///   name = "my-network"
/// }
/// resource "gcp_compute_globaladdress" "apigee_range" {
///   name          = "my-address"
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
/// }
/// resource "gcp_apigee_addonsconfig" "apigee_org_security_addons_config" {
///   org = gcp_apigee_organization.apigee_org.name
///   addons_config = {
///     api_security_config = {
///       enabled = true
///     }
///   }
/// }
/// resource "gcp_apigee_securityaction" "apigee_security_action" {
///   depends_on         = [gcp_apigee_addonsconfig.apigee_org_security_addons_config]
///   security_action_id = "my-security-action"
///   org_id             = gcp_apigee_organization.apigee_org.name
///   env_id             = gcp_apigee_environment.env.name
///   description        = "Apigee Security Action"
///   state              = "ENABLED"
///   condition_config = {
///     ip_address_ranges = ["100.0.220.1", "200.0.0.1"]
///     bot_reasons       = ["Flooder", "Public Cloud Azure", "Public Cloud AWS"]
///   }
///   allow       = {}
///   expire_time = "2025-12-31T23:59:59Z"
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
/// import com.pulumi.gcp.apigee.AddonsConfig;
/// import com.pulumi.gcp.apigee.AddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs;
/// import com.pulumi.gcp.apigee.SecurityAction;
/// import com.pulumi.gcp.apigee.SecurityActionArgs;
/// import com.pulumi.gcp.apigee.inputs.SecurityActionConditionConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.SecurityActionAllowArgs;
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
///             .name("my-network")
///             .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("my-address")
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
///             .build());
///
///         var apigeeOrgSecurityAddonsConfig = new AddonsConfig("apigeeOrgSecurityAddonsConfig", AddonsConfigArgs.builder()
///             .org(apigeeOrg.name())
///             .addonsConfig(AddonsConfigAddonsConfigArgs.builder()
///                 .apiSecurityConfig(AddonsConfigAddonsConfigApiSecurityConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build());
///
///         var apigeeSecurityAction = new SecurityAction("apigeeSecurityAction", SecurityActionArgs.builder()
///             .securityActionId("my-security-action")
///             .orgId(apigeeOrg.name())
///             .envId(env.name())
///             .description("Apigee Security Action")
///             .state("ENABLED")
///             .conditionConfig(SecurityActionConditionConfigArgs.builder()
///                 .ipAddressRanges(
///                     "100.0.220.1",
///                     "200.0.0.1")
///                 .botReasons(
///                     "Flooder",
///                     "Public Cloud Azure",
///                     "Public Cloud AWS")
///                 .build())
///             .allow(SecurityActionAllowArgs.builder()
///                 .build())
///             .expireTime("2025-12-31T23:59:59Z")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeOrgSecurityAddonsConfig)
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
///       name: my-network
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: my-address
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
///   apigeeOrgSecurityAddonsConfig:
///     type: gcp:apigee:AddonsConfig
///     name: apigee_org_security_addons_config
///     properties:
///       org: ${apigeeOrg.name}
///       addonsConfig:
///         apiSecurityConfig:
///           enabled: true
///   apigeeSecurityAction:
///     type: gcp:apigee:SecurityAction
///     name: apigee_security_action
///     properties:
///       securityActionId: my-security-action
///       orgId: ${apigeeOrg.name}
///       envId: ${env.name}
///       description: Apigee Security Action
///       state: ENABLED
///       conditionConfig:
///         ipAddressRanges:
///           - 100.0.220.1
///           - 200.0.0.1
///         botReasons:
///           - Flooder
///           - Public Cloud Azure
///           - Public Cloud AWS
///       allow: {}
///       expireTime: 2025-12-31T23:59:59Z
///     options:
///       dependsOn:
///         - ${apigeeOrgSecurityAddonsConfig}
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
/// SecurityAction can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{env_id}}/securityActions/{{security_action_id}}`
/// * `{{org_id}}/{{env_id}}/{{security_action_id}}`
///
///
/// When using the `pulumi import` command, SecurityAction can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/securityAction:SecurityAction default organizations/{{org_id}}/environments/{{env_id}}/securityActions/{{security_action_id}}
/// $ pulumi import gcp:apigee/securityAction:SecurityAction default {{org_id}}/{{env_id}}/{{security_action_id}}
/// ```
class SecurityAction extends pulumi.CustomResource {
  /// Allow a request through if it matches this SecurityAction.
  late final pulumi.Output<Map<String, dynamic>?> allow;
  /// If unset, this would apply to all proxies in the environment.
  /// If set, this action is enforced only if at least one proxy in the repeated
  /// list is deployed at the time of enforcement. If set, several restrictions are enforced on SecurityActions.
  /// There can be at most 100 enabled actions with proxies set in an env.
  /// Several other restrictions apply on conditions and are detailed later.
  late final pulumi.Output<List<String>?> apiProxies;
  /// A valid SecurityAction must contain at least one condition.
  /// Structure is documented below.
  late final pulumi.Output<SecurityActionConditionConfig> conditionConfig;
  /// The create time for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Deny a request through if it matches this SecurityAction.
  /// Structure is documented below.
  late final pulumi.Output<SecurityActionDeny?> deny;
  /// An optional user provided description of the SecurityAction.
  late final pulumi.Output<String?> description;
  /// The Apigee environment that this security action applies to.
  late final pulumi.Output<String> envId;
  /// The expiration for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9
  /// fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String?> expireTime;
  /// Flag a request through if it matches this SecurityAction.
  /// Structure is documented below.
  late final pulumi.Output<SecurityActionFlag?> flag;
  /// The organization that this security action applies to.
  late final pulumi.Output<String> orgId;
  /// The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// This value should be 0-61 characters, and valid format is (^a-z?$).
  late final pulumi.Output<String> securityActionId;
  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> state;
  /// The TTL for this SecurityAction.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String?> ttl;
  /// The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SecurityAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityAction]. {@macro pulumi_apigee_security_action_security_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityAction(
    String name, {
    SecurityActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/securityAction:SecurityAction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    allow = registerOutput<Map<String, dynamic>?>('allow');
    apiProxies = registerOutput<List<String>?>('apiProxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    conditionConfig = registerOutput<SecurityActionConditionConfig>('conditionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionConditionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deny = registerOutput<SecurityActionDeny?>('deny', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionDeny.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    expireTime = registerOutput<String?>('expireTime');
    flag = registerOutput<SecurityActionFlag?>('flag', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionFlag.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    securityActionId = registerOutput<String>('securityActionId');
    state = registerOutput<String>('state');
    ttl = registerOutput<String?>('ttl');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [SecurityAction] resource's state with the given [name] and [id].
  static SecurityAction get(
    String name,
    pulumi.Input<String> id, {
    SecurityActionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityAction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityAction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/securityAction:SecurityAction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allow = registerOutput<Map<String, dynamic>?>('allow');
    apiProxies = registerOutput<List<String>?>('apiProxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    conditionConfig = registerOutput<SecurityActionConditionConfig>('conditionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionConditionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deny = registerOutput<SecurityActionDeny?>('deny', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionDeny.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    expireTime = registerOutput<String?>('expireTime');
    flag = registerOutput<SecurityActionFlag?>('flag', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionFlag.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    securityActionId = registerOutput<String>('securityActionId');
    this.state = registerOutput<String>('state');
    ttl = registerOutput<String?>('ttl');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [SecurityAction] resource.
  SecurityAction.reference(String urn)
    : super(
        'gcp:apigee/securityAction:SecurityAction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allow = registerOutput<Map<String, dynamic>?>('allow');
    apiProxies = registerOutput<List<String>?>('apiProxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    conditionConfig = registerOutput<SecurityActionConditionConfig>('conditionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionConditionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deny = registerOutput<SecurityActionDeny?>('deny', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionDeny.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    expireTime = registerOutput<String?>('expireTime');
    flag = registerOutput<SecurityActionFlag?>('flag', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityActionFlag.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orgId = registerOutput<String>('orgId');
    securityActionId = registerOutput<String>('securityActionId');
    state = registerOutput<String>('state');
    ttl = registerOutput<String?>('ttl');
    updateTime = registerOutput<String>('updateTime');
  }
}
