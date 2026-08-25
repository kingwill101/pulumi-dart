import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_registry_agent_iam_member_args.dart';
import 'agent_registry_agent_iam_member_condition.dart';
import 'agent_registry_agent_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AgentRegistryAgent. Each of these resources serves a different use case:
///
/// * `gcp.iap.AgentRegistryAgentIamPolicy`: Authoritative. Sets the IAM policy for the agentregistryagent and replaces any existing policy already attached.
/// * `gcp.iap.AgentRegistryAgentIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the agentregistryagent are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AgentRegistryAgentIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the agentregistryagent are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AgentRegistryAgentIamPolicy`: Retrieves the IAM policy for the agentregistryagent
///
/// &gt; **Note:** `gcp.iap.AgentRegistryAgentIamPolicy` **cannot** be used in conjunction with `gcp.iap.AgentRegistryAgentIamBinding` and `gcp.iap.AgentRegistryAgentIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AgentRegistryAgentIamBinding` resources **can be** used in conjunction with `gcp.iap.AgentRegistryAgentIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AgentRegistryAgentIamPolicy
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
/// const policy = new gcp.iap.AgentRegistryAgentIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// policy = gcp.iap.AgentRegistryAgentIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var policy = new Gcp.Iap.AgentRegistryAgentIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err = iap.NewAgentRegistryAgentIamPolicy(ctx, "policy", &iap.AgentRegistryAgentIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			AgentId:    pulumi.Any(_default.AgentId),
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
///     role    = "roles/iap.egressor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_agentregistryagentiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   agent_id    = default.agentId
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicyArgs;
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
///         var policy = new AgentRegistryAgentIamPolicy("policy", AgentRegistryAgentIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryAgentIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// const policy = new gcp.iap.AgentRegistryAgentIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// policy = gcp.iap.AgentRegistryAgentIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var policy = new Gcp.Iap.AgentRegistryAgentIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err = iap.NewAgentRegistryAgentIamPolicy(ctx, "policy", &iap.AgentRegistryAgentIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			AgentId:    pulumi.Any(_default.AgentId),
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
/// resource "gcp_iap_agentregistryagentiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   agent_id    = default.agentId
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicyArgs;
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
///         var policy = new AgentRegistryAgentIamPolicy("policy", AgentRegistryAgentIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryAgentIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// ## gcp.iap.AgentRegistryAgentIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AgentRegistryAgentIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
///     role: "roles/iap.egressor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AgentRegistryAgentIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var binding = new Gcp.Iap.AgentRegistryAgentIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err := iap.NewAgentRegistryAgentIamBinding(ctx, "binding", &iap.AgentRegistryAgentIamBindingArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistryagentiambinding" "binding" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBindingArgs;
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
///         var binding = new AgentRegistryAgentIamBinding("binding", AgentRegistryAgentIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
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
///     type: gcp:iap:AgentRegistryAgentIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// const binding = new gcp.iap.AgentRegistryAgentIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// binding = gcp.iap.AgentRegistryAgentIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var binding = new Gcp.Iap.AgentRegistryAgentIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
///         Role = "roles/iap.egressor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AgentRegistryAgentIamBindingConditionArgs
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
/// 		_, err := iap.NewAgentRegistryAgentIamBinding(ctx, "binding", &iap.AgentRegistryAgentIamBindingArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AgentRegistryAgentIamBindingConditionArgs{
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
/// resource "gcp_iap_agentregistryagentiambinding" "binding" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryAgentIamBindingConditionArgs;
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
///         var binding = new AgentRegistryAgentIamBinding("binding", AgentRegistryAgentIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .condition(AgentRegistryAgentIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryAgentIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
///       role: roles/iap.egressor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryAgentIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AgentRegistryAgentIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
///     role: "roles/iap.egressor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AgentRegistryAgentIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var member = new Gcp.Iap.AgentRegistryAgentIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err := iap.NewAgentRegistryAgentIamMember(ctx, "member", &iap.AgentRegistryAgentIamMemberArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistryagentiammember" "member" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMemberArgs;
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
///         var member = new AgentRegistryAgentIamMember("member", AgentRegistryAgentIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
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
///     type: gcp:iap:AgentRegistryAgentIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// const member = new gcp.iap.AgentRegistryAgentIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// member = gcp.iap.AgentRegistryAgentIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var member = new Gcp.Iap.AgentRegistryAgentIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
///         Role = "roles/iap.egressor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AgentRegistryAgentIamMemberConditionArgs
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
/// 		_, err := iap.NewAgentRegistryAgentIamMember(ctx, "member", &iap.AgentRegistryAgentIamMemberArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AgentRegistryAgentIamMemberConditionArgs{
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
/// resource "gcp_iap_agentregistryagentiammember" "member" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryAgentIamMemberConditionArgs;
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
///         var member = new AgentRegistryAgentIamMember("member", AgentRegistryAgentIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .condition(AgentRegistryAgentIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryAgentIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// # IAM policy for Identity-Aware Proxy AgentRegistryAgent
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AgentRegistryAgent. Each of these resources serves a different use case:
///
/// * `gcp.iap.AgentRegistryAgentIamPolicy`: Authoritative. Sets the IAM policy for the agentregistryagent and replaces any existing policy already attached.
/// * `gcp.iap.AgentRegistryAgentIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the agentregistryagent are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AgentRegistryAgentIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the agentregistryagent are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AgentRegistryAgentIamPolicy`: Retrieves the IAM policy for the agentregistryagent
///
/// &gt; **Note:** `gcp.iap.AgentRegistryAgentIamPolicy` **cannot** be used in conjunction with `gcp.iap.AgentRegistryAgentIamBinding` and `gcp.iap.AgentRegistryAgentIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AgentRegistryAgentIamBinding` resources **can be** used in conjunction with `gcp.iap.AgentRegistryAgentIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AgentRegistryAgentIamPolicy
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
/// const policy = new gcp.iap.AgentRegistryAgentIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// policy = gcp.iap.AgentRegistryAgentIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var policy = new Gcp.Iap.AgentRegistryAgentIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err = iap.NewAgentRegistryAgentIamPolicy(ctx, "policy", &iap.AgentRegistryAgentIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			AgentId:    pulumi.Any(_default.AgentId),
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
///     role    = "roles/iap.egressor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_agentregistryagentiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   agent_id    = default.agentId
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicyArgs;
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
///         var policy = new AgentRegistryAgentIamPolicy("policy", AgentRegistryAgentIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryAgentIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// const policy = new gcp.iap.AgentRegistryAgentIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// policy = gcp.iap.AgentRegistryAgentIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var policy = new Gcp.Iap.AgentRegistryAgentIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err = iap.NewAgentRegistryAgentIamPolicy(ctx, "policy", &iap.AgentRegistryAgentIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			AgentId:    pulumi.Any(_default.AgentId),
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
/// resource "gcp_iap_agentregistryagentiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   agent_id    = default.agentId
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamPolicyArgs;
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
///         var policy = new AgentRegistryAgentIamPolicy("policy", AgentRegistryAgentIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryAgentIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// ## gcp.iap.AgentRegistryAgentIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AgentRegistryAgentIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
///     role: "roles/iap.egressor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AgentRegistryAgentIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var binding = new Gcp.Iap.AgentRegistryAgentIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err := iap.NewAgentRegistryAgentIamBinding(ctx, "binding", &iap.AgentRegistryAgentIamBindingArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistryagentiambinding" "binding" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBindingArgs;
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
///         var binding = new AgentRegistryAgentIamBinding("binding", AgentRegistryAgentIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
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
///     type: gcp:iap:AgentRegistryAgentIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// const binding = new gcp.iap.AgentRegistryAgentIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// binding = gcp.iap.AgentRegistryAgentIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var binding = new Gcp.Iap.AgentRegistryAgentIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
///         Role = "roles/iap.egressor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AgentRegistryAgentIamBindingConditionArgs
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
/// 		_, err := iap.NewAgentRegistryAgentIamBinding(ctx, "binding", &iap.AgentRegistryAgentIamBindingArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AgentRegistryAgentIamBindingConditionArgs{
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
/// resource "gcp_iap_agentregistryagentiambinding" "binding" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryAgentIamBindingConditionArgs;
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
///         var binding = new AgentRegistryAgentIamBinding("binding", AgentRegistryAgentIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .condition(AgentRegistryAgentIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryAgentIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
///       role: roles/iap.egressor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryAgentIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AgentRegistryAgentIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
///     role: "roles/iap.egressor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AgentRegistryAgentIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var member = new Gcp.Iap.AgentRegistryAgentIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
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
/// 		_, err := iap.NewAgentRegistryAgentIamMember(ctx, "member", &iap.AgentRegistryAgentIamMemberArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistryagentiammember" "member" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMemberArgs;
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
///         var member = new AgentRegistryAgentIamMember("member", AgentRegistryAgentIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
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
///     type: gcp:iap:AgentRegistryAgentIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// const member = new gcp.iap.AgentRegistryAgentIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     agentId: _default.agentId,
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
/// member = gcp.iap.AgentRegistryAgentIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     agent_id=default["agentId"],
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
///     var member = new Gcp.Iap.AgentRegistryAgentIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AgentId = @default.AgentId,
///         Role = "roles/iap.egressor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AgentRegistryAgentIamMemberConditionArgs
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
/// 		_, err := iap.NewAgentRegistryAgentIamMember(ctx, "member", &iap.AgentRegistryAgentIamMemberArgs{
/// 			Project:  pulumi.Any(_default.Project),
/// 			Location: pulumi.Any(_default.Location),
/// 			AgentId:  pulumi.Any(_default.AgentId),
/// 			Role:     pulumi.String("roles/iap.egressor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AgentRegistryAgentIamMemberConditionArgs{
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
/// resource "gcp_iap_agentregistryagentiammember" "member" {
///   project  = default.project
///   location = default.location
///   agent_id = default.agentId
///   role     = "roles/iap.egressor"
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
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryAgentIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryAgentIamMemberConditionArgs;
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
///         var member = new AgentRegistryAgentIamMember("member", AgentRegistryAgentIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .agentId(default_.get("agentId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .condition(AgentRegistryAgentIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryAgentIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       agentId: ${default.agentId}
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
/// * projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/agents/{{agent_id}}
/// * {{project}}/{{location}}/{{agent_id}}
/// * {{location}}/{{agent_id}}
/// * {{agent_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy agentregistryagent IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_iap_agent_registry_agent_iam_member.editor "projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/agents/{{agent_id}} roles/iap.egressor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_iap_agent_registry_agent_iam_binding.editor "projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/agents/{{agent_id}} roles/iap.egressor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:iap/agentRegistryAgentIamMember:AgentRegistryAgentIamMember editor projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/agents/{{agent_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AgentRegistryAgentIamMember extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> agentId;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<AgentRegistryAgentIamMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
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
  /// `gcp.iap.AgentRegistryAgentIamBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [AgentRegistryAgentIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentRegistryAgentIamMember]. {@macro pulumi_iap_agent_registry_agent_iam_member_agent_registry_agent_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentRegistryAgentIamMember(
    String name, {
    AgentRegistryAgentIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/agentRegistryAgentIamMember:AgentRegistryAgentIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    agentId = registerOutput<String>('agentId');
    condition = registerOutput<AgentRegistryAgentIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentRegistryAgentIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AgentRegistryAgentIamMember] resource's state with the given [name] and [id].
  static AgentRegistryAgentIamMember get(
    String name,
    pulumi.Input<String> id, {
    AgentRegistryAgentIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentRegistryAgentIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentRegistryAgentIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/agentRegistryAgentIamMember:AgentRegistryAgentIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentId = registerOutput<String>('agentId');
    condition = registerOutput<AgentRegistryAgentIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentRegistryAgentIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AgentRegistryAgentIamMember] resource.
  AgentRegistryAgentIamMember.reference(String urn)
    : super(
        'gcp:iap/agentRegistryAgentIamMember:AgentRegistryAgentIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentId = registerOutput<String>('agentId');
    condition = registerOutput<AgentRegistryAgentIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentRegistryAgentIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
