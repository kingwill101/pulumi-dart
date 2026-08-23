import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_args.dart';
import 'instance_iam_binding_condition.dart';
import 'instance_iam_binding_state.dart';

/// Three different resources help you manage IAM policies on bigtable instances. Each of these resources serves a different use case:
///
/// * `gcp.bigtable.InstanceIamPolicy`: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * `gcp.bigtable.InstanceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * `gcp.bigtable.InstanceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// &gt; **Note:** `gcp.bigtable.InstanceIamPolicy` **cannot** be used in conjunction with `gcp.bigtable.InstanceIamBinding` and `gcp.bigtable.InstanceIamMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the instance as `gcp.bigtable.InstanceIamPolicy` replaces the entire policy.
///
/// &gt; **Note:** `gcp.bigtable.InstanceIamBinding` resources **can be** used in conjunction with `gcp.bigtable.InstanceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.bigtable.InstanceIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigtable.user",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.bigtable.InstanceIamPolicy("editor", {
///     project: "your-project",
///     instance: "your-bigtable-instance",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigtable.user",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.bigtable.InstanceIamPolicy("editor",
///     project="your-project",
///     instance="your-bigtable-instance",
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
///                 Role = "roles/bigtable.user",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.BigTable.InstanceIamPolicy("editor", new()
///     {
///         Project = "your-project",
///         Instance = "your-bigtable-instance",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigtable.user",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewInstanceIamPolicy(ctx, "editor", &bigtable.InstanceIamPolicyArgs{
/// 			Project:    pulumi.String("your-project"),
/// 			Instance:   pulumi.String("your-bigtable-instance"),
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
///     role    = "roles/bigtable.user"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_bigtable_instanceiampolicy" "editor" {
///   project     = "your-project"
///   instance    = "your-bigtable-instance"
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
/// import com.pulumi.gcp.bigtable.InstanceIamPolicy;
/// import com.pulumi.gcp.bigtable.InstanceIamPolicyArgs;
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
///                 .role("roles/bigtable.user")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new InstanceIamPolicy("editor", InstanceIamPolicyArgs.builder()
///             .project("your-project")
///             .instance("your-bigtable-instance")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:InstanceIamPolicy
///     properties:
///       project: your-project
///       instance: your-bigtable-instance
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigtable.user
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.InstanceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamBinding("editor", {
///     instance: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamBinding("editor",
///     instance="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.InstanceIamBinding("editor", new()
///     {
///         Instance = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewInstanceIamBinding(ctx, "editor", &bigtable.InstanceIamBindingArgs{
/// 			Instance: pulumi.String("your-bigtable-instance"),
/// 			Role:     pulumi.String("roles/bigtable.user"),
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
/// resource "gcp_bigtable_instanceiambinding" "editor" {
///   instance = "your-bigtable-instance"
///   role     = "roles/bigtable.user"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.InstanceIamBinding;
/// import com.pulumi.gcp.bigtable.InstanceIamBindingArgs;
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
///         var editor = new InstanceIamBinding("editor", InstanceIamBindingArgs.builder()
///             .instance("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:InstanceIamBinding
///     properties:
///       instance: your-bigtable-instance
///       role: roles/bigtable.user
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.InstanceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamMember("editor", {
///     instance: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamMember("editor",
///     instance="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.InstanceIamMember("editor", new()
///     {
///         Instance = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewInstanceIamMember(ctx, "editor", &bigtable.InstanceIamMemberArgs{
/// 			Instance: pulumi.String("your-bigtable-instance"),
/// 			Role:     pulumi.String("roles/bigtable.user"),
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
/// resource "gcp_bigtable_instanceiammember" "editor" {
///   instance = "your-bigtable-instance"
///   role     = "roles/bigtable.user"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.InstanceIamMember;
/// import com.pulumi.gcp.bigtable.InstanceIamMemberArgs;
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
///         var editor = new InstanceIamMember("editor", InstanceIamMemberArgs.builder()
///             .instance("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:InstanceIamMember
///     properties:
///       instance: your-bigtable-instance
///       role: roles/bigtable.user
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.InstanceIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigtable.user",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.bigtable.InstanceIamPolicy("editor", {
///     project: "your-project",
///     instance: "your-bigtable-instance",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigtable.user",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.bigtable.InstanceIamPolicy("editor",
///     project="your-project",
///     instance="your-bigtable-instance",
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
///                 Role = "roles/bigtable.user",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.BigTable.InstanceIamPolicy("editor", new()
///     {
///         Project = "your-project",
///         Instance = "your-bigtable-instance",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigtable.user",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewInstanceIamPolicy(ctx, "editor", &bigtable.InstanceIamPolicyArgs{
/// 			Project:    pulumi.String("your-project"),
/// 			Instance:   pulumi.String("your-bigtable-instance"),
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
///     role    = "roles/bigtable.user"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_bigtable_instanceiampolicy" "editor" {
///   project     = "your-project"
///   instance    = "your-bigtable-instance"
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
/// import com.pulumi.gcp.bigtable.InstanceIamPolicy;
/// import com.pulumi.gcp.bigtable.InstanceIamPolicyArgs;
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
///                 .role("roles/bigtable.user")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new InstanceIamPolicy("editor", InstanceIamPolicyArgs.builder()
///             .project("your-project")
///             .instance("your-bigtable-instance")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:InstanceIamPolicy
///     properties:
///       project: your-project
///       instance: your-bigtable-instance
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigtable.user
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.InstanceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamBinding("editor", {
///     instance: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamBinding("editor",
///     instance="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.InstanceIamBinding("editor", new()
///     {
///         Instance = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewInstanceIamBinding(ctx, "editor", &bigtable.InstanceIamBindingArgs{
/// 			Instance: pulumi.String("your-bigtable-instance"),
/// 			Role:     pulumi.String("roles/bigtable.user"),
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
/// resource "gcp_bigtable_instanceiambinding" "editor" {
///   instance = "your-bigtable-instance"
///   role     = "roles/bigtable.user"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.InstanceIamBinding;
/// import com.pulumi.gcp.bigtable.InstanceIamBindingArgs;
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
///         var editor = new InstanceIamBinding("editor", InstanceIamBindingArgs.builder()
///             .instance("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:InstanceIamBinding
///     properties:
///       instance: your-bigtable-instance
///       role: roles/bigtable.user
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.InstanceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamMember("editor", {
///     instance: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamMember("editor",
///     instance="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.InstanceIamMember("editor", new()
///     {
///         Instance = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewInstanceIamMember(ctx, "editor", &bigtable.InstanceIamMemberArgs{
/// 			Instance: pulumi.String("your-bigtable-instance"),
/// 			Role:     pulumi.String("roles/bigtable.user"),
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
/// resource "gcp_bigtable_instanceiammember" "editor" {
///   instance = "your-bigtable-instance"
///   role     = "roles/bigtable.user"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.InstanceIamMember;
/// import com.pulumi.gcp.bigtable.InstanceIamMemberArgs;
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
///         var editor = new InstanceIamMember("editor", InstanceIamMemberArgs.builder()
///             .instance("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:InstanceIamMember
///     properties:
///       instance: your-bigtable-instance
///       role: roles/bigtable.user
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class InstanceIamBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding. Structure is documented below.
  late final pulumi.Output<InstanceIamBindingCondition?> condition;
  /// (Computed) The etag of the instances's IAM policy.
  late final pulumi.Output<String> etag;
  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For `gcp.bigtable.InstanceIamMember` or `gcp.bigtable.InstanceIamBinding`:
  late final pulumi.Output<String> instance;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;
  /// The project in which the instance belongs. If it
  /// is not provided, Terraform will use the provider default.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.bigtable.InstanceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  late final pulumi.Output<String> role;

  /// Creates a new [InstanceIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamBinding]. {@macro pulumi_bigtable_instance_iam_binding_instance_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamBinding(
    String name, {
    InstanceIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/instanceIamBinding:InstanceIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<InstanceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [InstanceIamBinding] resource's state with the given [name] and [id].
  static InstanceIamBinding get(
    String name,
    pulumi.Input<String> id, {
    InstanceIamBindingState? state,
  }) {
    return InstanceIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/instanceIamBinding:InstanceIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<InstanceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
