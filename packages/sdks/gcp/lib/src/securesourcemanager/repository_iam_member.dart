import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_member_args.dart';
import 'repository_iam_member_condition.dart';
import 'repository_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Secure Source Manager Repository. Each of these resources serves a different use case:
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.securesourcemanager.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.securesourcemanager.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// &gt; **Note:** `gcp.securesourcemanager.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.securesourcemanager.RepositoryIamBinding` and `gcp.securesourcemanager.RepositoryIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.securesourcemanager.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.securesourcemanager.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.securesourcemanager.RepositoryIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/securesourcemanager.repoAdmin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.securesourcemanager.RepositoryIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/securesourcemanager.repoAdmin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.securesourcemanager.RepositoryIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
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
///                 Role = "roles/securesourcemanager.repoAdmin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecureSourceManager.RepositoryIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/securesourcemanager.repoAdmin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepositoryIamPolicy(ctx, "policy", &securesourcemanager.RepositoryIamPolicyArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
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
///     role    = "roles/securesourcemanager.repoAdmin"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_securesourcemanager_repositoryiampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   repository_id = default.repositoryId
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicy;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicyArgs;
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
///                 .role("roles/securesourcemanager.repoAdmin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .repositoryId(default_.get("repositoryId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:securesourcemanager:RepositoryIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/securesourcemanager.repoAdmin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securesourcemanager.RepositoryIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securesourcemanager.RepositoryIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var binding = new Gcp.SecureSourceManager.RepositoryIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamBinding(ctx, "binding", &securesourcemanager.RepositoryIamBindingArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// resource "gcp_securesourcemanager_repositoryiambinding" "binding" {
///   project       = default.project
///   location      = default.location
///   repository_id = default.repositoryId
///   role          = "roles/securesourcemanager.repoAdmin"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBinding;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBindingArgs;
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
///         var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .repositoryId(default_.get("repositoryId"))
///             .role("roles/securesourcemanager.repoAdmin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:securesourcemanager:RepositoryIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securesourcemanager.RepositoryIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securesourcemanager.RepositoryIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var member = new Gcp.SecureSourceManager.RepositoryIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamMember(ctx, "member", &securesourcemanager.RepositoryIamMemberArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// resource "gcp_securesourcemanager_repositoryiammember" "member" {
///   project       = default.project
///   location      = default.location
///   repository_id = default.repositoryId
///   role          = "roles/securesourcemanager.repoAdmin"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMember;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMemberArgs;
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
///         var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .repositoryId(default_.get("repositoryId"))
///             .role("roles/securesourcemanager.repoAdmin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:securesourcemanager:RepositoryIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Secure Source Manager Repository
///
/// Three different resources help you manage your IAM policy for Secure Source Manager Repository. Each of these resources serves a different use case:
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.securesourcemanager.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.securesourcemanager.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// &gt; **Note:** `gcp.securesourcemanager.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.securesourcemanager.RepositoryIamBinding` and `gcp.securesourcemanager.RepositoryIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.securesourcemanager.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.securesourcemanager.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.securesourcemanager.RepositoryIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/securesourcemanager.repoAdmin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.securesourcemanager.RepositoryIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/securesourcemanager.repoAdmin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.securesourcemanager.RepositoryIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
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
///                 Role = "roles/securesourcemanager.repoAdmin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecureSourceManager.RepositoryIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/securesourcemanager.repoAdmin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepositoryIamPolicy(ctx, "policy", &securesourcemanager.RepositoryIamPolicyArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
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
///     role    = "roles/securesourcemanager.repoAdmin"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_securesourcemanager_repositoryiampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   repository_id = default.repositoryId
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicy;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicyArgs;
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
///                 .role("roles/securesourcemanager.repoAdmin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .repositoryId(default_.get("repositoryId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:securesourcemanager:RepositoryIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/securesourcemanager.repoAdmin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securesourcemanager.RepositoryIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securesourcemanager.RepositoryIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var binding = new Gcp.SecureSourceManager.RepositoryIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamBinding(ctx, "binding", &securesourcemanager.RepositoryIamBindingArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// resource "gcp_securesourcemanager_repositoryiambinding" "binding" {
///   project       = default.project
///   location      = default.location
///   repository_id = default.repositoryId
///   role          = "roles/securesourcemanager.repoAdmin"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBinding;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBindingArgs;
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
///         var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .repositoryId(default_.get("repositoryId"))
///             .role("roles/securesourcemanager.repoAdmin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:securesourcemanager:RepositoryIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securesourcemanager.RepositoryIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securesourcemanager.RepositoryIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var member = new Gcp.SecureSourceManager.RepositoryIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamMember(ctx, "member", &securesourcemanager.RepositoryIamMemberArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// resource "gcp_securesourcemanager_repositoryiammember" "member" {
///   project       = default.project
///   location      = default.location
///   repository_id = default.repositoryId
///   role          = "roles/securesourcemanager.repoAdmin"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMember;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMemberArgs;
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
///         var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .repositoryId(default_.get("repositoryId"))
///             .role("roles/securesourcemanager.repoAdmin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:securesourcemanager:RepositoryIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// * {{project}}/{{location}}/{{repository_id}}
/// * {{location}}/{{repository_id}}
/// * {{repository_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Secure Source Manager repository IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_secure_source_manager_repository_iam_member.editor "projects/{{project}}/locations/{{location}}/repositories/{{repository_id}} roles/securesourcemanager.repoAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_secure_source_manager_repository_iam_binding.editor "projects/{{project}}/locations/{{location}}/repositories/{{repository_id}} roles/securesourcemanager.repoAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repositoryIamMember:RepositoryIamMember editor projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryIamMember extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location for the Repository.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
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
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> repositoryId;
  /// The role that should be applied. Only one
  /// `gcp.securesourcemanager.RepositoryIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [RepositoryIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamMember]. {@macro pulumi_securesourcemanager_repository_iam_member_repository_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamMember(
    String name, {
    RepositoryIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repositoryIamMember:RepositoryIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    condition = registerOutput<RepositoryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [RepositoryIamMember] resource's state with the given [name] and [id].
  static RepositoryIamMember get(
    String name,
    pulumi.Input<String> id, {
    RepositoryIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RepositoryIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RepositoryIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repositoryIamMember:RepositoryIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<RepositoryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [RepositoryIamMember] resource.
  RepositoryIamMember.reference(String urn)
    : super(
        'gcp:securesourcemanager/repositoryIamMember:RepositoryIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<RepositoryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    role = registerOutput<String>('role');
  }
}
