import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_iam_binding_args.dart';
import 'region_network_firewall_policy_iam_binding_condition.dart';
import 'region_network_firewall_policy_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Compute Engine RegionNetworkFirewallPolicy. Each of these resources serves a different use case:
///
/// * `gcp.compute.RegionNetworkFirewallPolicyIamPolicy`: Authoritative. Sets the IAM policy for the regionnetworkfirewallpolicy and replaces any existing policy already attached.
/// * `gcp.compute.RegionNetworkFirewallPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionnetworkfirewallpolicy are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.compute.RegionNetworkFirewallPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionnetworkfirewallpolicy are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.RegionNetworkFirewallPolicyIamPolicy`: Retrieves the IAM policy for the regionnetworkfirewallpolicy
///
/// &gt; **Note:** `gcp.compute.RegionNetworkFirewallPolicyIamPolicy` **cannot** be used in conjunction with `gcp.compute.RegionNetworkFirewallPolicyIamBinding` and `gcp.compute.RegionNetworkFirewallPolicyIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.compute.RegionNetworkFirewallPolicyIamBinding` resources **can be** used in conjunction with `gcp.compute.RegionNetworkFirewallPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.RegionNetworkFirewallPolicyIamPolicy
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
/// const policy = new gcp.compute.RegionNetworkFirewallPolicyIamPolicy("policy", {
///     project: policyGoogleComputeRegionNetworkFirewallPolicy.project,
///     region: policyGoogleComputeRegionNetworkFirewallPolicy.region,
///     name: policyGoogleComputeRegionNetworkFirewallPolicy.name,
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
/// policy = gcp.compute.RegionNetworkFirewallPolicyIamPolicy("policy",
///     project=policy_google_compute_region_network_firewall_policy["project"],
///     region=policy_google_compute_region_network_firewall_policy["region"],
///     name=policy_google_compute_region_network_firewall_policy["name"],
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
///     var policy = new Gcp.Compute.RegionNetworkFirewallPolicyIamPolicy("policy", new()
///     {
///         Project = policyGoogleComputeRegionNetworkFirewallPolicy.Project,
///         Region = policyGoogleComputeRegionNetworkFirewallPolicy.Region,
///         Name = policyGoogleComputeRegionNetworkFirewallPolicy.Name,
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
/// 		_, err = compute.NewRegionNetworkFirewallPolicyIamPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyIamPolicyArgs{
/// 			Project:    pulumi.Any(policyGoogleComputeRegionNetworkFirewallPolicy.Project),
/// 			Region:     pulumi.Any(policyGoogleComputeRegionNetworkFirewallPolicy.Region),
/// 			Name:       pulumi.Any(policyGoogleComputeRegionNetworkFirewallPolicy.Name),
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
/// resource "gcp_compute_regionnetworkfirewallpolicyiampolicy" "policy" {
///   project     = policyGoogleComputeRegionNetworkFirewallPolicy.project
///   region      = policyGoogleComputeRegionNetworkFirewallPolicy.region
///   name        = policyGoogleComputeRegionNetworkFirewallPolicy.name
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamPolicyArgs;
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
///         var policy = new RegionNetworkFirewallPolicyIamPolicy("policy", RegionNetworkFirewallPolicyIamPolicyArgs.builder()
///             .project(policyGoogleComputeRegionNetworkFirewallPolicy.get("project"))
///             .region(policyGoogleComputeRegionNetworkFirewallPolicy.get("region"))
///             .name(policyGoogleComputeRegionNetworkFirewallPolicy.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkFirewallPolicyIamPolicy
///     properties:
///       project: ${policyGoogleComputeRegionNetworkFirewallPolicy.project}
///       region: ${policyGoogleComputeRegionNetworkFirewallPolicy.region}
///       name: ${policyGoogleComputeRegionNetworkFirewallPolicy.name}
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
/// ## gcp.compute.RegionNetworkFirewallPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.RegionNetworkFirewallPolicyIamBinding("binding", {
///     project: policy.project,
///     region: policy.region,
///     name: policy.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.RegionNetworkFirewallPolicyIamBinding("binding",
///     project=policy["project"],
///     region=policy["region"],
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
///     var binding = new Gcp.Compute.RegionNetworkFirewallPolicyIamBinding("binding", new()
///     {
///         Project = policy.Project,
///         Region = policy.Region,
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
/// 		_, err := compute.NewRegionNetworkFirewallPolicyIamBinding(ctx, "binding", &compute.RegionNetworkFirewallPolicyIamBindingArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Region:  pulumi.Any(policy.Region),
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
/// resource "gcp_compute_regionnetworkfirewallpolicyiambinding" "binding" {
///   project = policy.project
///   region  = policy.region
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamBinding;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamBindingArgs;
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
///         var binding = new RegionNetworkFirewallPolicyIamBinding("binding", RegionNetworkFirewallPolicyIamBindingArgs.builder()
///             .project(policy.get("project"))
///             .region(policy.get("region"))
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
///     type: gcp:compute:RegionNetworkFirewallPolicyIamBinding
///     properties:
///       project: ${policy.project}
///       region: ${policy.region}
///       name: ${policy.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.compute.RegionNetworkFirewallPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.RegionNetworkFirewallPolicyIamMember("member", {
///     project: policy.project,
///     region: policy.region,
///     name: policy.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.RegionNetworkFirewallPolicyIamMember("member",
///     project=policy["project"],
///     region=policy["region"],
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
///     var member = new Gcp.Compute.RegionNetworkFirewallPolicyIamMember("member", new()
///     {
///         Project = policy.Project,
///         Region = policy.Region,
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
/// 		_, err := compute.NewRegionNetworkFirewallPolicyIamMember(ctx, "member", &compute.RegionNetworkFirewallPolicyIamMemberArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Region:  pulumi.Any(policy.Region),
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
/// resource "gcp_compute_regionnetworkfirewallpolicyiammember" "member" {
///   project = policy.project
///   region  = policy.region
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamMember;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamMemberArgs;
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
///         var member = new RegionNetworkFirewallPolicyIamMember("member", RegionNetworkFirewallPolicyIamMemberArgs.builder()
///             .project(policy.get("project"))
///             .region(policy.get("region"))
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
///     type: gcp:compute:RegionNetworkFirewallPolicyIamMember
///     properties:
///       project: ${policy.project}
///       region: ${policy.region}
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
/// # IAM policy for Compute Engine RegionNetworkFirewallPolicy
///
/// Three different resources help you manage your IAM policy for Compute Engine RegionNetworkFirewallPolicy. Each of these resources serves a different use case:
///
/// * `gcp.compute.RegionNetworkFirewallPolicyIamPolicy`: Authoritative. Sets the IAM policy for the regionnetworkfirewallpolicy and replaces any existing policy already attached.
/// * `gcp.compute.RegionNetworkFirewallPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionnetworkfirewallpolicy are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.compute.RegionNetworkFirewallPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionnetworkfirewallpolicy are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.RegionNetworkFirewallPolicyIamPolicy`: Retrieves the IAM policy for the regionnetworkfirewallpolicy
///
/// &gt; **Note:** `gcp.compute.RegionNetworkFirewallPolicyIamPolicy` **cannot** be used in conjunction with `gcp.compute.RegionNetworkFirewallPolicyIamBinding` and `gcp.compute.RegionNetworkFirewallPolicyIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.compute.RegionNetworkFirewallPolicyIamBinding` resources **can be** used in conjunction with `gcp.compute.RegionNetworkFirewallPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.RegionNetworkFirewallPolicyIamPolicy
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
/// const policy = new gcp.compute.RegionNetworkFirewallPolicyIamPolicy("policy", {
///     project: policyGoogleComputeRegionNetworkFirewallPolicy.project,
///     region: policyGoogleComputeRegionNetworkFirewallPolicy.region,
///     name: policyGoogleComputeRegionNetworkFirewallPolicy.name,
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
/// policy = gcp.compute.RegionNetworkFirewallPolicyIamPolicy("policy",
///     project=policy_google_compute_region_network_firewall_policy["project"],
///     region=policy_google_compute_region_network_firewall_policy["region"],
///     name=policy_google_compute_region_network_firewall_policy["name"],
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
///     var policy = new Gcp.Compute.RegionNetworkFirewallPolicyIamPolicy("policy", new()
///     {
///         Project = policyGoogleComputeRegionNetworkFirewallPolicy.Project,
///         Region = policyGoogleComputeRegionNetworkFirewallPolicy.Region,
///         Name = policyGoogleComputeRegionNetworkFirewallPolicy.Name,
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
/// 		_, err = compute.NewRegionNetworkFirewallPolicyIamPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyIamPolicyArgs{
/// 			Project:    pulumi.Any(policyGoogleComputeRegionNetworkFirewallPolicy.Project),
/// 			Region:     pulumi.Any(policyGoogleComputeRegionNetworkFirewallPolicy.Region),
/// 			Name:       pulumi.Any(policyGoogleComputeRegionNetworkFirewallPolicy.Name),
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
/// resource "gcp_compute_regionnetworkfirewallpolicyiampolicy" "policy" {
///   project     = policyGoogleComputeRegionNetworkFirewallPolicy.project
///   region      = policyGoogleComputeRegionNetworkFirewallPolicy.region
///   name        = policyGoogleComputeRegionNetworkFirewallPolicy.name
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamPolicyArgs;
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
///         var policy = new RegionNetworkFirewallPolicyIamPolicy("policy", RegionNetworkFirewallPolicyIamPolicyArgs.builder()
///             .project(policyGoogleComputeRegionNetworkFirewallPolicy.get("project"))
///             .region(policyGoogleComputeRegionNetworkFirewallPolicy.get("region"))
///             .name(policyGoogleComputeRegionNetworkFirewallPolicy.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkFirewallPolicyIamPolicy
///     properties:
///       project: ${policyGoogleComputeRegionNetworkFirewallPolicy.project}
///       region: ${policyGoogleComputeRegionNetworkFirewallPolicy.region}
///       name: ${policyGoogleComputeRegionNetworkFirewallPolicy.name}
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
/// ## gcp.compute.RegionNetworkFirewallPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.RegionNetworkFirewallPolicyIamBinding("binding", {
///     project: policy.project,
///     region: policy.region,
///     name: policy.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.RegionNetworkFirewallPolicyIamBinding("binding",
///     project=policy["project"],
///     region=policy["region"],
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
///     var binding = new Gcp.Compute.RegionNetworkFirewallPolicyIamBinding("binding", new()
///     {
///         Project = policy.Project,
///         Region = policy.Region,
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
/// 		_, err := compute.NewRegionNetworkFirewallPolicyIamBinding(ctx, "binding", &compute.RegionNetworkFirewallPolicyIamBindingArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Region:  pulumi.Any(policy.Region),
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
/// resource "gcp_compute_regionnetworkfirewallpolicyiambinding" "binding" {
///   project = policy.project
///   region  = policy.region
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamBinding;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamBindingArgs;
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
///         var binding = new RegionNetworkFirewallPolicyIamBinding("binding", RegionNetworkFirewallPolicyIamBindingArgs.builder()
///             .project(policy.get("project"))
///             .region(policy.get("region"))
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
///     type: gcp:compute:RegionNetworkFirewallPolicyIamBinding
///     properties:
///       project: ${policy.project}
///       region: ${policy.region}
///       name: ${policy.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.compute.RegionNetworkFirewallPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.RegionNetworkFirewallPolicyIamMember("member", {
///     project: policy.project,
///     region: policy.region,
///     name: policy.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.RegionNetworkFirewallPolicyIamMember("member",
///     project=policy["project"],
///     region=policy["region"],
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
///     var member = new Gcp.Compute.RegionNetworkFirewallPolicyIamMember("member", new()
///     {
///         Project = policy.Project,
///         Region = policy.Region,
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
/// 		_, err := compute.NewRegionNetworkFirewallPolicyIamMember(ctx, "member", &compute.RegionNetworkFirewallPolicyIamMemberArgs{
/// 			Project: pulumi.Any(policy.Project),
/// 			Region:  pulumi.Any(policy.Region),
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
/// resource "gcp_compute_regionnetworkfirewallpolicyiammember" "member" {
///   project = policy.project
///   region  = policy.region
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamMember;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyIamMemberArgs;
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
///         var member = new RegionNetworkFirewallPolicyIamMember("member", RegionNetworkFirewallPolicyIamMemberArgs.builder()
///             .project(policy.get("project"))
///             .region(policy.get("region"))
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
///     type: gcp:compute:RegionNetworkFirewallPolicyIamMember
///     properties:
///       project: ${policy.project}
///       region: ${policy.region}
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
/// * projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}
/// * {{project}}/{{region}}/{{name}}
/// * {{region}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine regionnetworkfirewallpolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_compute_region_network_firewall_policy_iam_member.editor "projects/{{project}}/regions/{{region}}/firewallPolicies/{{region_network_firewall_policy}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_compute_region_network_firewall_policy_iam_binding.editor "projects/{{project}}/regions/{{region}}/firewallPolicies/{{region_network_firewall_policy}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyIamBinding:RegionNetworkFirewallPolicyIamBinding editor projects/{{project}}/regions/{{region}}/firewallPolicies/{{region_network_firewall_policy}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RegionNetworkFirewallPolicyIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<RegionNetworkFirewallPolicyIamBindingCondition?> condition;
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
  late final pulumi.Output<List<String>> members;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of this resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;
  /// The role that should be applied. Only one
  /// `gcp.compute.RegionNetworkFirewallPolicyIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [RegionNetworkFirewallPolicyIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkFirewallPolicyIamBinding]. {@macro pulumi_compute_region_network_firewall_policy_iam_binding_region_network_firewall_policy_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkFirewallPolicyIamBinding(
    String name, {
    RegionNetworkFirewallPolicyIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyIamBinding:RegionNetworkFirewallPolicyIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    condition = registerOutput<RegionNetworkFirewallPolicyIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkFirewallPolicyIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [RegionNetworkFirewallPolicyIamBinding] resource's state with the given [name] and [id].
  static RegionNetworkFirewallPolicyIamBinding get(
    String name,
    pulumi.Input<String> id, {
    RegionNetworkFirewallPolicyIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionNetworkFirewallPolicyIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionNetworkFirewallPolicyIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyIamBinding:RegionNetworkFirewallPolicyIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<RegionNetworkFirewallPolicyIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkFirewallPolicyIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [RegionNetworkFirewallPolicyIamBinding] resource.
  RegionNetworkFirewallPolicyIamBinding.reference(String urn)
    : super(
        'gcp:compute/regionNetworkFirewallPolicyIamBinding:RegionNetworkFirewallPolicyIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<RegionNetworkFirewallPolicyIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkFirewallPolicyIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }
}
