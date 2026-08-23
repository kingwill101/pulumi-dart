import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_iam_policy_args.dart';
import 'membership_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for GKEHub Membership. Each of these resources serves a different use case:
///
/// * `gcp.gkehub.MembershipIamPolicy`: Authoritative. Sets the IAM policy for the membership and replaces any existing policy already attached.
/// * `gcp.gkehub.MembershipIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the membership are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.gkehub.MembershipIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the membership are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gkehub.MembershipIamPolicy`: Retrieves the IAM policy for the membership
///
/// &gt; **Note:** `gcp.gkehub.MembershipIamPolicy` **cannot** be used in conjunction with `gcp.gkehub.MembershipIamBinding` and `gcp.gkehub.MembershipIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gkehub.MembershipIamBinding` resources **can be** used in conjunction with `gcp.gkehub.MembershipIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.gkehub.MembershipIamPolicy
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
/// const policy = new gcp.gkehub.MembershipIamPolicy("policy", {
///     project: membership.project,
///     location: membership.location,
///     membershipId: membership.membershipId,
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
/// policy = gcp.gkehub.MembershipIamPolicy("policy",
///     project=membership["project"],
///     location=membership["location"],
///     membership_id=membership["membershipId"],
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
///     var policy = new Gcp.GkeHub.MembershipIamPolicy("policy", new()
///     {
///         Project = membership.Project,
///         Location = membership.Location,
///         MembershipId = membership.MembershipId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
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
/// 		_, err = gkehub.NewMembershipIamPolicy(ctx, "policy", &gkehub.MembershipIamPolicyArgs{
/// 			Project:      pulumi.Any(membership.Project),
/// 			Location:     pulumi.Any(membership.Location),
/// 			MembershipId: pulumi.Any(membership.MembershipId),
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
/// resource "gcp_gkehub_membershipiampolicy" "policy" {
///   project       = membership.project
///   location      = membership.location
///   membership_id = membership.membershipId
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
/// import com.pulumi.gcp.gkehub.MembershipIamPolicy;
/// import com.pulumi.gcp.gkehub.MembershipIamPolicyArgs;
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
///         var policy = new MembershipIamPolicy("policy", MembershipIamPolicyArgs.builder()
///             .project(membership.get("project"))
///             .location(membership.get("location"))
///             .membershipId(membership.get("membershipId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gkehub:MembershipIamPolicy
///     properties:
///       project: ${membership.project}
///       location: ${membership.location}
///       membershipId: ${membership.membershipId}
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
/// ## gcp.gkehub.MembershipIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkehub.MembershipIamBinding("binding", {
///     project: membership.project,
///     location: membership.location,
///     membershipId: membership.membershipId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkehub.MembershipIamBinding("binding",
///     project=membership["project"],
///     location=membership["location"],
///     membership_id=membership["membershipId"],
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
///     var binding = new Gcp.GkeHub.MembershipIamBinding("binding", new()
///     {
///         Project = membership.Project,
///         Location = membership.Location,
///         MembershipId = membership.MembershipId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewMembershipIamBinding(ctx, "binding", &gkehub.MembershipIamBindingArgs{
/// 			Project:      pulumi.Any(membership.Project),
/// 			Location:     pulumi.Any(membership.Location),
/// 			MembershipId: pulumi.Any(membership.MembershipId),
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
/// resource "gcp_gkehub_membershipiambinding" "binding" {
///   project       = membership.project
///   location      = membership.location
///   membership_id = membership.membershipId
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
/// import com.pulumi.gcp.gkehub.MembershipIamBinding;
/// import com.pulumi.gcp.gkehub.MembershipIamBindingArgs;
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
///         var binding = new MembershipIamBinding("binding", MembershipIamBindingArgs.builder()
///             .project(membership.get("project"))
///             .location(membership.get("location"))
///             .membershipId(membership.get("membershipId"))
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
///     type: gcp:gkehub:MembershipIamBinding
///     properties:
///       project: ${membership.project}
///       location: ${membership.location}
///       membershipId: ${membership.membershipId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gkehub.MembershipIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkehub.MembershipIamMember("member", {
///     project: membership.project,
///     location: membership.location,
///     membershipId: membership.membershipId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkehub.MembershipIamMember("member",
///     project=membership["project"],
///     location=membership["location"],
///     membership_id=membership["membershipId"],
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
///     var member = new Gcp.GkeHub.MembershipIamMember("member", new()
///     {
///         Project = membership.Project,
///         Location = membership.Location,
///         MembershipId = membership.MembershipId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewMembershipIamMember(ctx, "member", &gkehub.MembershipIamMemberArgs{
/// 			Project:      pulumi.Any(membership.Project),
/// 			Location:     pulumi.Any(membership.Location),
/// 			MembershipId: pulumi.Any(membership.MembershipId),
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
/// resource "gcp_gkehub_membershipiammember" "member" {
///   project       = membership.project
///   location      = membership.location
///   membership_id = membership.membershipId
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
/// import com.pulumi.gcp.gkehub.MembershipIamMember;
/// import com.pulumi.gcp.gkehub.MembershipIamMemberArgs;
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
///         var member = new MembershipIamMember("member", MembershipIamMemberArgs.builder()
///             .project(membership.get("project"))
///             .location(membership.get("location"))
///             .membershipId(membership.get("membershipId"))
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
///     type: gcp:gkehub:MembershipIamMember
///     properties:
///       project: ${membership.project}
///       location: ${membership.location}
///       membershipId: ${membership.membershipId}
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
/// # IAM policy for GKEHub Membership
///
/// Three different resources help you manage your IAM policy for GKEHub Membership. Each of these resources serves a different use case:
///
/// * `gcp.gkehub.MembershipIamPolicy`: Authoritative. Sets the IAM policy for the membership and replaces any existing policy already attached.
/// * `gcp.gkehub.MembershipIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the membership are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.gkehub.MembershipIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the membership are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gkehub.MembershipIamPolicy`: Retrieves the IAM policy for the membership
///
/// &gt; **Note:** `gcp.gkehub.MembershipIamPolicy` **cannot** be used in conjunction with `gcp.gkehub.MembershipIamBinding` and `gcp.gkehub.MembershipIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gkehub.MembershipIamBinding` resources **can be** used in conjunction with `gcp.gkehub.MembershipIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.gkehub.MembershipIamPolicy
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
/// const policy = new gcp.gkehub.MembershipIamPolicy("policy", {
///     project: membership.project,
///     location: membership.location,
///     membershipId: membership.membershipId,
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
/// policy = gcp.gkehub.MembershipIamPolicy("policy",
///     project=membership["project"],
///     location=membership["location"],
///     membership_id=membership["membershipId"],
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
///     var policy = new Gcp.GkeHub.MembershipIamPolicy("policy", new()
///     {
///         Project = membership.Project,
///         Location = membership.Location,
///         MembershipId = membership.MembershipId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
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
/// 		_, err = gkehub.NewMembershipIamPolicy(ctx, "policy", &gkehub.MembershipIamPolicyArgs{
/// 			Project:      pulumi.Any(membership.Project),
/// 			Location:     pulumi.Any(membership.Location),
/// 			MembershipId: pulumi.Any(membership.MembershipId),
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
/// resource "gcp_gkehub_membershipiampolicy" "policy" {
///   project       = membership.project
///   location      = membership.location
///   membership_id = membership.membershipId
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
/// import com.pulumi.gcp.gkehub.MembershipIamPolicy;
/// import com.pulumi.gcp.gkehub.MembershipIamPolicyArgs;
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
///         var policy = new MembershipIamPolicy("policy", MembershipIamPolicyArgs.builder()
///             .project(membership.get("project"))
///             .location(membership.get("location"))
///             .membershipId(membership.get("membershipId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gkehub:MembershipIamPolicy
///     properties:
///       project: ${membership.project}
///       location: ${membership.location}
///       membershipId: ${membership.membershipId}
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
/// ## gcp.gkehub.MembershipIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkehub.MembershipIamBinding("binding", {
///     project: membership.project,
///     location: membership.location,
///     membershipId: membership.membershipId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkehub.MembershipIamBinding("binding",
///     project=membership["project"],
///     location=membership["location"],
///     membership_id=membership["membershipId"],
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
///     var binding = new Gcp.GkeHub.MembershipIamBinding("binding", new()
///     {
///         Project = membership.Project,
///         Location = membership.Location,
///         MembershipId = membership.MembershipId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewMembershipIamBinding(ctx, "binding", &gkehub.MembershipIamBindingArgs{
/// 			Project:      pulumi.Any(membership.Project),
/// 			Location:     pulumi.Any(membership.Location),
/// 			MembershipId: pulumi.Any(membership.MembershipId),
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
/// resource "gcp_gkehub_membershipiambinding" "binding" {
///   project       = membership.project
///   location      = membership.location
///   membership_id = membership.membershipId
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
/// import com.pulumi.gcp.gkehub.MembershipIamBinding;
/// import com.pulumi.gcp.gkehub.MembershipIamBindingArgs;
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
///         var binding = new MembershipIamBinding("binding", MembershipIamBindingArgs.builder()
///             .project(membership.get("project"))
///             .location(membership.get("location"))
///             .membershipId(membership.get("membershipId"))
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
///     type: gcp:gkehub:MembershipIamBinding
///     properties:
///       project: ${membership.project}
///       location: ${membership.location}
///       membershipId: ${membership.membershipId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gkehub.MembershipIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkehub.MembershipIamMember("member", {
///     project: membership.project,
///     location: membership.location,
///     membershipId: membership.membershipId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkehub.MembershipIamMember("member",
///     project=membership["project"],
///     location=membership["location"],
///     membership_id=membership["membershipId"],
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
///     var member = new Gcp.GkeHub.MembershipIamMember("member", new()
///     {
///         Project = membership.Project,
///         Location = membership.Location,
///         MembershipId = membership.MembershipId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewMembershipIamMember(ctx, "member", &gkehub.MembershipIamMemberArgs{
/// 			Project:      pulumi.Any(membership.Project),
/// 			Location:     pulumi.Any(membership.Location),
/// 			MembershipId: pulumi.Any(membership.MembershipId),
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
/// resource "gcp_gkehub_membershipiammember" "member" {
///   project       = membership.project
///   location      = membership.location
///   membership_id = membership.membershipId
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
/// import com.pulumi.gcp.gkehub.MembershipIamMember;
/// import com.pulumi.gcp.gkehub.MembershipIamMemberArgs;
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
///         var member = new MembershipIamMember("member", MembershipIamMemberArgs.builder()
///             .project(membership.get("project"))
///             .location(membership.get("location"))
///             .membershipId(membership.get("membershipId"))
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
///     type: gcp:gkehub:MembershipIamMember
///     properties:
///       project: ${membership.project}
///       location: ${membership.location}
///       membershipId: ${membership.membershipId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}
/// * {{project}}/{{location}}/{{membership_id}}
/// * {{location}}/{{membership_id}}
/// * {{membership_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// GKEHub membership IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_gke_hub_membership_iam_member.editor "projects/{{project}}/locations/{{location}}/memberships/{{membership_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_gke_hub_membership_iam_binding.editor "projects/{{project}}/locations/{{location}}/memberships/{{membership_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:gkehub/membershipIamPolicy:MembershipIamPolicy editor projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MembershipIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Location of the membership.
  /// The default value is `global`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> membershipId;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [MembershipIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MembershipIamPolicy]. {@macro pulumi_gkehub_membership_iam_policy_membership_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MembershipIamPolicy(
    String name, {
    MembershipIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membershipIamPolicy:MembershipIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    membershipId = registerOutput<String>('membershipId');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [MembershipIamPolicy] resource's state with the given [name] and [id].
  static MembershipIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    MembershipIamPolicyState? state,
  }) {
    return MembershipIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MembershipIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membershipIamPolicy:MembershipIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    membershipId = registerOutput<String>('membershipId');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
