import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_iam_policy_args.dart';
import 'backup_plan_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Backup for GKE BackupPlan. Each of these resources serves a different use case:
///
/// * `gcp.gkebackup.BackupPlanIamPolicy`: Authoritative. Sets the IAM policy for the backupplan and replaces any existing policy already attached.
/// * `gcp.gkebackup.BackupPlanIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backupplan are preserved.
/// * `gcp.gkebackup.BackupPlanIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backupplan are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gkebackup.BackupPlanIamPolicy`: Retrieves the IAM policy for the backupplan
///
/// &gt; **Note:** `gcp.gkebackup.BackupPlanIamPolicy` **cannot** be used in conjunction with `gcp.gkebackup.BackupPlanIamBinding` and `gcp.gkebackup.BackupPlanIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gkebackup.BackupPlanIamBinding` resources **can be** used in conjunction with `gcp.gkebackup.BackupPlanIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.gkebackup.BackupPlanIamPolicy
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
/// const policy = new gcp.gkebackup.BackupPlanIamPolicy("policy", {
///     project: basic.project,
///     location: basic.location,
///     name: basic.name,
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
/// policy = gcp.gkebackup.BackupPlanIamPolicy("policy",
///     project=basic["project"],
///     location=basic["location"],
///     name=basic["name"],
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
///     var policy = new Gcp.GkeBackup.BackupPlanIamPolicy("policy", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         Name = basic.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
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
/// 		_, err = gkebackup.NewBackupPlanIamPolicy(ctx, "policy", &gkebackup.BackupPlanIamPolicyArgs{
/// 			Project:    pulumi.Any(basic.Project),
/// 			Location:   pulumi.Any(basic.Location),
/// 			Name:       pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicy;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicyArgs;
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
///         var policy = new BackupPlanIamPolicy("policy", BackupPlanIamPolicyArgs.builder()
///             .project(basic.project())
///             .location(basic.location())
///             .name(basic.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gkebackup:BackupPlanIamPolicy
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       name: ${basic.name}
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
/// ## gcp.gkebackup.BackupPlanIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkebackup.BackupPlanIamBinding("binding", {
///     project: basic.project,
///     location: basic.location,
///     name: basic.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkebackup.BackupPlanIamBinding("binding",
///     project=basic["project"],
///     location=basic["location"],
///     name=basic["name"],
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
///     var binding = new Gcp.GkeBackup.BackupPlanIamBinding("binding", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         Name = basic.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewBackupPlanIamBinding(ctx, "binding", &gkebackup.BackupPlanIamBindingArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			Name:     pulumi.Any(basic.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBinding;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBindingArgs;
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
///         var binding = new BackupPlanIamBinding("binding", BackupPlanIamBindingArgs.builder()
///             .project(basic.project())
///             .location(basic.location())
///             .name(basic.name())
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
///     type: gcp:gkebackup:BackupPlanIamBinding
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       name: ${basic.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gkebackup.BackupPlanIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkebackup.BackupPlanIamMember("member", {
///     project: basic.project,
///     location: basic.location,
///     name: basic.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkebackup.BackupPlanIamMember("member",
///     project=basic["project"],
///     location=basic["location"],
///     name=basic["name"],
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
///     var member = new Gcp.GkeBackup.BackupPlanIamMember("member", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         Name = basic.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewBackupPlanIamMember(ctx, "member", &gkebackup.BackupPlanIamMemberArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			Name:     pulumi.Any(basic.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMember;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMemberArgs;
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
///         var member = new BackupPlanIamMember("member", BackupPlanIamMemberArgs.builder()
///             .project(basic.project())
///             .location(basic.location())
///             .name(basic.name())
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
///     type: gcp:gkebackup:BackupPlanIamMember
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       name: ${basic.name}
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
/// # IAM policy for Backup for GKE BackupPlan
///
/// Three different resources help you manage your IAM policy for Backup for GKE BackupPlan. Each of these resources serves a different use case:
///
/// * `gcp.gkebackup.BackupPlanIamPolicy`: Authoritative. Sets the IAM policy for the backupplan and replaces any existing policy already attached.
/// * `gcp.gkebackup.BackupPlanIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backupplan are preserved.
/// * `gcp.gkebackup.BackupPlanIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backupplan are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gkebackup.BackupPlanIamPolicy`: Retrieves the IAM policy for the backupplan
///
/// &gt; **Note:** `gcp.gkebackup.BackupPlanIamPolicy` **cannot** be used in conjunction with `gcp.gkebackup.BackupPlanIamBinding` and `gcp.gkebackup.BackupPlanIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gkebackup.BackupPlanIamBinding` resources **can be** used in conjunction with `gcp.gkebackup.BackupPlanIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.gkebackup.BackupPlanIamPolicy
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
/// const policy = new gcp.gkebackup.BackupPlanIamPolicy("policy", {
///     project: basic.project,
///     location: basic.location,
///     name: basic.name,
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
/// policy = gcp.gkebackup.BackupPlanIamPolicy("policy",
///     project=basic["project"],
///     location=basic["location"],
///     name=basic["name"],
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
///     var policy = new Gcp.GkeBackup.BackupPlanIamPolicy("policy", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         Name = basic.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
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
/// 		_, err = gkebackup.NewBackupPlanIamPolicy(ctx, "policy", &gkebackup.BackupPlanIamPolicyArgs{
/// 			Project:    pulumi.Any(basic.Project),
/// 			Location:   pulumi.Any(basic.Location),
/// 			Name:       pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicy;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicyArgs;
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
///         var policy = new BackupPlanIamPolicy("policy", BackupPlanIamPolicyArgs.builder()
///             .project(basic.project())
///             .location(basic.location())
///             .name(basic.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gkebackup:BackupPlanIamPolicy
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       name: ${basic.name}
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
/// ## gcp.gkebackup.BackupPlanIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkebackup.BackupPlanIamBinding("binding", {
///     project: basic.project,
///     location: basic.location,
///     name: basic.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkebackup.BackupPlanIamBinding("binding",
///     project=basic["project"],
///     location=basic["location"],
///     name=basic["name"],
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
///     var binding = new Gcp.GkeBackup.BackupPlanIamBinding("binding", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         Name = basic.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewBackupPlanIamBinding(ctx, "binding", &gkebackup.BackupPlanIamBindingArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			Name:     pulumi.Any(basic.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBinding;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBindingArgs;
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
///         var binding = new BackupPlanIamBinding("binding", BackupPlanIamBindingArgs.builder()
///             .project(basic.project())
///             .location(basic.location())
///             .name(basic.name())
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
///     type: gcp:gkebackup:BackupPlanIamBinding
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       name: ${basic.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gkebackup.BackupPlanIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkebackup.BackupPlanIamMember("member", {
///     project: basic.project,
///     location: basic.location,
///     name: basic.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkebackup.BackupPlanIamMember("member",
///     project=basic["project"],
///     location=basic["location"],
///     name=basic["name"],
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
///     var member = new Gcp.GkeBackup.BackupPlanIamMember("member", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         Name = basic.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewBackupPlanIamMember(ctx, "member", &gkebackup.BackupPlanIamMemberArgs{
/// 			Project:  pulumi.Any(basic.Project),
/// 			Location: pulumi.Any(basic.Location),
/// 			Name:     pulumi.Any(basic.Name),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMember;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMemberArgs;
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
///         var member = new BackupPlanIamMember("member", BackupPlanIamMemberArgs.builder()
///             .project(basic.project())
///             .location(basic.location())
///             .name(basic.name())
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
///     type: gcp:gkebackup:BackupPlanIamMember
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       name: ${basic.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/backupPlans/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Backup for GKE backupplan IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy editor "projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy editor "projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy editor projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan}}
/// ```
///
/// -&gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class BackupPlanIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The region of the Backup Plan.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [BackupPlanIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlanIamPolicy]. {@macro pulumi_gkebackup_backup_plan_iam_policy_backup_plan_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlanIamPolicy(
    String name, {
    BackupPlanIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [BackupPlanIamPolicy] resource's state with the given [name] and [id].
  static BackupPlanIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackupPlanIamPolicyState? state,
  }) {
    return BackupPlanIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPlanIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
