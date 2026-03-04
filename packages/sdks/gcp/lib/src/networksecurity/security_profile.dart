import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_args.dart';
import 'security_profile_custom_intercept_profile.dart';
import 'security_profile_custom_mirroring_profile.dart';
import 'security_profile_state.dart';
import 'security_profile_threat_prevention_profile.dart';
import 'security_profile_url_filtering_profile.dart';

/// A security profile defines the behavior associated to a profile type.
///
///
/// To get more information about SecurityProfile, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/organizations.locations.securityProfiles)
/// * How-to Guides
/// * [Create and manage security profiles](https://cloud.google.com/firewall/docs/configure-security-profiles)
///
/// ## Example Usage
///
/// ### Network Security Security Profile Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.SecurityProfile("default", {
///     name: "my-security-profile",
///     parent: "organizations/123456789",
///     description: "my description",
///     type: "THREAT_PREVENTION",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.SecurityProfile("default",
///     name="my-security-profile",
///     parent="organizations/123456789",
///     description="my description",
///     type="THREAT_PREVENTION",
///     labels={
///         "foo": "bar",
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
///     var @default = new Gcp.NetworkSecurity.SecurityProfile("default", new()
///     {
///         Name = "my-security-profile",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         Type = "THREAT_PREVENTION",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// 			Name:        pulumi.String("my-security-profile"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("THREAT_PREVENTION"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
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
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
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
///         var default_ = new SecurityProfile("default", SecurityProfileArgs.builder()
///             .name("my-security-profile")
///             .parent("organizations/123456789")
///             .description("my description")
///             .type("THREAT_PREVENTION")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:SecurityProfile
///     properties:
///       name: my-security-profile
///       parent: organizations/123456789
///       description: my description
///       type: THREAT_PREVENTION
///       labels:
///         foo: bar
/// ```
///
/// ### Network Security Security Profile Overrides
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.SecurityProfile("default", {
///     name: "my-security-profile",
///     parent: "organizations/123456789",
///     description: "my description",
///     type: "THREAT_PREVENTION",
///     threatPreventionProfile: {
///         severityOverrides: [
///             {
///                 action: "ALLOW",
///                 severity: "INFORMATIONAL",
///             },
///             {
///                 action: "DENY",
///                 severity: "HIGH",
///             },
///         ],
///         threatOverrides: [{
///             action: "ALLOW",
///             threatId: "280647",
///         }],
///         antivirusOverrides: [{
///             protocol: "SMTP",
///             action: "ALLOW",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.SecurityProfile("default",
///     name="my-security-profile",
///     parent="organizations/123456789",
///     description="my description",
///     type="THREAT_PREVENTION",
///     threat_prevention_profile={
///         "severity_overrides": [
///             {
///                 "action": "ALLOW",
///                 "severity": "INFORMATIONAL",
///             },
///             {
///                 "action": "DENY",
///                 "severity": "HIGH",
///             },
///         ],
///         "threat_overrides": [{
///             "action": "ALLOW",
///             "threat_id": "280647",
///         }],
///         "antivirus_overrides": [{
///             "protocol": "SMTP",
///             "action": "ALLOW",
///         }],
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
///     var @default = new Gcp.NetworkSecurity.SecurityProfile("default", new()
///     {
///         Name = "my-security-profile",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         Type = "THREAT_PREVENTION",
///         ThreatPreventionProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileThreatPreventionProfileArgs
///         {
///             SeverityOverrides = new[]
///             {
///                 new Gcp.NetworkSecurity.Inputs.SecurityProfileThreatPreventionProfileSeverityOverrideArgs
///                 {
///                     Action = "ALLOW",
///                     Severity = "INFORMATIONAL",
///                 },
///                 new Gcp.NetworkSecurity.Inputs.SecurityProfileThreatPreventionProfileSeverityOverrideArgs
///                 {
///                     Action = "DENY",
///                     Severity = "HIGH",
///                 },
///             },
///             ThreatOverrides = new[]
///             {
///                 new Gcp.NetworkSecurity.Inputs.SecurityProfileThreatPreventionProfileThreatOverrideArgs
///                 {
///                     Action = "ALLOW",
///                     ThreatId = "280647",
///                 },
///             },
///             AntivirusOverrides = new[]
///             {
///                 new Gcp.NetworkSecurity.Inputs.SecurityProfileThreatPreventionProfileAntivirusOverrideArgs
///                 {
///                     Protocol = "SMTP",
///                     Action = "ALLOW",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// 			Name:        pulumi.String("my-security-profile"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("THREAT_PREVENTION"),
/// 			ThreatPreventionProfile: &networksecurity.SecurityProfileThreatPreventionProfileArgs{
/// 				SeverityOverrides: networksecurity.SecurityProfileThreatPreventionProfileSeverityOverrideArray{
/// 					&networksecurity.SecurityProfileThreatPreventionProfileSeverityOverrideArgs{
/// 						Action:   pulumi.String("ALLOW"),
/// 						Severity: pulumi.String("INFORMATIONAL"),
/// 					},
/// 					&networksecurity.SecurityProfileThreatPreventionProfileSeverityOverrideArgs{
/// 						Action:   pulumi.String("DENY"),
/// 						Severity: pulumi.String("HIGH"),
/// 					},
/// 				},
/// 				ThreatOverrides: networksecurity.SecurityProfileThreatPreventionProfileThreatOverrideArray{
/// 					&networksecurity.SecurityProfileThreatPreventionProfileThreatOverrideArgs{
/// 						Action:   pulumi.String("ALLOW"),
/// 						ThreatId: pulumi.String("280647"),
/// 					},
/// 				},
/// 				AntivirusOverrides: networksecurity.SecurityProfileThreatPreventionProfileAntivirusOverrideArray{
/// 					&networksecurity.SecurityProfileThreatPreventionProfileAntivirusOverrideArgs{
/// 						Protocol: pulumi.String("SMTP"),
/// 						Action:   pulumi.String("ALLOW"),
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileThreatPreventionProfileArgs;
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
///         var default_ = new SecurityProfile("default", SecurityProfileArgs.builder()
///             .name("my-security-profile")
///             .parent("organizations/123456789")
///             .description("my description")
///             .type("THREAT_PREVENTION")
///             .threatPreventionProfile(SecurityProfileThreatPreventionProfileArgs.builder()
///                 .severityOverrides(
///                     SecurityProfileThreatPreventionProfileSeverityOverrideArgs.builder()
///                         .action("ALLOW")
///                         .severity("INFORMATIONAL")
///                         .build(),
///                     SecurityProfileThreatPreventionProfileSeverityOverrideArgs.builder()
///                         .action("DENY")
///                         .severity("HIGH")
///                         .build())
///                 .threatOverrides(SecurityProfileThreatPreventionProfileThreatOverrideArgs.builder()
///                     .action("ALLOW")
///                     .threatId("280647")
///                     .build())
///                 .antivirusOverrides(SecurityProfileThreatPreventionProfileAntivirusOverrideArgs.builder()
///                     .protocol("SMTP")
///                     .action("ALLOW")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:SecurityProfile
///     properties:
///       name: my-security-profile
///       parent: organizations/123456789
///       description: my description
///       type: THREAT_PREVENTION
///       threatPreventionProfile:
///         severityOverrides:
///           - action: ALLOW
///             severity: INFORMATIONAL
///           - action: DENY
///             severity: HIGH
///         threatOverrides:
///           - action: ALLOW
///             threatId: '280647'
///         antivirusOverrides:
///           - protocol: SMTP
///             action: ALLOW
/// ```
///
/// ### Network Security Security Profile Mirroring
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultMirroringDeploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("default", {
///     mirroringDeploymentGroupId: "my-dg",
///     location: "global",
///     network: _default.id,
/// });
/// const defaultMirroringEndpointGroup = new gcp.networksecurity.MirroringEndpointGroup("default", {
///     mirroringEndpointGroupId: "my-eg",
///     location: "global",
///     mirroringDeploymentGroup: defaultMirroringDeploymentGroup.id,
/// });
/// const defaultSecurityProfile = new gcp.networksecurity.SecurityProfile("default", {
///     name: "my-security-profile",
///     parent: "organizations/123456789",
///     description: "my description",
///     type: "CUSTOM_MIRRORING",
///     customMirroringProfile: {
///         mirroringEndpointGroup: defaultMirroringEndpointGroup.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default_mirroring_deployment_group = gcp.networksecurity.MirroringDeploymentGroup("default",
///     mirroring_deployment_group_id="my-dg",
///     location="global",
///     network=default.id)
/// default_mirroring_endpoint_group = gcp.networksecurity.MirroringEndpointGroup("default",
///     mirroring_endpoint_group_id="my-eg",
///     location="global",
///     mirroring_deployment_group=default_mirroring_deployment_group.id)
/// default_security_profile = gcp.networksecurity.SecurityProfile("default",
///     name="my-security-profile",
///     parent="organizations/123456789",
///     description="my description",
///     type="CUSTOM_MIRRORING",
///     custom_mirroring_profile={
///         "mirroring_endpoint_group": default_mirroring_endpoint_group.id,
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultMirroringDeploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("default", new()
///     {
///         MirroringDeploymentGroupId = "my-dg",
///         Location = "global",
///         Network = @default.Id,
///     });
///
///     var defaultMirroringEndpointGroup = new Gcp.NetworkSecurity.MirroringEndpointGroup("default", new()
///     {
///         MirroringEndpointGroupId = "my-eg",
///         Location = "global",
///         MirroringDeploymentGroup = defaultMirroringDeploymentGroup.Id,
///     });
///
///     var defaultSecurityProfile = new Gcp.NetworkSecurity.SecurityProfile("default", new()
///     {
///         Name = "my-security-profile",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         Type = "CUSTOM_MIRRORING",
///         CustomMirroringProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileCustomMirroringProfileArgs
///         {
///             MirroringEndpointGroup = defaultMirroringEndpointGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMirroringDeploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "default", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("my-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMirroringEndpointGroup, err := networksecurity.NewMirroringEndpointGroup(ctx, "default", &networksecurity.MirroringEndpointGroupArgs{
/// 			MirroringEndpointGroupId: pulumi.String("my-eg"),
/// 			Location:                 pulumi.String("global"),
/// 			MirroringDeploymentGroup: defaultMirroringDeploymentGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// 			Name:        pulumi.String("my-security-profile"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("CUSTOM_MIRRORING"),
/// 			CustomMirroringProfile: &networksecurity.SecurityProfileCustomMirroringProfileArgs{
/// 				MirroringEndpointGroup: defaultMirroringEndpointGroup.ID(),
/// 			},
/// 		})
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroup;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileCustomMirroringProfileArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultMirroringDeploymentGroup = new MirroringDeploymentGroup("defaultMirroringDeploymentGroup", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("my-dg")
///             .location("global")
///             .network(default_.id())
///             .build());
///
///         var defaultMirroringEndpointGroup = new MirroringEndpointGroup("defaultMirroringEndpointGroup", MirroringEndpointGroupArgs.builder()
///             .mirroringEndpointGroupId("my-eg")
///             .location("global")
///             .mirroringDeploymentGroup(defaultMirroringDeploymentGroup.id())
///             .build());
///
///         var defaultSecurityProfile = new SecurityProfile("defaultSecurityProfile", SecurityProfileArgs.builder()
///             .name("my-security-profile")
///             .parent("organizations/123456789")
///             .description("my description")
///             .type("CUSTOM_MIRRORING")
///             .customMirroringProfile(SecurityProfileCustomMirroringProfileArgs.builder()
///                 .mirroringEndpointGroup(defaultMirroringEndpointGroup.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   defaultMirroringDeploymentGroup:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     name: default
///     properties:
///       mirroringDeploymentGroupId: my-dg
///       location: global
///       network: ${default.id}
///   defaultMirroringEndpointGroup:
///     type: gcp:networksecurity:MirroringEndpointGroup
///     name: default
///     properties:
///       mirroringEndpointGroupId: my-eg
///       location: global
///       mirroringDeploymentGroup: ${defaultMirroringDeploymentGroup.id}
///   defaultSecurityProfile:
///     type: gcp:networksecurity:SecurityProfile
///     name: default
///     properties:
///       name: my-security-profile
///       parent: organizations/123456789
///       description: my description
///       type: CUSTOM_MIRRORING
///       customMirroringProfile:
///         mirroringEndpointGroup: ${defaultMirroringEndpointGroup.id}
/// ```
///
/// ### Network Security Security Profile Intercept
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultInterceptDeploymentGroup = new gcp.networksecurity.InterceptDeploymentGroup("default", {
///     interceptDeploymentGroupId: "my-dg",
///     location: "global",
///     network: _default.id,
/// });
/// const defaultInterceptEndpointGroup = new gcp.networksecurity.InterceptEndpointGroup("default", {
///     interceptEndpointGroupId: "my-eg",
///     location: "global",
///     interceptDeploymentGroup: defaultInterceptDeploymentGroup.id,
/// });
/// const defaultSecurityProfile = new gcp.networksecurity.SecurityProfile("default", {
///     name: "my-security-profile",
///     parent: "organizations/123456789",
///     description: "my description",
///     type: "CUSTOM_INTERCEPT",
///     customInterceptProfile: {
///         interceptEndpointGroup: defaultInterceptEndpointGroup.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default_intercept_deployment_group = gcp.networksecurity.InterceptDeploymentGroup("default",
///     intercept_deployment_group_id="my-dg",
///     location="global",
///     network=default.id)
/// default_intercept_endpoint_group = gcp.networksecurity.InterceptEndpointGroup("default",
///     intercept_endpoint_group_id="my-eg",
///     location="global",
///     intercept_deployment_group=default_intercept_deployment_group.id)
/// default_security_profile = gcp.networksecurity.SecurityProfile("default",
///     name="my-security-profile",
///     parent="organizations/123456789",
///     description="my description",
///     type="CUSTOM_INTERCEPT",
///     custom_intercept_profile={
///         "intercept_endpoint_group": default_intercept_endpoint_group.id,
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultInterceptDeploymentGroup = new Gcp.NetworkSecurity.InterceptDeploymentGroup("default", new()
///     {
///         InterceptDeploymentGroupId = "my-dg",
///         Location = "global",
///         Network = @default.Id,
///     });
///
///     var defaultInterceptEndpointGroup = new Gcp.NetworkSecurity.InterceptEndpointGroup("default", new()
///     {
///         InterceptEndpointGroupId = "my-eg",
///         Location = "global",
///         InterceptDeploymentGroup = defaultInterceptDeploymentGroup.Id,
///     });
///
///     var defaultSecurityProfile = new Gcp.NetworkSecurity.SecurityProfile("default", new()
///     {
///         Name = "my-security-profile",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         Type = "CUSTOM_INTERCEPT",
///         CustomInterceptProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileCustomInterceptProfileArgs
///         {
///             InterceptEndpointGroup = defaultInterceptEndpointGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInterceptDeploymentGroup, err := networksecurity.NewInterceptDeploymentGroup(ctx, "default", &networksecurity.InterceptDeploymentGroupArgs{
/// 			InterceptDeploymentGroupId: pulumi.String("my-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInterceptEndpointGroup, err := networksecurity.NewInterceptEndpointGroup(ctx, "default", &networksecurity.InterceptEndpointGroupArgs{
/// 			InterceptEndpointGroupId: pulumi.String("my-eg"),
/// 			Location:                 pulumi.String("global"),
/// 			InterceptDeploymentGroup: defaultInterceptDeploymentGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// 			Name:        pulumi.String("my-security-profile"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("CUSTOM_INTERCEPT"),
/// 			CustomInterceptProfile: &networksecurity.SecurityProfileCustomInterceptProfileArgs{
/// 				InterceptEndpointGroup: defaultInterceptEndpointGroup.ID(),
/// 			},
/// 		})
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroup;
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileCustomInterceptProfileArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultInterceptDeploymentGroup = new InterceptDeploymentGroup("defaultInterceptDeploymentGroup", InterceptDeploymentGroupArgs.builder()
///             .interceptDeploymentGroupId("my-dg")
///             .location("global")
///             .network(default_.id())
///             .build());
///
///         var defaultInterceptEndpointGroup = new InterceptEndpointGroup("defaultInterceptEndpointGroup", InterceptEndpointGroupArgs.builder()
///             .interceptEndpointGroupId("my-eg")
///             .location("global")
///             .interceptDeploymentGroup(defaultInterceptDeploymentGroup.id())
///             .build());
///
///         var defaultSecurityProfile = new SecurityProfile("defaultSecurityProfile", SecurityProfileArgs.builder()
///             .name("my-security-profile")
///             .parent("organizations/123456789")
///             .description("my description")
///             .type("CUSTOM_INTERCEPT")
///             .customInterceptProfile(SecurityProfileCustomInterceptProfileArgs.builder()
///                 .interceptEndpointGroup(defaultInterceptEndpointGroup.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   defaultInterceptDeploymentGroup:
///     type: gcp:networksecurity:InterceptDeploymentGroup
///     name: default
///     properties:
///       interceptDeploymentGroupId: my-dg
///       location: global
///       network: ${default.id}
///   defaultInterceptEndpointGroup:
///     type: gcp:networksecurity:InterceptEndpointGroup
///     name: default
///     properties:
///       interceptEndpointGroupId: my-eg
///       location: global
///       interceptDeploymentGroup: ${defaultInterceptDeploymentGroup.id}
///   defaultSecurityProfile:
///     type: gcp:networksecurity:SecurityProfile
///     name: default
///     properties:
///       name: my-security-profile
///       parent: organizations/123456789
///       description: my description
///       type: CUSTOM_INTERCEPT
///       customInterceptProfile:
///         interceptEndpointGroup: ${defaultInterceptEndpointGroup.id}
/// ```
///
/// ### Network Security Security Profile Url Filtering
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.SecurityProfile("default", {
///     name: "my-security-profile",
///     parent: "organizations/123456789",
///     description: "my description",
///     type: "URL_FILTERING",
///     urlFilteringProfile: {
///         urlFilters: [
///             {
///                 priority: 1,
///                 filteringAction: "ALLOW",
///                 urls: [
///                     "*example.com",
///                     "*about.example.com",
///                     "*help.example.com",
///                 ],
///             },
///             {
///                 priority: 2,
///                 filteringAction: "DENY",
///                 urls: ["*restricted.example.com"],
///             },
///         ],
///     },
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.SecurityProfile("default",
///     name="my-security-profile",
///     parent="organizations/123456789",
///     description="my description",
///     type="URL_FILTERING",
///     url_filtering_profile={
///         "url_filters": [
///             {
///                 "priority": 1,
///                 "filtering_action": "ALLOW",
///                 "urls": [
///                     "*example.com",
///                     "*about.example.com",
///                     "*help.example.com",
///                 ],
///             },
///             {
///                 "priority": 2,
///                 "filtering_action": "DENY",
///                 "urls": ["*restricted.example.com"],
///             },
///         ],
///     },
///     labels={
///         "foo": "bar",
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
///     var @default = new Gcp.NetworkSecurity.SecurityProfile("default", new()
///     {
///         Name = "my-security-profile",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         Type = "URL_FILTERING",
///         UrlFilteringProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileUrlFilteringProfileArgs
///         {
///             UrlFilters = new[]
///             {
///                 new Gcp.NetworkSecurity.Inputs.SecurityProfileUrlFilteringProfileUrlFilterArgs
///                 {
///                     Priority = 1,
///                     FilteringAction = "ALLOW",
///                     Urls = new[]
///                     {
///                         "*example.com",
///                         "*about.example.com",
///                         "*help.example.com",
///                     },
///                 },
///                 new Gcp.NetworkSecurity.Inputs.SecurityProfileUrlFilteringProfileUrlFilterArgs
///                 {
///                     Priority = 2,
///                     FilteringAction = "DENY",
///                     Urls = new[]
///                     {
///                         "*restricted.example.com",
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// 			Name:        pulumi.String("my-security-profile"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("URL_FILTERING"),
/// 			UrlFilteringProfile: &networksecurity.SecurityProfileUrlFilteringProfileArgs{
/// 				UrlFilters: networksecurity.SecurityProfileUrlFilteringProfileUrlFilterArray{
/// 					&networksecurity.SecurityProfileUrlFilteringProfileUrlFilterArgs{
/// 						Priority:        pulumi.Int(1),
/// 						FilteringAction: pulumi.String("ALLOW"),
/// 						Urls: pulumi.StringArray{
/// 							pulumi.String("*example.com"),
/// 							pulumi.String("*about.example.com"),
/// 							pulumi.String("*help.example.com"),
/// 						},
/// 					},
/// 					&networksecurity.SecurityProfileUrlFilteringProfileUrlFilterArgs{
/// 						Priority:        pulumi.Int(2),
/// 						FilteringAction: pulumi.String("DENY"),
/// 						Urls: pulumi.StringArray{
/// 							pulumi.String("*restricted.example.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
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
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileUrlFilteringProfileArgs;
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
///         var default_ = new SecurityProfile("default", SecurityProfileArgs.builder()
///             .name("my-security-profile")
///             .parent("organizations/123456789")
///             .description("my description")
///             .type("URL_FILTERING")
///             .urlFilteringProfile(SecurityProfileUrlFilteringProfileArgs.builder()
///                 .urlFilters(
///                     SecurityProfileUrlFilteringProfileUrlFilterArgs.builder()
///                         .priority(1)
///                         .filteringAction("ALLOW")
///                         .urls(
///                             "*example.com",
///                             "*about.example.com",
///                             "*help.example.com")
///                         .build(),
///                     SecurityProfileUrlFilteringProfileUrlFilterArgs.builder()
///                         .priority(2)
///                         .filteringAction("DENY")
///                         .urls("*restricted.example.com")
///                         .build())
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:SecurityProfile
///     properties:
///       name: my-security-profile
///       parent: organizations/123456789
///       description: my description
///       type: URL_FILTERING
///       urlFilteringProfile:
///         urlFilters:
///           - priority: 1
///             filteringAction: ALLOW
///             urls:
///               - '*example.com'
///               - '*about.example.com'
///               - '*help.example.com'
///           - priority: 2
///             filteringAction: DENY
///             urls:
///               - '*restricted.example.com'
///       labels:
///         foo: bar
/// ```
///
/// ### Network Security Security Profile Broker
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultMirroringDeploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("default", {
///     mirroringDeploymentGroupId: "my-dg",
///     location: "global",
///     network: _default.id,
/// });
/// const defaultMirroringEndpointGroup = new gcp.networksecurity.MirroringEndpointGroup("default", {
///     mirroringEndpointGroupId: "my-eg",
///     location: "global",
///     type: "BROKER",
///     mirroringDeploymentGroups: [defaultMirroringDeploymentGroup.id],
/// });
/// const defaultSecurityProfile = new gcp.networksecurity.SecurityProfile("default", {
///     name: "my-security-profile",
///     parent: "organizations/123456789",
///     description: "my description",
///     type: "CUSTOM_MIRRORING",
///     customMirroringProfile: {
///         mirroringEndpointGroup: defaultMirroringEndpointGroup.id,
///         mirroringDeploymentGroups: [defaultMirroringDeploymentGroup.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default_mirroring_deployment_group = gcp.networksecurity.MirroringDeploymentGroup("default",
///     mirroring_deployment_group_id="my-dg",
///     location="global",
///     network=default.id)
/// default_mirroring_endpoint_group = gcp.networksecurity.MirroringEndpointGroup("default",
///     mirroring_endpoint_group_id="my-eg",
///     location="global",
///     type="BROKER",
///     mirroring_deployment_groups=[default_mirroring_deployment_group.id])
/// default_security_profile = gcp.networksecurity.SecurityProfile("default",
///     name="my-security-profile",
///     parent="organizations/123456789",
///     description="my description",
///     type="CUSTOM_MIRRORING",
///     custom_mirroring_profile={
///         "mirroring_endpoint_group": default_mirroring_endpoint_group.id,
///         "mirroring_deployment_groups": [default_mirroring_deployment_group.id],
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultMirroringDeploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("default", new()
///     {
///         MirroringDeploymentGroupId = "my-dg",
///         Location = "global",
///         Network = @default.Id,
///     });
///
///     var defaultMirroringEndpointGroup = new Gcp.NetworkSecurity.MirroringEndpointGroup("default", new()
///     {
///         MirroringEndpointGroupId = "my-eg",
///         Location = "global",
///         Type = "BROKER",
///         MirroringDeploymentGroups = new[]
///         {
///             defaultMirroringDeploymentGroup.Id,
///         },
///     });
///
///     var defaultSecurityProfile = new Gcp.NetworkSecurity.SecurityProfile("default", new()
///     {
///         Name = "my-security-profile",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         Type = "CUSTOM_MIRRORING",
///         CustomMirroringProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileCustomMirroringProfileArgs
///         {
///             MirroringEndpointGroup = defaultMirroringEndpointGroup.Id,
///             MirroringDeploymentGroups = new[]
///             {
///                 defaultMirroringDeploymentGroup.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMirroringDeploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "default", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("my-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMirroringEndpointGroup, err := networksecurity.NewMirroringEndpointGroup(ctx, "default", &networksecurity.MirroringEndpointGroupArgs{
/// 			MirroringEndpointGroupId: pulumi.String("my-eg"),
/// 			Location:                 pulumi.String("global"),
/// 			Type:                     pulumi.String("BROKER"),
/// 			MirroringDeploymentGroups: pulumi.StringArray{
/// 				defaultMirroringDeploymentGroup.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// 			Name:        pulumi.String("my-security-profile"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("CUSTOM_MIRRORING"),
/// 			CustomMirroringProfile: &networksecurity.SecurityProfileCustomMirroringProfileArgs{
/// 				MirroringEndpointGroup: defaultMirroringEndpointGroup.ID(),
/// 				MirroringDeploymentGroups: pulumi.StringArray{
/// 					defaultMirroringDeploymentGroup.ID(),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroup;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileCustomMirroringProfileArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultMirroringDeploymentGroup = new MirroringDeploymentGroup("defaultMirroringDeploymentGroup", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("my-dg")
///             .location("global")
///             .network(default_.id())
///             .build());
///
///         var defaultMirroringEndpointGroup = new MirroringEndpointGroup("defaultMirroringEndpointGroup", MirroringEndpointGroupArgs.builder()
///             .mirroringEndpointGroupId("my-eg")
///             .location("global")
///             .type("BROKER")
///             .mirroringDeploymentGroups(defaultMirroringDeploymentGroup.id())
///             .build());
///
///         var defaultSecurityProfile = new SecurityProfile("defaultSecurityProfile", SecurityProfileArgs.builder()
///             .name("my-security-profile")
///             .parent("organizations/123456789")
///             .description("my description")
///             .type("CUSTOM_MIRRORING")
///             .customMirroringProfile(SecurityProfileCustomMirroringProfileArgs.builder()
///                 .mirroringEndpointGroup(defaultMirroringEndpointGroup.id())
///                 .mirroringDeploymentGroups(defaultMirroringDeploymentGroup.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   defaultMirroringDeploymentGroup:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     name: default
///     properties:
///       mirroringDeploymentGroupId: my-dg
///       location: global
///       network: ${default.id}
///   defaultMirroringEndpointGroup:
///     type: gcp:networksecurity:MirroringEndpointGroup
///     name: default
///     properties:
///       mirroringEndpointGroupId: my-eg
///       location: global
///       type: BROKER
///       mirroringDeploymentGroups:
///         - ${defaultMirroringDeploymentGroup.id}
///   defaultSecurityProfile:
///     type: gcp:networksecurity:SecurityProfile
///     name: default
///     properties:
///       name: my-security-profile
///       parent: organizations/123456789
///       description: my description
///       type: CUSTOM_MIRRORING
///       customMirroringProfile:
///         mirroringEndpointGroup: ${defaultMirroringEndpointGroup.id}
///         mirroringDeploymentGroups:
///           - ${defaultMirroringDeploymentGroup.id}
/// ```
///
///
/// ## Import
///
/// SecurityProfile can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/securityProfiles/{{name}}`
///
/// When using the `pulumi import` command, SecurityProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/securityProfile:SecurityProfile default {{parent}}/locations/{{location}}/securityProfiles/{{name}}
/// ```
class SecurityProfile extends pulumi.CustomResource {
  /// Time the security profile was created in UTC.
  late final pulumi.Output<String> createTime;

  /// The configuration for defining the Intercept Endpoint Group used to
  /// intercept traffic to third-party firewall appliances.
  /// Structure is documented below.
  late final pulumi.Output<SecurityProfileCustomInterceptProfile?>
  customInterceptProfile;

  /// The configuration for defining the Mirroring Endpoint Group used to
  /// mirror traffic to third-party collectors.
  /// Structure is documented below.
  late final pulumi.Output<SecurityProfileCustomMirroringProfile?>
  customMirroringProfile;

  /// An optional description of the security profile. The Max length is 512 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an up-to-date
  /// value before proceeding.
  late final pulumi.Output<String> etag;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the security profile.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// The name of the security profile resource.
  late final pulumi.Output<String> name;

  /// The name of the parent this security profile belongs to.
  /// Format: organizations/{organization_id}.
  late final pulumi.Output<String?> parent;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;

  /// The threat prevention configuration for the security profile.
  /// Structure is documented below.
  late final pulumi.Output<SecurityProfileThreatPreventionProfile?>
  threatPreventionProfile;

  /// The type of security profile.
  /// Possible values are: `THREAT_PREVENTION`, `URL_FILTERING`, `CUSTOM_MIRRORING`, `CUSTOM_INTERCEPT`.
  late final pulumi.Output<String> type;

  /// Time the security profile was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// The url filtering configuration for the security profile.
  /// Structure is documented below.
  late final pulumi.Output<SecurityProfileUrlFilteringProfile?>
  urlFilteringProfile;

  /// Creates a new [SecurityProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityProfile]. {@macro pulumi_networksecurity_security_profile_security_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityProfile(
    String name, {
    SecurityProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networksecurity/securityProfile:SecurityProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    customInterceptProfile =
        registerOutput<SecurityProfileCustomInterceptProfile?>(
          'customInterceptProfile',
        );
    customMirroringProfile =
        registerOutput<SecurityProfileCustomMirroringProfile?>(
          'customMirroringProfile',
        );
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    selfLink = registerOutput<String>('selfLink');
    threatPreventionProfile =
        registerOutput<SecurityProfileThreatPreventionProfile?>(
          'threatPreventionProfile',
        );
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
    urlFilteringProfile = registerOutput<SecurityProfileUrlFilteringProfile?>(
      'urlFilteringProfile',
    );
  }

  /// Gets an existing [SecurityProfile] resource's state with the given [name] and [id].
  static SecurityProfile get(
    String name,
    pulumi.Input<String> id, {
    SecurityProfileState? state,
  }) {
    return SecurityProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networksecurity/securityProfile:SecurityProfile',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    customInterceptProfile =
        registerOutput<SecurityProfileCustomInterceptProfile?>(
          'customInterceptProfile',
        );
    customMirroringProfile =
        registerOutput<SecurityProfileCustomMirroringProfile?>(
          'customMirroringProfile',
        );
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    selfLink = registerOutput<String>('selfLink');
    threatPreventionProfile =
        registerOutput<SecurityProfileThreatPreventionProfile?>(
          'threatPreventionProfile',
        );
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
    urlFilteringProfile = registerOutput<SecurityProfileUrlFilteringProfile?>(
      'urlFilteringProfile',
    );
  }
}
