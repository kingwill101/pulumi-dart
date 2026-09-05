import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_template_iam_policy_args.dart';
import 'runtime_template_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Colab Enterprise RuntimeTemplate. Each of these resources serves a different use case:
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Authoritative. Sets the IAM policy for the runtimetemplate and replaces any existing policy already attached.
/// * `gcp.colab.RuntimeTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtimetemplate are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.colab.RuntimeTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtimetemplate are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Retrieves the IAM policy for the runtimetemplate
///
/// &gt; **Note:** `gcp.colab.RuntimeTemplateIamPolicy` **cannot** be used in conjunction with `gcp.colab.RuntimeTemplateIamBinding` and `gcp.colab.RuntimeTemplateIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.colab.RuntimeTemplateIamBinding` resources **can be** used in conjunction with `gcp.colab.RuntimeTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.colab.RuntimeTemplateIamPolicy
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
/// const policy = new gcp.colab.RuntimeTemplateIamPolicy("policy", {
///     project: runtime_template.project,
///     location: runtime_template.location,
///     runtimeTemplate: runtime_template.name,
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
/// policy = gcp.colab.RuntimeTemplateIamPolicy("policy",
///     project=runtime_template["project"],
///     location=runtime_template["location"],
///     runtime_template=runtime_template["name"],
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
///     var policy = new Gcp.Colab.RuntimeTemplateIamPolicy("policy", new()
///     {
///         Project = runtime_template.Project,
///         Location = runtime_template.Location,
///         RuntimeTemplate = runtime_template.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
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
/// 		_, err = colab.NewRuntimeTemplateIamPolicy(ctx, "policy", &colab.RuntimeTemplateIamPolicyArgs{
/// 			Project:         pulumi.Any(runtime_template.Project),
/// 			Location:        pulumi.Any(runtime_template.Location),
/// 			RuntimeTemplate: pulumi.Any(runtime_template.Name),
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
/// resource "gcp_colab_runtimetemplateiampolicy" "policy" {
///   project          = runtime-template.project
///   location         = runtime-template.location
///   runtime_template = runtime-template.name
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicy;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicyArgs;
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
///         var policy = new RuntimeTemplateIamPolicy("policy", RuntimeTemplateIamPolicyArgs.builder()
///             .project(runtime_template.get("project"))
///             .location(runtime_template.get("location"))
///             .runtimeTemplate(runtime_template.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:colab:RuntimeTemplateIamPolicy
///     properties:
///       project: ${["runtime-template"].project}
///       location: ${["runtime-template"].location}
///       runtimeTemplate: ${["runtime-template"].name}
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
/// ## gcp.colab.RuntimeTemplateIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.colab.RuntimeTemplateIamBinding("binding", {
///     project: runtime_template.project,
///     location: runtime_template.location,
///     runtimeTemplate: runtime_template.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.colab.RuntimeTemplateIamBinding("binding",
///     project=runtime_template["project"],
///     location=runtime_template["location"],
///     runtime_template=runtime_template["name"],
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
///     var binding = new Gcp.Colab.RuntimeTemplateIamBinding("binding", new()
///     {
///         Project = runtime_template.Project,
///         Location = runtime_template.Location,
///         RuntimeTemplate = runtime_template.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := colab.NewRuntimeTemplateIamBinding(ctx, "binding", &colab.RuntimeTemplateIamBindingArgs{
/// 			Project:         pulumi.Any(runtime_template.Project),
/// 			Location:        pulumi.Any(runtime_template.Location),
/// 			RuntimeTemplate: pulumi.Any(runtime_template.Name),
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
/// resource "gcp_colab_runtimetemplateiambinding" "binding" {
///   project          = runtime-template.project
///   location         = runtime-template.location
///   runtime_template = runtime-template.name
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBinding;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBindingArgs;
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
///         var binding = new RuntimeTemplateIamBinding("binding", RuntimeTemplateIamBindingArgs.builder()
///             .project(runtime_template.get("project"))
///             .location(runtime_template.get("location"))
///             .runtimeTemplate(runtime_template.get("name"))
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
///     type: gcp:colab:RuntimeTemplateIamBinding
///     properties:
///       project: ${["runtime-template"].project}
///       location: ${["runtime-template"].location}
///       runtimeTemplate: ${["runtime-template"].name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.colab.RuntimeTemplateIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.colab.RuntimeTemplateIamMember("member", {
///     project: runtime_template.project,
///     location: runtime_template.location,
///     runtimeTemplate: runtime_template.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.colab.RuntimeTemplateIamMember("member",
///     project=runtime_template["project"],
///     location=runtime_template["location"],
///     runtime_template=runtime_template["name"],
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
///     var member = new Gcp.Colab.RuntimeTemplateIamMember("member", new()
///     {
///         Project = runtime_template.Project,
///         Location = runtime_template.Location,
///         RuntimeTemplate = runtime_template.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := colab.NewRuntimeTemplateIamMember(ctx, "member", &colab.RuntimeTemplateIamMemberArgs{
/// 			Project:         pulumi.Any(runtime_template.Project),
/// 			Location:        pulumi.Any(runtime_template.Location),
/// 			RuntimeTemplate: pulumi.Any(runtime_template.Name),
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
/// resource "gcp_colab_runtimetemplateiammember" "member" {
///   project          = runtime-template.project
///   location         = runtime-template.location
///   runtime_template = runtime-template.name
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMember;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMemberArgs;
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
///         var member = new RuntimeTemplateIamMember("member", RuntimeTemplateIamMemberArgs.builder()
///             .project(runtime_template.get("project"))
///             .location(runtime_template.get("location"))
///             .runtimeTemplate(runtime_template.get("name"))
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
///     type: gcp:colab:RuntimeTemplateIamMember
///     properties:
///       project: ${["runtime-template"].project}
///       location: ${["runtime-template"].location}
///       runtimeTemplate: ${["runtime-template"].name}
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
/// # IAM policy for Colab Enterprise RuntimeTemplate
///
/// Three different resources help you manage your IAM policy for Colab Enterprise RuntimeTemplate. Each of these resources serves a different use case:
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Authoritative. Sets the IAM policy for the runtimetemplate and replaces any existing policy already attached.
/// * `gcp.colab.RuntimeTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtimetemplate are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.colab.RuntimeTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtimetemplate are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Retrieves the IAM policy for the runtimetemplate
///
/// &gt; **Note:** `gcp.colab.RuntimeTemplateIamPolicy` **cannot** be used in conjunction with `gcp.colab.RuntimeTemplateIamBinding` and `gcp.colab.RuntimeTemplateIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.colab.RuntimeTemplateIamBinding` resources **can be** used in conjunction with `gcp.colab.RuntimeTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.colab.RuntimeTemplateIamPolicy
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
/// const policy = new gcp.colab.RuntimeTemplateIamPolicy("policy", {
///     project: runtime_template.project,
///     location: runtime_template.location,
///     runtimeTemplate: runtime_template.name,
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
/// policy = gcp.colab.RuntimeTemplateIamPolicy("policy",
///     project=runtime_template["project"],
///     location=runtime_template["location"],
///     runtime_template=runtime_template["name"],
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
///     var policy = new Gcp.Colab.RuntimeTemplateIamPolicy("policy", new()
///     {
///         Project = runtime_template.Project,
///         Location = runtime_template.Location,
///         RuntimeTemplate = runtime_template.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
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
/// 		_, err = colab.NewRuntimeTemplateIamPolicy(ctx, "policy", &colab.RuntimeTemplateIamPolicyArgs{
/// 			Project:         pulumi.Any(runtime_template.Project),
/// 			Location:        pulumi.Any(runtime_template.Location),
/// 			RuntimeTemplate: pulumi.Any(runtime_template.Name),
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
/// resource "gcp_colab_runtimetemplateiampolicy" "policy" {
///   project          = runtime-template.project
///   location         = runtime-template.location
///   runtime_template = runtime-template.name
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicy;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicyArgs;
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
///         var policy = new RuntimeTemplateIamPolicy("policy", RuntimeTemplateIamPolicyArgs.builder()
///             .project(runtime_template.get("project"))
///             .location(runtime_template.get("location"))
///             .runtimeTemplate(runtime_template.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:colab:RuntimeTemplateIamPolicy
///     properties:
///       project: ${["runtime-template"].project}
///       location: ${["runtime-template"].location}
///       runtimeTemplate: ${["runtime-template"].name}
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
/// ## gcp.colab.RuntimeTemplateIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.colab.RuntimeTemplateIamBinding("binding", {
///     project: runtime_template.project,
///     location: runtime_template.location,
///     runtimeTemplate: runtime_template.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.colab.RuntimeTemplateIamBinding("binding",
///     project=runtime_template["project"],
///     location=runtime_template["location"],
///     runtime_template=runtime_template["name"],
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
///     var binding = new Gcp.Colab.RuntimeTemplateIamBinding("binding", new()
///     {
///         Project = runtime_template.Project,
///         Location = runtime_template.Location,
///         RuntimeTemplate = runtime_template.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := colab.NewRuntimeTemplateIamBinding(ctx, "binding", &colab.RuntimeTemplateIamBindingArgs{
/// 			Project:         pulumi.Any(runtime_template.Project),
/// 			Location:        pulumi.Any(runtime_template.Location),
/// 			RuntimeTemplate: pulumi.Any(runtime_template.Name),
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
/// resource "gcp_colab_runtimetemplateiambinding" "binding" {
///   project          = runtime-template.project
///   location         = runtime-template.location
///   runtime_template = runtime-template.name
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBinding;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBindingArgs;
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
///         var binding = new RuntimeTemplateIamBinding("binding", RuntimeTemplateIamBindingArgs.builder()
///             .project(runtime_template.get("project"))
///             .location(runtime_template.get("location"))
///             .runtimeTemplate(runtime_template.get("name"))
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
///     type: gcp:colab:RuntimeTemplateIamBinding
///     properties:
///       project: ${["runtime-template"].project}
///       location: ${["runtime-template"].location}
///       runtimeTemplate: ${["runtime-template"].name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.colab.RuntimeTemplateIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.colab.RuntimeTemplateIamMember("member", {
///     project: runtime_template.project,
///     location: runtime_template.location,
///     runtimeTemplate: runtime_template.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.colab.RuntimeTemplateIamMember("member",
///     project=runtime_template["project"],
///     location=runtime_template["location"],
///     runtime_template=runtime_template["name"],
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
///     var member = new Gcp.Colab.RuntimeTemplateIamMember("member", new()
///     {
///         Project = runtime_template.Project,
///         Location = runtime_template.Location,
///         RuntimeTemplate = runtime_template.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := colab.NewRuntimeTemplateIamMember(ctx, "member", &colab.RuntimeTemplateIamMemberArgs{
/// 			Project:         pulumi.Any(runtime_template.Project),
/// 			Location:        pulumi.Any(runtime_template.Location),
/// 			RuntimeTemplate: pulumi.Any(runtime_template.Name),
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
/// resource "gcp_colab_runtimetemplateiammember" "member" {
///   project          = runtime-template.project
///   location         = runtime-template.location
///   runtime_template = runtime-template.name
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMember;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMemberArgs;
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
///         var member = new RuntimeTemplateIamMember("member", RuntimeTemplateIamMemberArgs.builder()
///             .project(runtime_template.get("project"))
///             .location(runtime_template.get("location"))
///             .runtimeTemplate(runtime_template.get("name"))
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
///     type: gcp:colab:RuntimeTemplateIamMember
///     properties:
///       project: ${["runtime-template"].project}
///       location: ${["runtime-template"].location}
///       runtimeTemplate: ${["runtime-template"].name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}}
/// * {{project}}/{{location}}/{{runtime_template}}
/// * {{location}}/{{runtime_template}}
/// * {{runtime_template}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Colab Enterprise runtimetemplate IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_colab_runtime_template_iam_member.editor "projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_colab_runtime_template_iam_binding.editor "projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy editor projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RuntimeTemplateIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> runtimeTemplate;

  /// Creates a new [RuntimeTemplateIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeTemplateIamPolicy]. {@macro pulumi_colab_runtime_template_iam_policy_runtime_template_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeTemplateIamPolicy(
    String name, {
    RuntimeTemplateIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    runtimeTemplate = registerOutput<String>('runtimeTemplate');
  }

  /// Gets an existing [RuntimeTemplateIamPolicy] resource's state with the given [name] and [id].
  static RuntimeTemplateIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    RuntimeTemplateIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RuntimeTemplateIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RuntimeTemplateIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    runtimeTemplate = registerOutput<String>('runtimeTemplate');
  }

  /// Creates a typed reference to an existing [RuntimeTemplateIamPolicy] resource.
  RuntimeTemplateIamPolicy.reference(String urn)
    : super(
        'gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    runtimeTemplate = registerOutput<String>('runtimeTemplate');
  }
}
