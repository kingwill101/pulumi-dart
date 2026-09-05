import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_view_iam_binding_args.dart';
import 'log_view_iam_binding_condition.dart';
import 'log_view_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Cloud (Stackdriver) Logging LogView. Each of these resources serves a different use case:
///
/// * `gcp.logging.LogViewIamPolicy`: Authoritative. Sets the IAM policy for the logview and replaces any existing policy already attached.
/// * `gcp.logging.LogViewIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the logview are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.logging.LogViewIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the logview are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.logging.LogViewIamPolicy`: Retrieves the IAM policy for the logview
///
/// &gt; **Note:** `gcp.logging.LogViewIamPolicy` **cannot** be used in conjunction with `gcp.logging.LogViewIamBinding` and `gcp.logging.LogViewIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.logging.LogViewIamBinding` resources **can be** used in conjunction with `gcp.logging.LogViewIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.logging.LogViewIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/logging.admin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.logging.LogViewIamPolicy("policy", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/logging.admin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.logging.LogViewIamPolicy("policy",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
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
///                 Role = "roles/logging.admin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Logging.LogViewIamPolicy("policy", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/logging.admin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewLogViewIamPolicy(ctx, "policy", &logging.LogViewIamPolicyArgs{
/// 			Parent:     pulumi.Any(loggingLogView.Parent),
/// 			Location:   pulumi.Any(loggingLogView.Location),
/// 			Bucket:     pulumi.Any(loggingLogView.Bucket),
/// 			Name:       pulumi.Any(loggingLogView.Name),
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
///     role    = "roles/logging.admin"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_logging_logviewiampolicy" "policy" {
///   parent      = loggingLogView.parent
///   location    = loggingLogView.location
///   bucket      = loggingLogView.bucket
///   name        = loggingLogView.name
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
/// import com.pulumi.gcp.logging.LogViewIamPolicy;
/// import com.pulumi.gcp.logging.LogViewIamPolicyArgs;
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
///                 .role("roles/logging.admin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new LogViewIamPolicy("policy", LogViewIamPolicyArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:logging:LogViewIamPolicy
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/logging.admin
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
///         role: "roles/logging.admin",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.logging.LogViewIamPolicy("policy", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/logging.admin",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.logging.LogViewIamPolicy("policy",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
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
///                 Role = "roles/logging.admin",
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
///     var policy = new Gcp.Logging.LogViewIamPolicy("policy", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/logging.admin",
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
/// 		_, err = logging.NewLogViewIamPolicy(ctx, "policy", &logging.LogViewIamPolicyArgs{
/// 			Parent:     pulumi.Any(loggingLogView.Parent),
/// 			Location:   pulumi.Any(loggingLogView.Location),
/// 			Bucket:     pulumi.Any(loggingLogView.Bucket),
/// 			Name:       pulumi.Any(loggingLogView.Name),
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
///     role    = "roles/logging.admin"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_logging_logviewiampolicy" "policy" {
///   parent      = loggingLogView.parent
///   location    = loggingLogView.location
///   bucket      = loggingLogView.bucket
///   name        = loggingLogView.name
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
/// import com.pulumi.gcp.logging.LogViewIamPolicy;
/// import com.pulumi.gcp.logging.LogViewIamPolicyArgs;
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
///                 .role("roles/logging.admin")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new LogViewIamPolicy("policy", LogViewIamPolicyArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:logging:LogViewIamPolicy
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/logging.admin
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.logging.LogViewIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.logging.LogViewIamBinding("binding", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.logging.LogViewIamBinding("binding",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var binding = new Gcp.Logging.LogViewIamBinding("binding", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamBinding(ctx, "binding", &logging.LogViewIamBindingArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
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
/// resource "gcp_logging_logviewiambinding" "binding" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LogViewIamBinding;
/// import com.pulumi.gcp.logging.LogViewIamBindingArgs;
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
///         var binding = new LogViewIamBinding("binding", LogViewIamBindingArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:logging:LogViewIamBinding
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
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
/// const binding = new gcp.logging.LogViewIamBinding("binding", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
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
/// binding = gcp.logging.LogViewIamBinding("binding",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var binding = new Gcp.Logging.LogViewIamBinding("binding", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Logging.Inputs.LogViewIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamBinding(ctx, "binding", &logging.LogViewIamBindingArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &logging.LogViewIamBindingConditionArgs{
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
/// resource "gcp_logging_logviewiambinding" "binding" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
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
/// import com.pulumi.gcp.logging.LogViewIamBinding;
/// import com.pulumi.gcp.logging.LogViewIamBindingArgs;
/// import com.pulumi.gcp.logging.inputs.LogViewIamBindingConditionArgs;
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
///         var binding = new LogViewIamBinding("binding", LogViewIamBindingArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .members("user:jane@example.com")
///             .condition(LogViewIamBindingConditionArgs.builder()
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
///     type: gcp:logging:LogViewIamBinding
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.logging.LogViewIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.logging.LogViewIamMember("member", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.logging.LogViewIamMember("member",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var member = new Gcp.Logging.LogViewIamMember("member", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamMember(ctx, "member", &logging.LogViewIamMemberArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
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
/// resource "gcp_logging_logviewiammember" "member" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LogViewIamMember;
/// import com.pulumi.gcp.logging.LogViewIamMemberArgs;
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
///         var member = new LogViewIamMember("member", LogViewIamMemberArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:logging:LogViewIamMember
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
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
/// const member = new gcp.logging.LogViewIamMember("member", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
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
/// member = gcp.logging.LogViewIamMember("member",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var member = new Gcp.Logging.LogViewIamMember("member", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Logging.Inputs.LogViewIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamMember(ctx, "member", &logging.LogViewIamMemberArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &logging.LogViewIamMemberConditionArgs{
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
/// resource "gcp_logging_logviewiammember" "member" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
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
/// import com.pulumi.gcp.logging.LogViewIamMember;
/// import com.pulumi.gcp.logging.LogViewIamMemberArgs;
/// import com.pulumi.gcp.logging.inputs.LogViewIamMemberConditionArgs;
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
///         var member = new LogViewIamMember("member", LogViewIamMemberArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .member("user:jane@example.com")
///             .condition(LogViewIamMemberConditionArgs.builder()
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
///     type: gcp:logging:LogViewIamMember
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Cloud (Stackdriver) Logging LogView
///
/// Three different resources help you manage your IAM policy for Cloud (Stackdriver) Logging LogView. Each of these resources serves a different use case:
///
/// * `gcp.logging.LogViewIamPolicy`: Authoritative. Sets the IAM policy for the logview and replaces any existing policy already attached.
/// * `gcp.logging.LogViewIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the logview are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.logging.LogViewIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the logview are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.logging.LogViewIamPolicy`: Retrieves the IAM policy for the logview
///
/// &gt; **Note:** `gcp.logging.LogViewIamPolicy` **cannot** be used in conjunction with `gcp.logging.LogViewIamBinding` and `gcp.logging.LogViewIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.logging.LogViewIamBinding` resources **can be** used in conjunction with `gcp.logging.LogViewIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.logging.LogViewIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/logging.admin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.logging.LogViewIamPolicy("policy", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/logging.admin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.logging.LogViewIamPolicy("policy",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
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
///                 Role = "roles/logging.admin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Logging.LogViewIamPolicy("policy", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/logging.admin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewLogViewIamPolicy(ctx, "policy", &logging.LogViewIamPolicyArgs{
/// 			Parent:     pulumi.Any(loggingLogView.Parent),
/// 			Location:   pulumi.Any(loggingLogView.Location),
/// 			Bucket:     pulumi.Any(loggingLogView.Bucket),
/// 			Name:       pulumi.Any(loggingLogView.Name),
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
///     role    = "roles/logging.admin"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_logging_logviewiampolicy" "policy" {
///   parent      = loggingLogView.parent
///   location    = loggingLogView.location
///   bucket      = loggingLogView.bucket
///   name        = loggingLogView.name
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
/// import com.pulumi.gcp.logging.LogViewIamPolicy;
/// import com.pulumi.gcp.logging.LogViewIamPolicyArgs;
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
///                 .role("roles/logging.admin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new LogViewIamPolicy("policy", LogViewIamPolicyArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:logging:LogViewIamPolicy
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/logging.admin
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
///         role: "roles/logging.admin",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.logging.LogViewIamPolicy("policy", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/logging.admin",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.logging.LogViewIamPolicy("policy",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
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
///                 Role = "roles/logging.admin",
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
///     var policy = new Gcp.Logging.LogViewIamPolicy("policy", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/logging.admin",
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
/// 		_, err = logging.NewLogViewIamPolicy(ctx, "policy", &logging.LogViewIamPolicyArgs{
/// 			Parent:     pulumi.Any(loggingLogView.Parent),
/// 			Location:   pulumi.Any(loggingLogView.Location),
/// 			Bucket:     pulumi.Any(loggingLogView.Bucket),
/// 			Name:       pulumi.Any(loggingLogView.Name),
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
///     role    = "roles/logging.admin"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_logging_logviewiampolicy" "policy" {
///   parent      = loggingLogView.parent
///   location    = loggingLogView.location
///   bucket      = loggingLogView.bucket
///   name        = loggingLogView.name
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
/// import com.pulumi.gcp.logging.LogViewIamPolicy;
/// import com.pulumi.gcp.logging.LogViewIamPolicyArgs;
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
///                 .role("roles/logging.admin")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new LogViewIamPolicy("policy", LogViewIamPolicyArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:logging:LogViewIamPolicy
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/logging.admin
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.logging.LogViewIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.logging.LogViewIamBinding("binding", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.logging.LogViewIamBinding("binding",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var binding = new Gcp.Logging.LogViewIamBinding("binding", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamBinding(ctx, "binding", &logging.LogViewIamBindingArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
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
/// resource "gcp_logging_logviewiambinding" "binding" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LogViewIamBinding;
/// import com.pulumi.gcp.logging.LogViewIamBindingArgs;
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
///         var binding = new LogViewIamBinding("binding", LogViewIamBindingArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:logging:LogViewIamBinding
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
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
/// const binding = new gcp.logging.LogViewIamBinding("binding", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
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
/// binding = gcp.logging.LogViewIamBinding("binding",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var binding = new Gcp.Logging.LogViewIamBinding("binding", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Logging.Inputs.LogViewIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamBinding(ctx, "binding", &logging.LogViewIamBindingArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &logging.LogViewIamBindingConditionArgs{
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
/// resource "gcp_logging_logviewiambinding" "binding" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
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
/// import com.pulumi.gcp.logging.LogViewIamBinding;
/// import com.pulumi.gcp.logging.LogViewIamBindingArgs;
/// import com.pulumi.gcp.logging.inputs.LogViewIamBindingConditionArgs;
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
///         var binding = new LogViewIamBinding("binding", LogViewIamBindingArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .members("user:jane@example.com")
///             .condition(LogViewIamBindingConditionArgs.builder()
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
///     type: gcp:logging:LogViewIamBinding
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.logging.LogViewIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.logging.LogViewIamMember("member", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.logging.LogViewIamMember("member",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var member = new Gcp.Logging.LogViewIamMember("member", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamMember(ctx, "member", &logging.LogViewIamMemberArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
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
/// resource "gcp_logging_logviewiammember" "member" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LogViewIamMember;
/// import com.pulumi.gcp.logging.LogViewIamMemberArgs;
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
///         var member = new LogViewIamMember("member", LogViewIamMemberArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:logging:LogViewIamMember
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
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
/// const member = new gcp.logging.LogViewIamMember("member", {
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
///     role: "roles/logging.admin",
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
/// member = gcp.logging.LogViewIamMember("member",
///     parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"],
///     role="roles/logging.admin",
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
///     var member = new Gcp.Logging.LogViewIamMember("member", new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///         Role = "roles/logging.admin",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Logging.Inputs.LogViewIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogViewIamMember(ctx, "member", &logging.LogViewIamMemberArgs{
/// 			Parent:   pulumi.Any(loggingLogView.Parent),
/// 			Location: pulumi.Any(loggingLogView.Location),
/// 			Bucket:   pulumi.Any(loggingLogView.Bucket),
/// 			Name:     pulumi.Any(loggingLogView.Name),
/// 			Role:     pulumi.String("roles/logging.admin"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &logging.LogViewIamMemberConditionArgs{
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
/// resource "gcp_logging_logviewiammember" "member" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
///   role     = "roles/logging.admin"
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
/// import com.pulumi.gcp.logging.LogViewIamMember;
/// import com.pulumi.gcp.logging.LogViewIamMemberArgs;
/// import com.pulumi.gcp.logging.inputs.LogViewIamMemberConditionArgs;
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
///         var member = new LogViewIamMember("member", LogViewIamMemberArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .role("roles/logging.admin")
///             .member("user:jane@example.com")
///             .condition(LogViewIamMemberConditionArgs.builder()
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
///     type: gcp:logging:LogViewIamMember
///     properties:
///       parent: ${loggingLogView.parent}
///       location: ${loggingLogView.location}
///       bucket: ${loggingLogView.bucket}
///       name: ${loggingLogView.name}
///       role: roles/logging.admin
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
/// * {{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud (Stackdriver) Logging logview IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_logging_log_view_iam_member.editor "{{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{log_view}} roles/logging.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_logging_log_view_iam_binding.editor "{{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{log_view}} roles/logging.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:logging/logViewIamBinding:LogViewIamBinding editor {{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{log_view}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class LogViewIamBinding extends pulumi.CustomResource {
  /// The bucket of the resource Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> bucket;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<LogViewIamBindingCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. Used to find the parent resource to bind the IAM policy to. If not specified,
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
  /// The parent of the resource. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> parent;
  /// The role that should be applied. Only one
  /// `gcp.logging.LogViewIamBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [LogViewIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogViewIamBinding]. {@macro pulumi_logging_log_view_iam_binding_log_view_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogViewIamBinding(
    String name, {
    LogViewIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/logViewIamBinding:LogViewIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    condition = registerOutput<LogViewIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogViewIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [LogViewIamBinding] resource's state with the given [name] and [id].
  static LogViewIamBinding get(
    String name,
    pulumi.Input<String> id, {
    LogViewIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogViewIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogViewIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/logViewIamBinding:LogViewIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    condition = registerOutput<LogViewIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogViewIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [LogViewIamBinding] resource.
  LogViewIamBinding.reference(String urn)
    : super(
        'gcp:logging/logViewIamBinding:LogViewIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    condition = registerOutput<LogViewIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogViewIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    role = registerOutput<String>('role');
  }
}
