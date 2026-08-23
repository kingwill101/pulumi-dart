import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_registry_endpoint_iam_policy_args.dart';
import 'agent_registry_endpoint_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AgentRegistryEndpoint. Each of these resources serves a different use case:
///
/// * `gcp.iap.AgentRegistryEndpointIamPolicy`: Authoritative. Sets the IAM policy for the agentregistryendpoint and replaces any existing policy already attached.
/// * `gcp.iap.AgentRegistryEndpointIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the agentregistryendpoint are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AgentRegistryEndpointIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the agentregistryendpoint are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AgentRegistryEndpointIamPolicy`: Retrieves the IAM policy for the agentregistryendpoint
///
/// &gt; **Note:** `gcp.iap.AgentRegistryEndpointIamPolicy` **cannot** be used in conjunction with `gcp.iap.AgentRegistryEndpointIamBinding` and `gcp.iap.AgentRegistryEndpointIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AgentRegistryEndpointIamBinding` resources **can be** used in conjunction with `gcp.iap.AgentRegistryEndpointIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AgentRegistryEndpointIamPolicy
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
/// const policy = new gcp.iap.AgentRegistryEndpointIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// policy = gcp.iap.AgentRegistryEndpointIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var policy = new Gcp.Iap.AgentRegistryEndpointIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err = iap.NewAgentRegistryEndpointIamPolicy(ctx, "policy", &iap.AgentRegistryEndpointIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
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
/// resource "gcp_iap_agentregistryendpointiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicyArgs;
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
///         var policy = new AgentRegistryEndpointIamPolicy("policy", AgentRegistryEndpointIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryEndpointIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// const policy = new gcp.iap.AgentRegistryEndpointIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// policy = gcp.iap.AgentRegistryEndpointIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var policy = new Gcp.Iap.AgentRegistryEndpointIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err = iap.NewAgentRegistryEndpointIamPolicy(ctx, "policy", &iap.AgentRegistryEndpointIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
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
/// resource "gcp_iap_agentregistryendpointiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicyArgs;
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
///         var policy = new AgentRegistryEndpointIamPolicy("policy", AgentRegistryEndpointIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryEndpointIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// ## gcp.iap.AgentRegistryEndpointIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AgentRegistryEndpointIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
///     role: "roles/iap.egressor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AgentRegistryEndpointIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var binding = new Gcp.Iap.AgentRegistryEndpointIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err := iap.NewAgentRegistryEndpointIamBinding(ctx, "binding", &iap.AgentRegistryEndpointIamBindingArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistryendpointiambinding" "binding" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   members     = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBindingArgs;
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
///         var binding = new AgentRegistryEndpointIamBinding("binding", AgentRegistryEndpointIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
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
///     type: gcp:iap:AgentRegistryEndpointIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// const binding = new gcp.iap.AgentRegistryEndpointIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// binding = gcp.iap.AgentRegistryEndpointIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var binding = new Gcp.Iap.AgentRegistryEndpointIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
///         Role = "roles/iap.egressor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AgentRegistryEndpointIamBindingConditionArgs
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
/// 		_, err := iap.NewAgentRegistryEndpointIamBinding(ctx, "binding", &iap.AgentRegistryEndpointIamBindingArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AgentRegistryEndpointIamBindingConditionArgs{
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
/// resource "gcp_iap_agentregistryendpointiambinding" "binding" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   members     = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryEndpointIamBindingConditionArgs;
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
///         var binding = new AgentRegistryEndpointIamBinding("binding", AgentRegistryEndpointIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .condition(AgentRegistryEndpointIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryEndpointIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
///       role: roles/iap.egressor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryEndpointIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AgentRegistryEndpointIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
///     role: "roles/iap.egressor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AgentRegistryEndpointIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var member = new Gcp.Iap.AgentRegistryEndpointIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err := iap.NewAgentRegistryEndpointIamMember(ctx, "member", &iap.AgentRegistryEndpointIamMemberArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
/// 			Member:     pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_agentregistryendpointiammember" "member" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   member      = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMemberArgs;
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
///         var member = new AgentRegistryEndpointIamMember("member", AgentRegistryEndpointIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
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
///     type: gcp:iap:AgentRegistryEndpointIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// const member = new gcp.iap.AgentRegistryEndpointIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// member = gcp.iap.AgentRegistryEndpointIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var member = new Gcp.Iap.AgentRegistryEndpointIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
///         Role = "roles/iap.egressor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AgentRegistryEndpointIamMemberConditionArgs
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
/// 		_, err := iap.NewAgentRegistryEndpointIamMember(ctx, "member", &iap.AgentRegistryEndpointIamMemberArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
/// 			Member:     pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AgentRegistryEndpointIamMemberConditionArgs{
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
/// resource "gcp_iap_agentregistryendpointiammember" "member" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   member      = "user:jane@example.com"
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryEndpointIamMemberConditionArgs;
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
///         var member = new AgentRegistryEndpointIamMember("member", AgentRegistryEndpointIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .condition(AgentRegistryEndpointIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryEndpointIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// # IAM policy for Identity-Aware Proxy AgentRegistryEndpoint
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AgentRegistryEndpoint. Each of these resources serves a different use case:
///
/// * `gcp.iap.AgentRegistryEndpointIamPolicy`: Authoritative. Sets the IAM policy for the agentregistryendpoint and replaces any existing policy already attached.
/// * `gcp.iap.AgentRegistryEndpointIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the agentregistryendpoint are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AgentRegistryEndpointIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the agentregistryendpoint are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AgentRegistryEndpointIamPolicy`: Retrieves the IAM policy for the agentregistryendpoint
///
/// &gt; **Note:** `gcp.iap.AgentRegistryEndpointIamPolicy` **cannot** be used in conjunction with `gcp.iap.AgentRegistryEndpointIamBinding` and `gcp.iap.AgentRegistryEndpointIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AgentRegistryEndpointIamBinding` resources **can be** used in conjunction with `gcp.iap.AgentRegistryEndpointIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AgentRegistryEndpointIamPolicy
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
/// const policy = new gcp.iap.AgentRegistryEndpointIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// policy = gcp.iap.AgentRegistryEndpointIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var policy = new Gcp.Iap.AgentRegistryEndpointIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err = iap.NewAgentRegistryEndpointIamPolicy(ctx, "policy", &iap.AgentRegistryEndpointIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
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
/// resource "gcp_iap_agentregistryendpointiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicyArgs;
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
///         var policy = new AgentRegistryEndpointIamPolicy("policy", AgentRegistryEndpointIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryEndpointIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// const policy = new gcp.iap.AgentRegistryEndpointIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// policy = gcp.iap.AgentRegistryEndpointIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var policy = new Gcp.Iap.AgentRegistryEndpointIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err = iap.NewAgentRegistryEndpointIamPolicy(ctx, "policy", &iap.AgentRegistryEndpointIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
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
/// resource "gcp_iap_agentregistryendpointiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicy;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamPolicyArgs;
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
///         var policy = new AgentRegistryEndpointIamPolicy("policy", AgentRegistryEndpointIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AgentRegistryEndpointIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// ## gcp.iap.AgentRegistryEndpointIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AgentRegistryEndpointIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
///     role: "roles/iap.egressor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AgentRegistryEndpointIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var binding = new Gcp.Iap.AgentRegistryEndpointIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err := iap.NewAgentRegistryEndpointIamBinding(ctx, "binding", &iap.AgentRegistryEndpointIamBindingArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
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
/// resource "gcp_iap_agentregistryendpointiambinding" "binding" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   members     = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBindingArgs;
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
///         var binding = new AgentRegistryEndpointIamBinding("binding", AgentRegistryEndpointIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
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
///     type: gcp:iap:AgentRegistryEndpointIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// const binding = new gcp.iap.AgentRegistryEndpointIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// binding = gcp.iap.AgentRegistryEndpointIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var binding = new Gcp.Iap.AgentRegistryEndpointIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
///         Role = "roles/iap.egressor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AgentRegistryEndpointIamBindingConditionArgs
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
/// 		_, err := iap.NewAgentRegistryEndpointIamBinding(ctx, "binding", &iap.AgentRegistryEndpointIamBindingArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AgentRegistryEndpointIamBindingConditionArgs{
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
/// resource "gcp_iap_agentregistryendpointiambinding" "binding" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   members     = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBinding;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryEndpointIamBindingConditionArgs;
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
///         var binding = new AgentRegistryEndpointIamBinding("binding", AgentRegistryEndpointIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .role("roles/iap.egressor")
///             .members("user:jane@example.com")
///             .condition(AgentRegistryEndpointIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryEndpointIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
///       role: roles/iap.egressor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AgentRegistryEndpointIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AgentRegistryEndpointIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
///     role: "roles/iap.egressor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AgentRegistryEndpointIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var member = new Gcp.Iap.AgentRegistryEndpointIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
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
/// 		_, err := iap.NewAgentRegistryEndpointIamMember(ctx, "member", &iap.AgentRegistryEndpointIamMemberArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
/// 			Member:     pulumi.String("user:jane@example.com"),
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
/// resource "gcp_iap_agentregistryendpointiammember" "member" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   member      = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMemberArgs;
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
///         var member = new AgentRegistryEndpointIamMember("member", AgentRegistryEndpointIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
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
///     type: gcp:iap:AgentRegistryEndpointIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// const member = new gcp.iap.AgentRegistryEndpointIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     endpointId: _default.endpointId,
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
/// member = gcp.iap.AgentRegistryEndpointIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     endpoint_id=default["endpointId"],
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
///     var member = new Gcp.Iap.AgentRegistryEndpointIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         EndpointId = @default.EndpointId,
///         Role = "roles/iap.egressor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AgentRegistryEndpointIamMemberConditionArgs
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
/// 		_, err := iap.NewAgentRegistryEndpointIamMember(ctx, "member", &iap.AgentRegistryEndpointIamMemberArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			EndpointId: pulumi.Any(_default.EndpointId),
/// 			Role:       pulumi.String("roles/iap.egressor"),
/// 			Member:     pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AgentRegistryEndpointIamMemberConditionArgs{
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
/// resource "gcp_iap_agentregistryendpointiammember" "member" {
///   project     = default.project
///   location    = default.location
///   endpoint_id = default.endpointId
///   role        = "roles/iap.egressor"
///   member      = "user:jane@example.com"
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
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMember;
/// import com.pulumi.gcp.iap.AgentRegistryEndpointIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AgentRegistryEndpointIamMemberConditionArgs;
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
///         var member = new AgentRegistryEndpointIamMember("member", AgentRegistryEndpointIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .endpointId(default_.get("endpointId"))
///             .role("roles/iap.egressor")
///             .member("user:jane@example.com")
///             .condition(AgentRegistryEndpointIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AgentRegistryEndpointIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       endpointId: ${default.endpointId}
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
/// * projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/endpoints/{{endpoint_id}}
/// * {{project}}/{{location}}/{{endpoint_id}}
/// * {{location}}/{{endpoint_id}}
/// * {{endpoint_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy agentregistryendpoint IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_iap_agent_registry_endpoint_iam_member.editor "projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/endpoints/{{endpoint_id}} roles/iap.egressor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_iap_agent_registry_endpoint_iam_binding.editor "projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/endpoints/{{endpoint_id}} roles/iap.egressor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:iap/agentRegistryEndpointIamPolicy:AgentRegistryEndpointIamPolicy editor projects/{{project}}/locations/{{location}}/iap_web/agentRegistry/endpoints/{{endpoint_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AgentRegistryEndpointIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> endpointId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [AgentRegistryEndpointIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentRegistryEndpointIamPolicy]. {@macro pulumi_iap_agent_registry_endpoint_iam_policy_agent_registry_endpoint_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentRegistryEndpointIamPolicy(
    String name, {
    AgentRegistryEndpointIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/agentRegistryEndpointIamPolicy:AgentRegistryEndpointIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpointId = registerOutput<String>('endpointId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [AgentRegistryEndpointIamPolicy] resource's state with the given [name] and [id].
  static AgentRegistryEndpointIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    AgentRegistryEndpointIamPolicyState? state,
  }) {
    return AgentRegistryEndpointIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentRegistryEndpointIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/agentRegistryEndpointIamPolicy:AgentRegistryEndpointIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpointId = registerOutput<String>('endpointId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
