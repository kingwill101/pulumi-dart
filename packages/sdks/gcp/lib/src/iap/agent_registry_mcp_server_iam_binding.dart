import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_registry_mcp_server_iam_binding_args.dart';
import 'agent_registry_mcp_server_iam_binding_condition.dart';
import 'agent_registry_mcp_server_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AgentRegistryMcpServer. Each of these resources serves a different use case:
///
/// * `gcp.iap.AgentRegistryMcpServerIamPolicy`: Authoritative. Sets the IAM policy for the agentregistrymcpserver and replaces any existing policy already attached.
/// * `gcp.iap.AgentRegistryMcpServerIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the agentregistrymcpserver are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AgentRegistryMcpServerIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the agentregistrymcpserver are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AgentRegistryMcpServerIamPolicy`: Retrieves the IAM policy for the agentregistrymcpserver
///
/// &gt; **Note:** `gcp.iap.AgentRegistryMcpServerIamPolicy` **cannot** be used in conjunction with `gcp.iap.AgentRegistryMcpServerIamBinding` and `gcp.iap.AgentRegistryMcpServerIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AgentRegistryMcpServerIamBinding` resources **can be** used in conjunction with `gcp.iap.AgentRegistryMcpServerIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AgentRegistryMcpServerIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.egressor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iap.AgentRegistryMcpServerIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.egressor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.AgentRegistryMcpServerIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
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
///                 Role = "roles/iap.egressor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.AgentRegistryMcpServerIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
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
/// 					Role: "roles/iap.egressor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewAgentRegistryMcpServerIamPolicy(ctx, "policy", &iap.AgentRegistryMcpServerIamPolicyArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
///     role    = "roles/iap.egressor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_agentregistrymcpserveriampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicyArgs;
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
///                 .role("roles/iap.egressor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AgentRegistryMcpServerIamPolicy("policy", AgentRegistryMcpServerIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryMcpServerIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.egressor
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
///         role: "roles/iap.egressor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.iap.AgentRegistryMcpServerIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.egressor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.iap.AgentRegistryMcpServerIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
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
///                 Role = "roles/iap.egressor",
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
///     var policy = new Gcp.Iap.AgentRegistryMcpServerIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
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
/// 					Role: "roles/iap.egressor",
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
/// 		_, err = iap.NewAgentRegistryMcpServerIamPolicy(ctx, "policy", &iap.AgentRegistryMcpServerIamPolicyArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
///     role    = "roles/iap.egressor"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_iap_agentregistrymcpserveriampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicyArgs;
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
///                 .role("roles/iap.egressor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new AgentRegistryMcpServerIamPolicy("policy", AgentRegistryMcpServerIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryMcpServerIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.egressor
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryMcpServerIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AgentRegistryMcpServerIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AgentRegistryMcpServerIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var binding = new Gcp.Iap.AgentRegistryMcpServerIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamBinding(ctx, "binding", &iap.AgentRegistryMcpServerIamBindingArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistrymcpserveriambinding" "binding" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBindingArgs;
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
///         var binding = new AgentRegistryMcpServerIamBinding("binding", AgentRegistryMcpServerIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:AgentRegistryMcpServerIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
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
/// const binding = new gcp.iap.AgentRegistryMcpServerIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
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
/// binding = gcp.iap.AgentRegistryMcpServerIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var binding = new Gcp.Iap.AgentRegistryMcpServerIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AgentRegistryMcpServerIamBindingConditionArgs
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamBinding(ctx, "binding", &iap.AgentRegistryMcpServerIamBindingArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AgentRegistryMcpServerIamBindingConditionArgs{
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
/// resource "gcp_iap_agentregistrymcpserveriambinding" "binding" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   members       = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryMcpServerIamBindingConditionArgs;
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
///         var binding = new AgentRegistryMcpServerIamBinding("binding", AgentRegistryMcpServerIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .condition(AgentRegistryMcpServerIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryMcpServerIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryMcpServerIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AgentRegistryMcpServerIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AgentRegistryMcpServerIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var member = new Gcp.Iap.AgentRegistryMcpServerIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamMember(ctx, "member", &iap.AgentRegistryMcpServerIamMemberArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_agentregistrymcpserveriammember" "member" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMemberArgs;
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
///         var member = new AgentRegistryMcpServerIamMember("member", AgentRegistryMcpServerIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:AgentRegistryMcpServerIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
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
/// const member = new gcp.iap.AgentRegistryMcpServerIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
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
/// member = gcp.iap.AgentRegistryMcpServerIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var member = new Gcp.Iap.AgentRegistryMcpServerIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AgentRegistryMcpServerIamMemberConditionArgs
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamMember(ctx, "member", &iap.AgentRegistryMcpServerIamMemberArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AgentRegistryMcpServerIamMemberConditionArgs{
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
/// resource "gcp_iap_agentregistrymcpserveriammember" "member" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   member        = "user:jane@example.com"
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryMcpServerIamMemberConditionArgs;
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
///         var member = new AgentRegistryMcpServerIamMember("member", AgentRegistryMcpServerIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .condition(AgentRegistryMcpServerIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryMcpServerIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
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
/// # IAM policy for Identity-Aware Proxy AgentRegistryMcpServer
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AgentRegistryMcpServer. Each of these resources serves a different use case:
///
/// * `gcp.iap.AgentRegistryMcpServerIamPolicy`: Authoritative. Sets the IAM policy for the agentregistrymcpserver and replaces any existing policy already attached.
/// * `gcp.iap.AgentRegistryMcpServerIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the agentregistrymcpserver are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AgentRegistryMcpServerIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the agentregistrymcpserver are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AgentRegistryMcpServerIamPolicy`: Retrieves the IAM policy for the agentregistrymcpserver
///
/// &gt; **Note:** `gcp.iap.AgentRegistryMcpServerIamPolicy` **cannot** be used in conjunction with `gcp.iap.AgentRegistryMcpServerIamBinding` and `gcp.iap.AgentRegistryMcpServerIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AgentRegistryMcpServerIamBinding` resources **can be** used in conjunction with `gcp.iap.AgentRegistryMcpServerIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AgentRegistryMcpServerIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.egressor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iap.AgentRegistryMcpServerIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.egressor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.AgentRegistryMcpServerIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
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
///                 Role = "roles/iap.egressor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.AgentRegistryMcpServerIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
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
/// 					Role: "roles/iap.egressor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewAgentRegistryMcpServerIamPolicy(ctx, "policy", &iap.AgentRegistryMcpServerIamPolicyArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
///     role    = "roles/iap.egressor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_agentregistrymcpserveriampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicyArgs;
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
///                 .role("roles/iap.egressor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AgentRegistryMcpServerIamPolicy("policy", AgentRegistryMcpServerIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryMcpServerIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.egressor
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
///         role: "roles/iap.egressor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.iap.AgentRegistryMcpServerIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.egressor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.iap.AgentRegistryMcpServerIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
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
///                 Role = "roles/iap.egressor",
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
///     var policy = new Gcp.Iap.AgentRegistryMcpServerIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
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
/// 					Role: "roles/iap.egressor",
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
/// 		_, err = iap.NewAgentRegistryMcpServerIamPolicy(ctx, "policy", &iap.AgentRegistryMcpServerIamPolicyArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
///     role    = "roles/iap.egressor"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_iap_agentregistrymcpserveriampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamPolicyArgs;
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
///                 .role("roles/iap.egressor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new AgentRegistryMcpServerIamPolicy("policy", AgentRegistryMcpServerIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryMcpServerIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.egressor
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryMcpServerIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AgentRegistryMcpServerIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AgentRegistryMcpServerIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var binding = new Gcp.Iap.AgentRegistryMcpServerIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamBinding(ctx, "binding", &iap.AgentRegistryMcpServerIamBindingArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistrymcpserveriambinding" "binding" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBindingArgs;
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
///         var binding = new AgentRegistryMcpServerIamBinding("binding", AgentRegistryMcpServerIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:AgentRegistryMcpServerIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
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
/// const binding = new gcp.iap.AgentRegistryMcpServerIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
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
/// binding = gcp.iap.AgentRegistryMcpServerIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var binding = new Gcp.Iap.AgentRegistryMcpServerIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AgentRegistryMcpServerIamBindingConditionArgs
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamBinding(ctx, "binding", &iap.AgentRegistryMcpServerIamBindingArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AgentRegistryMcpServerIamBindingConditionArgs{
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
/// resource "gcp_iap_agentregistrymcpserveriambinding" "binding" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   members       = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryMcpServerIamBindingConditionArgs;
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
///         var binding = new AgentRegistryMcpServerIamBinding("binding", AgentRegistryMcpServerIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .condition(AgentRegistryMcpServerIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryMcpServerIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryMcpServerIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AgentRegistryMcpServerIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AgentRegistryMcpServerIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var member = new Gcp.Iap.AgentRegistryMcpServerIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamMember(ctx, "member", &iap.AgentRegistryMcpServerIamMemberArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_agentregistrymcpserveriammember" "member" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMemberArgs;
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
///         var member = new AgentRegistryMcpServerIamMember("member", AgentRegistryMcpServerIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:AgentRegistryMcpServerIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
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
/// const member = new gcp.iap.AgentRegistryMcpServerIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     mcpServerId: _default.mcpServerId,
///     role: "roles/iap.egressor",
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
/// member = gcp.iap.AgentRegistryMcpServerIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     mcp_server_id=default["mcpServerId"],
///     role="roles/iap.egressor",
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
///     var member = new Gcp.Iap.AgentRegistryMcpServerIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         McpServerId = @default.McpServerId,
///         Role = "roles/iap.egressor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AgentRegistryMcpServerIamMemberConditionArgs
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
/// 		_, err := iap.NewAgentRegistryMcpServerIamMember(ctx, "member", &iap.AgentRegistryMcpServerIamMemberArgs{
/// 			Project:     pulumi.Any(_default.Project),
/// 			Location:    pulumi.Any(_default.Location),
/// 			McpServerId: pulumi.Any(_default.McpServerId),
/// 			Role:        pulumi.String("roles/iap.egressor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AgentRegistryMcpServerIamMemberConditionArgs{
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
/// resource "gcp_iap_agentregistrymcpserveriammember" "member" {
///   project       = default.project
///   location      = default.location
///   mcp_server_id = default.mcpServerId
///   role          = "roles/iap.egressor"
///   member        = "user:jane@example.com"
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
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryMcpServerIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryMcpServerIamMemberConditionArgs;
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
///         var member = new AgentRegistryMcpServerIamMember("member", AgentRegistryMcpServerIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .mcpServerId(default_.get("mcpServerId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .condition(AgentRegistryMcpServerIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryMcpServerIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       mcpServerId: ${default.mcpServerId}
///       role: roles/iap.egressor
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
/// * projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/mcpServers/{{mcp_server_id}}
/// * {{project}}/{{location}}/{{mcp_server_id}}
/// * {{location}}/{{mcp_server_id}}
/// * {{mcp_server_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy agentregistrymcpserver IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_iap_agent_registry_mcp_server_iam_member.editor "projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/mcpServers/{{mcp_server_id}} roles/iap.egressor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_iap_agent_registry_mcp_server_iam_binding.editor "projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/mcpServers/{{mcp_server_id}} roles/iap.egressor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:iap/agentRegistryMcpServerIamBinding:AgentRegistryMcpServerIamBinding editor projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/mcpServers/{{mcp_server_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AgentRegistryMcpServerIamBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<AgentRegistryMcpServerIamBindingCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> mcpServerId;
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
  late final pulumi.Output<List<String>> members;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.iap.AgentRegistryMcpServerIamBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [AgentRegistryMcpServerIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentRegistryMcpServerIamBinding]. {@macro pulumi_iap_agent_registry_mcp_server_iam_binding_agent_registry_mcp_server_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentRegistryMcpServerIamBinding(
    String name, {
    AgentRegistryMcpServerIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/agentRegistryMcpServerIamBinding:AgentRegistryMcpServerIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<AgentRegistryMcpServerIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentRegistryMcpServerIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    mcpServerId = registerOutput<String>('mcpServerId');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AgentRegistryMcpServerIamBinding] resource's state with the given [name] and [id].
  static AgentRegistryMcpServerIamBinding get(
    String name,
    pulumi.Input<String> id, {
    AgentRegistryMcpServerIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentRegistryMcpServerIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentRegistryMcpServerIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/agentRegistryMcpServerIamBinding:AgentRegistryMcpServerIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AgentRegistryMcpServerIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentRegistryMcpServerIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    mcpServerId = registerOutput<String>('mcpServerId');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AgentRegistryMcpServerIamBinding] resource.
  AgentRegistryMcpServerIamBinding.reference(String urn)
    : super(
        'gcp:iap/agentRegistryMcpServerIamBinding:AgentRegistryMcpServerIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<AgentRegistryMcpServerIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentRegistryMcpServerIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    mcpServerId = registerOutput<String>('mcpServerId');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
