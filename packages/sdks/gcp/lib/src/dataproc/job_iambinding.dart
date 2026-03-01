import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_iambinding_args.dart';
import 'job_iambinding_condition.dart';
import 'job_iambinding_state.dart';

/// Three different resources help you manage IAM policies on dataproc jobs. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.JobIAMPolicy`: Authoritative. Sets the IAM policy for the job and replaces any existing policy already attached.
/// * `gcp.dataproc.JobIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the job are preserved.
/// * `gcp.dataproc.JobIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the job are preserved.
///
/// > **Note:** `gcp.dataproc.JobIAMPolicy` **cannot** be used in conjunction with `gcp.dataproc.JobIAMBinding` and `gcp.dataproc.JobIAMMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the job as `gcp.dataproc.JobIAMPolicy` replaces the entire policy.
///
/// > **Note:** `gcp.dataproc.JobIAMBinding` resources **can be** used in conjunction with `gcp.dataproc.JobIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.dataproc.JobIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.dataproc.JobIAMPolicy("editor", {
///     project: "your-project",
///     region: "your-region",
///     jobId: "your-dataproc-job",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.dataproc.JobIAMPolicy("editor",
///     project="your-project",
///     region="your-region",
///     job_id="your-dataproc-job",
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
///                 Role = "roles/editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.Dataproc.JobIAMPolicy("editor", new()
///     {
///         Project = "your-project",
///         Region = "your-region",
///         JobId = "your-dataproc-job",
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
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataproc.NewJobIAMPolicy(ctx, "editor", &dataproc.JobIAMPolicyArgs{
/// 			Project:    pulumi.String("your-project"),
/// 			Region:     pulumi.String("your-region"),
/// 			JobId:      pulumi.String("your-dataproc-job"),
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
/// import com.pulumi.gcp.dataproc.JobIAMPolicy;
/// import com.pulumi.gcp.dataproc.JobIAMPolicyArgs;
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
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new JobIAMPolicy("editor", JobIAMPolicyArgs.builder()
///             .project("your-project")
///             .region("your-region")
///             .jobId("your-dataproc-job")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:dataproc:JobIAMPolicy
///     properties:
///       project: your-project
///       region: your-region
///       jobId: your-dataproc-job
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.JobIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMBinding("editor", {
///     jobId: "your-dataproc-job",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMBinding("editor",
///     job_id="your-dataproc-job",
///     role="roles/editor",
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
///     var editor = new Gcp.Dataproc.JobIAMBinding("editor", new()
///     {
///         JobId = "your-dataproc-job",
///         Role = "roles/editor",
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
/// 		_, err := dataproc.NewJobIAMBinding(ctx, "editor", &dataproc.JobIAMBindingArgs{
/// 			JobId: pulumi.String("your-dataproc-job"),
/// 			Role:  pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.JobIAMBinding;
/// import com.pulumi.gcp.dataproc.JobIAMBindingArgs;
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
///         var editor = new JobIAMBinding("editor", JobIAMBindingArgs.builder()
///             .jobId("your-dataproc-job")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:dataproc:JobIAMBinding
///     properties:
///       jobId: your-dataproc-job
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.JobIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMMember("editor", {
///     jobId: "your-dataproc-job",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMMember("editor",
///     job_id="your-dataproc-job",
///     role="roles/editor",
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
///     var editor = new Gcp.Dataproc.JobIAMMember("editor", new()
///     {
///         JobId = "your-dataproc-job",
///         Role = "roles/editor",
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
/// 		_, err := dataproc.NewJobIAMMember(ctx, "editor", &dataproc.JobIAMMemberArgs{
/// 			JobId:  pulumi.String("your-dataproc-job"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.JobIAMMember;
/// import com.pulumi.gcp.dataproc.JobIAMMemberArgs;
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
///         var editor = new JobIAMMember("editor", JobIAMMemberArgs.builder()
///             .jobId("your-dataproc-job")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:dataproc:JobIAMMember
///     properties:
///       jobId: your-dataproc-job
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.JobIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.dataproc.JobIAMPolicy("editor", {
///     project: "your-project",
///     region: "your-region",
///     jobId: "your-dataproc-job",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.dataproc.JobIAMPolicy("editor",
///     project="your-project",
///     region="your-region",
///     job_id="your-dataproc-job",
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
///                 Role = "roles/editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.Dataproc.JobIAMPolicy("editor", new()
///     {
///         Project = "your-project",
///         Region = "your-region",
///         JobId = "your-dataproc-job",
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
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataproc.NewJobIAMPolicy(ctx, "editor", &dataproc.JobIAMPolicyArgs{
/// 			Project:    pulumi.String("your-project"),
/// 			Region:     pulumi.String("your-region"),
/// 			JobId:      pulumi.String("your-dataproc-job"),
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
/// import com.pulumi.gcp.dataproc.JobIAMPolicy;
/// import com.pulumi.gcp.dataproc.JobIAMPolicyArgs;
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
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new JobIAMPolicy("editor", JobIAMPolicyArgs.builder()
///             .project("your-project")
///             .region("your-region")
///             .jobId("your-dataproc-job")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:dataproc:JobIAMPolicy
///     properties:
///       project: your-project
///       region: your-region
///       jobId: your-dataproc-job
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.JobIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMBinding("editor", {
///     jobId: "your-dataproc-job",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMBinding("editor",
///     job_id="your-dataproc-job",
///     role="roles/editor",
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
///     var editor = new Gcp.Dataproc.JobIAMBinding("editor", new()
///     {
///         JobId = "your-dataproc-job",
///         Role = "roles/editor",
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
/// 		_, err := dataproc.NewJobIAMBinding(ctx, "editor", &dataproc.JobIAMBindingArgs{
/// 			JobId: pulumi.String("your-dataproc-job"),
/// 			Role:  pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.JobIAMBinding;
/// import com.pulumi.gcp.dataproc.JobIAMBindingArgs;
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
///         var editor = new JobIAMBinding("editor", JobIAMBindingArgs.builder()
///             .jobId("your-dataproc-job")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:dataproc:JobIAMBinding
///     properties:
///       jobId: your-dataproc-job
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.JobIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMMember("editor", {
///     jobId: "your-dataproc-job",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMMember("editor",
///     job_id="your-dataproc-job",
///     role="roles/editor",
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
///     var editor = new Gcp.Dataproc.JobIAMMember("editor", new()
///     {
///         JobId = "your-dataproc-job",
///         Role = "roles/editor",
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
/// 		_, err := dataproc.NewJobIAMMember(ctx, "editor", &dataproc.JobIAMMemberArgs{
/// 			JobId:  pulumi.String("your-dataproc-job"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.JobIAMMember;
/// import com.pulumi.gcp.dataproc.JobIAMMemberArgs;
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
///         var editor = new JobIAMMember("editor", JobIAMMemberArgs.builder()
///             .jobId("your-dataproc-job")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:dataproc:JobIAMMember
///     properties:
///       jobId: your-dataproc-job
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `job_id` identifier of the Dataproc Job resource only. For example:
///
/// * `projects/{project}/regions/{region}/jobs/{job_id}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{project}/regions/{region}/jobs/{job_id}"
///
/// to = google_dataproc_job_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:dataproc/jobIAMBinding:JobIAMBinding default "projects/{project}/regions/{region}/jobs/{job_id}"
/// ```
class JobIAMBinding extends pulumi.CustomResource {
  late final pulumi.Output<JobIAMBindingCondition?> condition;
  /// (Computed) The etag of the jobs's IAM policy.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> jobId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;
  /// The project in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final pulumi.Output<String> project;
  /// The region in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final pulumi.Output<String> region;
  /// The role that should be applied. Only one
  /// `gcp.dataproc.JobIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// `gcp.dataproc.JobIAMPolicy` only:
  late final pulumi.Output<String> role;

  /// Creates a new [JobIAMBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobIAMBinding]. {@macro pulumi_dataproc_job_iambinding_job_iambinding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobIAMBinding(
    String name, {
    JobIAMBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/jobIAMBinding:JobIAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<JobIAMBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.jobId = registerOutput<String>('jobId');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }

  /// Gets an existing [JobIAMBinding] resource's state with the given [name] and [id].
  static JobIAMBinding get(
    String name,
    pulumi.Input<String> id, {
    JobIAMBindingState? state,
  }) {
    return JobIAMBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobIAMBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/jobIAMBinding:JobIAMBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<JobIAMBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.jobId = registerOutput<String>('jobId');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
