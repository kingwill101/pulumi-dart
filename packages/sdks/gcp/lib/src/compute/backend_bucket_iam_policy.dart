import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_iam_policy_args.dart';
import 'backend_bucket_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Compute Engine BackendBucket. Each of these resources serves a different use case:
///
/// * `gcp.compute.BackendBucketIamPolicy`: Authoritative. Sets the IAM policy for the backendbucket and replaces any existing policy already attached.
/// * `gcp.compute.BackendBucketIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendbucket are preserved.
/// * `gcp.compute.BackendBucketIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendbucket are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.BackendBucketIamPolicy`: Retrieves the IAM policy for the backendbucket
///
/// > **Note:** `gcp.compute.BackendBucketIamPolicy` **cannot** be used in conjunction with `gcp.compute.BackendBucketIamBinding` and `gcp.compute.BackendBucketIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.BackendBucketIamBinding` resources **can be** used in conjunction with `gcp.compute.BackendBucketIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.BackendBucketIamPolicy
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
/// const policy = new gcp.compute.BackendBucketIamPolicy("policy", {
///     project: imageBackend.project,
///     name: imageBackend.name,
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
/// policy = gcp.compute.BackendBucketIamPolicy("policy",
///     project=image_backend["project"],
///     name=image_backend["name"],
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
///     var policy = new Gcp.Compute.BackendBucketIamPolicy("policy", new()
///     {
///         Project = imageBackend.Project,
///         Name = imageBackend.Name,
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
/// 		_, err = compute.NewBackendBucketIamPolicy(ctx, "policy", &compute.BackendBucketIamPolicyArgs{
/// 			Project:    pulumi.Any(imageBackend.Project),
/// 			Name:       pulumi.Any(imageBackend.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.compute.BackendBucketIamPolicy;
/// import com.pulumi.gcp.compute.BackendBucketIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var policy = new BackendBucketIamPolicy("policy", BackendBucketIamPolicyArgs.builder()
///             .project(imageBackend.project())
///             .name(imageBackend.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:BackendBucketIamPolicy
///     properties:
///       project: ${imageBackend.project}
///       name: ${imageBackend.name}
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
/// ## gcp.compute.BackendBucketIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.BackendBucketIamBinding("binding", {
///     project: imageBackend.project,
///     name: imageBackend.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.BackendBucketIamBinding("binding",
///     project=image_backend["project"],
///     name=image_backend["name"],
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
///     var binding = new Gcp.Compute.BackendBucketIamBinding("binding", new()
///     {
///         Project = imageBackend.Project,
///         Name = imageBackend.Name,
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
/// 		_, err := compute.NewBackendBucketIamBinding(ctx, "binding", &compute.BackendBucketIamBindingArgs{
/// 			Project: pulumi.Any(imageBackend.Project),
/// 			Name:    pulumi.Any(imageBackend.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.BackendBucketIamBinding;
/// import com.pulumi.gcp.compute.BackendBucketIamBindingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var binding = new BackendBucketIamBinding("binding", BackendBucketIamBindingArgs.builder()
///             .project(imageBackend.project())
///             .name(imageBackend.name())
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
///     type: gcp:compute:BackendBucketIamBinding
///     properties:
///       project: ${imageBackend.project}
///       name: ${imageBackend.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.compute.BackendBucketIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.BackendBucketIamMember("member", {
///     project: imageBackend.project,
///     name: imageBackend.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.BackendBucketIamMember("member",
///     project=image_backend["project"],
///     name=image_backend["name"],
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
///     var member = new Gcp.Compute.BackendBucketIamMember("member", new()
///     {
///         Project = imageBackend.Project,
///         Name = imageBackend.Name,
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
/// 		_, err := compute.NewBackendBucketIamMember(ctx, "member", &compute.BackendBucketIamMemberArgs{
/// 			Project: pulumi.Any(imageBackend.Project),
/// 			Name:    pulumi.Any(imageBackend.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.BackendBucketIamMember;
/// import com.pulumi.gcp.compute.BackendBucketIamMemberArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var member = new BackendBucketIamMember("member", BackendBucketIamMemberArgs.builder()
///             .project(imageBackend.project())
///             .name(imageBackend.name())
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
///     type: gcp:compute:BackendBucketIamMember
///     properties:
///       project: ${imageBackend.project}
///       name: ${imageBackend.name}
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
/// # IAM policy for Compute Engine BackendBucket
///
/// Three different resources help you manage your IAM policy for Compute Engine BackendBucket. Each of these resources serves a different use case:
///
/// * `gcp.compute.BackendBucketIamPolicy`: Authoritative. Sets the IAM policy for the backendbucket and replaces any existing policy already attached.
/// * `gcp.compute.BackendBucketIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendbucket are preserved.
/// * `gcp.compute.BackendBucketIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendbucket are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.BackendBucketIamPolicy`: Retrieves the IAM policy for the backendbucket
///
/// > **Note:** `gcp.compute.BackendBucketIamPolicy` **cannot** be used in conjunction with `gcp.compute.BackendBucketIamBinding` and `gcp.compute.BackendBucketIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.BackendBucketIamBinding` resources **can be** used in conjunction with `gcp.compute.BackendBucketIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.BackendBucketIamPolicy
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
/// const policy = new gcp.compute.BackendBucketIamPolicy("policy", {
///     project: imageBackend.project,
///     name: imageBackend.name,
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
/// policy = gcp.compute.BackendBucketIamPolicy("policy",
///     project=image_backend["project"],
///     name=image_backend["name"],
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
///     var policy = new Gcp.Compute.BackendBucketIamPolicy("policy", new()
///     {
///         Project = imageBackend.Project,
///         Name = imageBackend.Name,
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
/// 		_, err = compute.NewBackendBucketIamPolicy(ctx, "policy", &compute.BackendBucketIamPolicyArgs{
/// 			Project:    pulumi.Any(imageBackend.Project),
/// 			Name:       pulumi.Any(imageBackend.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.compute.BackendBucketIamPolicy;
/// import com.pulumi.gcp.compute.BackendBucketIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var policy = new BackendBucketIamPolicy("policy", BackendBucketIamPolicyArgs.builder()
///             .project(imageBackend.project())
///             .name(imageBackend.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:BackendBucketIamPolicy
///     properties:
///       project: ${imageBackend.project}
///       name: ${imageBackend.name}
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
/// ## gcp.compute.BackendBucketIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.BackendBucketIamBinding("binding", {
///     project: imageBackend.project,
///     name: imageBackend.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.BackendBucketIamBinding("binding",
///     project=image_backend["project"],
///     name=image_backend["name"],
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
///     var binding = new Gcp.Compute.BackendBucketIamBinding("binding", new()
///     {
///         Project = imageBackend.Project,
///         Name = imageBackend.Name,
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
/// 		_, err := compute.NewBackendBucketIamBinding(ctx, "binding", &compute.BackendBucketIamBindingArgs{
/// 			Project: pulumi.Any(imageBackend.Project),
/// 			Name:    pulumi.Any(imageBackend.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.BackendBucketIamBinding;
/// import com.pulumi.gcp.compute.BackendBucketIamBindingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var binding = new BackendBucketIamBinding("binding", BackendBucketIamBindingArgs.builder()
///             .project(imageBackend.project())
///             .name(imageBackend.name())
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
///     type: gcp:compute:BackendBucketIamBinding
///     properties:
///       project: ${imageBackend.project}
///       name: ${imageBackend.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.compute.BackendBucketIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.BackendBucketIamMember("member", {
///     project: imageBackend.project,
///     name: imageBackend.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.BackendBucketIamMember("member",
///     project=image_backend["project"],
///     name=image_backend["name"],
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
///     var member = new Gcp.Compute.BackendBucketIamMember("member", new()
///     {
///         Project = imageBackend.Project,
///         Name = imageBackend.Name,
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
/// 		_, err := compute.NewBackendBucketIamMember(ctx, "member", &compute.BackendBucketIamMemberArgs{
/// 			Project: pulumi.Any(imageBackend.Project),
/// 			Name:    pulumi.Any(imageBackend.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.BackendBucketIamMember;
/// import com.pulumi.gcp.compute.BackendBucketIamMemberArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var member = new BackendBucketIamMember("member", BackendBucketIamMemberArgs.builder()
///             .project(imageBackend.project())
///             .name(imageBackend.name())
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
///     type: gcp:compute:BackendBucketIamMember
///     properties:
///       project: ${imageBackend.project}
///       name: ${imageBackend.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/global/backendBuckets/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine backendbucket IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucketIamPolicy:BackendBucketIamPolicy editor "projects/{{project}}/global/backendBuckets/{{backend_bucket}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucketIamPolicy:BackendBucketIamPolicy editor "projects/{{project}}/global/backendBuckets/{{backend_bucket}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucketIamPolicy:BackendBucketIamPolicy editor projects/{{project}}/global/backendBuckets/{{backend_bucket}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class BackendBucketIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [BackendBucketIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendBucketIamPolicy]. {@macro pulumi_compute_backend_bucket_iam_policy_backend_bucket_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendBucketIamPolicy(
    String name, {
    BackendBucketIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucketIamPolicy:BackendBucketIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [BackendBucketIamPolicy] resource's state with the given [name] and [id].
  static BackendBucketIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackendBucketIamPolicyState? state,
  }) {
    return BackendBucketIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendBucketIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucketIamPolicy:BackendBucketIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
