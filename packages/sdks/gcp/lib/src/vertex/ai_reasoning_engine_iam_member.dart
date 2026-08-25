import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_iam_member_args.dart';
import 'ai_reasoning_engine_iam_member_condition.dart';
import 'ai_reasoning_engine_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Vertex AI ReasoningEngine. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiReasoningEngineIamPolicy`: Authoritative. Sets the IAM policy for the reasoningengine and replaces any existing policy already attached.
/// * `gcp.vertex.AiReasoningEngineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the reasoningengine are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.vertex.AiReasoningEngineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the reasoningengine are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiReasoningEngineIamPolicy`: Retrieves the IAM policy for the reasoningengine
///
/// &gt; **Note:** `gcp.vertex.AiReasoningEngineIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiReasoningEngineIamBinding` and `gcp.vertex.AiReasoningEngineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.vertex.AiReasoningEngineIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiReasoningEngineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiReasoningEngineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.vertex.AiReasoningEngineIamPolicy("policy", {
///     project: reasoningEngine.project,
///     region: reasoningEngine.region,
///     reasoningEngine: reasoningEngine.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.vertex.AiReasoningEngineIamPolicy("policy",
///     project=reasoning_engine["project"],
///     region=reasoning_engine["region"],
///     reasoning_engine=reasoning_engine["name"],
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
///                 Role = "roles/viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Vertex.AiReasoningEngineIamPolicy("policy", new()
///     {
///         Project = reasoningEngine.Project,
///         Region = reasoningEngine.Region,
///         ReasoningEngine = reasoningEngine.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiReasoningEngineIamPolicy(ctx, "policy", &vertex.AiReasoningEngineIamPolicyArgs{
/// 			Project:         pulumi.Any(reasoningEngine.Project),
/// 			Region:          pulumi.Any(reasoningEngine.Region),
/// 			ReasoningEngine: pulumi.Any(reasoningEngine.Name),
/// 			PolicyData:      pulumi.String(admin.PolicyData),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_vertex_aireasoningengineiampolicy" "policy" {
///   project          = reasoningEngine.project
///   region           = reasoningEngine.region
///   reasoning_engine = reasoningEngine.name
///   policy_data      = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamPolicy;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamPolicyArgs;
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
///                 .role("roles/viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AiReasoningEngineIamPolicy("policy", AiReasoningEngineIamPolicyArgs.builder()
///             .project(reasoningEngine.get("project"))
///             .region(reasoningEngine.get("region"))
///             .reasoningEngine(reasoningEngine.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiReasoningEngineIamPolicy
///     properties:
///       project: ${reasoningEngine.project}
///       region: ${reasoningEngine.region}
///       reasoningEngine: ${reasoningEngine.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiReasoningEngineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiReasoningEngineIamBinding("binding", {
///     project: reasoningEngine.project,
///     region: reasoningEngine.region,
///     reasoningEngine: reasoningEngine.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiReasoningEngineIamBinding("binding",
///     project=reasoning_engine["project"],
///     region=reasoning_engine["region"],
///     reasoning_engine=reasoning_engine["name"],
///     role="roles/viewer",
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
///     var binding = new Gcp.Vertex.AiReasoningEngineIamBinding("binding", new()
///     {
///         Project = reasoningEngine.Project,
///         Region = reasoningEngine.Region,
///         ReasoningEngine = reasoningEngine.Name,
///         Role = "roles/viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiReasoningEngineIamBinding(ctx, "binding", &vertex.AiReasoningEngineIamBindingArgs{
/// 			Project:         pulumi.Any(reasoningEngine.Project),
/// 			Region:          pulumi.Any(reasoningEngine.Region),
/// 			ReasoningEngine: pulumi.Any(reasoningEngine.Name),
/// 			Role:            pulumi.String("roles/viewer"),
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
/// resource "gcp_vertex_aireasoningengineiambinding" "binding" {
///   project          = reasoningEngine.project
///   region           = reasoningEngine.region
///   reasoning_engine = reasoningEngine.name
///   role             = "roles/viewer"
///   members          = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamBinding;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamBindingArgs;
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
///         var binding = new AiReasoningEngineIamBinding("binding", AiReasoningEngineIamBindingArgs.builder()
///             .project(reasoningEngine.get("project"))
///             .region(reasoningEngine.get("region"))
///             .reasoningEngine(reasoningEngine.get("name"))
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:vertex:AiReasoningEngineIamBinding
///     properties:
///       project: ${reasoningEngine.project}
///       region: ${reasoningEngine.region}
///       reasoningEngine: ${reasoningEngine.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiReasoningEngineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiReasoningEngineIamMember("member", {
///     project: reasoningEngine.project,
///     region: reasoningEngine.region,
///     reasoningEngine: reasoningEngine.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiReasoningEngineIamMember("member",
///     project=reasoning_engine["project"],
///     region=reasoning_engine["region"],
///     reasoning_engine=reasoning_engine["name"],
///     role="roles/viewer",
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
///     var member = new Gcp.Vertex.AiReasoningEngineIamMember("member", new()
///     {
///         Project = reasoningEngine.Project,
///         Region = reasoningEngine.Region,
///         ReasoningEngine = reasoningEngine.Name,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiReasoningEngineIamMember(ctx, "member", &vertex.AiReasoningEngineIamMemberArgs{
/// 			Project:         pulumi.Any(reasoningEngine.Project),
/// 			Region:          pulumi.Any(reasoningEngine.Region),
/// 			ReasoningEngine: pulumi.Any(reasoningEngine.Name),
/// 			Role:            pulumi.String("roles/viewer"),
/// 			Member:          pulumi.String("user:jane@example.com"),
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
/// resource "gcp_vertex_aireasoningengineiammember" "member" {
///   project          = reasoningEngine.project
///   region           = reasoningEngine.region
///   reasoning_engine = reasoningEngine.name
///   role             = "roles/viewer"
///   member           = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamMember;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamMemberArgs;
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
///         var member = new AiReasoningEngineIamMember("member", AiReasoningEngineIamMemberArgs.builder()
///             .project(reasoningEngine.get("project"))
///             .region(reasoningEngine.get("region"))
///             .reasoningEngine(reasoningEngine.get("name"))
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:vertex:AiReasoningEngineIamMember
///     properties:
///       project: ${reasoningEngine.project}
///       region: ${reasoningEngine.region}
///       reasoningEngine: ${reasoningEngine.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Vertex AI ReasoningEngine
///
/// Three different resources help you manage your IAM policy for Vertex AI ReasoningEngine. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiReasoningEngineIamPolicy`: Authoritative. Sets the IAM policy for the reasoningengine and replaces any existing policy already attached.
/// * `gcp.vertex.AiReasoningEngineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the reasoningengine are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.vertex.AiReasoningEngineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the reasoningengine are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiReasoningEngineIamPolicy`: Retrieves the IAM policy for the reasoningengine
///
/// &gt; **Note:** `gcp.vertex.AiReasoningEngineIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiReasoningEngineIamBinding` and `gcp.vertex.AiReasoningEngineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.vertex.AiReasoningEngineIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiReasoningEngineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiReasoningEngineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.vertex.AiReasoningEngineIamPolicy("policy", {
///     project: reasoningEngine.project,
///     region: reasoningEngine.region,
///     reasoningEngine: reasoningEngine.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.vertex.AiReasoningEngineIamPolicy("policy",
///     project=reasoning_engine["project"],
///     region=reasoning_engine["region"],
///     reasoning_engine=reasoning_engine["name"],
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
///                 Role = "roles/viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Vertex.AiReasoningEngineIamPolicy("policy", new()
///     {
///         Project = reasoningEngine.Project,
///         Region = reasoningEngine.Region,
///         ReasoningEngine = reasoningEngine.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiReasoningEngineIamPolicy(ctx, "policy", &vertex.AiReasoningEngineIamPolicyArgs{
/// 			Project:         pulumi.Any(reasoningEngine.Project),
/// 			Region:          pulumi.Any(reasoningEngine.Region),
/// 			ReasoningEngine: pulumi.Any(reasoningEngine.Name),
/// 			PolicyData:      pulumi.String(admin.PolicyData),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_vertex_aireasoningengineiampolicy" "policy" {
///   project          = reasoningEngine.project
///   region           = reasoningEngine.region
///   reasoning_engine = reasoningEngine.name
///   policy_data      = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamPolicy;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamPolicyArgs;
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
///                 .role("roles/viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AiReasoningEngineIamPolicy("policy", AiReasoningEngineIamPolicyArgs.builder()
///             .project(reasoningEngine.get("project"))
///             .region(reasoningEngine.get("region"))
///             .reasoningEngine(reasoningEngine.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiReasoningEngineIamPolicy
///     properties:
///       project: ${reasoningEngine.project}
///       region: ${reasoningEngine.region}
///       reasoningEngine: ${reasoningEngine.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiReasoningEngineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiReasoningEngineIamBinding("binding", {
///     project: reasoningEngine.project,
///     region: reasoningEngine.region,
///     reasoningEngine: reasoningEngine.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiReasoningEngineIamBinding("binding",
///     project=reasoning_engine["project"],
///     region=reasoning_engine["region"],
///     reasoning_engine=reasoning_engine["name"],
///     role="roles/viewer",
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
///     var binding = new Gcp.Vertex.AiReasoningEngineIamBinding("binding", new()
///     {
///         Project = reasoningEngine.Project,
///         Region = reasoningEngine.Region,
///         ReasoningEngine = reasoningEngine.Name,
///         Role = "roles/viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiReasoningEngineIamBinding(ctx, "binding", &vertex.AiReasoningEngineIamBindingArgs{
/// 			Project:         pulumi.Any(reasoningEngine.Project),
/// 			Region:          pulumi.Any(reasoningEngine.Region),
/// 			ReasoningEngine: pulumi.Any(reasoningEngine.Name),
/// 			Role:            pulumi.String("roles/viewer"),
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
/// resource "gcp_vertex_aireasoningengineiambinding" "binding" {
///   project          = reasoningEngine.project
///   region           = reasoningEngine.region
///   reasoning_engine = reasoningEngine.name
///   role             = "roles/viewer"
///   members          = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamBinding;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamBindingArgs;
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
///         var binding = new AiReasoningEngineIamBinding("binding", AiReasoningEngineIamBindingArgs.builder()
///             .project(reasoningEngine.get("project"))
///             .region(reasoningEngine.get("region"))
///             .reasoningEngine(reasoningEngine.get("name"))
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:vertex:AiReasoningEngineIamBinding
///     properties:
///       project: ${reasoningEngine.project}
///       region: ${reasoningEngine.region}
///       reasoningEngine: ${reasoningEngine.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiReasoningEngineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiReasoningEngineIamMember("member", {
///     project: reasoningEngine.project,
///     region: reasoningEngine.region,
///     reasoningEngine: reasoningEngine.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiReasoningEngineIamMember("member",
///     project=reasoning_engine["project"],
///     region=reasoning_engine["region"],
///     reasoning_engine=reasoning_engine["name"],
///     role="roles/viewer",
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
///     var member = new Gcp.Vertex.AiReasoningEngineIamMember("member", new()
///     {
///         Project = reasoningEngine.Project,
///         Region = reasoningEngine.Region,
///         ReasoningEngine = reasoningEngine.Name,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiReasoningEngineIamMember(ctx, "member", &vertex.AiReasoningEngineIamMemberArgs{
/// 			Project:         pulumi.Any(reasoningEngine.Project),
/// 			Region:          pulumi.Any(reasoningEngine.Region),
/// 			ReasoningEngine: pulumi.Any(reasoningEngine.Name),
/// 			Role:            pulumi.String("roles/viewer"),
/// 			Member:          pulumi.String("user:jane@example.com"),
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
/// resource "gcp_vertex_aireasoningengineiammember" "member" {
///   project          = reasoningEngine.project
///   region           = reasoningEngine.region
///   reasoning_engine = reasoningEngine.name
///   role             = "roles/viewer"
///   member           = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamMember;
/// import com.pulumi.gcp.vertex.AiReasoningEngineIamMemberArgs;
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
///         var member = new AiReasoningEngineIamMember("member", AiReasoningEngineIamMemberArgs.builder()
///             .project(reasoningEngine.get("project"))
///             .region(reasoningEngine.get("region"))
///             .reasoningEngine(reasoningEngine.get("name"))
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:vertex:AiReasoningEngineIamMember
///     properties:
///       project: ${reasoningEngine.project}
///       region: ${reasoningEngine.region}
///       reasoningEngine: ${reasoningEngine.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/reasoningEngines/{{name}}
/// * {{project}}/{{region}}/{{name}}
/// * {{region}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI reasoningengine IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_vertex_ai_reasoning_engine_iam_member.editor "projects/{{project}}/locations/{{region}}/reasoningEngines/{{reasoning_engine}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_vertex_ai_reasoning_engine_iam_binding.editor "projects/{{project}}/locations/{{region}}/reasoningEngines/{{reasoning_engine}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngineIamMember:AiReasoningEngineIamMember editor projects/{{project}}/locations/{{region}}/reasoningEngines/{{reasoning_engine}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiReasoningEngineIamMember extends pulumi.CustomResource {
  late final pulumi.Output<AiReasoningEngineIamMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
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
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> reasoningEngine;
  /// The region of the reasoning engine. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;
  /// The role that should be applied. Only one
  /// `gcp.vertex.AiReasoningEngineIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [AiReasoningEngineIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiReasoningEngineIamMember]. {@macro pulumi_vertex_ai_reasoning_engine_iam_member_ai_reasoning_engine_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiReasoningEngineIamMember(
    String name, {
    AiReasoningEngineIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiReasoningEngineIamMember:AiReasoningEngineIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<AiReasoningEngineIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    reasoningEngine = registerOutput<String>('reasoningEngine');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AiReasoningEngineIamMember] resource's state with the given [name] and [id].
  static AiReasoningEngineIamMember get(
    String name,
    pulumi.Input<String> id, {
    AiReasoningEngineIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiReasoningEngineIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiReasoningEngineIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiReasoningEngineIamMember:AiReasoningEngineIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AiReasoningEngineIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    reasoningEngine = registerOutput<String>('reasoningEngine');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AiReasoningEngineIamMember] resource.
  AiReasoningEngineIamMember.reference(String urn)
    : super(
        'gcp:vertex/aiReasoningEngineIamMember:AiReasoningEngineIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<AiReasoningEngineIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    reasoningEngine = registerOutput<String>('reasoningEngine');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }
}
