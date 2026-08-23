import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_iam_policy_args.dart';
import 'restore_plan_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Backup for GKE RestorePlan. Each of these resources serves a different use case:
///
/// * `gcp.gkebackup.RestorePlanIamPolicy`: Authoritative. Sets the IAM policy for the restoreplan and replaces any existing policy already attached.
/// * `gcp.gkebackup.RestorePlanIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the restoreplan are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.gkebackup.RestorePlanIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the restoreplan are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gkebackup.RestorePlanIamPolicy`: Retrieves the IAM policy for the restoreplan
///
/// &gt; **Note:** `gcp.gkebackup.RestorePlanIamPolicy` **cannot** be used in conjunction with `gcp.gkebackup.RestorePlanIamBinding` and `gcp.gkebackup.RestorePlanIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gkebackup.RestorePlanIamBinding` resources **can be** used in conjunction with `gcp.gkebackup.RestorePlanIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.gkebackup.RestorePlanIamPolicy
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
/// const policy = new gcp.gkebackup.RestorePlanIamPolicy("policy", {
///     project: allNs.project,
///     location: allNs.location,
///     name: allNs.name,
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
/// policy = gcp.gkebackup.RestorePlanIamPolicy("policy",
///     project=all_ns["project"],
///     location=all_ns["location"],
///     name=all_ns["name"],
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
///     var policy = new Gcp.GkeBackup.RestorePlanIamPolicy("policy", new()
///     {
///         Project = allNs.Project,
///         Location = allNs.Location,
///         Name = allNs.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
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
/// 		_, err = gkebackup.NewRestorePlanIamPolicy(ctx, "policy", &gkebackup.RestorePlanIamPolicyArgs{
/// 			Project:    pulumi.Any(allNs.Project),
/// 			Location:   pulumi.Any(allNs.Location),
/// 			Name:       pulumi.Any(allNs.Name),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_gkebackup_restoreplaniampolicy" "policy" {
///   project     = allNs.project
///   location    = allNs.location
///   name        = allNs.name
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
/// import com.pulumi.gcp.gkebackup.RestorePlanIamPolicy;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamPolicyArgs;
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
///         var policy = new RestorePlanIamPolicy("policy", RestorePlanIamPolicyArgs.builder()
///             .project(allNs.get("project"))
///             .location(allNs.get("location"))
///             .name(allNs.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gkebackup:RestorePlanIamPolicy
///     properties:
///       project: ${allNs.project}
///       location: ${allNs.location}
///       name: ${allNs.name}
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
/// ## gcp.gkebackup.RestorePlanIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkebackup.RestorePlanIamBinding("binding", {
///     project: allNs.project,
///     location: allNs.location,
///     name: allNs.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkebackup.RestorePlanIamBinding("binding",
///     project=all_ns["project"],
///     location=all_ns["location"],
///     name=all_ns["name"],
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
///     var binding = new Gcp.GkeBackup.RestorePlanIamBinding("binding", new()
///     {
///         Project = allNs.Project,
///         Location = allNs.Location,
///         Name = allNs.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewRestorePlanIamBinding(ctx, "binding", &gkebackup.RestorePlanIamBindingArgs{
/// 			Project:  pulumi.Any(allNs.Project),
/// 			Location: pulumi.Any(allNs.Location),
/// 			Name:     pulumi.Any(allNs.Name),
/// 			Role:     pulumi.String("roles/viewer"),
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
/// resource "gcp_gkebackup_restoreplaniambinding" "binding" {
///   project  = allNs.project
///   location = allNs.location
///   name     = allNs.name
///   role     = "roles/viewer"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamBinding;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamBindingArgs;
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
///         var binding = new RestorePlanIamBinding("binding", RestorePlanIamBindingArgs.builder()
///             .project(allNs.get("project"))
///             .location(allNs.get("location"))
///             .name(allNs.get("name"))
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
///     type: gcp:gkebackup:RestorePlanIamBinding
///     properties:
///       project: ${allNs.project}
///       location: ${allNs.location}
///       name: ${allNs.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gkebackup.RestorePlanIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkebackup.RestorePlanIamMember("member", {
///     project: allNs.project,
///     location: allNs.location,
///     name: allNs.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkebackup.RestorePlanIamMember("member",
///     project=all_ns["project"],
///     location=all_ns["location"],
///     name=all_ns["name"],
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
///     var member = new Gcp.GkeBackup.RestorePlanIamMember("member", new()
///     {
///         Project = allNs.Project,
///         Location = allNs.Location,
///         Name = allNs.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewRestorePlanIamMember(ctx, "member", &gkebackup.RestorePlanIamMemberArgs{
/// 			Project:  pulumi.Any(allNs.Project),
/// 			Location: pulumi.Any(allNs.Location),
/// 			Name:     pulumi.Any(allNs.Name),
/// 			Role:     pulumi.String("roles/viewer"),
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
/// resource "gcp_gkebackup_restoreplaniammember" "member" {
///   project  = allNs.project
///   location = allNs.location
///   name     = allNs.name
///   role     = "roles/viewer"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamMember;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamMemberArgs;
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
///         var member = new RestorePlanIamMember("member", RestorePlanIamMemberArgs.builder()
///             .project(allNs.get("project"))
///             .location(allNs.get("location"))
///             .name(allNs.get("name"))
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
///     type: gcp:gkebackup:RestorePlanIamMember
///     properties:
///       project: ${allNs.project}
///       location: ${allNs.location}
///       name: ${allNs.name}
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
/// # IAM policy for Backup for GKE RestorePlan
///
/// Three different resources help you manage your IAM policy for Backup for GKE RestorePlan. Each of these resources serves a different use case:
///
/// * `gcp.gkebackup.RestorePlanIamPolicy`: Authoritative. Sets the IAM policy for the restoreplan and replaces any existing policy already attached.
/// * `gcp.gkebackup.RestorePlanIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the restoreplan are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.gkebackup.RestorePlanIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the restoreplan are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gkebackup.RestorePlanIamPolicy`: Retrieves the IAM policy for the restoreplan
///
/// &gt; **Note:** `gcp.gkebackup.RestorePlanIamPolicy` **cannot** be used in conjunction with `gcp.gkebackup.RestorePlanIamBinding` and `gcp.gkebackup.RestorePlanIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gkebackup.RestorePlanIamBinding` resources **can be** used in conjunction with `gcp.gkebackup.RestorePlanIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.gkebackup.RestorePlanIamPolicy
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
/// const policy = new gcp.gkebackup.RestorePlanIamPolicy("policy", {
///     project: allNs.project,
///     location: allNs.location,
///     name: allNs.name,
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
/// policy = gcp.gkebackup.RestorePlanIamPolicy("policy",
///     project=all_ns["project"],
///     location=all_ns["location"],
///     name=all_ns["name"],
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
///     var policy = new Gcp.GkeBackup.RestorePlanIamPolicy("policy", new()
///     {
///         Project = allNs.Project,
///         Location = allNs.Location,
///         Name = allNs.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
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
/// 		_, err = gkebackup.NewRestorePlanIamPolicy(ctx, "policy", &gkebackup.RestorePlanIamPolicyArgs{
/// 			Project:    pulumi.Any(allNs.Project),
/// 			Location:   pulumi.Any(allNs.Location),
/// 			Name:       pulumi.Any(allNs.Name),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_gkebackup_restoreplaniampolicy" "policy" {
///   project     = allNs.project
///   location    = allNs.location
///   name        = allNs.name
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
/// import com.pulumi.gcp.gkebackup.RestorePlanIamPolicy;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamPolicyArgs;
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
///         var policy = new RestorePlanIamPolicy("policy", RestorePlanIamPolicyArgs.builder()
///             .project(allNs.get("project"))
///             .location(allNs.get("location"))
///             .name(allNs.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gkebackup:RestorePlanIamPolicy
///     properties:
///       project: ${allNs.project}
///       location: ${allNs.location}
///       name: ${allNs.name}
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
/// ## gcp.gkebackup.RestorePlanIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkebackup.RestorePlanIamBinding("binding", {
///     project: allNs.project,
///     location: allNs.location,
///     name: allNs.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkebackup.RestorePlanIamBinding("binding",
///     project=all_ns["project"],
///     location=all_ns["location"],
///     name=all_ns["name"],
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
///     var binding = new Gcp.GkeBackup.RestorePlanIamBinding("binding", new()
///     {
///         Project = allNs.Project,
///         Location = allNs.Location,
///         Name = allNs.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewRestorePlanIamBinding(ctx, "binding", &gkebackup.RestorePlanIamBindingArgs{
/// 			Project:  pulumi.Any(allNs.Project),
/// 			Location: pulumi.Any(allNs.Location),
/// 			Name:     pulumi.Any(allNs.Name),
/// 			Role:     pulumi.String("roles/viewer"),
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
/// resource "gcp_gkebackup_restoreplaniambinding" "binding" {
///   project  = allNs.project
///   location = allNs.location
///   name     = allNs.name
///   role     = "roles/viewer"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamBinding;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamBindingArgs;
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
///         var binding = new RestorePlanIamBinding("binding", RestorePlanIamBindingArgs.builder()
///             .project(allNs.get("project"))
///             .location(allNs.get("location"))
///             .name(allNs.get("name"))
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
///     type: gcp:gkebackup:RestorePlanIamBinding
///     properties:
///       project: ${allNs.project}
///       location: ${allNs.location}
///       name: ${allNs.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gkebackup.RestorePlanIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkebackup.RestorePlanIamMember("member", {
///     project: allNs.project,
///     location: allNs.location,
///     name: allNs.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkebackup.RestorePlanIamMember("member",
///     project=all_ns["project"],
///     location=all_ns["location"],
///     name=all_ns["name"],
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
///     var member = new Gcp.GkeBackup.RestorePlanIamMember("member", new()
///     {
///         Project = allNs.Project,
///         Location = allNs.Location,
///         Name = allNs.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewRestorePlanIamMember(ctx, "member", &gkebackup.RestorePlanIamMemberArgs{
/// 			Project:  pulumi.Any(allNs.Project),
/// 			Location: pulumi.Any(allNs.Location),
/// 			Name:     pulumi.Any(allNs.Name),
/// 			Role:     pulumi.String("roles/viewer"),
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
/// resource "gcp_gkebackup_restoreplaniammember" "member" {
///   project  = allNs.project
///   location = allNs.location
///   name     = allNs.name
///   role     = "roles/viewer"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamMember;
/// import com.pulumi.gcp.gkebackup.RestorePlanIamMemberArgs;
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
///         var member = new RestorePlanIamMember("member", RestorePlanIamMemberArgs.builder()
///             .project(allNs.get("project"))
///             .location(allNs.get("location"))
///             .name(allNs.get("name"))
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
///     type: gcp:gkebackup:RestorePlanIamMember
///     properties:
///       project: ${allNs.project}
///       location: ${allNs.location}
///       name: ${allNs.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/restorePlans/{{name}}
/// * {{project}}/{{location}}/{{name}}
/// * {{location}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Backup for GKE restoreplan IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_gke_backup_restore_plan_iam_member.editor "projects/{{project}}/locations/{{location}}/restorePlans/{{restore_plan}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_gke_backup_restore_plan_iam_binding.editor "projects/{{project}}/locations/{{location}}/restorePlans/{{restore_plan}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:gkebackup/restorePlanIamPolicy:RestorePlanIamPolicy editor projects/{{project}}/locations/{{location}}/restorePlans/{{restore_plan}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RestorePlanIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The region of the Restore Plan.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [RestorePlanIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestorePlanIamPolicy]. {@macro pulumi_gkebackup_restore_plan_iam_policy_restore_plan_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestorePlanIamPolicy(
    String name, {
    RestorePlanIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restorePlanIamPolicy:RestorePlanIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [RestorePlanIamPolicy] resource's state with the given [name] and [id].
  static RestorePlanIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    RestorePlanIamPolicyState? state,
  }) {
    return RestorePlanIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RestorePlanIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restorePlanIamPolicy:RestorePlanIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
