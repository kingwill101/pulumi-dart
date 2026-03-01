import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_service_iam_policy_args.dart';
import 'app_engine_service_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AppEngineService. Each of these resources serves a different use case:
///
/// * `gcp.iap.AppEngineServiceIamPolicy`: Authoritative. Sets the IAM policy for the appengineservice and replaces any existing policy already attached.
/// * `gcp.iap.AppEngineServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the appengineservice are preserved.
/// * `gcp.iap.AppEngineServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the appengineservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AppEngineServiceIamPolicy`: Retrieves the IAM policy for the appengineservice
///
/// > **Note:** `gcp.iap.AppEngineServiceIamPolicy` **cannot** be used in conjunction with `gcp.iap.AppEngineServiceIamBinding` and `gcp.iap.AppEngineServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.AppEngineServiceIamBinding` resources **can be** used in conjunction with `gcp.iap.AppEngineServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AppEngineServiceIamPolicy
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
/// const policy = new gcp.iap.AppEngineServiceIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// policy = gcp.iap.AppEngineServiceIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var policy = new Gcp.Iap.AppEngineServiceIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err = iap.NewAppEngineServiceIamPolicy(ctx, "policy", &iap.AppEngineServiceIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicyArgs;
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
///                 .role("roles/iap.httpsResourceAccessor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AppEngineServiceIamPolicy("policy", AppEngineServiceIamPolicyArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineServiceIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// const policy = new gcp.iap.AppEngineServiceIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// policy = gcp.iap.AppEngineServiceIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var policy = new Gcp.Iap.AppEngineServiceIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err = iap.NewAppEngineServiceIamPolicy(ctx, "policy", &iap.AppEngineServiceIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicyArgs;
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
///         var policy = new AppEngineServiceIamPolicy("policy", AppEngineServiceIamPolicyArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineServiceIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// ## gcp.iap.AppEngineServiceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AppEngineServiceIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     role: "roles/iap.httpsResourceAccessor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AppEngineServiceIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var binding = new Gcp.Iap.AppEngineServiceIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err := iap.NewAppEngineServiceIamBinding(ctx, "binding", &iap.AppEngineServiceIamBindingArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamBinding;
/// import com.pulumi.gcp.iap.AppEngineServiceIamBindingArgs;
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
///         var binding = new AppEngineServiceIamBinding("binding", AppEngineServiceIamBindingArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
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
///     type: gcp:iap:AppEngineServiceIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// const binding = new gcp.iap.AppEngineServiceIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// binding = gcp.iap.AppEngineServiceIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var binding = new Gcp.Iap.AppEngineServiceIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         Role = "roles/iap.httpsResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AppEngineServiceIamBindingConditionArgs
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
/// 		_, err := iap.NewAppEngineServiceIamBinding(ctx, "binding", &iap.AppEngineServiceIamBindingArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AppEngineServiceIamBindingConditionArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineServiceIamBinding;
/// import com.pulumi.gcp.iap.AppEngineServiceIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineServiceIamBindingConditionArgs;
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
///         var binding = new AppEngineServiceIamBinding("binding", AppEngineServiceIamBindingArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .role("roles/iap.httpsResourceAccessor")
///             .members("user:jane@example.com")
///             .condition(AppEngineServiceIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AppEngineServiceIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       role: roles/iap.httpsResourceAccessor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AppEngineServiceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AppEngineServiceIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     role: "roles/iap.httpsResourceAccessor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AppEngineServiceIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var member = new Gcp.Iap.AppEngineServiceIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err := iap.NewAppEngineServiceIamMember(ctx, "member", &iap.AppEngineServiceIamMemberArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamMember;
/// import com.pulumi.gcp.iap.AppEngineServiceIamMemberArgs;
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
///         var member = new AppEngineServiceIamMember("member", AppEngineServiceIamMemberArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
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
///     type: gcp:iap:AppEngineServiceIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// const member = new gcp.iap.AppEngineServiceIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// member = gcp.iap.AppEngineServiceIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var member = new Gcp.Iap.AppEngineServiceIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         Role = "roles/iap.httpsResourceAccessor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AppEngineServiceIamMemberConditionArgs
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
/// 		_, err := iap.NewAppEngineServiceIamMember(ctx, "member", &iap.AppEngineServiceIamMemberArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Member:  pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AppEngineServiceIamMemberConditionArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineServiceIamMember;
/// import com.pulumi.gcp.iap.AppEngineServiceIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineServiceIamMemberConditionArgs;
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
///         var member = new AppEngineServiceIamMember("member", AppEngineServiceIamMemberArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .role("roles/iap.httpsResourceAccessor")
///             .member("user:jane@example.com")
///             .condition(AppEngineServiceIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AppEngineServiceIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// # IAM policy for Identity-Aware Proxy AppEngineService
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AppEngineService. Each of these resources serves a different use case:
///
/// * `gcp.iap.AppEngineServiceIamPolicy`: Authoritative. Sets the IAM policy for the appengineservice and replaces any existing policy already attached.
/// * `gcp.iap.AppEngineServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the appengineservice are preserved.
/// * `gcp.iap.AppEngineServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the appengineservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.AppEngineServiceIamPolicy`: Retrieves the IAM policy for the appengineservice
///
/// > **Note:** `gcp.iap.AppEngineServiceIamPolicy` **cannot** be used in conjunction with `gcp.iap.AppEngineServiceIamBinding` and `gcp.iap.AppEngineServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.AppEngineServiceIamBinding` resources **can be** used in conjunction with `gcp.iap.AppEngineServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.AppEngineServiceIamPolicy
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
/// const policy = new gcp.iap.AppEngineServiceIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// policy = gcp.iap.AppEngineServiceIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var policy = new Gcp.Iap.AppEngineServiceIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err = iap.NewAppEngineServiceIamPolicy(ctx, "policy", &iap.AppEngineServiceIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicyArgs;
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
///                 .role("roles/iap.httpsResourceAccessor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AppEngineServiceIamPolicy("policy", AppEngineServiceIamPolicyArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineServiceIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// const policy = new gcp.iap.AppEngineServiceIamPolicy("policy", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// policy = gcp.iap.AppEngineServiceIamPolicy("policy",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var policy = new Gcp.Iap.AppEngineServiceIamPolicy("policy", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err = iap.NewAppEngineServiceIamPolicy(ctx, "policy", &iap.AppEngineServiceIamPolicyArgs{
/// 			Project:    pulumi.Any(version.Project),
/// 			AppId:      pulumi.Any(version.Project),
/// 			Service:    pulumi.Any(version.Service),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineServiceIamPolicyArgs;
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
///         var policy = new AppEngineServiceIamPolicy("policy", AppEngineServiceIamPolicyArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iap:AppEngineServiceIamPolicy
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// ## gcp.iap.AppEngineServiceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AppEngineServiceIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     role: "roles/iap.httpsResourceAccessor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AppEngineServiceIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var binding = new Gcp.Iap.AppEngineServiceIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err := iap.NewAppEngineServiceIamBinding(ctx, "binding", &iap.AppEngineServiceIamBindingArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamBinding;
/// import com.pulumi.gcp.iap.AppEngineServiceIamBindingArgs;
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
///         var binding = new AppEngineServiceIamBinding("binding", AppEngineServiceIamBindingArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
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
///     type: gcp:iap:AppEngineServiceIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// const binding = new gcp.iap.AppEngineServiceIamBinding("binding", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// binding = gcp.iap.AppEngineServiceIamBinding("binding",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var binding = new Gcp.Iap.AppEngineServiceIamBinding("binding", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         Role = "roles/iap.httpsResourceAccessor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Iap.Inputs.AppEngineServiceIamBindingConditionArgs
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
/// 		_, err := iap.NewAppEngineServiceIamBinding(ctx, "binding", &iap.AppEngineServiceIamBindingArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &iap.AppEngineServiceIamBindingConditionArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineServiceIamBinding;
/// import com.pulumi.gcp.iap.AppEngineServiceIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineServiceIamBindingConditionArgs;
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
///         var binding = new AppEngineServiceIamBinding("binding", AppEngineServiceIamBindingArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .role("roles/iap.httpsResourceAccessor")
///             .members("user:jane@example.com")
///             .condition(AppEngineServiceIamBindingConditionArgs.builder()
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
///     type: gcp:iap:AppEngineServiceIamBinding
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
///       role: roles/iap.httpsResourceAccessor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.iap.AppEngineServiceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AppEngineServiceIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     role: "roles/iap.httpsResourceAccessor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AppEngineServiceIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var member = new Gcp.Iap.AppEngineServiceIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
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
/// 		_, err := iap.NewAppEngineServiceIamMember(ctx, "member", &iap.AppEngineServiceIamMemberArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iap.AppEngineServiceIamMember;
/// import com.pulumi.gcp.iap.AppEngineServiceIamMemberArgs;
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
///         var member = new AppEngineServiceIamMember("member", AppEngineServiceIamMemberArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
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
///     type: gcp:iap:AppEngineServiceIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// const member = new gcp.iap.AppEngineServiceIamMember("member", {
///     project: version.project,
///     appId: version.project,
///     service: version.service,
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
/// member = gcp.iap.AppEngineServiceIamMember("member",
///     project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
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
///     var member = new Gcp.Iap.AppEngineServiceIamMember("member", new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         Role = "roles/iap.httpsResourceAccessor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Iap.Inputs.AppEngineServiceIamMemberConditionArgs
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
/// 		_, err := iap.NewAppEngineServiceIamMember(ctx, "member", &iap.AppEngineServiceIamMemberArgs{
/// 			Project: pulumi.Any(version.Project),
/// 			AppId:   pulumi.Any(version.Project),
/// 			Service: pulumi.Any(version.Service),
/// 			Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// 			Member:  pulumi.String("user:jane@example.com"),
/// 			Condition: &iap.AppEngineServiceIamMemberConditionArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.AppEngineServiceIamMember;
/// import com.pulumi.gcp.iap.AppEngineServiceIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineServiceIamMemberConditionArgs;
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
///         var member = new AppEngineServiceIamMember("member", AppEngineServiceIamMemberArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .role("roles/iap.httpsResourceAccessor")
///             .member("user:jane@example.com")
///             .condition(AppEngineServiceIamMemberConditionArgs.builder()
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
///     type: gcp:iap:AppEngineServiceIamMember
///     properties:
///       project: ${version.project}
///       appId: ${version.project}
///       service: ${version.service}
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
/// * projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}
///
/// * {{project}}/{{appId}}/{{service}}
///
/// * {{appId}}/{{service}}
///
/// * {{service}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy appengineservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/appEngineServiceIamPolicy:AppEngineServiceIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/appEngineServiceIamPolicy:AppEngineServiceIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/appEngineServiceIamPolicy:AppEngineServiceIamPolicy editor projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AppEngineServiceIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> appId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> service;

  /// Creates a new [AppEngineServiceIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppEngineServiceIamPolicy]. {@macro pulumi_iap_app_engine_service_iam_policy_app_engine_service_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppEngineServiceIamPolicy(
    String name, {
    AppEngineServiceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/appEngineServiceIamPolicy:AppEngineServiceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }

  /// Gets an existing [AppEngineServiceIamPolicy] resource's state with the given [name] and [id].
  static AppEngineServiceIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    AppEngineServiceIamPolicyState? state,
  }) {
    return AppEngineServiceIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppEngineServiceIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/appEngineServiceIamPolicy:AppEngineServiceIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
