import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_iam_member_args.dart';
import 'storage_pool_iam_member_condition.dart';
import 'storage_pool_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Compute Engine StoragePool. Each of these resources serves a different use case:
///
/// * `gcp.compute.StoragePoolIamPolicy`: Authoritative. Sets the IAM policy for the storagepool and replaces any existing policy already attached.
/// * `gcp.compute.StoragePoolIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the storagepool are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.compute.StoragePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the storagepool are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.StoragePoolIamPolicy`: Retrieves the IAM policy for the storagepool
///
/// &gt; **Note:** `gcp.compute.StoragePoolIamPolicy` **cannot** be used in conjunction with `gcp.compute.StoragePoolIamBinding` and `gcp.compute.StoragePoolIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.compute.StoragePoolIamBinding` resources **can be** used in conjunction with `gcp.compute.StoragePoolIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.StoragePoolIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
///     role    = "roles/compute.viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_compute_storagepooliampolicy" "policy" {
///   project     = test-storage-pool-basic.project
///   zone        = test-storage-pool-basic.zone
///   name        = test-storage-pool-basic.name
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
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
///     role    = "roles/compute.viewer"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_compute_storagepooliampolicy" "policy" {
///   project     = test-storage-pool-basic.project
///   zone        = test-storage-pool-basic.zone
///   name        = test-storage-pool-basic.name
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
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingConditionArgs;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// resource "gcp_compute_storagepooliambinding" "binding" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &compute.StoragePoolIamBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_compute_storagepooliambinding" "binding" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   members = ["user:jane@example.com"]
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamBindingConditionArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .condition(StoragePoolIamBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// resource "gcp_compute_storagepooliammember" "member" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
/// 			Condition: &compute.StoragePoolIamMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_compute_storagepooliammember" "member" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   member  = "user:jane@example.com"
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamMemberConditionArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .condition(StoragePoolIamMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Compute Engine StoragePool
///
/// Three different resources help you manage your IAM policy for Compute Engine StoragePool. Each of these resources serves a different use case:
///
/// * `gcp.compute.StoragePoolIamPolicy`: Authoritative. Sets the IAM policy for the storagepool and replaces any existing policy already attached.
/// * `gcp.compute.StoragePoolIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the storagepool are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.compute.StoragePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the storagepool are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.StoragePoolIamPolicy`: Retrieves the IAM policy for the storagepool
///
/// &gt; **Note:** `gcp.compute.StoragePoolIamPolicy` **cannot** be used in conjunction with `gcp.compute.StoragePoolIamBinding` and `gcp.compute.StoragePoolIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.compute.StoragePoolIamBinding` resources **can be** used in conjunction with `gcp.compute.StoragePoolIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.StoragePoolIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
///     role    = "roles/compute.viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_compute_storagepooliampolicy" "policy" {
///   project     = test-storage-pool-basic.project
///   zone        = test-storage-pool-basic.zone
///   name        = test-storage-pool-basic.name
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
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
///     role    = "roles/compute.viewer"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_compute_storagepooliampolicy" "policy" {
///   project     = test-storage-pool-basic.project
///   zone        = test-storage-pool-basic.zone
///   name        = test-storage-pool-basic.name
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
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingConditionArgs;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// resource "gcp_compute_storagepooliambinding" "binding" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &compute.StoragePoolIamBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_compute_storagepooliambinding" "binding" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   members = ["user:jane@example.com"]
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamBindingConditionArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .condition(StoragePoolIamBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// resource "gcp_compute_storagepooliammember" "member" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
/// 			Condition: &compute.StoragePoolIamMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_compute_storagepooliammember" "member" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
///   role    = "roles/compute.viewer"
///   member  = "user:jane@example.com"
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamMemberConditionArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .condition(StoragePoolIamMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/zones/{{zone}}/storagePools/{{name}}
/// * {{project}}/{{zone}}/{{name}}
/// * {{zone}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine storagepool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_compute_storage_pool_iam_member.editor "projects/{{project}}/zones/{{zone}}/storagePools/{{storage_pool}} roles/compute.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_compute_storage_pool_iam_binding.editor "projects/{{project}}/zones/{{zone}}/storagePools/{{storage_pool}} roles/compute.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:compute/storagePoolIamMember:StoragePoolIamMember editor projects/{{project}}/zones/{{zone}}/storagePools/{{storage_pool}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class StoragePoolIamMember extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<StoragePoolIamMemberCondition?> condition;
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
  /// `gcp.compute.StoragePoolIamBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;
  /// A reference to the zone where the storage pool resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> zone;

  /// Creates a new [StoragePoolIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StoragePoolIamMember]. {@macro pulumi_compute_storage_pool_iam_member_storage_pool_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StoragePoolIamMember(
    String name, {
    StoragePoolIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/storagePoolIamMember:StoragePoolIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<StoragePoolIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StoragePoolIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [StoragePoolIamMember] resource's state with the given [name] and [id].
  static StoragePoolIamMember get(
    String name,
    pulumi.Input<String> id, {
    StoragePoolIamMemberState? state,
  }) {
    return StoragePoolIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StoragePoolIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/storagePoolIamMember:StoragePoolIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<StoragePoolIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StoragePoolIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    zone = registerOutput<String>('zone');
  }
}
