import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_iam_policy_args.dart';
import 'routine_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for BigQuery Routine. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.RoutineIamPolicy`: Authoritative. Sets the IAM policy for the routine and replaces any existing policy already attached.
/// * `gcp.bigquery.RoutineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the routine are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.bigquery.RoutineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the routine are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.RoutineIamPolicy`: Retrieves the IAM policy for the routine
///
/// &gt; **Note:** `gcp.bigquery.RoutineIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.RoutineIamBinding` and `gcp.bigquery.RoutineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.bigquery.RoutineIamBinding` resources **can be** used in conjunction with `gcp.bigquery.RoutineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.bigquery.RoutineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigquery.dataOwner",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.bigquery.RoutineIamPolicy("policy", {
///     project: sproc.project,
///     datasetId: sproc.datasetId,
///     routineId: sproc.routineId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigquery.dataOwner",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigquery.RoutineIamPolicy("policy",
///     project=sproc["project"],
///     dataset_id=sproc["datasetId"],
///     routine_id=sproc["routineId"],
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
///                 Role = "roles/bigquery.dataOwner",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigQuery.RoutineIamPolicy("policy", new()
///     {
///         Project = sproc.Project,
///         DatasetId = sproc.DatasetId,
///         RoutineId = sproc.RoutineId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigquery.dataOwner",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutineIamPolicy(ctx, "policy", &bigquery.RoutineIamPolicyArgs{
/// 			Project:    pulumi.Any(sproc.Project),
/// 			DatasetId:  pulumi.Any(sproc.DatasetId),
/// 			RoutineId:  pulumi.Any(sproc.RoutineId),
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
///     role    = "roles/bigquery.dataOwner"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_bigquery_routineiampolicy" "policy" {
///   project     = sproc.project
///   dataset_id  = sproc.datasetId
///   routine_id  = sproc.routineId
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
/// import com.pulumi.gcp.bigquery.RoutineIamPolicy;
/// import com.pulumi.gcp.bigquery.RoutineIamPolicyArgs;
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
///                 .role("roles/bigquery.dataOwner")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RoutineIamPolicy("policy", RoutineIamPolicyArgs.builder()
///             .project(sproc.get("project"))
///             .datasetId(sproc.get("datasetId"))
///             .routineId(sproc.get("routineId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigquery:RoutineIamPolicy
///     properties:
///       project: ${sproc.project}
///       datasetId: ${sproc.datasetId}
///       routineId: ${sproc.routineId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigquery.dataOwner
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.RoutineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.RoutineIamBinding("binding", {
///     project: sproc.project,
///     datasetId: sproc.datasetId,
///     routineId: sproc.routineId,
///     role: "roles/bigquery.dataOwner",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.RoutineIamBinding("binding",
///     project=sproc["project"],
///     dataset_id=sproc["datasetId"],
///     routine_id=sproc["routineId"],
///     role="roles/bigquery.dataOwner",
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
///     var binding = new Gcp.BigQuery.RoutineIamBinding("binding", new()
///     {
///         Project = sproc.Project,
///         DatasetId = sproc.DatasetId,
///         RoutineId = sproc.RoutineId,
///         Role = "roles/bigquery.dataOwner",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewRoutineIamBinding(ctx, "binding", &bigquery.RoutineIamBindingArgs{
/// 			Project:   pulumi.Any(sproc.Project),
/// 			DatasetId: pulumi.Any(sproc.DatasetId),
/// 			RoutineId: pulumi.Any(sproc.RoutineId),
/// 			Role:      pulumi.String("roles/bigquery.dataOwner"),
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
/// resource "gcp_bigquery_routineiambinding" "binding" {
///   project    = sproc.project
///   dataset_id = sproc.datasetId
///   routine_id = sproc.routineId
///   role       = "roles/bigquery.dataOwner"
///   members    = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.RoutineIamBinding;
/// import com.pulumi.gcp.bigquery.RoutineIamBindingArgs;
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
///         var binding = new RoutineIamBinding("binding", RoutineIamBindingArgs.builder()
///             .project(sproc.get("project"))
///             .datasetId(sproc.get("datasetId"))
///             .routineId(sproc.get("routineId"))
///             .role("roles/bigquery.dataOwner")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:bigquery:RoutineIamBinding
///     properties:
///       project: ${sproc.project}
///       datasetId: ${sproc.datasetId}
///       routineId: ${sproc.routineId}
///       role: roles/bigquery.dataOwner
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.RoutineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.RoutineIamMember("member", {
///     project: sproc.project,
///     datasetId: sproc.datasetId,
///     routineId: sproc.routineId,
///     role: "roles/bigquery.dataOwner",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.RoutineIamMember("member",
///     project=sproc["project"],
///     dataset_id=sproc["datasetId"],
///     routine_id=sproc["routineId"],
///     role="roles/bigquery.dataOwner",
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
///     var member = new Gcp.BigQuery.RoutineIamMember("member", new()
///     {
///         Project = sproc.Project,
///         DatasetId = sproc.DatasetId,
///         RoutineId = sproc.RoutineId,
///         Role = "roles/bigquery.dataOwner",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewRoutineIamMember(ctx, "member", &bigquery.RoutineIamMemberArgs{
/// 			Project:   pulumi.Any(sproc.Project),
/// 			DatasetId: pulumi.Any(sproc.DatasetId),
/// 			RoutineId: pulumi.Any(sproc.RoutineId),
/// 			Role:      pulumi.String("roles/bigquery.dataOwner"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// resource "gcp_bigquery_routineiammember" "member" {
///   project    = sproc.project
///   dataset_id = sproc.datasetId
///   routine_id = sproc.routineId
///   role       = "roles/bigquery.dataOwner"
///   member     = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.RoutineIamMember;
/// import com.pulumi.gcp.bigquery.RoutineIamMemberArgs;
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
///         var member = new RoutineIamMember("member", RoutineIamMemberArgs.builder()
///             .project(sproc.get("project"))
///             .datasetId(sproc.get("datasetId"))
///             .routineId(sproc.get("routineId"))
///             .role("roles/bigquery.dataOwner")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:bigquery:RoutineIamMember
///     properties:
///       project: ${sproc.project}
///       datasetId: ${sproc.datasetId}
///       routineId: ${sproc.routineId}
///       role: roles/bigquery.dataOwner
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BigQuery Routine
///
/// Three different resources help you manage your IAM policy for BigQuery Routine. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.RoutineIamPolicy`: Authoritative. Sets the IAM policy for the routine and replaces any existing policy already attached.
/// * `gcp.bigquery.RoutineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the routine are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.bigquery.RoutineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the routine are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.RoutineIamPolicy`: Retrieves the IAM policy for the routine
///
/// &gt; **Note:** `gcp.bigquery.RoutineIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.RoutineIamBinding` and `gcp.bigquery.RoutineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.bigquery.RoutineIamBinding` resources **can be** used in conjunction with `gcp.bigquery.RoutineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.bigquery.RoutineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigquery.dataOwner",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.bigquery.RoutineIamPolicy("policy", {
///     project: sproc.project,
///     datasetId: sproc.datasetId,
///     routineId: sproc.routineId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigquery.dataOwner",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigquery.RoutineIamPolicy("policy",
///     project=sproc["project"],
///     dataset_id=sproc["datasetId"],
///     routine_id=sproc["routineId"],
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
///                 Role = "roles/bigquery.dataOwner",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigQuery.RoutineIamPolicy("policy", new()
///     {
///         Project = sproc.Project,
///         DatasetId = sproc.DatasetId,
///         RoutineId = sproc.RoutineId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigquery.dataOwner",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutineIamPolicy(ctx, "policy", &bigquery.RoutineIamPolicyArgs{
/// 			Project:    pulumi.Any(sproc.Project),
/// 			DatasetId:  pulumi.Any(sproc.DatasetId),
/// 			RoutineId:  pulumi.Any(sproc.RoutineId),
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
///     role    = "roles/bigquery.dataOwner"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_bigquery_routineiampolicy" "policy" {
///   project     = sproc.project
///   dataset_id  = sproc.datasetId
///   routine_id  = sproc.routineId
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
/// import com.pulumi.gcp.bigquery.RoutineIamPolicy;
/// import com.pulumi.gcp.bigquery.RoutineIamPolicyArgs;
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
///                 .role("roles/bigquery.dataOwner")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RoutineIamPolicy("policy", RoutineIamPolicyArgs.builder()
///             .project(sproc.get("project"))
///             .datasetId(sproc.get("datasetId"))
///             .routineId(sproc.get("routineId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigquery:RoutineIamPolicy
///     properties:
///       project: ${sproc.project}
///       datasetId: ${sproc.datasetId}
///       routineId: ${sproc.routineId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigquery.dataOwner
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.RoutineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.RoutineIamBinding("binding", {
///     project: sproc.project,
///     datasetId: sproc.datasetId,
///     routineId: sproc.routineId,
///     role: "roles/bigquery.dataOwner",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.RoutineIamBinding("binding",
///     project=sproc["project"],
///     dataset_id=sproc["datasetId"],
///     routine_id=sproc["routineId"],
///     role="roles/bigquery.dataOwner",
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
///     var binding = new Gcp.BigQuery.RoutineIamBinding("binding", new()
///     {
///         Project = sproc.Project,
///         DatasetId = sproc.DatasetId,
///         RoutineId = sproc.RoutineId,
///         Role = "roles/bigquery.dataOwner",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewRoutineIamBinding(ctx, "binding", &bigquery.RoutineIamBindingArgs{
/// 			Project:   pulumi.Any(sproc.Project),
/// 			DatasetId: pulumi.Any(sproc.DatasetId),
/// 			RoutineId: pulumi.Any(sproc.RoutineId),
/// 			Role:      pulumi.String("roles/bigquery.dataOwner"),
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
/// resource "gcp_bigquery_routineiambinding" "binding" {
///   project    = sproc.project
///   dataset_id = sproc.datasetId
///   routine_id = sproc.routineId
///   role       = "roles/bigquery.dataOwner"
///   members    = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.RoutineIamBinding;
/// import com.pulumi.gcp.bigquery.RoutineIamBindingArgs;
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
///         var binding = new RoutineIamBinding("binding", RoutineIamBindingArgs.builder()
///             .project(sproc.get("project"))
///             .datasetId(sproc.get("datasetId"))
///             .routineId(sproc.get("routineId"))
///             .role("roles/bigquery.dataOwner")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:bigquery:RoutineIamBinding
///     properties:
///       project: ${sproc.project}
///       datasetId: ${sproc.datasetId}
///       routineId: ${sproc.routineId}
///       role: roles/bigquery.dataOwner
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.RoutineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.RoutineIamMember("member", {
///     project: sproc.project,
///     datasetId: sproc.datasetId,
///     routineId: sproc.routineId,
///     role: "roles/bigquery.dataOwner",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.RoutineIamMember("member",
///     project=sproc["project"],
///     dataset_id=sproc["datasetId"],
///     routine_id=sproc["routineId"],
///     role="roles/bigquery.dataOwner",
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
///     var member = new Gcp.BigQuery.RoutineIamMember("member", new()
///     {
///         Project = sproc.Project,
///         DatasetId = sproc.DatasetId,
///         RoutineId = sproc.RoutineId,
///         Role = "roles/bigquery.dataOwner",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewRoutineIamMember(ctx, "member", &bigquery.RoutineIamMemberArgs{
/// 			Project:   pulumi.Any(sproc.Project),
/// 			DatasetId: pulumi.Any(sproc.DatasetId),
/// 			RoutineId: pulumi.Any(sproc.RoutineId),
/// 			Role:      pulumi.String("roles/bigquery.dataOwner"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// resource "gcp_bigquery_routineiammember" "member" {
///   project    = sproc.project
///   dataset_id = sproc.datasetId
///   routine_id = sproc.routineId
///   role       = "roles/bigquery.dataOwner"
///   member     = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.RoutineIamMember;
/// import com.pulumi.gcp.bigquery.RoutineIamMemberArgs;
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
///         var member = new RoutineIamMember("member", RoutineIamMemberArgs.builder()
///             .project(sproc.get("project"))
///             .datasetId(sproc.get("datasetId"))
///             .routineId(sproc.get("routineId"))
///             .role("roles/bigquery.dataOwner")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:bigquery:RoutineIamMember
///     properties:
///       project: ${sproc.project}
///       datasetId: ${sproc.datasetId}
///       routineId: ${sproc.routineId}
///       role: roles/bigquery.dataOwner
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}}
/// * {{project}}/{{dataset_id}}/{{routine_id}}
/// * {{dataset_id}}/{{routine_id}}
/// * {{routine_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery routine IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_bigquery_routine_iam_member.editor "projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}} roles/bigquery.dataOwner user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_bigquery_routine_iam_binding.editor "projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}} roles/bigquery.dataOwner"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:bigquery/routineIamPolicy:RoutineIamPolicy editor projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RoutineIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> datasetId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> routineId;

  /// Creates a new [RoutineIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutineIamPolicy]. {@macro pulumi_bigquery_routine_iam_policy_routine_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutineIamPolicy(
    String name, {
    RoutineIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/routineIamPolicy:RoutineIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    datasetId = registerOutput<String>('datasetId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    routineId = registerOutput<String>('routineId');
  }

  /// Gets an existing [RoutineIamPolicy] resource's state with the given [name] and [id].
  static RoutineIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    RoutineIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RoutineIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RoutineIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/routineIamPolicy:RoutineIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    datasetId = registerOutput<String>('datasetId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    routineId = registerOutput<String>('routineId');
  }

  /// Creates a typed reference to an existing [RoutineIamPolicy] resource.
  RoutineIamPolicy.reference(String urn)
    : super(
        'gcp:bigquery/routineIamPolicy:RoutineIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    datasetId = registerOutput<String>('datasetId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    routineId = registerOutput<String>('routineId');
  }
}
