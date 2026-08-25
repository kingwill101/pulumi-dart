import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_iam_binding_args.dart';
import 'hub_iam_binding_condition.dart';
import 'hub_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Network Connectivity Hub. Each of these resources serves a different use case:
///
/// * `gcp.networkconnectivity.HubIamPolicy`: Authoritative. Sets the IAM policy for the hub and replaces any existing policy already attached.
/// * `gcp.networkconnectivity.HubIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the hub are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.networkconnectivity.HubIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the hub are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.networkconnectivity.HubIamPolicy`: Retrieves the IAM policy for the hub
///
/// &gt; **Note:** `gcp.networkconnectivity.HubIamPolicy` **cannot** be used in conjunction with `gcp.networkconnectivity.HubIamBinding` and `gcp.networkconnectivity.HubIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.networkconnectivity.HubIamBinding` resources **can be** used in conjunction with `gcp.networkconnectivity.HubIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.networkconnectivity.HubIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/networkconnectivity.hubViewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.networkconnectivity.HubIamPolicy("policy", {
///     project: primary.project,
///     hub: primary.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/networkconnectivity.hubViewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.networkconnectivity.HubIamPolicy("policy",
///     project=primary["project"],
///     hub=primary["name"],
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
///                 Role = "roles/networkconnectivity.hubViewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.NetworkConnectivity.HubIamPolicy("policy", new()
///     {
///         Project = primary.Project,
///         Hub = primary.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/networkconnectivity.hubViewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewHubIamPolicy(ctx, "policy", &networkconnectivity.HubIamPolicyArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Hub:        pulumi.Any(primary.Name),
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
///     role    = "roles/networkconnectivity.hubViewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_networkconnectivity_hubiampolicy" "policy" {
///   project     = primary.project
///   hub         = primary.name
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
/// import com.pulumi.gcp.networkconnectivity.HubIamPolicy;
/// import com.pulumi.gcp.networkconnectivity.HubIamPolicyArgs;
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
///                 .role("roles/networkconnectivity.hubViewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new HubIamPolicy("policy", HubIamPolicyArgs.builder()
///             .project(primary.get("project"))
///             .hub(primary.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:networkconnectivity:HubIamPolicy
///     properties:
///       project: ${primary.project}
///       hub: ${primary.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/networkconnectivity.hubViewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.networkconnectivity.HubIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.networkconnectivity.HubIamBinding("binding", {
///     project: primary.project,
///     hub: primary.name,
///     role: "roles/networkconnectivity.hubViewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.networkconnectivity.HubIamBinding("binding",
///     project=primary["project"],
///     hub=primary["name"],
///     role="roles/networkconnectivity.hubViewer",
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
///     var binding = new Gcp.NetworkConnectivity.HubIamBinding("binding", new()
///     {
///         Project = primary.Project,
///         Hub = primary.Name,
///         Role = "roles/networkconnectivity.hubViewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHubIamBinding(ctx, "binding", &networkconnectivity.HubIamBindingArgs{
/// 			Project: pulumi.Any(primary.Project),
/// 			Hub:     pulumi.Any(primary.Name),
/// 			Role:    pulumi.String("roles/networkconnectivity.hubViewer"),
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
/// resource "gcp_networkconnectivity_hubiambinding" "binding" {
///   project = primary.project
///   hub     = primary.name
///   role    = "roles/networkconnectivity.hubViewer"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkconnectivity.HubIamBinding;
/// import com.pulumi.gcp.networkconnectivity.HubIamBindingArgs;
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
///         var binding = new HubIamBinding("binding", HubIamBindingArgs.builder()
///             .project(primary.get("project"))
///             .hub(primary.get("name"))
///             .role("roles/networkconnectivity.hubViewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:networkconnectivity:HubIamBinding
///     properties:
///       project: ${primary.project}
///       hub: ${primary.name}
///       role: roles/networkconnectivity.hubViewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.networkconnectivity.HubIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.networkconnectivity.HubIamMember("member", {
///     project: primary.project,
///     hub: primary.name,
///     role: "roles/networkconnectivity.hubViewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.networkconnectivity.HubIamMember("member",
///     project=primary["project"],
///     hub=primary["name"],
///     role="roles/networkconnectivity.hubViewer",
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
///     var member = new Gcp.NetworkConnectivity.HubIamMember("member", new()
///     {
///         Project = primary.Project,
///         Hub = primary.Name,
///         Role = "roles/networkconnectivity.hubViewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHubIamMember(ctx, "member", &networkconnectivity.HubIamMemberArgs{
/// 			Project: pulumi.Any(primary.Project),
/// 			Hub:     pulumi.Any(primary.Name),
/// 			Role:    pulumi.String("roles/networkconnectivity.hubViewer"),
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
/// resource "gcp_networkconnectivity_hubiammember" "member" {
///   project = primary.project
///   hub     = primary.name
///   role    = "roles/networkconnectivity.hubViewer"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkconnectivity.HubIamMember;
/// import com.pulumi.gcp.networkconnectivity.HubIamMemberArgs;
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
///         var member = new HubIamMember("member", HubIamMemberArgs.builder()
///             .project(primary.get("project"))
///             .hub(primary.get("name"))
///             .role("roles/networkconnectivity.hubViewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:networkconnectivity:HubIamMember
///     properties:
///       project: ${primary.project}
///       hub: ${primary.name}
///       role: roles/networkconnectivity.hubViewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Network Connectivity Hub
///
/// Three different resources help you manage your IAM policy for Network Connectivity Hub. Each of these resources serves a different use case:
///
/// * `gcp.networkconnectivity.HubIamPolicy`: Authoritative. Sets the IAM policy for the hub and replaces any existing policy already attached.
/// * `gcp.networkconnectivity.HubIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the hub are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.networkconnectivity.HubIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the hub are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.networkconnectivity.HubIamPolicy`: Retrieves the IAM policy for the hub
///
/// &gt; **Note:** `gcp.networkconnectivity.HubIamPolicy` **cannot** be used in conjunction with `gcp.networkconnectivity.HubIamBinding` and `gcp.networkconnectivity.HubIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.networkconnectivity.HubIamBinding` resources **can be** used in conjunction with `gcp.networkconnectivity.HubIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.networkconnectivity.HubIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/networkconnectivity.hubViewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.networkconnectivity.HubIamPolicy("policy", {
///     project: primary.project,
///     hub: primary.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/networkconnectivity.hubViewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.networkconnectivity.HubIamPolicy("policy",
///     project=primary["project"],
///     hub=primary["name"],
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
///                 Role = "roles/networkconnectivity.hubViewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.NetworkConnectivity.HubIamPolicy("policy", new()
///     {
///         Project = primary.Project,
///         Hub = primary.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/networkconnectivity.hubViewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewHubIamPolicy(ctx, "policy", &networkconnectivity.HubIamPolicyArgs{
/// 			Project:    pulumi.Any(primary.Project),
/// 			Hub:        pulumi.Any(primary.Name),
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
///     role    = "roles/networkconnectivity.hubViewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_networkconnectivity_hubiampolicy" "policy" {
///   project     = primary.project
///   hub         = primary.name
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
/// import com.pulumi.gcp.networkconnectivity.HubIamPolicy;
/// import com.pulumi.gcp.networkconnectivity.HubIamPolicyArgs;
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
///                 .role("roles/networkconnectivity.hubViewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new HubIamPolicy("policy", HubIamPolicyArgs.builder()
///             .project(primary.get("project"))
///             .hub(primary.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:networkconnectivity:HubIamPolicy
///     properties:
///       project: ${primary.project}
///       hub: ${primary.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/networkconnectivity.hubViewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.networkconnectivity.HubIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.networkconnectivity.HubIamBinding("binding", {
///     project: primary.project,
///     hub: primary.name,
///     role: "roles/networkconnectivity.hubViewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.networkconnectivity.HubIamBinding("binding",
///     project=primary["project"],
///     hub=primary["name"],
///     role="roles/networkconnectivity.hubViewer",
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
///     var binding = new Gcp.NetworkConnectivity.HubIamBinding("binding", new()
///     {
///         Project = primary.Project,
///         Hub = primary.Name,
///         Role = "roles/networkconnectivity.hubViewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHubIamBinding(ctx, "binding", &networkconnectivity.HubIamBindingArgs{
/// 			Project: pulumi.Any(primary.Project),
/// 			Hub:     pulumi.Any(primary.Name),
/// 			Role:    pulumi.String("roles/networkconnectivity.hubViewer"),
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
/// resource "gcp_networkconnectivity_hubiambinding" "binding" {
///   project = primary.project
///   hub     = primary.name
///   role    = "roles/networkconnectivity.hubViewer"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkconnectivity.HubIamBinding;
/// import com.pulumi.gcp.networkconnectivity.HubIamBindingArgs;
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
///         var binding = new HubIamBinding("binding", HubIamBindingArgs.builder()
///             .project(primary.get("project"))
///             .hub(primary.get("name"))
///             .role("roles/networkconnectivity.hubViewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:networkconnectivity:HubIamBinding
///     properties:
///       project: ${primary.project}
///       hub: ${primary.name}
///       role: roles/networkconnectivity.hubViewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.networkconnectivity.HubIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.networkconnectivity.HubIamMember("member", {
///     project: primary.project,
///     hub: primary.name,
///     role: "roles/networkconnectivity.hubViewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.networkconnectivity.HubIamMember("member",
///     project=primary["project"],
///     hub=primary["name"],
///     role="roles/networkconnectivity.hubViewer",
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
///     var member = new Gcp.NetworkConnectivity.HubIamMember("member", new()
///     {
///         Project = primary.Project,
///         Hub = primary.Name,
///         Role = "roles/networkconnectivity.hubViewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHubIamMember(ctx, "member", &networkconnectivity.HubIamMemberArgs{
/// 			Project: pulumi.Any(primary.Project),
/// 			Hub:     pulumi.Any(primary.Name),
/// 			Role:    pulumi.String("roles/networkconnectivity.hubViewer"),
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
/// resource "gcp_networkconnectivity_hubiammember" "member" {
///   project = primary.project
///   hub     = primary.name
///   role    = "roles/networkconnectivity.hubViewer"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkconnectivity.HubIamMember;
/// import com.pulumi.gcp.networkconnectivity.HubIamMemberArgs;
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
///         var member = new HubIamMember("member", HubIamMemberArgs.builder()
///             .project(primary.get("project"))
///             .hub(primary.get("name"))
///             .role("roles/networkconnectivity.hubViewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:networkconnectivity:HubIamMember
///     properties:
///       project: ${primary.project}
///       hub: ${primary.name}
///       role: roles/networkconnectivity.hubViewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/global/hubs/{{name}}
/// * {{project}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Network Connectivity hub IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_network_connectivity_hub_iam_member.editor "projects/{{project}}/locations/global/hubs/{{hub}} roles/networkconnectivity.hubViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_network_connectivity_hub_iam_binding.editor "projects/{{project}}/locations/global/hubs/{{hub}} roles/networkconnectivity.hubViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:networkconnectivity/hubIamBinding:HubIamBinding editor projects/{{project}}/locations/global/hubs/{{hub}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class HubIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<HubIamBindingCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> hub;
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
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.networkconnectivity.HubIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [HubIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HubIamBinding]. {@macro pulumi_networkconnectivity_hub_iam_binding_hub_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HubIamBinding(
    String name, {
    HubIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/hubIamBinding:HubIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<HubIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    hub = registerOutput<String>('hub');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [HubIamBinding] resource's state with the given [name] and [id].
  static HubIamBinding get(
    String name,
    pulumi.Input<String> id, {
    HubIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HubIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HubIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/hubIamBinding:HubIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<HubIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    hub = registerOutput<String>('hub');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [HubIamBinding] resource.
  HubIamBinding.reference(String urn)
    : super(
        'gcp:networkconnectivity/hubIamBinding:HubIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<HubIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    hub = registerOutput<String>('hub');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
