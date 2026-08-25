import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_instance_iammember_args.dart';
import 'tunnel_instance_iammember_condition.dart';
import 'tunnel_instance_iammember_state.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy TunnelInstance. Each of these resources serves a different use case:
///
/// * `gcp.iap.TunnelInstanceIAMPolicy`: Authoritative. Sets the IAM policy for the tunnelinstance and replaces any existing policy already attached.
/// * `gcp.iap.TunnelInstanceIAMBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the tunnelinstance are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.TunnelInstanceIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the tunnelinstance are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.TunnelInstanceIAMPolicy`: Retrieves the IAM policy for the tunnelinstance
///
/// &gt; **Note:** `gcp.iap.TunnelInstanceIAMPolicy` **cannot** be used in conjunction with `gcp.iap.TunnelInstanceIAMBinding` and `gcp.iap.TunnelInstanceIAMMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.TunnelInstanceIAMBinding` resources **can be** used in conjunction with `gcp.iap.TunnelInstanceIAMMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.TunnelInstanceIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.tunnelResourceAccessor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iap.TunnelInstanceIAMPolicy("policy", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.tunnelResourceAccessor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.TunnelInstanceIAMPolicy("policy",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/iap.tunnelResourceAccessor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.TunnelInstanceIAMPolicy("policy", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.tunnelResourceAccessor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewTunnelInstanceIAMPolicy(ctx, "policy", &iap.TunnelInstanceIAMPolicyArgs{
/// 			Project:    pulumi.Any(tunnelvm.Project),
/// 			Zone:       pulumi.Any(tunnelvm.Zone),
/// 			Instance:   pulumi.Any(tunnelvm.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// data "gcp_organizations_getiampolicy" "admin" {
///   bindings {
///     role    = "roles/iap.tunnelResourceAccessor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_tunnelinstanceiampolicy" "policy" {
///   project     = tunnelvm.project
///   zone        = tunnelvm.zone
///   instance    = tunnelvm.name
///   policy_data = data.gcp_organizations_getiampolicy.admin.policy_data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicy;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicyArgs;
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
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/iap.tunnelResourceAccessor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new TunnelInstanceIAMPolicy("policy", TunnelInstanceIAMPolicyArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:TunnelInstanceIAMPolicy
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.tunnelResourceAccessor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.tunnelResourceAccessor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.iap.TunnelInstanceIAMPolicy("policy", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.tunnelResourceAccessor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.iap.TunnelInstanceIAMPolicy("policy",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/iap.tunnelResourceAccessor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.TunnelInstanceIAMPolicy("policy", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.tunnelResourceAccessor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewTunnelInstanceIAMPolicy(ctx, "policy", &iap.TunnelInstanceIAMPolicyArgs{
/// 			Project:    pulumi.Any(tunnelvm.Project),
/// 			Zone:       pulumi.Any(tunnelvm.Zone),
/// 			Instance:   pulumi.Any(tunnelvm.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// data "gcp_organizations_getiampolicy" "admin" {
///   bindings {
///     role    = "roles/iap.tunnelResourceAccessor"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_iap_tunnelinstanceiampolicy" "policy" {
///   project     = tunnelvm.project
///   zone        = tunnelvm.zone
///   instance    = tunnelvm.name
///   policy_data = data.gcp_organizations_getiampolicy.admin.policy_data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingConditionArgs;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicy;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicyArgs;
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
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/iap.tunnelResourceAccessor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new TunnelInstanceIAMPolicy("policy", TunnelInstanceIAMPolicyArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:TunnelInstanceIAMPolicy
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.tunnelResourceAccessor
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.TunnelInstanceIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelInstanceIAMBinding("binding", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelInstanceIAMBinding("binding",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Iap.TunnelInstanceIAMBinding("binding", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMBinding(ctx, "binding", &iap.TunnelInstanceIAMBindingArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_tunnelinstanceiambinding" "binding" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBinding;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBindingArgs;
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
///         var binding = new TunnelInstanceIAMBinding("binding", TunnelInstanceIAMBindingArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:TunnelInstanceIAMBinding
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelInstanceIAMBinding("binding", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelInstanceIAMBinding("binding",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
///     var binding = new Gcp.Iap.TunnelInstanceIAMBinding("binding", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.TunnelInstanceIAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMBinding(ctx, "binding", &iap.TunnelInstanceIAMBindingArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.TunnelInstanceIAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_iap_tunnelinstanceiambinding" "binding" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   members  = ["user:jane@example.com"]
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBinding;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBindingArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelInstanceIAMBindingConditionArgs;
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
///         var binding = new TunnelInstanceIAMBinding("binding", TunnelInstanceIAMBindingArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .members("user:jane@example.com")
///             .condition(TunnelInstanceIAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:TunnelInstanceIAMBinding
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.TunnelInstanceIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelInstanceIAMMember("member", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelInstanceIAMMember("member",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Iap.TunnelInstanceIAMMember("member", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMMember(ctx, "member", &iap.TunnelInstanceIAMMemberArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_tunnelinstanceiammember" "member" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMember;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMemberArgs;
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
///         var member = new TunnelInstanceIAMMember("member", TunnelInstanceIAMMemberArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:TunnelInstanceIAMMember
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelInstanceIAMMember("member", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelInstanceIAMMember("member",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
///     var member = new Gcp.Iap.TunnelInstanceIAMMember("member", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.TunnelInstanceIAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMMember(ctx, "member", &iap.TunnelInstanceIAMMemberArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.TunnelInstanceIAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_iap_tunnelinstanceiammember" "member" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   member   = "user:jane@example.com"
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMember;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMemberArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelInstanceIAMMemberConditionArgs;
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
///         var member = new TunnelInstanceIAMMember("member", TunnelInstanceIAMMemberArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .member("user:jane@example.com")
///             .condition(TunnelInstanceIAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:TunnelInstanceIAMMember
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Identity-Aware Proxy TunnelInstance
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy TunnelInstance. Each of these resources serves a different use case:
///
/// * `gcp.iap.TunnelInstanceIAMPolicy`: Authoritative. Sets the IAM policy for the tunnelinstance and replaces any existing policy already attached.
/// * `gcp.iap.TunnelInstanceIAMBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the tunnelinstance are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.TunnelInstanceIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the tunnelinstance are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.TunnelInstanceIAMPolicy`: Retrieves the IAM policy for the tunnelinstance
///
/// &gt; **Note:** `gcp.iap.TunnelInstanceIAMPolicy` **cannot** be used in conjunction with `gcp.iap.TunnelInstanceIAMBinding` and `gcp.iap.TunnelInstanceIAMMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.TunnelInstanceIAMBinding` resources **can be** used in conjunction with `gcp.iap.TunnelInstanceIAMMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.TunnelInstanceIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.tunnelResourceAccessor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iap.TunnelInstanceIAMPolicy("policy", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.tunnelResourceAccessor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.TunnelInstanceIAMPolicy("policy",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/iap.tunnelResourceAccessor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.TunnelInstanceIAMPolicy("policy", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.tunnelResourceAccessor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewTunnelInstanceIAMPolicy(ctx, "policy", &iap.TunnelInstanceIAMPolicyArgs{
/// 			Project:    pulumi.Any(tunnelvm.Project),
/// 			Zone:       pulumi.Any(tunnelvm.Zone),
/// 			Instance:   pulumi.Any(tunnelvm.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// data "gcp_organizations_getiampolicy" "admin" {
///   bindings {
///     role    = "roles/iap.tunnelResourceAccessor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_tunnelinstanceiampolicy" "policy" {
///   project     = tunnelvm.project
///   zone        = tunnelvm.zone
///   instance    = tunnelvm.name
///   policy_data = data.gcp_organizations_getiampolicy.admin.policy_data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicy;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicyArgs;
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
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/iap.tunnelResourceAccessor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new TunnelInstanceIAMPolicy("policy", TunnelInstanceIAMPolicyArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:TunnelInstanceIAMPolicy
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.tunnelResourceAccessor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.tunnelResourceAccessor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.iap.TunnelInstanceIAMPolicy("policy", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.tunnelResourceAccessor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.iap.TunnelInstanceIAMPolicy("policy",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/iap.tunnelResourceAccessor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.TunnelInstanceIAMPolicy("policy", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.tunnelResourceAccessor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewTunnelInstanceIAMPolicy(ctx, "policy", &iap.TunnelInstanceIAMPolicyArgs{
/// 			Project:    pulumi.Any(tunnelvm.Project),
/// 			Zone:       pulumi.Any(tunnelvm.Zone),
/// 			Instance:   pulumi.Any(tunnelvm.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// data "gcp_organizations_getiampolicy" "admin" {
///   bindings {
///     role    = "roles/iap.tunnelResourceAccessor"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_iap_tunnelinstanceiampolicy" "policy" {
///   project     = tunnelvm.project
///   zone        = tunnelvm.zone
///   instance    = tunnelvm.name
///   policy_data = data.gcp_organizations_getiampolicy.admin.policy_data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingConditionArgs;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicy;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMPolicyArgs;
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
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/iap.tunnelResourceAccessor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new TunnelInstanceIAMPolicy("policy", TunnelInstanceIAMPolicyArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:TunnelInstanceIAMPolicy
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.tunnelResourceAccessor
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.TunnelInstanceIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelInstanceIAMBinding("binding", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelInstanceIAMBinding("binding",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Iap.TunnelInstanceIAMBinding("binding", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMBinding(ctx, "binding", &iap.TunnelInstanceIAMBindingArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_tunnelinstanceiambinding" "binding" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBinding;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBindingArgs;
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
///         var binding = new TunnelInstanceIAMBinding("binding", TunnelInstanceIAMBindingArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:TunnelInstanceIAMBinding
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelInstanceIAMBinding("binding", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelInstanceIAMBinding("binding",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
///     var binding = new Gcp.Iap.TunnelInstanceIAMBinding("binding", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.TunnelInstanceIAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMBinding(ctx, "binding", &iap.TunnelInstanceIAMBindingArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.TunnelInstanceIAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_iap_tunnelinstanceiambinding" "binding" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   members  = ["user:jane@example.com"]
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBinding;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMBindingArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelInstanceIAMBindingConditionArgs;
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
///         var binding = new TunnelInstanceIAMBinding("binding", TunnelInstanceIAMBindingArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .members("user:jane@example.com")
///             .condition(TunnelInstanceIAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:TunnelInstanceIAMBinding
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.TunnelInstanceIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelInstanceIAMMember("member", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelInstanceIAMMember("member",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Iap.TunnelInstanceIAMMember("member", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMMember(ctx, "member", &iap.TunnelInstanceIAMMemberArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_tunnelinstanceiammember" "member" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMember;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMemberArgs;
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
///         var member = new TunnelInstanceIAMMember("member", TunnelInstanceIAMMemberArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:TunnelInstanceIAMMember
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelInstanceIAMMember("member", {
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
///     role: "roles/iap.tunnelResourceAccessor",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelInstanceIAMMember("member",
///     project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"],
///     role="roles/iap.tunnelResourceAccessor",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
///     var member = new Gcp.Iap.TunnelInstanceIAMMember("member", new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///         Role = "roles/iap.tunnelResourceAccessor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.TunnelInstanceIAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelInstanceIAMMember(ctx, "member", &iap.TunnelInstanceIAMMemberArgs{
/// 			Project:  pulumi.Any(tunnelvm.Project),
/// 			Zone:     pulumi.Any(tunnelvm.Zone),
/// 			Instance: pulumi.Any(tunnelvm.Name),
/// 			Role:     pulumi.String("roles/iap.tunnelResourceAccessor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.TunnelInstanceIAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_iap_tunnelinstanceiammember" "member" {
///   project  = tunnelvm.project
///   zone     = tunnelvm.zone
///   instance = tunnelvm.name
///   role     = "roles/iap.tunnelResourceAccessor"
///   member   = "user:jane@example.com"
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMember;
/// import com.pulumi.gcp.iap.TunnelInstanceIAMMemberArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelInstanceIAMMemberConditionArgs;
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
///         var member = new TunnelInstanceIAMMember("member", TunnelInstanceIAMMemberArgs.builder()
///             .project(tunnelvm.get("project"))
///             .zone(tunnelvm.get("zone"))
///             .instance(tunnelvm.get("name"))
///             .role("roles/iap.tunnelResourceAccessor")
///             .member("user:jane@example.com")
///             .condition(TunnelInstanceIAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:TunnelInstanceIAMMember
///     properties:
///       project: ${tunnelvm.project}
///       zone: ${tunnelvm.zone}
///       instance: ${tunnelvm.name}
///       role: roles/iap.tunnelResourceAccessor
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/iap_tunnel/zones/{{zone}}/instances/{{name}}
/// * projects/{{project}}/zones/{{zone}}/instances/{{name}}
/// * {{project}}/{{zone}}/{{name}}
/// * {{zone}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy tunnelinstance IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_iap_tunnel_instance_iam_member.editor "projects/{{project}}/iap_tunnel/zones/{{zone}}/instances/{{tunnel_instance}} roles/iap.tunnelResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_iap_tunnel_instance_iam_binding.editor "projects/{{project}}/iap_tunnel/zones/{{zone}}/instances/{{tunnel_instance}} roles/iap.tunnelResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:iap/tunnelInstanceIAMMember:TunnelInstanceIAMMember editor projects/{{project}}/iap_tunnel/zones/{{zone}}/instances/{{tunnel_instance}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TunnelInstanceIAMMember extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<TunnelInstanceIAMMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> instance;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final pulumi.Output<String> member;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.iap.TunnelInstanceIAMBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> zone;

  /// Creates a new [TunnelInstanceIAMMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TunnelInstanceIAMMember]. {@macro pulumi_iap_tunnel_instance_iammember_tunnel_instance_iammember_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TunnelInstanceIAMMember(
    String name, {
    TunnelInstanceIAMMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelInstanceIAMMember:TunnelInstanceIAMMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<TunnelInstanceIAMMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TunnelInstanceIAMMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [TunnelInstanceIAMMember] resource's state with the given [name] and [id].
  static TunnelInstanceIAMMember get(
    String name,
    pulumi.Input<String> id, {
    TunnelInstanceIAMMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TunnelInstanceIAMMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TunnelInstanceIAMMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelInstanceIAMMember:TunnelInstanceIAMMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<TunnelInstanceIAMMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TunnelInstanceIAMMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [TunnelInstanceIAMMember] resource.
  TunnelInstanceIAMMember.reference(String urn)
    : super(
        'gcp:iap/tunnelInstanceIAMMember:TunnelInstanceIAMMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<TunnelInstanceIAMMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TunnelInstanceIAMMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    zone = registerOutput<String>('zone');
  }
}
