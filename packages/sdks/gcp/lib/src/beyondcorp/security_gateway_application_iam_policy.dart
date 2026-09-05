import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_iam_policy_args.dart';
import 'security_gateway_application_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for BeyondCorp SecurityGatewayApplication. Each of these resources serves a different use case:
///
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamPolicy`: Authoritative. Sets the IAM policy for the securitygatewayapplication and replaces any existing policy already attached.
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the securitygatewayapplication are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the securitygatewayapplication are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamPolicy`: Retrieves the IAM policy for the securitygatewayapplication
///
/// &gt; **Note:** `gcp.beyondcorp.SecurityGatewayApplicationIamPolicy` **cannot** be used in conjunction with `gcp.beyondcorp.SecurityGatewayApplicationIamBinding` and `gcp.beyondcorp.SecurityGatewayApplicationIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.beyondcorp.SecurityGatewayApplicationIamBinding` resources **can be** used in conjunction with `gcp.beyondcorp.SecurityGatewayApplicationIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.beyondcorp.SecurityGatewayApplicationIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Beyondcorp.SecurityGatewayApplicationIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayApplicationIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayApplicationIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
///     role    = "roles/beyondcorp.securityGatewayUser"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_beyondcorp_securitygatewayapplicationiampolicy" "policy" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   policy_data         = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayApplicationIamPolicy("policy", SecurityGatewayApplicationIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamPolicy
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
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
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
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
///     var policy = new Gcp.Beyondcorp.SecurityGatewayApplicationIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
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
/// 		_, err = beyondcorp.NewSecurityGatewayApplicationIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayApplicationIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
///     role    = "roles/beyondcorp.securityGatewayUser"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_beyondcorp_securitygatewayapplicationiampolicy" "policy" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   policy_data         = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayApplicationIamPolicy("policy", SecurityGatewayApplicationIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamPolicy
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayApplicationIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayApplicationIamBinding("binding", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayApplicationIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiambinding" "binding" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   members             = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBindingArgs;
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
///         var binding = new SecurityGatewayApplicationIamBinding("binding", SecurityGatewayApplicationIamBindingArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamBinding
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const binding = new gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// binding = gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayApplicationIamBinding("binding", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayApplicationIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &beyondcorp.SecurityGatewayApplicationIamBindingConditionArgs{
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiambinding" "binding" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   members             = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBindingArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationIamBindingConditionArgs;
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
///         var binding = new SecurityGatewayApplicationIamBinding("binding", SecurityGatewayApplicationIamBindingArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .condition(SecurityGatewayApplicationIamBindingConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamBinding
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayApplicationIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.beyondcorp.SecurityGatewayApplicationIamMember("member", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.beyondcorp.SecurityGatewayApplicationIamMember("member",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayApplicationIamMember("member", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamMember(ctx, "member", &beyondcorp.SecurityGatewayApplicationIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiammember" "member" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   member              = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMemberArgs;
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
///         var member = new SecurityGatewayApplicationIamMember("member", SecurityGatewayApplicationIamMemberArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamMember
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const member = new gcp.beyondcorp.SecurityGatewayApplicationIamMember("member", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// member = gcp.beyondcorp.SecurityGatewayApplicationIamMember("member",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayApplicationIamMember("member", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamMember(ctx, "member", &beyondcorp.SecurityGatewayApplicationIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
/// 			Condition: &beyondcorp.SecurityGatewayApplicationIamMemberConditionArgs{
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiammember" "member" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   member              = "user:jane@example.com"
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMemberArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationIamMemberConditionArgs;
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
///         var member = new SecurityGatewayApplicationIamMember("member", SecurityGatewayApplicationIamMemberArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .condition(SecurityGatewayApplicationIamMemberConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamMember
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// # IAM policy for BeyondCorp SecurityGatewayApplication
///
/// Three different resources help you manage your IAM policy for BeyondCorp SecurityGatewayApplication. Each of these resources serves a different use case:
///
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamPolicy`: Authoritative. Sets the IAM policy for the securitygatewayapplication and replaces any existing policy already attached.
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamBinding`: Authoritative for a given role and condition combination (the condition can be omitted). Updates the IAM policy to grant a role to a list of members. Other role and condition combinations within the IAM policy for the securitygatewayapplication are preserved. Members added outside of Terraform for the same role and condition combination will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the same role and condition combination for the securitygatewayapplication are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.beyondcorp.SecurityGatewayApplicationIamPolicy`: Retrieves the IAM policy for the securitygatewayapplication
///
/// &gt; **Note:** `gcp.beyondcorp.SecurityGatewayApplicationIamPolicy` **cannot** be used in conjunction with `gcp.beyondcorp.SecurityGatewayApplicationIamBinding` and `gcp.beyondcorp.SecurityGatewayApplicationIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.beyondcorp.SecurityGatewayApplicationIamBinding` resources **can be** used in conjunction with `gcp.beyondcorp.SecurityGatewayApplicationIamMember` resources **only if** they do not grant privilege to the same role and condition combination.
///
/// &gt; **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.beyondcorp.SecurityGatewayApplicationIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Beyondcorp.SecurityGatewayApplicationIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayApplicationIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayApplicationIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
///     role    = "roles/beyondcorp.securityGatewayUser"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_beyondcorp_securitygatewayapplicationiampolicy" "policy" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   policy_data         = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayApplicationIamPolicy("policy", SecurityGatewayApplicationIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamPolicy
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
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
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayApplicationIamPolicy("policy",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
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
///     var policy = new Gcp.Beyondcorp.SecurityGatewayApplicationIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
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
/// 		_, err = beyondcorp.NewSecurityGatewayApplicationIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayApplicationIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
///     role    = "roles/beyondcorp.securityGatewayUser"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_beyondcorp_securitygatewayapplicationiampolicy" "policy" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   policy_data         = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayApplicationIamPolicy("policy", SecurityGatewayApplicationIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamPolicy
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayApplicationIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayApplicationIamBinding("binding", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayApplicationIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiambinding" "binding" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   members             = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBindingArgs;
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
///         var binding = new SecurityGatewayApplicationIamBinding("binding", SecurityGatewayApplicationIamBindingArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamBinding
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const binding = new gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// binding = gcp.beyondcorp.SecurityGatewayApplicationIamBinding("binding",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayApplicationIamBinding("binding", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayApplicationIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &beyondcorp.SecurityGatewayApplicationIamBindingConditionArgs{
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiambinding" "binding" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   members             = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamBindingArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationIamBindingConditionArgs;
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
///         var binding = new SecurityGatewayApplicationIamBinding("binding", SecurityGatewayApplicationIamBindingArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .condition(SecurityGatewayApplicationIamBindingConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamBinding
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayApplicationIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.beyondcorp.SecurityGatewayApplicationIamMember("member", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.beyondcorp.SecurityGatewayApplicationIamMember("member",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayApplicationIamMember("member", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamMember(ctx, "member", &beyondcorp.SecurityGatewayApplicationIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiammember" "member" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   member              = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMemberArgs;
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
///         var member = new SecurityGatewayApplicationIamMember("member", SecurityGatewayApplicationIamMemberArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamMember
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const member = new gcp.beyondcorp.SecurityGatewayApplicationIamMember("member", {
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// member = gcp.beyondcorp.SecurityGatewayApplicationIamMember("member",
///     project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayApplicationIamMember("member", new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayApplicationIamMember(ctx, "member", &beyondcorp.SecurityGatewayApplicationIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			ApplicationId:     pulumi.Any(example.ApplicationId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
/// 			Condition: &beyondcorp.SecurityGatewayApplicationIamMemberConditionArgs{
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
/// resource "gcp_beyondcorp_securitygatewayapplicationiammember" "member" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
///   role                = "roles/beyondcorp.securityGatewayUser"
///   member              = "user:jane@example.com"
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationIamMemberArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationIamMemberConditionArgs;
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
///         var member = new SecurityGatewayApplicationIamMember("member", SecurityGatewayApplicationIamMemberArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .condition(SecurityGatewayApplicationIamMemberConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayApplicationIamMember
///     properties:
///       project: ${example.project}
///       securityGatewayId: ${example.securityGatewayId}
///       applicationId: ${example.applicationId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// * projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}}
/// * {{project}}/{{security_gateway_id}}/{{application_id}}
/// * {{security_gateway_id}}/{{application_id}}
/// * {{application_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BeyondCorp securitygatewayapplication IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_beyondcorp_security_gateway_application_iam_member.editor "projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}} roles/beyondcorp.securityGatewayUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_beyondcorp_security_gateway_application_iam_binding.editor "projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}} roles/beyondcorp.securityGatewayUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayApplicationIamPolicy:SecurityGatewayApplicationIamPolicy editor projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SecurityGatewayApplicationIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> applicationId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// ID of the Security Gateway resource this belongs to. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> securityGatewayId;

  /// Creates a new [SecurityGatewayApplicationIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGatewayApplicationIamPolicy]. {@macro pulumi_beyondcorp_security_gateway_application_iam_policy_security_gateway_application_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGatewayApplicationIamPolicy(
    String name, {
    SecurityGatewayApplicationIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayApplicationIamPolicy:SecurityGatewayApplicationIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    applicationId = registerOutput<String>('applicationId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    securityGatewayId = registerOutput<String>('securityGatewayId');
  }

  /// Gets an existing [SecurityGatewayApplicationIamPolicy] resource's state with the given [name] and [id].
  static SecurityGatewayApplicationIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    SecurityGatewayApplicationIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityGatewayApplicationIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityGatewayApplicationIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayApplicationIamPolicy:SecurityGatewayApplicationIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    securityGatewayId = registerOutput<String>('securityGatewayId');
  }

  /// Creates a typed reference to an existing [SecurityGatewayApplicationIamPolicy] resource.
  SecurityGatewayApplicationIamPolicy.reference(String urn)
    : super(
        'gcp:beyondcorp/securityGatewayApplicationIamPolicy:SecurityGatewayApplicationIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    securityGatewayId = registerOutput<String>('securityGatewayId');
  }
}
