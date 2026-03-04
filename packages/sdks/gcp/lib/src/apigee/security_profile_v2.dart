import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_v2_args.dart';
import 'security_profile_v2_state.dart';

/// Security profile for risk assessment version 2 in Apigee.
///
///
/// To get more information about SecurityProfileV2, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.securityProfilesV2/create)
/// * How-to Guides
/// * [Creating a security profile](https://cloud.google.com/apigee/docs/api-security/security-scores#security-profiles-v2)
///
/// ## Example Usage
///
/// ### Apigee Security Profile V2 Basic
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
/// const apigeeOrgSecurityAddonsConfig = new gcp.apigee.AddonsConfig("apigee_org_security_addons_config", {
///     org: apigeeOrg.name,
///     addonsConfig: {
///         apiSecurityConfig: {
///             enabled: true,
///         },
///     },
/// });
/// const securityProfileV2 = new gcp.apigee.SecurityProfileV2("security_profile_v2", {
///     profileId: "my-profile",
///     orgId: apigeeOrg.id,
///     description: "terraform test description",
///     profileAssessmentConfigs: [
///         {
///             assessment: "auth-policies-check",
///             weight: "MAJOR",
///         },
///         {
///             assessment: "mediation-policies-check",
///             weight: "MODERATE",
///         },
///         {
///             assessment: "threat-policies-check",
///             weight: "MINOR",
///         },
///     ],
/// }, {
///     dependsOn: [apigeeOrgSecurityAddonsConfig],
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
/// apigee_org_security_addons_config = gcp.apigee.AddonsConfig("apigee_org_security_addons_config",
///     org=apigee_org.name,
///     addons_config={
///         "api_security_config": {
///             "enabled": True,
///         },
///     })
/// security_profile_v2 = gcp.apigee.SecurityProfileV2("security_profile_v2",
///     profile_id="my-profile",
///     org_id=apigee_org.id,
///     description="terraform test description",
///     profile_assessment_configs=[
///         {
///             "assessment": "auth-policies-check",
///             "weight": "MAJOR",
///         },
///         {
///             "assessment": "mediation-policies-check",
///             "weight": "MODERATE",
///         },
///         {
///             "assessment": "threat-policies-check",
///             "weight": "MINOR",
///         },
///     ],
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
///     var securityProfileV2 = new Gcp.Apigee.SecurityProfileV2("security_profile_v2", new()
///     {
///         ProfileId = "my-profile",
///         OrgId = apigeeOrg.Id,
///         Description = "terraform test description",
///         ProfileAssessmentConfigs = new[]
///         {
///             new Gcp.Apigee.Inputs.SecurityProfileV2ProfileAssessmentConfigArgs
///             {
///                 Assessment = "auth-policies-check",
///                 Weight = "MAJOR",
///             },
///             new Gcp.Apigee.Inputs.SecurityProfileV2ProfileAssessmentConfigArgs
///             {
///                 Assessment = "mediation-policies-check",
///                 Weight = "MODERATE",
///             },
///             new Gcp.Apigee.Inputs.SecurityProfileV2ProfileAssessmentConfigArgs
///             {
///                 Assessment = "threat-policies-check",
///                 Weight = "MINOR",
///             },
///         },
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
/// 		_, err = apigee.NewSecurityProfileV2(ctx, "security_profile_v2", &apigee.SecurityProfileV2Args{
/// 			ProfileId:   pulumi.String("my-profile"),
/// 			OrgId:       apigeeOrg.ID(),
/// 			Description: pulumi.String("terraform test description"),
/// 			ProfileAssessmentConfigs: apigee.SecurityProfileV2ProfileAssessmentConfigArray{
/// 				&apigee.SecurityProfileV2ProfileAssessmentConfigArgs{
/// 					Assessment: pulumi.String("auth-policies-check"),
/// 					Weight:     pulumi.String("MAJOR"),
/// 				},
/// 				&apigee.SecurityProfileV2ProfileAssessmentConfigArgs{
/// 					Assessment: pulumi.String("mediation-policies-check"),
/// 					Weight:     pulumi.String("MODERATE"),
/// 				},
/// 				&apigee.SecurityProfileV2ProfileAssessmentConfigArgs{
/// 					Assessment: pulumi.String("threat-policies-check"),
/// 					Weight:     pulumi.String("MINOR"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.apigee.AddonsConfig;
/// import com.pulumi.gcp.apigee.AddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs;
/// import com.pulumi.gcp.apigee.SecurityProfileV2;
/// import com.pulumi.gcp.apigee.SecurityProfileV2Args;
/// import com.pulumi.gcp.apigee.inputs.SecurityProfileV2ProfileAssessmentConfigArgs;
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
///         var apigeeOrgSecurityAddonsConfig = new AddonsConfig("apigeeOrgSecurityAddonsConfig", AddonsConfigArgs.builder()
///             .org(apigeeOrg.name())
///             .addonsConfig(AddonsConfigAddonsConfigArgs.builder()
///                 .apiSecurityConfig(AddonsConfigAddonsConfigApiSecurityConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build());
///
///         var securityProfileV2 = new SecurityProfileV2("securityProfileV2", SecurityProfileV2Args.builder()
///             .profileId("my-profile")
///             .orgId(apigeeOrg.id())
///             .description("terraform test description")
///             .profileAssessmentConfigs(
///                 SecurityProfileV2ProfileAssessmentConfigArgs.builder()
///                     .assessment("auth-policies-check")
///                     .weight("MAJOR")
///                     .build(),
///                 SecurityProfileV2ProfileAssessmentConfigArgs.builder()
///                     .assessment("mediation-policies-check")
///                     .weight("MODERATE")
///                     .build(),
///                 SecurityProfileV2ProfileAssessmentConfigArgs.builder()
///                     .assessment("threat-policies-check")
///                     .weight("MINOR")
///                     .build())
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
///   apigeeOrgSecurityAddonsConfig:
///     type: gcp:apigee:AddonsConfig
///     name: apigee_org_security_addons_config
///     properties:
///       org: ${apigeeOrg.name}
///       addonsConfig:
///         apiSecurityConfig:
///           enabled: true
///   securityProfileV2:
///     type: gcp:apigee:SecurityProfileV2
///     name: security_profile_v2
///     properties:
///       profileId: my-profile
///       orgId: ${apigeeOrg.id}
///       description: terraform test description
///       profileAssessmentConfigs:
///         - assessment: auth-policies-check
///           weight: MAJOR
///         - assessment: mediation-policies-check
///           weight: MODERATE
///         - assessment: threat-policies-check
///           weight: MINOR
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
/// SecurityProfileV2 can be imported using any of these accepted formats:
///
/// * `{{org_id}}/securityProfilesV2/{{profile_id}}`
///
/// * `{{org_id}}/{{profile_id}}`
///
/// When using the `pulumi import` command, SecurityProfileV2 can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/securityProfileV2:SecurityProfileV2 default {{org_id}}/securityProfilesV2/{{profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/securityProfileV2:SecurityProfileV2 default {{org_id}}/{{profile_id}}
/// ```
class SecurityProfileV2 extends pulumi.CustomResource {
  /// The timestamp at which this profile was created.
  late final pulumi.Output<String> createTime;

