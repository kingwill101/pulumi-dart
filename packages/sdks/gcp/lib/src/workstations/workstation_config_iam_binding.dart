import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_iam_binding_args.dart';
import 'workstation_config_iam_binding_condition.dart';
import 'workstation_config_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Cloud Workstations WorkstationConfig. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Authoritative. Sets the IAM policy for the workstationconfig and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationConfigIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstationconfig are preserved.
/// * `gcp.workstations.WorkstationConfigIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstationconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Retrieves the IAM policy for the workstationconfig
///
/// &gt; **Note:** `gcp.workstations.WorkstationConfigIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationConfigIamBinding` and `gcp.workstations.WorkstationConfigIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.workstations.WorkstationConfigIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationConfigIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationConfigIamPolicy
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
/// const policy = new gcp.workstations.WorkstationConfigIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
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
/// policy = gcp.workstations.WorkstationConfigIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var policy = new Gcp.Workstations.WorkstationConfigIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
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
/// 		_, err = workstations.NewWorkstationConfigIamPolicy(ctx, "policy", &workstations.WorkstationConfigIamPolicyArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			PolicyData:           pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicy;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicyArgs;
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
///         var policy = new WorkstationConfigIamPolicy("policy", WorkstationConfigIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:workstations:WorkstationConfigIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
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
/// ## gcp.workstations.WorkstationConfigIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.workstations.WorkstationConfigIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.workstations.WorkstationConfigIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var binding = new Gcp.Workstations.WorkstationConfigIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamBinding(ctx, "binding", &workstations.WorkstationConfigIamBindingArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBinding;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBindingArgs;
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
///         var binding = new WorkstationConfigIamBinding("binding", WorkstationConfigIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.workstations.WorkstationConfigIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.workstations.WorkstationConfigIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.workstations.WorkstationConfigIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var member = new Gcp.Workstations.WorkstationConfigIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamMember(ctx, "member", &workstations.WorkstationConfigIamMemberArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
/// 			Member:               pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMember;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMemberArgs;
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
///         var member = new WorkstationConfigIamMember("member", WorkstationConfigIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
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
/// # IAM policy for Cloud Workstations WorkstationConfig
///
/// Three different resources help you manage your IAM policy for Cloud Workstations WorkstationConfig. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Authoritative. Sets the IAM policy for the workstationconfig and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationConfigIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstationconfig are preserved.
/// * `gcp.workstations.WorkstationConfigIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstationconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Retrieves the IAM policy for the workstationconfig
///
/// &gt; **Note:** `gcp.workstations.WorkstationConfigIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationConfigIamBinding` and `gcp.workstations.WorkstationConfigIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.workstations.WorkstationConfigIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationConfigIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationConfigIamPolicy
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
/// const policy = new gcp.workstations.WorkstationConfigIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
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
/// policy = gcp.workstations.WorkstationConfigIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var policy = new Gcp.Workstations.WorkstationConfigIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
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
/// 		_, err = workstations.NewWorkstationConfigIamPolicy(ctx, "policy", &workstations.WorkstationConfigIamPolicyArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			PolicyData:           pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicy;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicyArgs;
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
///         var policy = new WorkstationConfigIamPolicy("policy", WorkstationConfigIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:workstations:WorkstationConfigIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
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
/// ## gcp.workstations.WorkstationConfigIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.workstations.WorkstationConfigIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.workstations.WorkstationConfigIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var binding = new Gcp.Workstations.WorkstationConfigIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamBinding(ctx, "binding", &workstations.WorkstationConfigIamBindingArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBinding;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBindingArgs;
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
///         var binding = new WorkstationConfigIamBinding("binding", WorkstationConfigIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.workstations.WorkstationConfigIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.workstations.WorkstationConfigIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.workstations.WorkstationConfigIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var member = new Gcp.Workstations.WorkstationConfigIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamMember(ctx, "member", &workstations.WorkstationConfigIamMemberArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
/// 			Member:               pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMember;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMemberArgs;
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
///         var member = new WorkstationConfigIamMember("member", WorkstationConfigIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
///
/// * {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
///
/// * {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
///
/// * {{workstation_config_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Workstations workstationconfig IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamBinding:WorkstationConfigIamBinding editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamBinding:WorkstationConfigIamBinding editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamBinding:WorkstationConfigIamBinding editor projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
/// ```
///
/// -&gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkstationConfigIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<WorkstationConfigIamBindingCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location where the workstation cluster config should reside.
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
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.workstations.WorkstationConfigIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;
  /// The ID of the parent workstation cluster.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workstationClusterId;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workstationConfigId;

  /// Creates a new [WorkstationConfigIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkstationConfigIamBinding]. {@macro pulumi_workstations_workstation_config_iam_binding_workstation_config_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkstationConfigIamBinding(
    String name, {
    WorkstationConfigIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationConfigIamBinding:WorkstationConfigIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<WorkstationConfigIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationConfigId = registerOutput<String>('workstationConfigId');
  }

  /// Gets an existing [WorkstationConfigIamBinding] resource's state with the given [name] and [id].
  static WorkstationConfigIamBinding get(
    String name,
    pulumi.Input<String> id, {
    WorkstationConfigIamBindingState? state,
  }) {
    return WorkstationConfigIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkstationConfigIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationConfigIamBinding:WorkstationConfigIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<WorkstationConfigIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}
