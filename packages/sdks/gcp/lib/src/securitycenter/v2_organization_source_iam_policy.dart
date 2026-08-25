import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_source_iam_policy_args.dart';
import 'v2_organization_source_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Security Command Center (SCC) v2 API OrganizationSource. Each of these resources serves a different use case:
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Authoritative. Sets the IAM policy for the organizationsource and replaces any existing policy already attached.
/// * `gcp.securitycenter.V2OrganizationSourceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organizationsource are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.securitycenter.V2OrganizationSourceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organizationsource are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Retrieves the IAM policy for the organizationsource
///
/// &gt; **Note:** `gcp.securitycenter.V2OrganizationSourceIamPolicy` **cannot** be used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamBinding` and `gcp.securitycenter.V2OrganizationSourceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.securitycenter.V2OrganizationSourceIamBinding` resources **can be** used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamPolicy
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
/// const policy = new gcp.securitycenter.V2OrganizationSourceIamPolicy("policy", {
///     source: customSource.name,
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
/// policy = gcp.securitycenter.V2OrganizationSourceIamPolicy("policy",
///     source=custom_source["name"],
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
///     var policy = new Gcp.SecurityCenter.V2OrganizationSourceIamPolicy("policy", new()
///     {
///         Source = customSource.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
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
/// 		_, err = securitycenter.NewV2OrganizationSourceIamPolicy(ctx, "policy", &securitycenter.V2OrganizationSourceIamPolicyArgs{
/// 			Source:     pulumi.Any(customSource.Name),
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
/// resource "gcp_securitycenter_v2organizationsourceiampolicy" "policy" {
///   source      = customSource.name
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicy;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicyArgs;
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
///         var policy = new V2OrganizationSourceIamPolicy("policy", V2OrganizationSourceIamPolicyArgs.builder()
///             .source(customSource.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:securitycenter:V2OrganizationSourceIamPolicy
///     properties:
///       source: ${customSource.name}
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
/// ## gcp.securitycenter.V2OrganizationSourceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securitycenter.V2OrganizationSourceIamBinding("binding", {
///     source: customSource.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securitycenter.V2OrganizationSourceIamBinding("binding",
///     source=custom_source["name"],
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
///     var binding = new Gcp.SecurityCenter.V2OrganizationSourceIamBinding("binding", new()
///     {
///         Source = customSource.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewV2OrganizationSourceIamBinding(ctx, "binding", &securitycenter.V2OrganizationSourceIamBindingArgs{
/// 			Source: pulumi.Any(customSource.Name),
/// 			Role:   pulumi.String("roles/viewer"),
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
/// resource "gcp_securitycenter_v2organizationsourceiambinding" "binding" {
///   source  = customSource.name
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBinding;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBindingArgs;
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
///         var binding = new V2OrganizationSourceIamBinding("binding", V2OrganizationSourceIamBindingArgs.builder()
///             .source(customSource.get("name"))
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
///     type: gcp:securitycenter:V2OrganizationSourceIamBinding
///     properties:
///       source: ${customSource.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securitycenter.V2OrganizationSourceIamMember("member", {
///     source: customSource.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securitycenter.V2OrganizationSourceIamMember("member",
///     source=custom_source["name"],
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
///     var member = new Gcp.SecurityCenter.V2OrganizationSourceIamMember("member", new()
///     {
///         Source = customSource.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewV2OrganizationSourceIamMember(ctx, "member", &securitycenter.V2OrganizationSourceIamMemberArgs{
/// 			Source: pulumi.Any(customSource.Name),
/// 			Role:   pulumi.String("roles/viewer"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// resource "gcp_securitycenter_v2organizationsourceiammember" "member" {
///   source = customSource.name
///   role   = "roles/viewer"
///   member = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMember;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMemberArgs;
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
///         var member = new V2OrganizationSourceIamMember("member", V2OrganizationSourceIamMemberArgs.builder()
///             .source(customSource.get("name"))
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
///     type: gcp:securitycenter:V2OrganizationSourceIamMember
///     properties:
///       source: ${customSource.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Security Command Center (SCC) v2 API OrganizationSource
///
/// Three different resources help you manage your IAM policy for Security Command Center (SCC) v2 API OrganizationSource. Each of these resources serves a different use case:
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Authoritative. Sets the IAM policy for the organizationsource and replaces any existing policy already attached.
/// * `gcp.securitycenter.V2OrganizationSourceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organizationsource are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.securitycenter.V2OrganizationSourceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organizationsource are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Retrieves the IAM policy for the organizationsource
///
/// &gt; **Note:** `gcp.securitycenter.V2OrganizationSourceIamPolicy` **cannot** be used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamBinding` and `gcp.securitycenter.V2OrganizationSourceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.securitycenter.V2OrganizationSourceIamBinding` resources **can be** used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamPolicy
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
/// const policy = new gcp.securitycenter.V2OrganizationSourceIamPolicy("policy", {
///     source: customSource.name,
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
/// policy = gcp.securitycenter.V2OrganizationSourceIamPolicy("policy",
///     source=custom_source["name"],
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
///     var policy = new Gcp.SecurityCenter.V2OrganizationSourceIamPolicy("policy", new()
///     {
///         Source = customSource.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
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
/// 		_, err = securitycenter.NewV2OrganizationSourceIamPolicy(ctx, "policy", &securitycenter.V2OrganizationSourceIamPolicyArgs{
/// 			Source:     pulumi.Any(customSource.Name),
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
/// resource "gcp_securitycenter_v2organizationsourceiampolicy" "policy" {
///   source      = customSource.name
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicy;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicyArgs;
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
///         var policy = new V2OrganizationSourceIamPolicy("policy", V2OrganizationSourceIamPolicyArgs.builder()
///             .source(customSource.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:securitycenter:V2OrganizationSourceIamPolicy
///     properties:
///       source: ${customSource.name}
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
/// ## gcp.securitycenter.V2OrganizationSourceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securitycenter.V2OrganizationSourceIamBinding("binding", {
///     source: customSource.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securitycenter.V2OrganizationSourceIamBinding("binding",
///     source=custom_source["name"],
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
///     var binding = new Gcp.SecurityCenter.V2OrganizationSourceIamBinding("binding", new()
///     {
///         Source = customSource.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewV2OrganizationSourceIamBinding(ctx, "binding", &securitycenter.V2OrganizationSourceIamBindingArgs{
/// 			Source: pulumi.Any(customSource.Name),
/// 			Role:   pulumi.String("roles/viewer"),
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
/// resource "gcp_securitycenter_v2organizationsourceiambinding" "binding" {
///   source  = customSource.name
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBinding;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBindingArgs;
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
///         var binding = new V2OrganizationSourceIamBinding("binding", V2OrganizationSourceIamBindingArgs.builder()
///             .source(customSource.get("name"))
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
///     type: gcp:securitycenter:V2OrganizationSourceIamBinding
///     properties:
///       source: ${customSource.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securitycenter.V2OrganizationSourceIamMember("member", {
///     source: customSource.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securitycenter.V2OrganizationSourceIamMember("member",
///     source=custom_source["name"],
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
///     var member = new Gcp.SecurityCenter.V2OrganizationSourceIamMember("member", new()
///     {
///         Source = customSource.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewV2OrganizationSourceIamMember(ctx, "member", &securitycenter.V2OrganizationSourceIamMemberArgs{
/// 			Source: pulumi.Any(customSource.Name),
/// 			Role:   pulumi.String("roles/viewer"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// resource "gcp_securitycenter_v2organizationsourceiammember" "member" {
///   source = customSource.name
///   role   = "roles/viewer"
///   member = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMember;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMemberArgs;
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
///         var member = new V2OrganizationSourceIamMember("member", V2OrganizationSourceIamMemberArgs.builder()
///             .source(customSource.get("name"))
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
///     type: gcp:securitycenter:V2OrganizationSourceIamMember
///     properties:
///       source: ${customSource.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * organizations/{{organization}}/sources/{{source}}
/// * {{organization}}/{{source}}
/// * {{source}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Security Command Center (SCC) v2 API organizationsource IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_scc_v2_organization_source_iam_member.editor "organizations/{{organization}}/sources/{{source}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_scc_v2_organization_source_iam_binding.editor "organizations/{{organization}}/sources/{{source}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy editor organizations/{{organization}}/sources/{{source}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class V2OrganizationSourceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> organization;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> source;

  /// Creates a new [V2OrganizationSourceIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2OrganizationSourceIamPolicy]. {@macro pulumi_securitycenter_v2_organization_source_iam_policy_v2_organization_source_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2OrganizationSourceIamPolicy(
    String name, {
    V2OrganizationSourceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    organization = registerOutput<String>('organization');
    policyData = registerOutput<String>('policyData');
    source = registerOutput<String>('source');
  }

  /// Gets an existing [V2OrganizationSourceIamPolicy] resource's state with the given [name] and [id].
  static V2OrganizationSourceIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    V2OrganizationSourceIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2OrganizationSourceIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2OrganizationSourceIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    organization = registerOutput<String>('organization');
    policyData = registerOutput<String>('policyData');
    source = registerOutput<String>('source');
  }

  /// Creates a typed reference to an existing [V2OrganizationSourceIamPolicy] resource.
  V2OrganizationSourceIamPolicy.reference(String urn)
    : super(
        'gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    organization = registerOutput<String>('organization');
    policyData = registerOutput<String>('policyData');
    source = registerOutput<String>('source');
  }
}
