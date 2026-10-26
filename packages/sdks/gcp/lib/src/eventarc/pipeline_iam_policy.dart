import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_iam_policy_args.dart';
import 'pipeline_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Eventarc Pipeline. Each of these resources serves a different use case:
///
/// * `gcp.eventarc.PipelineIamPolicy`: Authoritative. Sets the IAM policy for the pipeline and replaces any existing policy already attached.
/// * `gcp.eventarc.PipelineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the pipeline are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.eventarc.PipelineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the pipeline are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.eventarc.PipelineIamPolicy`: Retrieves the IAM policy for the pipeline
///
/// &gt; **Note:** `gcp.eventarc.PipelineIamPolicy` **cannot** be used in conjunction with `gcp.eventarc.PipelineIamBinding` and `gcp.eventarc.PipelineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.eventarc.PipelineIamBinding` resources **can be** used in conjunction with `gcp.eventarc.PipelineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.eventarc.PipelineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/eventarc.admin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.eventarc.PipelineIamPolicy("policy", {
///     project: primary.project,
///     location: primary.location,
///     pipelineId: primary.pipelineId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/eventarc.admin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.eventarc.PipelineIamPolicy("policy",
///     project=primary["project"],
///     location=primary["location"],
///     pipeline_id=primary["pipelineId"],
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
///                 Role = "roles/eventarc.admin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Eventarc.PipelineIamPolicy("policy", new()
///     {
///         Project = primary.Project,
///         Location = primary.Location,
///         PipelineId = primary.PipelineId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/eventarc.admin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventarc.NewPipelineIamPolicy(ctx, "policy", &eventarc.PipelineIamPolicyArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Location:   pulumi.Any(primary.Location),
/// 			PipelineId: pulumi.Any(primary.PipelineId),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_i_a_m_policy" "admin" {
///   bindings {
///     role    = "roles/eventarc.admin"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_eventarc_pipeline_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = primary.project
///   location    = primary.location
///   pipeline_id = primary.pipelineId
///   policy_data = data.gcp_organizations_i_a_m_policy.admin.policy_data
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
/// import com.pulumi.gcp.eventarc.PipelineIamPolicy;
/// import com.pulumi.gcp.eventarc.PipelineIamPolicyArgs;
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
///                 .role("roles/eventarc.admin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new PipelineIamPolicy("policy", PipelineIamPolicyArgs.builder()
///             .project(primary.get("project"))
///             .location(primary.get("location"))
///             .pipelineId(primary.get("pipelineId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:eventarc:PipelineIamPolicy
///     properties:
///       project: ${primary.project}
///       location: ${primary.location}
///       pipelineId: ${primary.pipelineId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/eventarc.admin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.eventarc.PipelineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.eventarc.PipelineIamBinding("binding", {
///     project: primary.project,
///     location: primary.location,
///     pipelineId: primary.pipelineId,
///     role: "roles/eventarc.admin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.eventarc.PipelineIamBinding("binding",
///     project=primary["project"],
///     location=primary["location"],
///     pipeline_id=primary["pipelineId"],
///     role="roles/eventarc.admin",
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
///     var binding = new Gcp.Eventarc.PipelineIamBinding("binding", new()
///     {
///         Project = primary.Project,
///         Location = primary.Location,
///         PipelineId = primary.PipelineId,
///         Role = "roles/eventarc.admin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventarc.NewPipelineIamBinding(ctx, "binding", &eventarc.PipelineIamBindingArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Location:   pulumi.Any(primary.Location),
/// 			PipelineId: pulumi.Any(primary.PipelineId),
/// 			Role:       pulumi.String("roles/eventarc.admin"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_eventarc_pipeline_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = primary.project
///   location    = primary.location
///   pipeline_id = primary.pipelineId
///   role        = "roles/eventarc.admin"
///   members     = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.eventarc.PipelineIamBinding;
/// import com.pulumi.gcp.eventarc.PipelineIamBindingArgs;
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
///         var binding = new PipelineIamBinding("binding", PipelineIamBindingArgs.builder()
///             .project(primary.get("project"))
///             .location(primary.get("location"))
///             .pipelineId(primary.get("pipelineId"))
///             .role("roles/eventarc.admin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:eventarc:PipelineIamBinding
///     properties:
///       project: ${primary.project}
///       location: ${primary.location}
///       pipelineId: ${primary.pipelineId}
///       role: roles/eventarc.admin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.eventarc.PipelineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.eventarc.PipelineIamMember("member", {
///     project: primary.project,
///     location: primary.location,
///     pipelineId: primary.pipelineId,
///     role: "roles/eventarc.admin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.eventarc.PipelineIamMember("member",
///     project=primary["project"],
///     location=primary["location"],
///     pipeline_id=primary["pipelineId"],
///     role="roles/eventarc.admin",
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
///     var member = new Gcp.Eventarc.PipelineIamMember("member", new()
///     {
///         Project = primary.Project,
///         Location = primary.Location,
///         PipelineId = primary.PipelineId,
///         Role = "roles/eventarc.admin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventarc.NewPipelineIamMember(ctx, "member", &eventarc.PipelineIamMemberArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Location:   pulumi.Any(primary.Location),
/// 			PipelineId: pulumi.Any(primary.PipelineId),
/// 			Role:       pulumi.String("roles/eventarc.admin"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_eventarc_pipeline_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = primary.project
///   location    = primary.location
///   pipeline_id = primary.pipelineId
///   role        = "roles/eventarc.admin"
///   member      = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.eventarc.PipelineIamMember;
/// import com.pulumi.gcp.eventarc.PipelineIamMemberArgs;
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
///         var member = new PipelineIamMember("member", PipelineIamMemberArgs.builder()
///             .project(primary.get("project"))
///             .location(primary.get("location"))
///             .pipelineId(primary.get("pipelineId"))
///             .role("roles/eventarc.admin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:eventarc:PipelineIamMember
///     properties:
///       project: ${primary.project}
///       location: ${primary.location}
///       pipelineId: ${primary.pipelineId}
///       role: roles/eventarc.admin
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Eventarc Pipeline
///
/// Three different resources help you manage your IAM policy for Eventarc Pipeline. Each of these resources serves a different use case:
///
/// * `gcp.eventarc.PipelineIamPolicy`: Authoritative. Sets the IAM policy for the pipeline and replaces any existing policy already attached.
/// * `gcp.eventarc.PipelineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the pipeline are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.eventarc.PipelineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the pipeline are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.eventarc.PipelineIamPolicy`: Retrieves the IAM policy for the pipeline
///
/// &gt; **Note:** `gcp.eventarc.PipelineIamPolicy` **cannot** be used in conjunction with `gcp.eventarc.PipelineIamBinding` and `gcp.eventarc.PipelineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.eventarc.PipelineIamBinding` resources **can be** used in conjunction with `gcp.eventarc.PipelineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.eventarc.PipelineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/eventarc.admin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.eventarc.PipelineIamPolicy("policy", {
///     project: primary.project,
///     location: primary.location,
///     pipelineId: primary.pipelineId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/eventarc.admin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.eventarc.PipelineIamPolicy("policy",
///     project=primary["project"],
///     location=primary["location"],
///     pipeline_id=primary["pipelineId"],
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
///                 Role = "roles/eventarc.admin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Eventarc.PipelineIamPolicy("policy", new()
///     {
///         Project = primary.Project,
///         Location = primary.Location,
///         PipelineId = primary.PipelineId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/eventarc.admin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventarc.NewPipelineIamPolicy(ctx, "policy", &eventarc.PipelineIamPolicyArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Location:   pulumi.Any(primary.Location),
/// 			PipelineId: pulumi.Any(primary.PipelineId),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_i_a_m_policy" "admin" {
///   bindings {
///     role    = "roles/eventarc.admin"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_eventarc_pipeline_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = primary.project
///   location    = primary.location
///   pipeline_id = primary.pipelineId
///   policy_data = data.gcp_organizations_i_a_m_policy.admin.policy_data
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
/// import com.pulumi.gcp.eventarc.PipelineIamPolicy;
/// import com.pulumi.gcp.eventarc.PipelineIamPolicyArgs;
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
///                 .role("roles/eventarc.admin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new PipelineIamPolicy("policy", PipelineIamPolicyArgs.builder()
///             .project(primary.get("project"))
///             .location(primary.get("location"))
///             .pipelineId(primary.get("pipelineId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:eventarc:PipelineIamPolicy
///     properties:
///       project: ${primary.project}
///       location: ${primary.location}
///       pipelineId: ${primary.pipelineId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/eventarc.admin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.eventarc.PipelineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.eventarc.PipelineIamBinding("binding", {
///     project: primary.project,
///     location: primary.location,
///     pipelineId: primary.pipelineId,
///     role: "roles/eventarc.admin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.eventarc.PipelineIamBinding("binding",
///     project=primary["project"],
///     location=primary["location"],
///     pipeline_id=primary["pipelineId"],
///     role="roles/eventarc.admin",
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
///     var binding = new Gcp.Eventarc.PipelineIamBinding("binding", new()
///     {
///         Project = primary.Project,
///         Location = primary.Location,
///         PipelineId = primary.PipelineId,
///         Role = "roles/eventarc.admin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventarc.NewPipelineIamBinding(ctx, "binding", &eventarc.PipelineIamBindingArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Location:   pulumi.Any(primary.Location),
/// 			PipelineId: pulumi.Any(primary.PipelineId),
/// 			Role:       pulumi.String("roles/eventarc.admin"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_eventarc_pipeline_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = primary.project
///   location    = primary.location
///   pipeline_id = primary.pipelineId
///   role        = "roles/eventarc.admin"
///   members     = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.eventarc.PipelineIamBinding;
/// import com.pulumi.gcp.eventarc.PipelineIamBindingArgs;
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
///         var binding = new PipelineIamBinding("binding", PipelineIamBindingArgs.builder()
///             .project(primary.get("project"))
///             .location(primary.get("location"))
///             .pipelineId(primary.get("pipelineId"))
///             .role("roles/eventarc.admin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:eventarc:PipelineIamBinding
///     properties:
///       project: ${primary.project}
///       location: ${primary.location}
///       pipelineId: ${primary.pipelineId}
///       role: roles/eventarc.admin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.eventarc.PipelineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.eventarc.PipelineIamMember("member", {
///     project: primary.project,
///     location: primary.location,
///     pipelineId: primary.pipelineId,
///     role: "roles/eventarc.admin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.eventarc.PipelineIamMember("member",
///     project=primary["project"],
///     location=primary["location"],
///     pipeline_id=primary["pipelineId"],
///     role="roles/eventarc.admin",
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
///     var member = new Gcp.Eventarc.PipelineIamMember("member", new()
///     {
///         Project = primary.Project,
///         Location = primary.Location,
///         PipelineId = primary.PipelineId,
///         Role = "roles/eventarc.admin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventarc.NewPipelineIamMember(ctx, "member", &eventarc.PipelineIamMemberArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Location:   pulumi.Any(primary.Location),
/// 			PipelineId: pulumi.Any(primary.PipelineId),
/// 			Role:       pulumi.String("roles/eventarc.admin"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_eventarc_pipeline_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = primary.project
///   location    = primary.location
///   pipeline_id = primary.pipelineId
///   role        = "roles/eventarc.admin"
///   member      = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.eventarc.PipelineIamMember;
/// import com.pulumi.gcp.eventarc.PipelineIamMemberArgs;
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
///         var member = new PipelineIamMember("member", PipelineIamMemberArgs.builder()
///             .project(primary.get("project"))
///             .location(primary.get("location"))
///             .pipelineId(primary.get("pipelineId"))
///             .role("roles/eventarc.admin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:eventarc:PipelineIamMember
///     properties:
///       project: ${primary.project}
///       location: ${primary.location}
///       pipelineId: ${primary.pipelineId}
///       role: roles/eventarc.admin
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}}
/// * {{project}}/{{location}}/{{pipeline_id}}
/// * {{location}}/{{pipeline_id}}
/// * {{pipeline_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Eventarc pipeline IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_eventarc_pipeline_iam_member.editor "projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}} roles/eventarc.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_eventarc_pipeline_iam_binding.editor "projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}} roles/eventarc.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:eventarc/pipelineIamPolicy:PipelineIamPolicy editor projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class PipelineIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> pipelineId;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [PipelineIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineIamPolicy]. {@macro pulumi_eventarc_pipeline_iam_policy_pipeline_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineIamPolicy(
    String name, {
    PipelineIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/pipelineIamPolicy:PipelineIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    pipelineId = registerOutput<String>('pipelineId');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [PipelineIamPolicy] resource's state with the given [name] and [id].
  static PipelineIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    PipelineIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PipelineIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PipelineIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/pipelineIamPolicy:PipelineIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    pipelineId = registerOutput<String>('pipelineId');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [PipelineIamPolicy] resource.
  PipelineIamPolicy.reference(String urn)
    : super(
        'gcp:eventarc/pipelineIamPolicy:PipelineIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    pipelineId = registerOutput<String>('pipelineId');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
