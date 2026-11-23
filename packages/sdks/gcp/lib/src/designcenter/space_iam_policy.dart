import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_iam_policy_args.dart';
import 'space_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Application Design Center Space. Each of these resources serves a different use case:
///
/// * `gcp.designcenter.SpaceIamPolicy`: Authoritative. Sets the IAM policy for the space and replaces any existing policy already attached.
/// * `gcp.designcenter.SpaceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the space are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.designcenter.SpaceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the space are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.designcenter.SpaceIamPolicy`: Retrieves the IAM policy for the space
///
/// &gt; **Note:** `gcp.designcenter.SpaceIamPolicy` **cannot** be used in conjunction with `gcp.designcenter.SpaceIamBinding` and `gcp.designcenter.SpaceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.designcenter.SpaceIamBinding` resources **can be** used in conjunction with `gcp.designcenter.SpaceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.designcenter.SpaceIamPolicy
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
/// const policy = new gcp.designcenter.SpaceIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     spaceId: example.spaceId,
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
/// policy = gcp.designcenter.SpaceIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     space_id=example["spaceId"],
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
///     var policy = new Gcp.DesignCenter.SpaceIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SpaceId = example.SpaceId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// 		_, err = designcenter.NewSpaceIamPolicy(ctx, "policy", &designcenter.SpaceIamPolicyArgs{
/// 			Project:    pulumi.Any(example.Project),
/// 			Location:   pulumi.Any(example.Location),
/// 			SpaceId:    pulumi.Any(example.SpaceId),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_designcenter_space_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = example.project
///   location    = example.location
///   space_id    = example.spaceId
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
/// import com.pulumi.gcp.designcenter.SpaceIamPolicy;
/// import com.pulumi.gcp.designcenter.SpaceIamPolicyArgs;
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
///         var policy = new SpaceIamPolicy("policy", SpaceIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .spaceId(example.get("spaceId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:designcenter:SpaceIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       spaceId: ${example.spaceId}
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
/// ## gcp.designcenter.SpaceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.designcenter.SpaceIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     spaceId: example.spaceId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.designcenter.SpaceIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     space_id=example["spaceId"],
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
///     var binding = new Gcp.DesignCenter.SpaceIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SpaceId = example.SpaceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := designcenter.NewSpaceIamBinding(ctx, "binding", &designcenter.SpaceIamBindingArgs{
/// 			Project:  pulumi.Any(example.Project),
/// 			Location: pulumi.Any(example.Location),
/// 			SpaceId:  pulumi.Any(example.SpaceId),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_designcenter_space_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = example.project
///   location = example.location
///   space_id = example.spaceId
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
/// import com.pulumi.gcp.designcenter.SpaceIamBinding;
/// import com.pulumi.gcp.designcenter.SpaceIamBindingArgs;
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
///         var binding = new SpaceIamBinding("binding", SpaceIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .spaceId(example.get("spaceId"))
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
///     type: gcp:designcenter:SpaceIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       spaceId: ${example.spaceId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.designcenter.SpaceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.designcenter.SpaceIamMember("member", {
///     project: example.project,
///     location: example.location,
///     spaceId: example.spaceId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.designcenter.SpaceIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     space_id=example["spaceId"],
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
///     var member = new Gcp.DesignCenter.SpaceIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SpaceId = example.SpaceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := designcenter.NewSpaceIamMember(ctx, "member", &designcenter.SpaceIamMemberArgs{
/// 			Project:  pulumi.Any(example.Project),
/// 			Location: pulumi.Any(example.Location),
/// 			SpaceId:  pulumi.Any(example.SpaceId),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_designcenter_space_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = example.project
///   location = example.location
///   space_id = example.spaceId
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
/// import com.pulumi.gcp.designcenter.SpaceIamMember;
/// import com.pulumi.gcp.designcenter.SpaceIamMemberArgs;
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
///         var member = new SpaceIamMember("member", SpaceIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .spaceId(example.get("spaceId"))
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
///     type: gcp:designcenter:SpaceIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       spaceId: ${example.spaceId}
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
/// # IAM policy for Application Design Center Space
///
/// Three different resources help you manage your IAM policy for Application Design Center Space. Each of these resources serves a different use case:
///
/// * `gcp.designcenter.SpaceIamPolicy`: Authoritative. Sets the IAM policy for the space and replaces any existing policy already attached.
/// * `gcp.designcenter.SpaceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the space are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.designcenter.SpaceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the space are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.designcenter.SpaceIamPolicy`: Retrieves the IAM policy for the space
///
/// &gt; **Note:** `gcp.designcenter.SpaceIamPolicy` **cannot** be used in conjunction with `gcp.designcenter.SpaceIamBinding` and `gcp.designcenter.SpaceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.designcenter.SpaceIamBinding` resources **can be** used in conjunction with `gcp.designcenter.SpaceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.designcenter.SpaceIamPolicy
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
/// const policy = new gcp.designcenter.SpaceIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     spaceId: example.spaceId,
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
/// policy = gcp.designcenter.SpaceIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     space_id=example["spaceId"],
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
///     var policy = new Gcp.DesignCenter.SpaceIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SpaceId = example.SpaceId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// 		_, err = designcenter.NewSpaceIamPolicy(ctx, "policy", &designcenter.SpaceIamPolicyArgs{
/// 			Project:    pulumi.Any(example.Project),
/// 			Location:   pulumi.Any(example.Location),
/// 			SpaceId:    pulumi.Any(example.SpaceId),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_designcenter_space_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project     = example.project
///   location    = example.location
///   space_id    = example.spaceId
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
/// import com.pulumi.gcp.designcenter.SpaceIamPolicy;
/// import com.pulumi.gcp.designcenter.SpaceIamPolicyArgs;
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
///         var policy = new SpaceIamPolicy("policy", SpaceIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .spaceId(example.get("spaceId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:designcenter:SpaceIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       spaceId: ${example.spaceId}
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
/// ## gcp.designcenter.SpaceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.designcenter.SpaceIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     spaceId: example.spaceId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.designcenter.SpaceIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     space_id=example["spaceId"],
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
///     var binding = new Gcp.DesignCenter.SpaceIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SpaceId = example.SpaceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := designcenter.NewSpaceIamBinding(ctx, "binding", &designcenter.SpaceIamBindingArgs{
/// 			Project:  pulumi.Any(example.Project),
/// 			Location: pulumi.Any(example.Location),
/// 			SpaceId:  pulumi.Any(example.SpaceId),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_designcenter_space_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = example.project
///   location = example.location
///   space_id = example.spaceId
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
/// import com.pulumi.gcp.designcenter.SpaceIamBinding;
/// import com.pulumi.gcp.designcenter.SpaceIamBindingArgs;
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
///         var binding = new SpaceIamBinding("binding", SpaceIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .spaceId(example.get("spaceId"))
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
///     type: gcp:designcenter:SpaceIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       spaceId: ${example.spaceId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.designcenter.SpaceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.designcenter.SpaceIamMember("member", {
///     project: example.project,
///     location: example.location,
///     spaceId: example.spaceId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.designcenter.SpaceIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     space_id=example["spaceId"],
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
///     var member = new Gcp.DesignCenter.SpaceIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SpaceId = example.SpaceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := designcenter.NewSpaceIamMember(ctx, "member", &designcenter.SpaceIamMemberArgs{
/// 			Project:  pulumi.Any(example.Project),
/// 			Location: pulumi.Any(example.Location),
/// 			SpaceId:  pulumi.Any(example.SpaceId),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_designcenter_space_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = example.project
///   location = example.location
///   space_id = example.spaceId
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
/// import com.pulumi.gcp.designcenter.SpaceIamMember;
/// import com.pulumi.gcp.designcenter.SpaceIamMemberArgs;
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
///         var member = new SpaceIamMember("member", SpaceIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .spaceId(example.get("spaceId"))
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
///     type: gcp:designcenter:SpaceIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       spaceId: ${example.spaceId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/spaces/{{space_id}}
/// * {{project}}/{{location}}/{{space_id}}
/// * {{location}}/{{space_id}}
/// * {{space_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Application Design Center space IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_design_center_space_iam_member.editor "projects/{{project}}/locations/{{location}}/spaces/{{space_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_design_center_space_iam_binding.editor "projects/{{project}}/locations/{{location}}/spaces/{{space_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:designcenter/spaceIamPolicy:SpaceIamPolicy editor projects/{{project}}/locations/{{location}}/spaces/{{space_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SpaceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of the space. Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final pulumi.Output<String> spaceId;

  /// Creates a new [SpaceIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpaceIamPolicy]. {@macro pulumi_designcenter_space_iam_policy_space_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpaceIamPolicy(
    String name, {
    SpaceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:designcenter/spaceIamPolicy:SpaceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    spaceId = registerOutput<String>('spaceId');
  }

  /// Gets an existing [SpaceIamPolicy] resource's state with the given [name] and [id].
  static SpaceIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    SpaceIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpaceIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpaceIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:designcenter/spaceIamPolicy:SpaceIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    spaceId = registerOutput<String>('spaceId');
  }

  /// Creates a typed reference to an existing [SpaceIamPolicy] resource.
  SpaceIamPolicy.reference(String urn)
    : super(
        'gcp:designcenter/spaceIamPolicy:SpaceIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    spaceId = registerOutput<String>('spaceId');
  }
}
