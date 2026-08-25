import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_args.dart';
import 'instance_iam_policy_state.dart';

/// &gt; **Warning:** The parent resource has been deprecated: `gcp.notebooks.Instance` is deprecated and will be removed in a future major release. Use `gcp.workbench.Instance` instead.
///
/// Three different resources help you manage your IAM policy for Cloud AI Notebooks Instance. Each of these resources serves a different use case:
///
/// * `gcp.notebooks.InstanceIamPolicy`: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * `gcp.notebooks.InstanceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.notebooks.InstanceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.notebooks.InstanceIamPolicy`: Retrieves the IAM policy for the instance
///
/// &gt; **Note:** `gcp.notebooks.InstanceIamPolicy` **cannot** be used in conjunction with `gcp.notebooks.InstanceIamBinding` and `gcp.notebooks.InstanceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.notebooks.InstanceIamBinding` resources **can be** used in conjunction with `gcp.notebooks.InstanceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.notebooks.InstanceIamPolicy
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
/// const policy = new gcp.notebooks.InstanceIamPolicy("policy", {
///     project: instance.project,
///     location: instance.location,
///     instanceName: instance.name,
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
/// policy = gcp.notebooks.InstanceIamPolicy("policy",
///     project=instance["project"],
///     location=instance["location"],
///     instance_name=instance["name"],
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
///     var policy = new Gcp.Notebooks.InstanceIamPolicy("policy", new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         InstanceName = instance.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
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
/// 		_, err = notebooks.NewInstanceIamPolicy(ctx, "policy", &notebooks.InstanceIamPolicyArgs{
/// 			Project:      pulumi.Any(instance.Project),
/// 			Location:     pulumi.Any(instance.Location),
/// 			InstanceName: pulumi.Any(instance.Name),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// resource "gcp_notebooks_instanceiampolicy" "policy" {
///   project       = instance.project
///   location      = instance.location
///   instance_name = instance.name
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
/// import com.pulumi.gcp.notebooks.InstanceIamPolicy;
/// import com.pulumi.gcp.notebooks.InstanceIamPolicyArgs;
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
///         var policy = new InstanceIamPolicy("policy", InstanceIamPolicyArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .instanceName(instance.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:notebooks:InstanceIamPolicy
///     properties:
///       project: ${instance.project}
///       location: ${instance.location}
///       instanceName: ${instance.name}
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
/// ## gcp.notebooks.InstanceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.notebooks.InstanceIamBinding("binding", {
///     project: instance.project,
///     location: instance.location,
///     instanceName: instance.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.notebooks.InstanceIamBinding("binding",
///     project=instance["project"],
///     location=instance["location"],
///     instance_name=instance["name"],
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
///     var binding = new Gcp.Notebooks.InstanceIamBinding("binding", new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         InstanceName = instance.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewInstanceIamBinding(ctx, "binding", &notebooks.InstanceIamBindingArgs{
/// 			Project:      pulumi.Any(instance.Project),
/// 			Location:     pulumi.Any(instance.Location),
/// 			InstanceName: pulumi.Any(instance.Name),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// resource "gcp_notebooks_instanceiambinding" "binding" {
///   project       = instance.project
///   location      = instance.location
///   instance_name = instance.name
///   role          = "roles/viewer"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.InstanceIamBinding;
/// import com.pulumi.gcp.notebooks.InstanceIamBindingArgs;
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
///         var binding = new InstanceIamBinding("binding", InstanceIamBindingArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .instanceName(instance.get("name"))
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
///     type: gcp:notebooks:InstanceIamBinding
///     properties:
///       project: ${instance.project}
///       location: ${instance.location}
///       instanceName: ${instance.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.notebooks.InstanceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.notebooks.InstanceIamMember("member", {
///     project: instance.project,
///     location: instance.location,
///     instanceName: instance.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.notebooks.InstanceIamMember("member",
///     project=instance["project"],
///     location=instance["location"],
///     instance_name=instance["name"],
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
///     var member = new Gcp.Notebooks.InstanceIamMember("member", new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         InstanceName = instance.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewInstanceIamMember(ctx, "member", &notebooks.InstanceIamMemberArgs{
/// 			Project:      pulumi.Any(instance.Project),
/// 			Location:     pulumi.Any(instance.Location),
/// 			InstanceName: pulumi.Any(instance.Name),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// resource "gcp_notebooks_instanceiammember" "member" {
///   project       = instance.project
///   location      = instance.location
///   instance_name = instance.name
///   role          = "roles/viewer"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.InstanceIamMember;
/// import com.pulumi.gcp.notebooks.InstanceIamMemberArgs;
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
///         var member = new InstanceIamMember("member", InstanceIamMemberArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .instanceName(instance.get("name"))
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
///     type: gcp:notebooks:InstanceIamMember
///     properties:
///       project: ${instance.project}
///       location: ${instance.location}
///       instanceName: ${instance.name}
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
/// # IAM policy for Cloud AI Notebooks Instance
/// &gt; **Warning:** The parent resource has been deprecated: `gcp.notebooks.Instance` is deprecated and will be removed in a future major release. Use `gcp.workbench.Instance` instead.
///
/// Three different resources help you manage your IAM policy for Cloud AI Notebooks Instance. Each of these resources serves a different use case:
///
/// * `gcp.notebooks.InstanceIamPolicy`: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * `gcp.notebooks.InstanceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.notebooks.InstanceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.notebooks.InstanceIamPolicy`: Retrieves the IAM policy for the instance
///
/// &gt; **Note:** `gcp.notebooks.InstanceIamPolicy` **cannot** be used in conjunction with `gcp.notebooks.InstanceIamBinding` and `gcp.notebooks.InstanceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.notebooks.InstanceIamBinding` resources **can be** used in conjunction with `gcp.notebooks.InstanceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.notebooks.InstanceIamPolicy
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
/// const policy = new gcp.notebooks.InstanceIamPolicy("policy", {
///     project: instance.project,
///     location: instance.location,
///     instanceName: instance.name,
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
/// policy = gcp.notebooks.InstanceIamPolicy("policy",
///     project=instance["project"],
///     location=instance["location"],
///     instance_name=instance["name"],
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
///     var policy = new Gcp.Notebooks.InstanceIamPolicy("policy", new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         InstanceName = instance.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
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
/// 		_, err = notebooks.NewInstanceIamPolicy(ctx, "policy", &notebooks.InstanceIamPolicyArgs{
/// 			Project:      pulumi.Any(instance.Project),
/// 			Location:     pulumi.Any(instance.Location),
/// 			InstanceName: pulumi.Any(instance.Name),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// resource "gcp_notebooks_instanceiampolicy" "policy" {
///   project       = instance.project
///   location      = instance.location
///   instance_name = instance.name
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
/// import com.pulumi.gcp.notebooks.InstanceIamPolicy;
/// import com.pulumi.gcp.notebooks.InstanceIamPolicyArgs;
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
///         var policy = new InstanceIamPolicy("policy", InstanceIamPolicyArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .instanceName(instance.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:notebooks:InstanceIamPolicy
///     properties:
///       project: ${instance.project}
///       location: ${instance.location}
///       instanceName: ${instance.name}
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
/// ## gcp.notebooks.InstanceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.notebooks.InstanceIamBinding("binding", {
///     project: instance.project,
///     location: instance.location,
///     instanceName: instance.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.notebooks.InstanceIamBinding("binding",
///     project=instance["project"],
///     location=instance["location"],
///     instance_name=instance["name"],
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
///     var binding = new Gcp.Notebooks.InstanceIamBinding("binding", new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         InstanceName = instance.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewInstanceIamBinding(ctx, "binding", &notebooks.InstanceIamBindingArgs{
/// 			Project:      pulumi.Any(instance.Project),
/// 			Location:     pulumi.Any(instance.Location),
/// 			InstanceName: pulumi.Any(instance.Name),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// resource "gcp_notebooks_instanceiambinding" "binding" {
///   project       = instance.project
///   location      = instance.location
///   instance_name = instance.name
///   role          = "roles/viewer"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.InstanceIamBinding;
/// import com.pulumi.gcp.notebooks.InstanceIamBindingArgs;
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
///         var binding = new InstanceIamBinding("binding", InstanceIamBindingArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .instanceName(instance.get("name"))
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
///     type: gcp:notebooks:InstanceIamBinding
///     properties:
///       project: ${instance.project}
///       location: ${instance.location}
///       instanceName: ${instance.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.notebooks.InstanceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.notebooks.InstanceIamMember("member", {
///     project: instance.project,
///     location: instance.location,
///     instanceName: instance.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.notebooks.InstanceIamMember("member",
///     project=instance["project"],
///     location=instance["location"],
///     instance_name=instance["name"],
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
///     var member = new Gcp.Notebooks.InstanceIamMember("member", new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         InstanceName = instance.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewInstanceIamMember(ctx, "member", &notebooks.InstanceIamMemberArgs{
/// 			Project:      pulumi.Any(instance.Project),
/// 			Location:     pulumi.Any(instance.Location),
/// 			InstanceName: pulumi.Any(instance.Name),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// resource "gcp_notebooks_instanceiammember" "member" {
///   project       = instance.project
///   location      = instance.location
///   instance_name = instance.name
///   role          = "roles/viewer"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.InstanceIamMember;
/// import com.pulumi.gcp.notebooks.InstanceIamMemberArgs;
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
///         var member = new InstanceIamMember("member", InstanceIamMemberArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .instanceName(instance.get("name"))
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
///     type: gcp:notebooks:InstanceIamMember
///     properties:
///       project: ${instance.project}
///       location: ${instance.location}
///       instanceName: ${instance.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/instances/{{instance_name}}
/// * {{project}}/{{location}}/{{instance_name}}
/// * {{location}}/{{instance_name}}
/// * {{instance_name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud AI Notebooks instance IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_notebooks_instance_iam_member.editor "projects/{{project}}/locations/{{location}}/instances/{{instance_name}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_notebooks_instance_iam_binding.editor "projects/{{project}}/locations/{{location}}/instances/{{instance_name}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:notebooks/instanceIamPolicy:InstanceIamPolicy editor projects/{{project}}/locations/{{location}}/instances/{{instance_name}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class InstanceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> instanceName;
  /// A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [InstanceIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamPolicy]. {@macro pulumi_notebooks_instance_iam_policy_instance_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamPolicy(
    String name, {
    InstanceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    instanceName = registerOutput<String>('instanceName');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [InstanceIamPolicy] resource's state with the given [name] and [id].
  static InstanceIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    InstanceIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    instanceName = registerOutput<String>('instanceName');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [InstanceIamPolicy] resource.
  InstanceIamPolicy.reference(String urn)
    : super(
        'gcp:notebooks/instanceIamPolicy:InstanceIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    instanceName = registerOutput<String>('instanceName');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
