import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_version_iam_member_args.dart';
import 'app_engine_version_iam_member_condition.dart';
import 'app_engine_version_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AppEngineVersion. Each of these resources serves a different use case:
///
/// * `gcp.iap.AppEngineVersionIamPolicy`: Authoritative. Sets the IAM policy for the appengineversion and replaces any existing policy already attached.
/// * `gcp.iap.AppEngineVersionIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the appengineversion are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AppEngineVersionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the appengineversion are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AppEngineVersionIamPolicy`: Retrieves the IAM policy for the appengineversion
///
/// &gt; **Note:** `gcp.iap.AppEngineVersionIamPolicy` **cannot** be used in conjunction with `gcp.iap.AppEngineVersionIamBinding` and `gcp.iap.AppEngineVersionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AppEngineVersionIamBinding` resources **can be** used in conjunction with `gcp.iap.AppEngineVersionIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AppEngineVersionIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.httpsResourceAccessor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.httpsResourceAccessor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
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
///                 Role = "roles/iap.httpsResourceAccessor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.httpsResourceAccessor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
/// 			VersionId:  pulumi.Any(version.VersionId),
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
///     role    = "roles/iap.httpsResourceAccessor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_appengineversioniampolicy" "policy" {
///   project     = version.project
///   app_id      = version.project
///   service     = version.service
///   version_id  = version.versionId
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
///                 .role("roles/iap.httpsResourceAccessor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineVersionIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.httpsResourceAccessor
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
///         role: "roles/iap.httpsResourceAccessor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.httpsResourceAccessor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
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
///                 Role = "roles/iap.httpsResourceAccessor",
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
///     var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.httpsResourceAccessor",
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
/// 		_, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
/// 			VersionId:  pulumi.Any(version.VersionId),
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
///     role    = "roles/iap.httpsResourceAccessor"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_iap_appengineversioniampolicy" "policy" {
///   project     = version.project
///   app_id      = version.project
///   service     = version.service
///   version_id  = version.versionId
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
///                 .role("roles/iap.httpsResourceAccessor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineVersionIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.httpsResourceAccessor
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AppEngineVersionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// resource "gcp_iap_appengineversioniambinding" "binding" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   members    = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
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
///         var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:AppEngineVersionIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
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
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
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
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AppEngineVersionIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AppEngineVersionIamBindingConditionArgs{
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
/// resource "gcp_iap_appengineversioniambinding" "binding" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   members    = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamBindingConditionArgs;
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
///         var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .members("user:jane@example.com")
///             .condition(AppEngineVersionIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AppEngineVersionIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AppEngineVersionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AppEngineVersionIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// resource "gcp_iap_appengineversioniammember" "member" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   member     = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
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
///         var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:AppEngineVersionIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
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
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
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
/// member = gcp.iap.AppEngineVersionIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AppEngineVersionIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AppEngineVersionIamMemberConditionArgs{
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
/// resource "gcp_iap_appengineversioniammember" "member" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   member     = "user:jane@example.com"
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamMemberConditionArgs;
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
///         var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .member("user:jane@example.com")
///             .condition(AppEngineVersionIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AppEngineVersionIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
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
/// # IAM policy for Identity-Aware Proxy AppEngineVersion
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AppEngineVersion. Each of these resources serves a different use case:
///
/// * `gcp.iap.AppEngineVersionIamPolicy`: Authoritative. Sets the IAM policy for the appengineversion and replaces any existing policy already attached.
/// * `gcp.iap.AppEngineVersionIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the appengineversion are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.iap.AppEngineVersionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the appengineversion are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AppEngineVersionIamPolicy`: Retrieves the IAM policy for the appengineversion
///
/// &gt; **Note:** `gcp.iap.AppEngineVersionIamPolicy` **cannot** be used in conjunction with `gcp.iap.AppEngineVersionIamBinding` and `gcp.iap.AppEngineVersionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.iap.AppEngineVersionIamBinding` resources **can be** used in conjunction with `gcp.iap.AppEngineVersionIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AppEngineVersionIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iap.httpsResourceAccessor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.httpsResourceAccessor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
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
///                 Role = "roles/iap.httpsResourceAccessor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.httpsResourceAccessor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
/// 			VersionId:  pulumi.Any(version.VersionId),
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
///     role    = "roles/iap.httpsResourceAccessor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_iap_appengineversioniampolicy" "policy" {
///   project     = version.project
///   app_id      = version.project
///   service     = version.service
///   version_id  = version.versionId
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
///                 .role("roles/iap.httpsResourceAccessor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineVersionIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.httpsResourceAccessor
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
///         role: "roles/iap.httpsResourceAccessor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iap.httpsResourceAccessor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
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
///                 Role = "roles/iap.httpsResourceAccessor",
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
///     var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iap.httpsResourceAccessor",
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
/// 		_, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
/// 			VersionId:  pulumi.Any(version.VersionId),
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
///     role    = "roles/iap.httpsResourceAccessor"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_iap_appengineversioniampolicy" "policy" {
///   project     = version.project
///   app_id      = version.project
///   service     = version.service
///   version_id  = version.versionId
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
///                 .role("roles/iap.httpsResourceAccessor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineVersionIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iap.httpsResourceAccessor
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AppEngineVersionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// resource "gcp_iap_appengineversioniambinding" "binding" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   members    = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
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
///         var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iap:AppEngineVersionIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
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
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
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
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AppEngineVersionIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AppEngineVersionIamBindingConditionArgs{
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
/// resource "gcp_iap_appengineversioniambinding" "binding" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   members    = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamBindingConditionArgs;
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
///         var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .members("user:jane@example.com")
///             .condition(AppEngineVersionIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AppEngineVersionIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AppEngineVersionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AppEngineVersionIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// resource "gcp_iap_appengineversioniammember" "member" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   member     = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
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
///         var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iap:AppEngineVersionIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
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
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
///     role: "roles/iap.httpsResourceAccessor",
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
/// member = gcp.iap.AppEngineVersionIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"],
///     role="roles/iap.httpsResourceAccessor",
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
///     var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///         Role = "roles/iap.httpsResourceAccessor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AppEngineVersionIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// 			Project:   pulumi.Any(version.Project),
/// 			AppId:     pulumi.Any(version.Project),
/// 			Service:   pulumi.Any(version.Service),
/// 			VersionId: pulumi.Any(version.VersionId),
/// 			Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AppEngineVersionIamMemberConditionArgs{
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
/// resource "gcp_iap_appengineversioniammember" "member" {
///   project    = version.project
///   app_id     = version.project
///   service    = version.service
///   version_id = version.versionId
///   role       = "roles/iap.httpsResourceAccessor"
///   member     = "user:jane@example.com"
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamMemberConditionArgs;
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
///         var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
///             .project(version.get("project"))
///             .appId(version.get("project"))
///             .service(version.get("service"))
///             .versionId(version.get("versionId"))
///             .role("roles/iap.httpsResourceAccessor")
///             .member("user:jane@example.com")
///             .condition(AppEngineVersionIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AppEngineVersionIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       versionId: ${version.versionId}
///       role: roles/iap.httpsResourceAccessor
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
/// * projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}}
/// * {{project}}/{{appId}}/{{service}}/{{versionId}}
/// * {{appId}}/{{service}}/{{versionId}}
/// * {{version}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy appengineversion IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_iap_app_engine_version_iam_member.editor "projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_iap_app_engine_version_iam_binding.editor "projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:iap/appEngineVersionIamMember:AppEngineVersionIamMember editor projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AppEngineVersionIamMember extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> appId;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<AppEngineVersionIamMemberCondition?> condition;
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
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.iap.AppEngineVersionIamBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;
  /// Service id of the App Engine application Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> service;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> versionId;

  /// Creates a new [AppEngineVersionIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppEngineVersionIamMember]. {@macro pulumi_iap_app_engine_version_iam_member_app_engine_version_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppEngineVersionIamMember(
    String name, {
    AppEngineVersionIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/appEngineVersionIamMember:AppEngineVersionIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    condition = registerOutput<AppEngineVersionIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppEngineVersionIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    service = registerOutput<String>('service');
    versionId = registerOutput<String>('versionId');
  }

  /// Gets an existing [AppEngineVersionIamMember] resource's state with the given [name] and [id].
  static AppEngineVersionIamMember get(
    String name,
    pulumi.Input<String> id, {
    AppEngineVersionIamMemberState? state,
  }) {
    return AppEngineVersionIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppEngineVersionIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/appEngineVersionIamMember:AppEngineVersionIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    condition = registerOutput<AppEngineVersionIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppEngineVersionIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
    service = registerOutput<String>('service');
    versionId = registerOutput<String>('versionId');
  }
}
