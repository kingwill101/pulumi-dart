import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_iam_member_args.dart';
import 'network_firewall_policy_iam_member_condition.dart';
import 'network_firewall_policy_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Compute Engine NetworkFirewallPolicy. Each of these resources serves a different use case:
///
/// * `gcp.compute.NetworkFirewallPolicyIamPolicy`: Authoritative. Sets the IAM policy for the networkfirewallpolicy and replaces any existing policy already attached.
/// * `gcp.compute.NetworkFirewallPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the networkfirewallpolicy are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.compute.NetworkFirewallPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the networkfirewallpolicy are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.NetworkFirewallPolicyIamPolicy`: Retrieves the IAM policy for the networkfirewallpolicy
///
/// &gt; **Note:** `gcp.compute.NetworkFirewallPolicyIamPolicy` **cannot** be used in conjunction with `gcp.compute.NetworkFirewallPolicyIamBinding` and `gcp.compute.NetworkFirewallPolicyIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.compute.NetworkFirewallPolicyIamBinding` resources **can be** used in conjunction with `gcp.compute.NetworkFirewallPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.NetworkFirewallPolicyIamPolicy
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
/// const policy = new gcp.compute.NetworkFirewallPolicyIamPolicy("policy", {
///     project: policyGoogleComputeNetworkFirewallPolicy.project,
///     name: policyGoogleComputeNetworkFirewallPolicy.name,
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
/// policy = gcp.compute.NetworkFirewallPolicyIamPolicy("policy",
///     project=policy_google_compute_network_firewall_policy["project"],
///     name=policy_google_compute_network_firewall_policy["name"],
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
///     var policy = new Gcp.Compute.NetworkFirewallPolicyIamPolicy("policy", new()
///     {
///         Project = policyGoogleComputeNetworkFirewallPolicy.Project,
///         Name = policyGoogleComputeNetworkFirewallPolicy.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// 		_, err = compute.NewNetworkFirewallPolicyIamPolicy(ctx, "policy", &compute.NetworkFirewallPolicyIamPolicyArgs{
/// 			Project:    pulumi.Any(policyGoogleComputeNetworkFirewallPolicy.Project),
/// 			Name:       pulumi.Any(policyGoogleComputeNetworkFirewallPolicy.Name),
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
/// resource "gcp_compute_networkfirewallpolicyiampolicy" "policy" {
///   project     = policyGoogleComputeNetworkFirewallPolicy.project
///   name        = policyGoogleComputeNetworkFirewallPolicy.name
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
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamPolicyArgs;
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
///         var policy = new NetworkFirewallPolicyIamPolicy("policy", NetworkFirewallPolicyIamPolicyArgs.builder()
///             .project(policyGoogleComputeNetworkFirewallPolicy.get("project"))
///             .name(policyGoogleComputeNetworkFirewallPolicy.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:NetworkFirewallPolicyIamPolicy
///     properties:
///       project: ${policyGoogleComputeNetworkFirewallPolicy.project}
///       name: ${policyGoogleComputeNetworkFirewallPolicy.name}
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
/// ## gcp.compute.NetworkFirewallPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.NetworkFirewallPolicyIamBinding("binding", {
///     project: policy.project,
///     name: policy.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.NetworkFirewallPolicyIamBinding("binding",
///     project=policy["project"],
///     name=policy["name"],
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
///     var binding = new Gcp.Compute.NetworkFirewallPolicyIamBinding("binding", new()
///     {
///         Project = policy.Project,
///         Name = policy.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewNetworkFirewallPolicyIamBinding(ctx, "binding", &compute.NetworkFirewallPolicyIamBindingArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Name:    pulumi.Any(policy.Name),
/// 			Role:    pulumi.String("roles/viewer"),
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
/// resource "gcp_compute_networkfirewallpolicyiambinding" "binding" {
///   project = policy.project
///   name    = policy.name
///   role    = "roles/viewer"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamBinding;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamBindingArgs;
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
///         var binding = new NetworkFirewallPolicyIamBinding("binding", NetworkFirewallPolicyIamBindingArgs.builder()
///             .project(policy.get("project"))
///             .name(policy.get("name"))
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
///     type: gcp:compute:NetworkFirewallPolicyIamBinding
///     properties:
///       project: ${policy.project}
///       name: ${policy.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.compute.NetworkFirewallPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.NetworkFirewallPolicyIamMember("member", {
///     project: policy.project,
///     name: policy.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.NetworkFirewallPolicyIamMember("member",
///     project=policy["project"],
///     name=policy["name"],
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
///     var member = new Gcp.Compute.NetworkFirewallPolicyIamMember("member", new()
///     {
///         Project = policy.Project,
///         Name = policy.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewNetworkFirewallPolicyIamMember(ctx, "member", &compute.NetworkFirewallPolicyIamMemberArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Name:    pulumi.Any(policy.Name),
/// 			Role:    pulumi.String("roles/viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// resource "gcp_compute_networkfirewallpolicyiammember" "member" {
///   project = policy.project
///   name    = policy.name
///   role    = "roles/viewer"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamMember;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamMemberArgs;
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
///         var member = new NetworkFirewallPolicyIamMember("member", NetworkFirewallPolicyIamMemberArgs.builder()
///             .project(policy.get("project"))
///             .name(policy.get("name"))
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
///     type: gcp:compute:NetworkFirewallPolicyIamMember
///     properties:
///       project: ${policy.project}
///       name: ${policy.name}
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
/// # IAM policy for Compute Engine NetworkFirewallPolicy
///
/// Three different resources help you manage your IAM policy for Compute Engine NetworkFirewallPolicy. Each of these resources serves a different use case:
///
/// * `gcp.compute.NetworkFirewallPolicyIamPolicy`: Authoritative. Sets the IAM policy for the networkfirewallpolicy and replaces any existing policy already attached.
/// * `gcp.compute.NetworkFirewallPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the networkfirewallpolicy are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.compute.NetworkFirewallPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the networkfirewallpolicy are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.NetworkFirewallPolicyIamPolicy`: Retrieves the IAM policy for the networkfirewallpolicy
///
/// &gt; **Note:** `gcp.compute.NetworkFirewallPolicyIamPolicy` **cannot** be used in conjunction with `gcp.compute.NetworkFirewallPolicyIamBinding` and `gcp.compute.NetworkFirewallPolicyIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.compute.NetworkFirewallPolicyIamBinding` resources **can be** used in conjunction with `gcp.compute.NetworkFirewallPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.NetworkFirewallPolicyIamPolicy
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
/// const policy = new gcp.compute.NetworkFirewallPolicyIamPolicy("policy", {
///     project: policyGoogleComputeNetworkFirewallPolicy.project,
///     name: policyGoogleComputeNetworkFirewallPolicy.name,
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
/// policy = gcp.compute.NetworkFirewallPolicyIamPolicy("policy",
///     project=policy_google_compute_network_firewall_policy["project"],
///     name=policy_google_compute_network_firewall_policy["name"],
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
///     var policy = new Gcp.Compute.NetworkFirewallPolicyIamPolicy("policy", new()
///     {
///         Project = policyGoogleComputeNetworkFirewallPolicy.Project,
///         Name = policyGoogleComputeNetworkFirewallPolicy.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// 		_, err = compute.NewNetworkFirewallPolicyIamPolicy(ctx, "policy", &compute.NetworkFirewallPolicyIamPolicyArgs{
/// 			Project:    pulumi.Any(policyGoogleComputeNetworkFirewallPolicy.Project),
/// 			Name:       pulumi.Any(policyGoogleComputeNetworkFirewallPolicy.Name),
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
/// resource "gcp_compute_networkfirewallpolicyiampolicy" "policy" {
///   project     = policyGoogleComputeNetworkFirewallPolicy.project
///   name        = policyGoogleComputeNetworkFirewallPolicy.name
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
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamPolicyArgs;
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
///         var policy = new NetworkFirewallPolicyIamPolicy("policy", NetworkFirewallPolicyIamPolicyArgs.builder()
///             .project(policyGoogleComputeNetworkFirewallPolicy.get("project"))
///             .name(policyGoogleComputeNetworkFirewallPolicy.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:NetworkFirewallPolicyIamPolicy
///     properties:
///       project: ${policyGoogleComputeNetworkFirewallPolicy.project}
///       name: ${policyGoogleComputeNetworkFirewallPolicy.name}
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
/// ## gcp.compute.NetworkFirewallPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.NetworkFirewallPolicyIamBinding("binding", {
///     project: policy.project,
///     name: policy.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.NetworkFirewallPolicyIamBinding("binding",
///     project=policy["project"],
///     name=policy["name"],
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
///     var binding = new Gcp.Compute.NetworkFirewallPolicyIamBinding("binding", new()
///     {
///         Project = policy.Project,
///         Name = policy.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewNetworkFirewallPolicyIamBinding(ctx, "binding", &compute.NetworkFirewallPolicyIamBindingArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Name:    pulumi.Any(policy.Name),
/// 			Role:    pulumi.String("roles/viewer"),
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
/// resource "gcp_compute_networkfirewallpolicyiambinding" "binding" {
///   project = policy.project
///   name    = policy.name
///   role    = "roles/viewer"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamBinding;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamBindingArgs;
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
///         var binding = new NetworkFirewallPolicyIamBinding("binding", NetworkFirewallPolicyIamBindingArgs.builder()
///             .project(policy.get("project"))
///             .name(policy.get("name"))
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
///     type: gcp:compute:NetworkFirewallPolicyIamBinding
///     properties:
///       project: ${policy.project}
///       name: ${policy.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.compute.NetworkFirewallPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.NetworkFirewallPolicyIamMember("member", {
///     project: policy.project,
///     name: policy.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.NetworkFirewallPolicyIamMember("member",
///     project=policy["project"],
///     name=policy["name"],
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
///     var member = new Gcp.Compute.NetworkFirewallPolicyIamMember("member", new()
///     {
///         Project = policy.Project,
///         Name = policy.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewNetworkFirewallPolicyIamMember(ctx, "member", &compute.NetworkFirewallPolicyIamMemberArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Name:    pulumi.Any(policy.Name),
/// 			Role:    pulumi.String("roles/viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// resource "gcp_compute_networkfirewallpolicyiammember" "member" {
///   project = policy.project
///   name    = policy.name
///   role    = "roles/viewer"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamMember;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyIamMemberArgs;
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
///         var member = new NetworkFirewallPolicyIamMember("member", NetworkFirewallPolicyIamMemberArgs.builder()
///             .project(policy.get("project"))
///             .name(policy.get("name"))
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
///     type: gcp:compute:NetworkFirewallPolicyIamMember
///     properties:
///       project: ${policy.project}
///       name: ${policy.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/global/firewallPolicies/{{name}}
/// * {{project}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine networkfirewallpolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_compute_network_firewall_policy_iam_member.editor "projects/{{project}}/global/firewallPolicies/{{network_firewall_policy}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_compute_network_firewall_policy_iam_binding.editor "projects/{{project}}/global/firewallPolicies/{{network_firewall_policy}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyIamMember:NetworkFirewallPolicyIamMember editor projects/{{project}}/global/firewallPolicies/{{network_firewall_policy}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class NetworkFirewallPolicyIamMember extends pulumi.CustomResource {
  late final pulumi.Output<NetworkFirewallPolicyIamMemberCondition?> condition;
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
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.compute.NetworkFirewallPolicyIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [NetworkFirewallPolicyIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallPolicyIamMember]. {@macro pulumi_compute_network_firewall_policy_iam_member_network_firewall_policy_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallPolicyIamMember(
    String name, {
    NetworkFirewallPolicyIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyIamMember:NetworkFirewallPolicyIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<NetworkFirewallPolicyIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallPolicyIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [NetworkFirewallPolicyIamMember] resource's state with the given [name] and [id].
  static NetworkFirewallPolicyIamMember get(
    String name,
    pulumi.Input<String> id, {
    NetworkFirewallPolicyIamMemberState? state,
  }) {
    return NetworkFirewallPolicyIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkFirewallPolicyIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyIamMember:NetworkFirewallPolicyIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<NetworkFirewallPolicyIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallPolicyIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
