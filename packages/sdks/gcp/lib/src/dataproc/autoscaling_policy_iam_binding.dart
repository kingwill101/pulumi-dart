import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_iam_binding_args.dart';
import 'autoscaling_policy_iam_binding_condition.dart';
import 'autoscaling_policy_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Dataproc AutoscalingPolicy. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Authoritative. Sets the IAM policy for the autoscalingpolicy and replaces any existing policy already attached.
/// * `gcp.dataproc.AutoscalingPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the autoscalingpolicy are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataproc.AutoscalingPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the autoscalingpolicy are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Retrieves the IAM policy for the autoscalingpolicy
///
/// &gt; **Note:** `gcp.dataproc.AutoscalingPolicyIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.AutoscalingPolicyIamBinding` and `gcp.dataproc.AutoscalingPolicyIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataproc.AutoscalingPolicyIamBinding` resources **can be** used in conjunction with `gcp.dataproc.AutoscalingPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamPolicy
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
/// const policy = new gcp.dataproc.AutoscalingPolicyIamPolicy("policy", {
///     project: basic.project,
///     location: basic.location,
///     policyId: basic.policyId,
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
/// policy = gcp.dataproc.AutoscalingPolicyIamPolicy("policy",
///     project=basic["project"],
///     location=basic["location"],
///     policy_id=basic["policyId"],
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
///     var policy = new Gcp.Dataproc.AutoscalingPolicyIamPolicy("policy", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         PolicyId = basic.PolicyId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// 		_, err = dataproc.NewAutoscalingPolicyIamPolicy(ctx, "policy", &dataproc.AutoscalingPolicyIamPolicyArgs{
/// 			Project:    pulumi.Any(basic.Project),
/// 			Location:   pulumi.Any(basic.Location),
/// 			PolicyId:   pulumi.Any(basic.PolicyId),
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
/// resource "gcp_dataproc_autoscalingpolicyiampolicy" "policy" {
///   project     = basic.project
///   location    = basic.location
///   policy_id   = basic.policyId
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicy;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicyArgs;
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
///         var policy = new AutoscalingPolicyIamPolicy("policy", AutoscalingPolicyIamPolicyArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .policyId(basic.get("policyId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:AutoscalingPolicyIamPolicy
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       policyId: ${basic.policyId}
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
/// ## gcp.dataproc.AutoscalingPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.AutoscalingPolicyIamBinding("binding", {
///     project: basic.project,
///     location: basic.location,
///     policyId: basic.policyId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.AutoscalingPolicyIamBinding("binding",
///     project=basic["project"],
///     location=basic["location"],
///     policy_id=basic["policyId"],
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
///     var binding = new Gcp.Dataproc.AutoscalingPolicyIamBinding("binding", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         PolicyId = basic.PolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewAutoscalingPolicyIamBinding(ctx, "binding", &dataproc.AutoscalingPolicyIamBindingArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			PolicyId: pulumi.Any(basic.PolicyId),
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
/// resource "gcp_dataproc_autoscalingpolicyiambinding" "binding" {
///   project   = basic.project
///   location  = basic.location
///   policy_id = basic.policyId
///   role      = "roles/viewer"
///   members   = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBinding;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBindingArgs;
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
///         var binding = new AutoscalingPolicyIamBinding("binding", AutoscalingPolicyIamBindingArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .policyId(basic.get("policyId"))
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
///     type: gcp:dataproc:AutoscalingPolicyIamBinding
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       policyId: ${basic.policyId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.AutoscalingPolicyIamMember("member", {
///     project: basic.project,
///     location: basic.location,
///     policyId: basic.policyId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.AutoscalingPolicyIamMember("member",
///     project=basic["project"],
///     location=basic["location"],
///     policy_id=basic["policyId"],
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
///     var member = new Gcp.Dataproc.AutoscalingPolicyIamMember("member", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         PolicyId = basic.PolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewAutoscalingPolicyIamMember(ctx, "member", &dataproc.AutoscalingPolicyIamMemberArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			PolicyId: pulumi.Any(basic.PolicyId),
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
/// resource "gcp_dataproc_autoscalingpolicyiammember" "member" {
///   project   = basic.project
///   location  = basic.location
///   policy_id = basic.policyId
///   role      = "roles/viewer"
///   member    = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMember;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMemberArgs;
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
///         var member = new AutoscalingPolicyIamMember("member", AutoscalingPolicyIamMemberArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .policyId(basic.get("policyId"))
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
///     type: gcp:dataproc:AutoscalingPolicyIamMember
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       policyId: ${basic.policyId}
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
/// # IAM policy for Dataproc AutoscalingPolicy
///
/// Three different resources help you manage your IAM policy for Dataproc AutoscalingPolicy. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Authoritative. Sets the IAM policy for the autoscalingpolicy and replaces any existing policy already attached.
/// * `gcp.dataproc.AutoscalingPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the autoscalingpolicy are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataproc.AutoscalingPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the autoscalingpolicy are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Retrieves the IAM policy for the autoscalingpolicy
///
/// &gt; **Note:** `gcp.dataproc.AutoscalingPolicyIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.AutoscalingPolicyIamBinding` and `gcp.dataproc.AutoscalingPolicyIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataproc.AutoscalingPolicyIamBinding` resources **can be** used in conjunction with `gcp.dataproc.AutoscalingPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamPolicy
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
/// const policy = new gcp.dataproc.AutoscalingPolicyIamPolicy("policy", {
///     project: basic.project,
///     location: basic.location,
///     policyId: basic.policyId,
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
/// policy = gcp.dataproc.AutoscalingPolicyIamPolicy("policy",
///     project=basic["project"],
///     location=basic["location"],
///     policy_id=basic["policyId"],
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
///     var policy = new Gcp.Dataproc.AutoscalingPolicyIamPolicy("policy", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         PolicyId = basic.PolicyId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// 		_, err = dataproc.NewAutoscalingPolicyIamPolicy(ctx, "policy", &dataproc.AutoscalingPolicyIamPolicyArgs{
/// 			Project:    pulumi.Any(basic.Project),
/// 			Location:   pulumi.Any(basic.Location),
/// 			PolicyId:   pulumi.Any(basic.PolicyId),
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
/// resource "gcp_dataproc_autoscalingpolicyiampolicy" "policy" {
///   project     = basic.project
///   location    = basic.location
///   policy_id   = basic.policyId
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicy;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicyArgs;
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
///         var policy = new AutoscalingPolicyIamPolicy("policy", AutoscalingPolicyIamPolicyArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .policyId(basic.get("policyId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:AutoscalingPolicyIamPolicy
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       policyId: ${basic.policyId}
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
/// ## gcp.dataproc.AutoscalingPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.AutoscalingPolicyIamBinding("binding", {
///     project: basic.project,
///     location: basic.location,
///     policyId: basic.policyId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.AutoscalingPolicyIamBinding("binding",
///     project=basic["project"],
///     location=basic["location"],
///     policy_id=basic["policyId"],
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
///     var binding = new Gcp.Dataproc.AutoscalingPolicyIamBinding("binding", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         PolicyId = basic.PolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewAutoscalingPolicyIamBinding(ctx, "binding", &dataproc.AutoscalingPolicyIamBindingArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			PolicyId: pulumi.Any(basic.PolicyId),
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
/// resource "gcp_dataproc_autoscalingpolicyiambinding" "binding" {
///   project   = basic.project
///   location  = basic.location
///   policy_id = basic.policyId
///   role      = "roles/viewer"
///   members   = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBinding;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBindingArgs;
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
///         var binding = new AutoscalingPolicyIamBinding("binding", AutoscalingPolicyIamBindingArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .policyId(basic.get("policyId"))
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
///     type: gcp:dataproc:AutoscalingPolicyIamBinding
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       policyId: ${basic.policyId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.AutoscalingPolicyIamMember("member", {
///     project: basic.project,
///     location: basic.location,
///     policyId: basic.policyId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.AutoscalingPolicyIamMember("member",
///     project=basic["project"],
///     location=basic["location"],
///     policy_id=basic["policyId"],
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
///     var member = new Gcp.Dataproc.AutoscalingPolicyIamMember("member", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         PolicyId = basic.PolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewAutoscalingPolicyIamMember(ctx, "member", &dataproc.AutoscalingPolicyIamMemberArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			PolicyId: pulumi.Any(basic.PolicyId),
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
/// resource "gcp_dataproc_autoscalingpolicyiammember" "member" {
///   project   = basic.project
///   location  = basic.location
///   policy_id = basic.policyId
///   role      = "roles/viewer"
///   member    = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMember;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMemberArgs;
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
///         var member = new AutoscalingPolicyIamMember("member", AutoscalingPolicyIamMemberArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .policyId(basic.get("policyId"))
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
///     type: gcp:dataproc:AutoscalingPolicyIamMember
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       policyId: ${basic.policyId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
/// * {{project}}/{{location}}/{{policy_id}}
/// * {{location}}/{{policy_id}}
/// * {{policy_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc autoscalingpolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_dataproc_autoscaling_policy_iam_member.editor "projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_dataproc_autoscaling_policy_iam_binding.editor "projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicyIamBinding:AutoscalingPolicyIamBinding editor projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AutoscalingPolicyIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<AutoscalingPolicyIamBindingCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
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
  late final pulumi.Output<List<String>> members;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> policyId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.dataproc.AutoscalingPolicyIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [AutoscalingPolicyIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoscalingPolicyIamBinding]. {@macro pulumi_dataproc_autoscaling_policy_iam_binding_autoscaling_policy_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoscalingPolicyIamBinding(
    String name, {
    AutoscalingPolicyIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/autoscalingPolicyIamBinding:AutoscalingPolicyIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<AutoscalingPolicyIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AutoscalingPolicyIamBinding] resource's state with the given [name] and [id].
  static AutoscalingPolicyIamBinding get(
    String name,
    pulumi.Input<String> id, {
    AutoscalingPolicyIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutoscalingPolicyIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutoscalingPolicyIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/autoscalingPolicyIamBinding:AutoscalingPolicyIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AutoscalingPolicyIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AutoscalingPolicyIamBinding] resource.
  AutoscalingPolicyIamBinding.reference(String urn)
    : super(
        'gcp:dataproc/autoscalingPolicyIamBinding:AutoscalingPolicyIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<AutoscalingPolicyIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
