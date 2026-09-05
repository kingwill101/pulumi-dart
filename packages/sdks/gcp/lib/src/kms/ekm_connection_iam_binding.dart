import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_iam_binding_args.dart';
import 'ekm_connection_iam_binding_condition.dart';
import 'ekm_connection_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Cloud Key Management Service EkmConnection. Each of these resources serves a different use case:
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Authoritative. Sets the IAM policy for the ekmconnection and replaces any existing policy already attached.
/// * `gcp.kms.EkmConnectionIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the ekmconnection are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.kms.EkmConnectionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the ekmconnection are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Retrieves the IAM policy for the ekmconnection
///
/// &gt; **Note:** `gcp.kms.EkmConnectionIamPolicy` **cannot** be used in conjunction with `gcp.kms.EkmConnectionIamBinding` and `gcp.kms.EkmConnectionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.kms.EkmConnectionIamBinding` resources **can be** used in conjunction with `gcp.kms.EkmConnectionIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.kms.EkmConnectionIamPolicy
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
/// const policy = new gcp.kms.EkmConnectionIamPolicy("policy", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
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
/// policy = gcp.kms.EkmConnectionIamPolicy("policy",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var policy = new Gcp.Kms.EkmConnectionIamPolicy("policy", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
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
/// 		_, err = kms.NewEkmConnectionIamPolicy(ctx, "policy", &kms.EkmConnectionIamPolicyArgs{
/// 			Project:    pulumi.Any(example_ekmconnection.Project),
/// 			Location:   pulumi.Any(example_ekmconnection.Location),
/// 			Name:       pulumi.Any(example_ekmconnection.Name),
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
/// resource "gcp_kms_ekmconnectioniampolicy" "policy" {
///   project     = example-ekmconnection.project
///   location    = example-ekmconnection.location
///   name        = example-ekmconnection.name
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
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicy;
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicyArgs;
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
///         var policy = new EkmConnectionIamPolicy("policy", EkmConnectionIamPolicyArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:kms:EkmConnectionIamPolicy
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
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
/// With IAM Conditions:
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
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.kms.EkmConnectionIamPolicy("policy", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
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
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.kms.EkmConnectionIamPolicy("policy",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var policy = new Gcp.Kms.EkmConnectionIamPolicy("policy", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
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
/// 		_, err = kms.NewEkmConnectionIamPolicy(ctx, "policy", &kms.EkmConnectionIamPolicyArgs{
/// 			Project:    pulumi.Any(example_ekmconnection.Project),
/// 			Location:   pulumi.Any(example_ekmconnection.Location),
/// 			Name:       pulumi.Any(example_ekmconnection.Name),
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
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_kms_ekmconnectioniampolicy" "policy" {
///   project     = example-ekmconnection.project
///   location    = example-ekmconnection.location
///   name        = example-ekmconnection.name
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
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicy;
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicyArgs;
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
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new EkmConnectionIamPolicy("policy", EkmConnectionIamPolicyArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:kms:EkmConnectionIamPolicy
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
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
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.kms.EkmConnectionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.kms.EkmConnectionIamBinding("binding", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.kms.EkmConnectionIamBinding("binding",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var binding = new Gcp.Kms.EkmConnectionIamBinding("binding", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamBinding(ctx, "binding", &kms.EkmConnectionIamBindingArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_kms_ekmconnectioniambinding" "binding" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.EkmConnectionIamBinding;
/// import com.pulumi.gcp.kms.EkmConnectionIamBindingArgs;
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
///         var binding = new EkmConnectionIamBinding("binding", EkmConnectionIamBindingArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
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
///     type: gcp:kms:EkmConnectionIamBinding
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
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
/// const binding = new gcp.kms.EkmConnectionIamBinding("binding", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
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
/// binding = gcp.kms.EkmConnectionIamBinding("binding",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
///     role="roles/viewer",
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
///     var binding = new Gcp.Kms.EkmConnectionIamBinding("binding", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         Role = "roles/viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Kms.Inputs.EkmConnectionIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamBinding(ctx, "binding", &kms.EkmConnectionIamBindingArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
/// 			Role:     pulumi.String("roles/viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &kms.EkmConnectionIamBindingConditionArgs{
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
/// resource "gcp_kms_ekmconnectioniambinding" "binding" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   members  = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.kms.EkmConnectionIamBinding;
/// import com.pulumi.gcp.kms.EkmConnectionIamBindingArgs;
/// import com.pulumi.gcp.kms.inputs.EkmConnectionIamBindingConditionArgs;
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
///         var binding = new EkmConnectionIamBinding("binding", EkmConnectionIamBindingArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .condition(EkmConnectionIamBindingConditionArgs.builder()
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
///     type: gcp:kms:EkmConnectionIamBinding
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.kms.EkmConnectionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.kms.EkmConnectionIamMember("member", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.kms.EkmConnectionIamMember("member",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var member = new Gcp.Kms.EkmConnectionIamMember("member", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamMember(ctx, "member", &kms.EkmConnectionIamMemberArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_kms_ekmconnectioniammember" "member" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.EkmConnectionIamMember;
/// import com.pulumi.gcp.kms.EkmConnectionIamMemberArgs;
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
///         var member = new EkmConnectionIamMember("member", EkmConnectionIamMemberArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
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
///     type: gcp:kms:EkmConnectionIamMember
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
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
/// const member = new gcp.kms.EkmConnectionIamMember("member", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
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
/// member = gcp.kms.EkmConnectionIamMember("member",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
///     role="roles/viewer",
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
///     var member = new Gcp.Kms.EkmConnectionIamMember("member", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Kms.Inputs.EkmConnectionIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamMember(ctx, "member", &kms.EkmConnectionIamMemberArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
/// 			Role:     pulumi.String("roles/viewer"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &kms.EkmConnectionIamMemberConditionArgs{
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
/// resource "gcp_kms_ekmconnectioniammember" "member" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   member   = "user:jane@example.com"
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
/// import com.pulumi.gcp.kms.EkmConnectionIamMember;
/// import com.pulumi.gcp.kms.EkmConnectionIamMemberArgs;
/// import com.pulumi.gcp.kms.inputs.EkmConnectionIamMemberConditionArgs;
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
///         var member = new EkmConnectionIamMember("member", EkmConnectionIamMemberArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .condition(EkmConnectionIamMemberConditionArgs.builder()
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
///     type: gcp:kms:EkmConnectionIamMember
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
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
/// # IAM policy for Cloud Key Management Service EkmConnection
///
/// Three different resources help you manage your IAM policy for Cloud Key Management Service EkmConnection. Each of these resources serves a different use case:
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Authoritative. Sets the IAM policy for the ekmconnection and replaces any existing policy already attached.
/// * `gcp.kms.EkmConnectionIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the ekmconnection are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.kms.EkmConnectionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the ekmconnection are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Retrieves the IAM policy for the ekmconnection
///
/// &gt; **Note:** `gcp.kms.EkmConnectionIamPolicy` **cannot** be used in conjunction with `gcp.kms.EkmConnectionIamBinding` and `gcp.kms.EkmConnectionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.kms.EkmConnectionIamBinding` resources **can be** used in conjunction with `gcp.kms.EkmConnectionIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.kms.EkmConnectionIamPolicy
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
/// const policy = new gcp.kms.EkmConnectionIamPolicy("policy", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
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
/// policy = gcp.kms.EkmConnectionIamPolicy("policy",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var policy = new Gcp.Kms.EkmConnectionIamPolicy("policy", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
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
/// 		_, err = kms.NewEkmConnectionIamPolicy(ctx, "policy", &kms.EkmConnectionIamPolicyArgs{
/// 			Project:    pulumi.Any(example_ekmconnection.Project),
/// 			Location:   pulumi.Any(example_ekmconnection.Location),
/// 			Name:       pulumi.Any(example_ekmconnection.Name),
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
/// resource "gcp_kms_ekmconnectioniampolicy" "policy" {
///   project     = example-ekmconnection.project
///   location    = example-ekmconnection.location
///   name        = example-ekmconnection.name
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
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicy;
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicyArgs;
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
///         var policy = new EkmConnectionIamPolicy("policy", EkmConnectionIamPolicyArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:kms:EkmConnectionIamPolicy
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
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
/// With IAM Conditions:
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
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.kms.EkmConnectionIamPolicy("policy", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
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
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.kms.EkmConnectionIamPolicy("policy",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var policy = new Gcp.Kms.EkmConnectionIamPolicy("policy", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
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
/// 		_, err = kms.NewEkmConnectionIamPolicy(ctx, "policy", &kms.EkmConnectionIamPolicyArgs{
/// 			Project:    pulumi.Any(example_ekmconnection.Project),
/// 			Location:   pulumi.Any(example_ekmconnection.Location),
/// 			Name:       pulumi.Any(example_ekmconnection.Name),
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
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_kms_ekmconnectioniampolicy" "policy" {
///   project     = example-ekmconnection.project
///   location    = example-ekmconnection.location
///   name        = example-ekmconnection.name
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
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicy;
/// import com.pulumi.gcp.kms.EkmConnectionIamPolicyArgs;
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
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new EkmConnectionIamPolicy("policy", EkmConnectionIamPolicyArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:kms:EkmConnectionIamPolicy
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
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
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.kms.EkmConnectionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.kms.EkmConnectionIamBinding("binding", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.kms.EkmConnectionIamBinding("binding",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var binding = new Gcp.Kms.EkmConnectionIamBinding("binding", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamBinding(ctx, "binding", &kms.EkmConnectionIamBindingArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_kms_ekmconnectioniambinding" "binding" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.EkmConnectionIamBinding;
/// import com.pulumi.gcp.kms.EkmConnectionIamBindingArgs;
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
///         var binding = new EkmConnectionIamBinding("binding", EkmConnectionIamBindingArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
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
///     type: gcp:kms:EkmConnectionIamBinding
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
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
/// const binding = new gcp.kms.EkmConnectionIamBinding("binding", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
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
/// binding = gcp.kms.EkmConnectionIamBinding("binding",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
///     role="roles/viewer",
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
///     var binding = new Gcp.Kms.EkmConnectionIamBinding("binding", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         Role = "roles/viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Kms.Inputs.EkmConnectionIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamBinding(ctx, "binding", &kms.EkmConnectionIamBindingArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
/// 			Role:     pulumi.String("roles/viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &kms.EkmConnectionIamBindingConditionArgs{
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
/// resource "gcp_kms_ekmconnectioniambinding" "binding" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   members  = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.kms.EkmConnectionIamBinding;
/// import com.pulumi.gcp.kms.EkmConnectionIamBindingArgs;
/// import com.pulumi.gcp.kms.inputs.EkmConnectionIamBindingConditionArgs;
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
///         var binding = new EkmConnectionIamBinding("binding", EkmConnectionIamBindingArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .condition(EkmConnectionIamBindingConditionArgs.builder()
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
///     type: gcp:kms:EkmConnectionIamBinding
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.kms.EkmConnectionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.kms.EkmConnectionIamMember("member", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.kms.EkmConnectionIamMember("member",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
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
///     var member = new Gcp.Kms.EkmConnectionIamMember("member", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamMember(ctx, "member", &kms.EkmConnectionIamMemberArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_kms_ekmconnectioniammember" "member" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.EkmConnectionIamMember;
/// import com.pulumi.gcp.kms.EkmConnectionIamMemberArgs;
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
///         var member = new EkmConnectionIamMember("member", EkmConnectionIamMemberArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
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
///     type: gcp:kms:EkmConnectionIamMember
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
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
/// const member = new gcp.kms.EkmConnectionIamMember("member", {
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
///     role: "roles/viewer",
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
/// member = gcp.kms.EkmConnectionIamMember("member",
///     project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"],
///     role="roles/viewer",
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
///     var member = new Gcp.Kms.EkmConnectionIamMember("member", new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Kms.Inputs.EkmConnectionIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnectionIamMember(ctx, "member", &kms.EkmConnectionIamMemberArgs{
/// 			Project:  pulumi.Any(example_ekmconnection.Project),
/// 			Location: pulumi.Any(example_ekmconnection.Location),
/// 			Name:     pulumi.Any(example_ekmconnection.Name),
/// 			Role:     pulumi.String("roles/viewer"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &kms.EkmConnectionIamMemberConditionArgs{
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
/// resource "gcp_kms_ekmconnectioniammember" "member" {
///   project  = example-ekmconnection.project
///   location = example-ekmconnection.location
///   name     = example-ekmconnection.name
///   role     = "roles/viewer"
///   member   = "user:jane@example.com"
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
/// import com.pulumi.gcp.kms.EkmConnectionIamMember;
/// import com.pulumi.gcp.kms.EkmConnectionIamMemberArgs;
/// import com.pulumi.gcp.kms.inputs.EkmConnectionIamMemberConditionArgs;
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
///         var member = new EkmConnectionIamMember("member", EkmConnectionIamMemberArgs.builder()
///             .project(example_ekmconnection.get("project"))
///             .location(example_ekmconnection.get("location"))
///             .name(example_ekmconnection.get("name"))
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .condition(EkmConnectionIamMemberConditionArgs.builder()
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
///     type: gcp:kms:EkmConnectionIamMember
///     properties:
///       project: ${["example-ekmconnection"].project}
///       location: ${["example-ekmconnection"].location}
///       name: ${["example-ekmconnection"].name}
///       role: roles/viewer
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
/// * projects/{{project}}/locations/{{location}}/ekmConnections/{{name}}
/// * {{project}}/{{location}}/{{name}}
/// * {{location}}/{{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Key Management Service ekmconnection IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_kms_ekm_connection_iam_member.editor "projects/{{project}}/locations/{{location}}/ekmConnections/{{ekm_connection}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_kms_ekm_connection_iam_binding.editor "projects/{{project}}/locations/{{location}}/ekmConnections/{{ekm_connection}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:kms/ekmConnectionIamBinding:EkmConnectionIamBinding editor projects/{{project}}/locations/{{location}}/ekmConnections/{{ekm_connection}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class EkmConnectionIamBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<EkmConnectionIamBindingCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location for the EkmConnection.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
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
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.kms.EkmConnectionIamBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [EkmConnectionIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EkmConnectionIamBinding]. {@macro pulumi_kms_ekm_connection_iam_binding_ekm_connection_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EkmConnectionIamBinding(
    String name, {
    EkmConnectionIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/ekmConnectionIamBinding:EkmConnectionIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    condition = registerOutput<EkmConnectionIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EkmConnectionIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [EkmConnectionIamBinding] resource's state with the given [name] and [id].
  static EkmConnectionIamBinding get(
    String name,
    pulumi.Input<String> id, {
    EkmConnectionIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EkmConnectionIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EkmConnectionIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/ekmConnectionIamBinding:EkmConnectionIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<EkmConnectionIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EkmConnectionIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [EkmConnectionIamBinding] resource.
  EkmConnectionIamBinding.reference(String urn)
    : super(
        'gcp:kms/ekmConnectionIamBinding:EkmConnectionIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<EkmConnectionIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EkmConnectionIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
