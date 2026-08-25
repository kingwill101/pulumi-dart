import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_args.dart';
import 'iambinding_condition.dart';
import 'iambinding_state.dart';

/// When managing IAM roles, you can treat a service account either as a resource or as an identity. This resource is to add iam policy bindings to a service account resource, such as allowing the members to run operations as or modify the service account. To configure permissions for a service account on other GCP resources, use the googleProjectIam set of resources.
///
/// Three different resources help you manage your IAM policy for a service account. Each of these resources serves a different use case:
///
/// * `gcp.serviceaccount.IAMPolicy`: Authoritative. Sets the IAM policy for the service account and replaces any existing policy already attached.
/// * `gcp.serviceaccount.IAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service account are preserved.
/// * `gcp.serviceaccount.IAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service account are preserved.
///
/// &gt; **Note:** `gcp.serviceaccount.IAMPolicy` **cannot** be used in conjunction with `gcp.serviceaccount.IAMBinding` and `gcp.serviceaccount.IAMMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.serviceaccount.IAMBinding` resources **can be** used in conjunction with `gcp.serviceaccount.IAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## Example Usage
///
/// ### Service Account IAM Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iam.serviceAccountUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "my-service-account",
///     displayName: "A service account that only Jane can interact with",
/// });
/// const admin_account_iam = new gcp.serviceaccount.IAMPolicy("admin-account-iam", {
///     serviceAccountId: sa.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iam.serviceAccountUser",
///     "members": ["user:jane@example.com"],
/// }])
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="my-service-account",
///     display_name="A service account that only Jane can interact with")
/// admin_account_iam = gcp.serviceaccount.IAMPolicy("admin-account-iam",
///     service_account_id=sa.name,
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
///                 Role = "roles/iam.serviceAccountUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "my-service-account",
///         DisplayName = "A service account that only Jane can interact with",
///     });
///
///     var admin_account_iam = new Gcp.ServiceAccount.IAMPolicy("admin-account-iam", new()
///     {
///         ServiceAccountId = sa.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iam.serviceAccountUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-service-account"),
/// 			DisplayName: pulumi.String("A service account that only Jane can interact with"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewIAMPolicy(ctx, "admin-account-iam", &serviceaccount.IAMPolicyArgs{
/// 			ServiceAccountId: sa.Name,
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
///     role    = "roles/iam.serviceAccountUser"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "my-service-account"
///   display_name = "A service account that only Jane can interact with"
/// }
/// resource "gcp_serviceaccount_iampolicy" "admin-account-iam" {
///   service_account_id = gcp_serviceaccount_account.sa.name
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.IAMPolicy;
/// import com.pulumi.gcp.serviceaccount.IAMPolicyArgs;
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
///                 .role("roles/iam.serviceAccountUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("my-service-account")
///             .displayName("A service account that only Jane can interact with")
///             .build());
///
///         var admin_account_iam = new IAMPolicy("admin-account-iam", IAMPolicyArgs.builder()
///             .serviceAccountId(sa.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-service-account
///       displayName: A service account that only Jane can interact with
///   admin-account-iam:
///     type: gcp:serviceaccount:IAMPolicy
///     properties:
///       serviceAccountId: ${sa.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iam.serviceAccountUser
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ### Service Account IAM Binding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "my-service-account",
///     displayName: "A service account that only Jane can use",
/// });
/// const admin_account_iam = new gcp.serviceaccount.IAMBinding("admin-account-iam", {
///     serviceAccountId: sa.name,
///     role: "roles/iam.serviceAccountUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="my-service-account",
///     display_name="A service account that only Jane can use")
/// admin_account_iam = gcp.serviceaccount.IAMBinding("admin-account-iam",
///     service_account_id=sa.name,
///     role="roles/iam.serviceAccountUser",
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
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "my-service-account",
///         DisplayName = "A service account that only Jane can use",
///     });
///
///     var admin_account_iam = new Gcp.ServiceAccount.IAMBinding("admin-account-iam", new()
///     {
///         ServiceAccountId = sa.Name,
///         Role = "roles/iam.serviceAccountUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-service-account"),
/// 			DisplayName: pulumi.String("A service account that only Jane can use"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewIAMBinding(ctx, "admin-account-iam", &serviceaccount.IAMBindingArgs{
/// 			ServiceAccountId: sa.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountUser"),
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
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "my-service-account"
///   display_name = "A service account that only Jane can use"
/// }
/// resource "gcp_serviceaccount_iambinding" "admin-account-iam" {
///   service_account_id = gcp_serviceaccount_account.sa.name
///   role               = "roles/iam.serviceAccountUser"
///   members            = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.IAMBinding;
/// import com.pulumi.gcp.serviceaccount.IAMBindingArgs;
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
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("my-service-account")
///             .displayName("A service account that only Jane can use")
///             .build());
///
///         var admin_account_iam = new IAMBinding("admin-account-iam", IAMBindingArgs.builder()
///             .serviceAccountId(sa.name())
///             .role("roles/iam.serviceAccountUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-service-account
///       displayName: A service account that only Jane can use
///   admin-account-iam:
///     type: gcp:serviceaccount:IAMBinding
///     properties:
///       serviceAccountId: ${sa.name}
///       role: roles/iam.serviceAccountUser
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ### Service Account IAM Binding With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "my-service-account",
///     displayName: "A service account that only Jane can use",
/// });
/// const admin_account_iam = new gcp.serviceaccount.IAMBinding("admin-account-iam", {
///     serviceAccountId: sa.name,
///     role: "roles/iam.serviceAccountUser",
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
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="my-service-account",
///     display_name="A service account that only Jane can use")
/// admin_account_iam = gcp.serviceaccount.IAMBinding("admin-account-iam",
///     service_account_id=sa.name,
///     role="roles/iam.serviceAccountUser",
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
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "my-service-account",
///         DisplayName = "A service account that only Jane can use",
///     });
///
///     var admin_account_iam = new Gcp.ServiceAccount.IAMBinding("admin-account-iam", new()
///     {
///         ServiceAccountId = sa.Name,
///         Role = "roles/iam.serviceAccountUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.ServiceAccount.Inputs.IAMBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-service-account"),
/// 			DisplayName: pulumi.String("A service account that only Jane can use"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewIAMBinding(ctx, "admin-account-iam", &serviceaccount.IAMBindingArgs{
/// 			ServiceAccountId: sa.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &serviceaccount.IAMBindingConditionArgs{
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
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "my-service-account"
///   display_name = "A service account that only Jane can use"
/// }
/// resource "gcp_serviceaccount_iambinding" "admin-account-iam" {
///   service_account_id = gcp_serviceaccount_account.sa.name
///   role               = "roles/iam.serviceAccountUser"
///   members            = ["user:jane@example.com"]
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.IAMBinding;
/// import com.pulumi.gcp.serviceaccount.IAMBindingArgs;
/// import com.pulumi.gcp.serviceaccount.inputs.IAMBindingConditionArgs;
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
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("my-service-account")
///             .displayName("A service account that only Jane can use")
///             .build());
///
///         var admin_account_iam = new IAMBinding("admin-account-iam", IAMBindingArgs.builder()
///             .serviceAccountId(sa.name())
///             .role("roles/iam.serviceAccountUser")
///             .members("user:jane@example.com")
///             .condition(IAMBindingConditionArgs.builder()
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
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-service-account
///       displayName: A service account that only Jane can use
///   admin-account-iam:
///     type: gcp:serviceaccount:IAMBinding
///     properties:
///       serviceAccountId: ${sa.name}
///       role: roles/iam.serviceAccountUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ### Service Account IAM Member
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getDefaultServiceAccount({});
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "my-service-account",
///     displayName: "A service account that Jane can use",
/// });
/// const admin_account_iam = new gcp.serviceaccount.IAMMember("admin-account-iam", {
///     serviceAccountId: sa.name,
///     role: "roles/iam.serviceAccountUser",
///     member: "user:jane@example.com",
/// });
/// // Allow SA service account use the default GCE account
/// const gce_default_account_iam = new gcp.serviceaccount.IAMMember("gce-default-account-iam", {
///     serviceAccountId: _default.then(_default => _default.name),
///     role: "roles/iam.serviceAccountUser",
///     member: pulumi.interpolate`serviceAccount:${sa.email}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_default_service_account()
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="my-service-account",
///     display_name="A service account that Jane can use")
/// admin_account_iam = gcp.serviceaccount.IAMMember("admin-account-iam",
///     service_account_id=sa.name,
///     role="roles/iam.serviceAccountUser",
///     member="user:jane@example.com")
/// # Allow SA service account use the default GCE account
/// gce_default_account_iam = gcp.serviceaccount.IAMMember("gce-default-account-iam",
///     service_account_id=default.name,
///     role="roles/iam.serviceAccountUser",
///     member=sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetDefaultServiceAccount.Invoke();
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "my-service-account",
///         DisplayName = "A service account that Jane can use",
///     });
///
///     var admin_account_iam = new Gcp.ServiceAccount.IAMMember("admin-account-iam", new()
///     {
///         ServiceAccountId = sa.Name,
///         Role = "roles/iam.serviceAccountUser",
///         Member = "user:jane@example.com",
///     });
///
///     // Allow SA service account use the default GCE account
///     var gce_default_account_iam = new Gcp.ServiceAccount.IAMMember("gce-default-account-iam", new()
///     {
///         ServiceAccountId = @default.Apply(@default => @default.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Name)),
///         Role = "roles/iam.serviceAccountUser",
///         Member = sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.GetDefaultServiceAccount(ctx, &compute.GetDefaultServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-service-account"),
/// 			DisplayName: pulumi.String("A service account that Jane can use"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewIAMMember(ctx, "admin-account-iam", &serviceaccount.IAMMemberArgs{
/// 			ServiceAccountId: sa.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountUser"),
/// 			Member:           pulumi.String("user:jane@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Allow SA service account use the default GCE account
/// 		_, err = serviceaccount.NewIAMMember(ctx, "gce-default-account-iam", &serviceaccount.IAMMemberArgs{
/// 			ServiceAccountId: pulumi.String(_default.Name),
/// 			Role:             pulumi.String("roles/iam.serviceAccountUser"),
/// 			Member: sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
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
/// data "gcp_compute_getdefaultserviceaccount" "default" {
/// }
///
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "my-service-account"
///   display_name = "A service account that Jane can use"
/// }
/// resource "gcp_serviceaccount_iammember" "admin-account-iam" {
///   service_account_id = gcp_serviceaccount_account.sa.name
///   role               = "roles/iam.serviceAccountUser"
///   member             = "user:jane@example.com"
/// }
/// # Allow SA service account use the default GCE account
/// resource "gcp_serviceaccount_iammember" "gce-default-account-iam" {
///   service_account_id = data.gcp_compute_getdefaultserviceaccount.default.name
///   role               = "roles/iam.serviceAccountUser"
///   member             ="serviceAccount:${gcp_serviceaccount_account.sa.email}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetDefaultServiceAccountArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.IAMMember;
/// import com.pulumi.gcp.serviceaccount.IAMMemberArgs;
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
///         final var default = ComputeFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("my-service-account")
///             .displayName("A service account that Jane can use")
///             .build());
///
///         var admin_account_iam = new IAMMember("admin-account-iam", IAMMemberArgs.builder()
///             .serviceAccountId(sa.name())
///             .role("roles/iam.serviceAccountUser")
///             .member("user:jane@example.com")
///             .build());
///
///         // Allow SA service account use the default GCE account
///         var gce_default_account_iam = new IAMMember("gce-default-account-iam", IAMMemberArgs.builder()
///             .serviceAccountId(default_.name())
///             .role("roles/iam.serviceAccountUser")
///             .member(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-service-account
///       displayName: A service account that Jane can use
///   admin-account-iam:
///     type: gcp:serviceaccount:IAMMember
///     properties:
///       serviceAccountId: ${sa.name}
///       role: roles/iam.serviceAccountUser
///       member: user:jane@example.com
///   # Allow SA service account use the default GCE account
///   gce-default-account-iam:
///     type: gcp:serviceaccount:IAMMember
///     properties:
///       serviceAccountId: ${default.name}
///       role: roles/iam.serviceAccountUser
///       member: serviceAccount:${sa.email}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getDefaultServiceAccount
///       arguments: {}
/// ```
///
///
/// ### Service Account IAM Member With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "my-service-account",
///     displayName: "A service account that Jane can use",
/// });
/// const admin_account_iam = new gcp.serviceaccount.IAMMember("admin-account-iam", {
///     serviceAccountId: sa.name,
///     role: "roles/iam.serviceAccountUser",
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
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="my-service-account",
///     display_name="A service account that Jane can use")
/// admin_account_iam = gcp.serviceaccount.IAMMember("admin-account-iam",
///     service_account_id=sa.name,
///     role="roles/iam.serviceAccountUser",
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
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "my-service-account",
///         DisplayName = "A service account that Jane can use",
///     });
///
///     var admin_account_iam = new Gcp.ServiceAccount.IAMMember("admin-account-iam", new()
///     {
///         ServiceAccountId = sa.Name,
///         Role = "roles/iam.serviceAccountUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.ServiceAccount.Inputs.IAMMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-service-account"),
/// 			DisplayName: pulumi.String("A service account that Jane can use"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewIAMMember(ctx, "admin-account-iam", &serviceaccount.IAMMemberArgs{
/// 			ServiceAccountId: sa.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountUser"),
/// 			Member:           pulumi.String("user:jane@example.com"),
/// 			Condition: &serviceaccount.IAMMemberConditionArgs{
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
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "my-service-account"
///   display_name = "A service account that Jane can use"
/// }
/// resource "gcp_serviceaccount_iammember" "admin-account-iam" {
///   service_account_id = gcp_serviceaccount_account.sa.name
///   role               = "roles/iam.serviceAccountUser"
///   member             = "user:jane@example.com"
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.IAMMember;
/// import com.pulumi.gcp.serviceaccount.IAMMemberArgs;
/// import com.pulumi.gcp.serviceaccount.inputs.IAMMemberConditionArgs;
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
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("my-service-account")
///             .displayName("A service account that Jane can use")
///             .build());
///
///         var admin_account_iam = new IAMMember("admin-account-iam", IAMMemberArgs.builder()
///             .serviceAccountId(sa.name())
///             .role("roles/iam.serviceAccountUser")
///             .member("user:jane@example.com")
///             .condition(IAMMemberConditionArgs.builder()
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
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-service-account
///       displayName: A service account that Jane can use
///   admin-account-iam:
///     type: gcp:serviceaccount:IAMMember
///     properties:
///       serviceAccountId: ${sa.name}
///       role: roles/iam.serviceAccountUser
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
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
///
/// ### Importing with conditions:
///
/// Here are examples of importing IAM memberships and bindings that include conditions:
///
/// ```sh
/// $ terraform import google_service_account_iam_binding.admin-account-iam "projects/{your-project-id}/serviceAccounts/{your-service-account-email} roles/iam.serviceAccountUser expires_after_2019_12_31"
///
/// $ terraform import google_service_account_iam_member.admin-account-iam "projects/{your-project-id}/serviceAccounts/{your-service-account-email} roles/iam.serviceAccountUser user:foo@example.com expires_after_2019_12_31"
/// ```
class IAMBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<IAMBindingCondition?> condition;
  /// (Computed) The etag of the service account IAM policy.
  late final pulumi.Output<String> etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;
  /// The role that should be applied. Only one
  /// `gcp.serviceaccount.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;
  /// The fully-qualified name of the service account to apply policy to.
  late final pulumi.Output<String> serviceAccountId;

  /// Creates a new [IAMBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IAMBinding]. {@macro pulumi_serviceaccount_i_ambinding_iambinding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IAMBinding(
    String name, {
    IAMBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/iAMBinding:IAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<IAMBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IAMBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    role = registerOutput<String>('role');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }

  /// Gets an existing [IAMBinding] resource's state with the given [name] and [id].
  static IAMBinding get(
    String name,
    pulumi.Input<String> id, {
    IAMBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IAMBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IAMBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/iAMBinding:IAMBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<IAMBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IAMBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    role = registerOutput<String>('role');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }

  /// Creates a typed reference to an existing [IAMBinding] resource.
  IAMBinding.reference(String urn)
    : super(
        'gcp:serviceaccount/iAMBinding:IAMBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<IAMBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IAMBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    role = registerOutput<String>('role');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }
}
