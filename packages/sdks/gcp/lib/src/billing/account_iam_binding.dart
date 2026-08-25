import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_iam_binding_args.dart';
import 'account_iam_binding_condition.dart';
import 'account_iam_binding_state.dart';

/// Three different resources help you manage IAM policies on billing accounts. Each of these resources serves a different use case:
///
/// * `gcp.billing.AccountIamPolicy`: Authoritative. Sets the IAM policy for the billing accounts and replaces any existing policy already attached.
/// * `gcp.billing.AccountIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * `gcp.billing.AccountIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role of the billing accounts are preserved.
///
/// &gt; **Note:** `gcp.billing.AccountIamPolicy` **cannot** be used in conjunction with `gcp.billing.AccountIamBinding` and `gcp.billing.AccountIamMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the billing account as `gcp.billing.AccountIamPolicy` replaces the entire policy.
///
/// &gt; **Note:** `gcp.billing.AccountIamBinding` resources **can be** used in conjunction with `gcp.billing.AccountIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.billing.AccountIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/billing.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.billing.AccountIamPolicy("editor", {
///     billingAccountId: "00AA00-000AAA-00AA0A",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/billing.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.billing.AccountIamPolicy("editor",
///     billing_account_id="00AA00-000AAA-00AA0A",
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
///                 Role = "roles/billing.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.Billing.AccountIamPolicy("editor", new()
///     {
///         BillingAccountId = "00AA00-000AAA-00AA0A",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/billing.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewAccountIamPolicy(ctx, "editor", &billing.AccountIamPolicyArgs{
/// 			BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// 			PolicyData:       pulumi.String(admin.PolicyData),
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
///     role    = "roles/billing.viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_billing_accountiampolicy" "editor" {
///   billing_account_id = "00AA00-000AAA-00AA0A"
///   policy_data        = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.billing.AccountIamPolicy;
/// import com.pulumi.gcp.billing.AccountIamPolicyArgs;
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
///                 .role("roles/billing.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new AccountIamPolicy("editor", AccountIamPolicyArgs.builder()
///             .billingAccountId("00AA00-000AAA-00AA0A")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:billing:AccountIamPolicy
///     properties:
///       billingAccountId: 00AA00-000AAA-00AA0A
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/billing.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.billing.AccountIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamBinding("editor", {
///     billingAccountId: "00AA00-000AAA-00AA0A",
///     role: "roles/billing.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamBinding("editor",
///     billing_account_id="00AA00-000AAA-00AA0A",
///     role="roles/billing.viewer",
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
///     var editor = new Gcp.Billing.AccountIamBinding("editor", new()
///     {
///         BillingAccountId = "00AA00-000AAA-00AA0A",
///         Role = "roles/billing.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewAccountIamBinding(ctx, "editor", &billing.AccountIamBindingArgs{
/// 			BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// 			Role:             pulumi.String("roles/billing.viewer"),
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
/// resource "gcp_billing_accountiambinding" "editor" {
///   billing_account_id = "00AA00-000AAA-00AA0A"
///   role               = "roles/billing.viewer"
///   members            = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.billing.AccountIamBinding;
/// import com.pulumi.gcp.billing.AccountIamBindingArgs;
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
///         var editor = new AccountIamBinding("editor", AccountIamBindingArgs.builder()
///             .billingAccountId("00AA00-000AAA-00AA0A")
///             .role("roles/billing.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:billing:AccountIamBinding
///     properties:
///       billingAccountId: 00AA00-000AAA-00AA0A
///       role: roles/billing.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.billing.AccountIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamMember("editor", {
///     billingAccountId: "00AA00-000AAA-00AA0A",
///     role: "roles/billing.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamMember("editor",
///     billing_account_id="00AA00-000AAA-00AA0A",
///     role="roles/billing.viewer",
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
///     var editor = new Gcp.Billing.AccountIamMember("editor", new()
///     {
///         BillingAccountId = "00AA00-000AAA-00AA0A",
///         Role = "roles/billing.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewAccountIamMember(ctx, "editor", &billing.AccountIamMemberArgs{
/// 			BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// 			Role:             pulumi.String("roles/billing.viewer"),
/// 			Member:           pulumi.String("user:jane@example.com"),
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
/// resource "gcp_billing_accountiammember" "editor" {
///   billing_account_id = "00AA00-000AAA-00AA0A"
///   role               = "roles/billing.viewer"
///   member             = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.billing.AccountIamMember;
/// import com.pulumi.gcp.billing.AccountIamMemberArgs;
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
///         var editor = new AccountIamMember("editor", AccountIamMemberArgs.builder()
///             .billingAccountId("00AA00-000AAA-00AA0A")
///             .role("roles/billing.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:billing:AccountIamMember
///     properties:
///       billingAccountId: 00AA00-000AAA-00AA0A
///       role: roles/billing.viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.billing.AccountIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/billing.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.billing.AccountIamPolicy("editor", {
///     billingAccountId: "00AA00-000AAA-00AA0A",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/billing.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.billing.AccountIamPolicy("editor",
///     billing_account_id="00AA00-000AAA-00AA0A",
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
///                 Role = "roles/billing.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.Billing.AccountIamPolicy("editor", new()
///     {
///         BillingAccountId = "00AA00-000AAA-00AA0A",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/billing.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewAccountIamPolicy(ctx, "editor", &billing.AccountIamPolicyArgs{
/// 			BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// 			PolicyData:       pulumi.String(admin.PolicyData),
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
///     role    = "roles/billing.viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_billing_accountiampolicy" "editor" {
///   billing_account_id = "00AA00-000AAA-00AA0A"
///   policy_data        = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.billing.AccountIamPolicy;
/// import com.pulumi.gcp.billing.AccountIamPolicyArgs;
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
///                 .role("roles/billing.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new AccountIamPolicy("editor", AccountIamPolicyArgs.builder()
///             .billingAccountId("00AA00-000AAA-00AA0A")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:billing:AccountIamPolicy
///     properties:
///       billingAccountId: 00AA00-000AAA-00AA0A
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/billing.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.billing.AccountIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamBinding("editor", {
///     billingAccountId: "00AA00-000AAA-00AA0A",
///     role: "roles/billing.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamBinding("editor",
///     billing_account_id="00AA00-000AAA-00AA0A",
///     role="roles/billing.viewer",
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
///     var editor = new Gcp.Billing.AccountIamBinding("editor", new()
///     {
///         BillingAccountId = "00AA00-000AAA-00AA0A",
///         Role = "roles/billing.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewAccountIamBinding(ctx, "editor", &billing.AccountIamBindingArgs{
/// 			BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// 			Role:             pulumi.String("roles/billing.viewer"),
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
/// resource "gcp_billing_accountiambinding" "editor" {
///   billing_account_id = "00AA00-000AAA-00AA0A"
///   role               = "roles/billing.viewer"
///   members            = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.billing.AccountIamBinding;
/// import com.pulumi.gcp.billing.AccountIamBindingArgs;
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
///         var editor = new AccountIamBinding("editor", AccountIamBindingArgs.builder()
///             .billingAccountId("00AA00-000AAA-00AA0A")
///             .role("roles/billing.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:billing:AccountIamBinding
///     properties:
///       billingAccountId: 00AA00-000AAA-00AA0A
///       role: roles/billing.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.billing.AccountIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamMember("editor", {
///     billingAccountId: "00AA00-000AAA-00AA0A",
///     role: "roles/billing.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamMember("editor",
///     billing_account_id="00AA00-000AAA-00AA0A",
///     role="roles/billing.viewer",
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
///     var editor = new Gcp.Billing.AccountIamMember("editor", new()
///     {
///         BillingAccountId = "00AA00-000AAA-00AA0A",
///         Role = "roles/billing.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewAccountIamMember(ctx, "editor", &billing.AccountIamMemberArgs{
/// 			BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// 			Role:             pulumi.String("roles/billing.viewer"),
/// 			Member:           pulumi.String("user:jane@example.com"),
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
/// resource "gcp_billing_accountiammember" "editor" {
///   billing_account_id = "00AA00-000AAA-00AA0A"
///   role               = "roles/billing.viewer"
///   member             = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.billing.AccountIamMember;
/// import com.pulumi.gcp.billing.AccountIamMemberArgs;
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
///         var editor = new AccountIamMember("editor", AccountIamMemberArgs.builder()
///             .billingAccountId("00AA00-000AAA-00AA0A")
///             .role("roles/billing.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:billing:AccountIamMember
///     properties:
///       billingAccountId: 00AA00-000AAA-00AA0A
///       role: roles/billing.viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `organizations/my-org-id/roles/my-custom-role`.
class AccountIamBinding extends pulumi.CustomResource {
  /// The billing account id.
  ///
  /// For `gcp.billing.AccountIamMember` or `gcp.billing.AccountIamBinding`:
  late final pulumi.Output<String> billingAccountId;
  late final pulumi.Output<AccountIamBindingCondition?> condition;
  /// (Computed) The etag of the billing account's IAM policy.
  late final pulumi.Output<String> etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;
  /// The role that should be applied. Only one
  /// `gcp.billing.AccountIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.billing.AccountIamPolicy` only:
  late final pulumi.Output<String> role;

  /// Creates a new [AccountIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountIamBinding]. {@macro pulumi_billing_account_iam_binding_account_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountIamBinding(
    String name, {
    AccountIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/accountIamBinding:AccountIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    billingAccountId = registerOutput<String>('billingAccountId');
    condition = registerOutput<AccountIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AccountIamBinding] resource's state with the given [name] and [id].
  static AccountIamBinding get(
    String name,
    pulumi.Input<String> id, {
    AccountIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/accountIamBinding:AccountIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingAccountId = registerOutput<String>('billingAccountId');
    condition = registerOutput<AccountIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AccountIamBinding] resource.
  AccountIamBinding.reference(String urn)
    : super(
        'gcp:billing/accountIamBinding:AccountIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    billingAccountId = registerOutput<String>('billingAccountId');
    condition = registerOutput<AccountIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    role = registerOutput<String>('role');
  }
}