  /// Description of the security profile.
  late final pulumi.Output<String?> description;

  /// Name of the security profile v2 resource,
  /// in the format `organizations/{{org_name}}/securityProfilesV2/{{profile_id}}`.
  late final pulumi.Output<String> name;

  /// The Apigee Organization associated with the Apigee Security Profile V2,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;

  /// A map of the assessment name and the assessment config.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> profileAssessmentConfigs;

  /// Resource ID of the security profile.
  late final pulumi.Output<String> profileId;

  /// The timestamp at which this profile was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SecurityProfileV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityProfileV2]. {@macro pulumi_apigee_security_profile_v2_security_profile_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityProfileV2(
    String name, {
    SecurityProfileV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/securityProfileV2:SecurityProfileV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    profileAssessmentConfigs = registerOutput<List<Map<String, dynamic>>>(
      'profileAssessmentConfigs',
    );
    profileId = registerOutput<String>('profileId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [SecurityProfileV2] resource's state with the given [name] and [id].
  static SecurityProfileV2 get(
    String name,
    pulumi.Input<String> id, {
    SecurityProfileV2State? state,
  }) {
    return SecurityProfileV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityProfileV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/securityProfileV2:SecurityProfileV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    profileAssessmentConfigs = registerOutput<List<Map<String, dynamic>>>(
      'profileAssessmentConfigs',
    );
    profileId = registerOutput<String>('profileId');
    updateTime = registerOutput<String>('updateTime');
  }
}
