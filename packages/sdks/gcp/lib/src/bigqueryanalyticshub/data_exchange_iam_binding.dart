import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_iam_binding_args.dart';
import 'data_exchange_iam_binding_condition.dart';
import 'data_exchange_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub DataExchange. Each of these resources serves a different use case:
///
/// * `gcp.bigqueryanalyticshub.DataExchangeIamPolicy`: Authoritative. Sets the IAM policy for the dataexchange and replaces any existing policy already attached.
/// * `gcp.bigqueryanalyticshub.DataExchangeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataexchange are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.bigqueryanalyticshub.DataExchangeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataexchange are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigqueryanalyticshub.DataExchangeIamPolicy`: Retrieves the IAM policy for the dataexchange
///
/// &gt; **Note:** `gcp.bigqueryanalyticshub.DataExchangeIamPolicy` **cannot** be used in conjunction with `gcp.bigqueryanalyticshub.DataExchangeIamBinding` and `gcp.bigqueryanalyticshub.DataExchangeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.bigqueryanalyticshub.DataExchangeIamBinding` resources **can be** used in conjunction with `gcp.bigqueryanalyticshub.DataExchangeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.bigqueryanalyticshub.DataExchangeIamPolicy
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
/// const policy = new gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy", {
///     project: dataExchange.project,
///     location: dataExchange.location,
///     dataExchangeId: dataExchange.dataExchangeId,
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
/// policy = gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy",
///     project=data_exchange["project"],
///     location=data_exchange["location"],
///     data_exchange_id=data_exchange["dataExchangeId"],
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
///     var policy = new Gcp.BigQueryAnalyticsHub.DataExchangeIamPolicy("policy", new()
///     {
///         Project = dataExchange.Project,
///         Location = dataExchange.Location,
///         DataExchangeId = dataExchange.DataExchangeId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
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
/// 		_, err = bigqueryanalyticshub.NewDataExchangeIamPolicy(ctx, "policy", &bigqueryanalyticshub.DataExchangeIamPolicyArgs{
/// 			Project:        pulumi.Any(dataExchange.Project),
/// 			Location:       pulumi.Any(dataExchange.Location),
/// 			DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// 			PolicyData:     pulumi.String(admin.PolicyData),
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
/// resource "gcp_bigqueryanalyticshub_dataexchangeiampolicy" "policy" {
///   project          = dataExchange.project
///   location         = dataExchange.location
///   data_exchange_id = dataExchange.dataExchangeId
///   policy_data      = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicyArgs;
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
///         var policy = new DataExchangeIamPolicy("policy", DataExchangeIamPolicyArgs.builder()
///             .project(dataExchange.get("project"))
///             .location(dataExchange.get("location"))
///             .dataExchangeId(dataExchange.get("dataExchangeId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigqueryanalyticshub:DataExchangeIamPolicy
///     properties:
///       project: ${dataExchange.project}
///       location: ${dataExchange.location}
///       dataExchangeId: ${dataExchange.dataExchangeId}
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
/// ## gcp.bigqueryanalyticshub.DataExchangeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding", {
///     project: dataExchange.project,
///     location: dataExchange.location,
///     dataExchangeId: dataExchange.dataExchangeId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding",
///     project=data_exchange["project"],
///     location=data_exchange["location"],
///     data_exchange_id=data_exchange["dataExchangeId"],
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
///     var binding = new Gcp.BigQueryAnalyticsHub.DataExchangeIamBinding("binding", new()
///     {
///         Project = dataExchange.Project,
///         Location = dataExchange.Location,
///         DataExchangeId = dataExchange.DataExchangeId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewDataExchangeIamBinding(ctx, "binding", &bigqueryanalyticshub.DataExchangeIamBindingArgs{
/// 			Project:        pulumi.Any(dataExchange.Project),
/// 			Location:       pulumi.Any(dataExchange.Location),
/// 			DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// 			Role:           pulumi.String("roles/viewer"),
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
/// resource "gcp_bigqueryanalyticshub_dataexchangeiambinding" "binding" {
///   project          = dataExchange.project
///   location         = dataExchange.location
///   data_exchange_id = dataExchange.dataExchangeId
///   role             = "roles/viewer"
///   members          = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBindingArgs;
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
///         var binding = new DataExchangeIamBinding("binding", DataExchangeIamBindingArgs.builder()
///             .project(dataExchange.get("project"))
///             .location(dataExchange.get("location"))
///             .dataExchangeId(dataExchange.get("dataExchangeId"))
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
///     type: gcp:bigqueryanalyticshub:DataExchangeIamBinding
///     properties:
///       project: ${dataExchange.project}
///       location: ${dataExchange.location}
///       dataExchangeId: ${dataExchange.dataExchangeId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigqueryanalyticshub.DataExchangeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.DataExchangeIamMember("member", {
///     project: dataExchange.project,
///     location: dataExchange.location,
///     dataExchangeId: dataExchange.dataExchangeId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.DataExchangeIamMember("member",
///     project=data_exchange["project"],
///     location=data_exchange["location"],
///     data_exchange_id=data_exchange["dataExchangeId"],
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
///     var member = new Gcp.BigQueryAnalyticsHub.DataExchangeIamMember("member", new()
///     {
///         Project = dataExchange.Project,
///         Location = dataExchange.Location,
///         DataExchangeId = dataExchange.DataExchangeId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewDataExchangeIamMember(ctx, "member", &bigqueryanalyticshub.DataExchangeIamMemberArgs{
/// 			Project:        pulumi.Any(dataExchange.Project),
/// 			Location:       pulumi.Any(dataExchange.Location),
/// 			DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// 			Role:           pulumi.String("roles/viewer"),
/// 			Member:         pulumi.String("user:jane@example.com"),
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
/// resource "gcp_bigqueryanalyticshub_dataexchangeiammember" "member" {
///   project          = dataExchange.project
///   location         = dataExchange.location
///   data_exchange_id = dataExchange.dataExchangeId
///   role             = "roles/viewer"
///   member           = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMemberArgs;
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
///         var member = new DataExchangeIamMember("member", DataExchangeIamMemberArgs.builder()
///             .project(dataExchange.get("project"))
///             .location(dataExchange.get("location"))
///             .dataExchangeId(dataExchange.get("dataExchangeId"))
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
///     type: gcp:bigqueryanalyticshub:DataExchangeIamMember
///     properties:
///       project: ${dataExchange.project}
///       location: ${dataExchange.location}
///       dataExchangeId: ${dataExchange.dataExchangeId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BigQuery Analytics Hub DataExchange
///
/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub DataExchange. Each of these resources serves a different use case:
///
/// * `gcp.bigqueryanalyticshub.DataExchangeIamPolicy`: Authoritative. Sets the IAM policy for the dataexchange and replaces any existing policy already attached.
/// * `gcp.bigqueryanalyticshub.DataExchangeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataexchange are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.bigqueryanalyticshub.DataExchangeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataexchange are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigqueryanalyticshub.DataExchangeIamPolicy`: Retrieves the IAM policy for the dataexchange
///
/// &gt; **Note:** `gcp.bigqueryanalyticshub.DataExchangeIamPolicy` **cannot** be used in conjunction with `gcp.bigqueryanalyticshub.DataExchangeIamBinding` and `gcp.bigqueryanalyticshub.DataExchangeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.bigqueryanalyticshub.DataExchangeIamBinding` resources **can be** used in conjunction with `gcp.bigqueryanalyticshub.DataExchangeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.bigqueryanalyticshub.DataExchangeIamPolicy
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
/// const policy = new gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy", {
///     project: dataExchange.project,
///     location: dataExchange.location,
///     dataExchangeId: dataExchange.dataExchangeId,
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
/// policy = gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy",
///     project=data_exchange["project"],
///     location=data_exchange["location"],
///     data_exchange_id=data_exchange["dataExchangeId"],
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
///     var policy = new Gcp.BigQueryAnalyticsHub.DataExchangeIamPolicy("policy", new()
///     {
///         Project = dataExchange.Project,
///         Location = dataExchange.Location,
///         DataExchangeId = dataExchange.DataExchangeId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
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
/// 		_, err = bigqueryanalyticshub.NewDataExchangeIamPolicy(ctx, "policy", &bigqueryanalyticshub.DataExchangeIamPolicyArgs{
/// 			Project:        pulumi.Any(dataExchange.Project),
/// 			Location:       pulumi.Any(dataExchange.Location),
/// 			DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// 			PolicyData:     pulumi.String(admin.PolicyData),
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
/// resource "gcp_bigqueryanalyticshub_dataexchangeiampolicy" "policy" {
///   project          = dataExchange.project
///   location         = dataExchange.location
///   data_exchange_id = dataExchange.dataExchangeId
///   policy_data      = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicyArgs;
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
///         var policy = new DataExchangeIamPolicy("policy", DataExchangeIamPolicyArgs.builder()
///             .project(dataExchange.get("project"))
///             .location(dataExchange.get("location"))
///             .dataExchangeId(dataExchange.get("dataExchangeId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigqueryanalyticshub:DataExchangeIamPolicy
///     properties:
///       project: ${dataExchange.project}
///       location: ${dataExchange.location}
///       dataExchangeId: ${dataExchange.dataExchangeId}
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
/// ## gcp.bigqueryanalyticshub.DataExchangeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding", {
///     project: dataExchange.project,
///     location: dataExchange.location,
///     dataExchangeId: dataExchange.dataExchangeId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding",
///     project=data_exchange["project"],
///     location=data_exchange["location"],
///     data_exchange_id=data_exchange["dataExchangeId"],
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
///     var binding = new Gcp.BigQueryAnalyticsHub.DataExchangeIamBinding("binding", new()
///     {
///         Project = dataExchange.Project,
///         Location = dataExchange.Location,
///         DataExchangeId = dataExchange.DataExchangeId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewDataExchangeIamBinding(ctx, "binding", &bigqueryanalyticshub.DataExchangeIamBindingArgs{
/// 			Project:        pulumi.Any(dataExchange.Project),
/// 			Location:       pulumi.Any(dataExchange.Location),
/// 			DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// 			Role:           pulumi.String("roles/viewer"),
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
/// resource "gcp_bigqueryanalyticshub_dataexchangeiambinding" "binding" {
///   project          = dataExchange.project
///   location         = dataExchange.location
///   data_exchange_id = dataExchange.dataExchangeId
///   role             = "roles/viewer"
///   members          = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBindingArgs;
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
///         var binding = new DataExchangeIamBinding("binding", DataExchangeIamBindingArgs.builder()
///             .project(dataExchange.get("project"))
///             .location(dataExchange.get("location"))
///             .dataExchangeId(dataExchange.get("dataExchangeId"))
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
///     type: gcp:bigqueryanalyticshub:DataExchangeIamBinding
///     properties:
///       project: ${dataExchange.project}
///       location: ${dataExchange.location}
///       dataExchangeId: ${dataExchange.dataExchangeId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigqueryanalyticshub.DataExchangeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.DataExchangeIamMember("member", {
///     project: dataExchange.project,
///     location: dataExchange.location,
///     dataExchangeId: dataExchange.dataExchangeId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.DataExchangeIamMember("member",
///     project=data_exchange["project"],
///     location=data_exchange["location"],
///     data_exchange_id=data_exchange["dataExchangeId"],
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
///     var member = new Gcp.BigQueryAnalyticsHub.DataExchangeIamMember("member", new()
///     {
///         Project = dataExchange.Project,
///         Location = dataExchange.Location,
///         DataExchangeId = dataExchange.DataExchangeId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewDataExchangeIamMember(ctx, "member", &bigqueryanalyticshub.DataExchangeIamMemberArgs{
/// 			Project:        pulumi.Any(dataExchange.Project),
/// 			Location:       pulumi.Any(dataExchange.Location),
/// 			DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// 			Role:           pulumi.String("roles/viewer"),
/// 			Member:         pulumi.String("user:jane@example.com"),
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
/// resource "gcp_bigqueryanalyticshub_dataexchangeiammember" "member" {
///   project          = dataExchange.project
///   location         = dataExchange.location
///   data_exchange_id = dataExchange.dataExchangeId
///   role             = "roles/viewer"
///   member           = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMemberArgs;
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
///         var member = new DataExchangeIamMember("member", DataExchangeIamMemberArgs.builder()
///             .project(dataExchange.get("project"))
///             .location(dataExchange.get("location"))
///             .dataExchangeId(dataExchange.get("dataExchangeId"))
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
///     type: gcp:bigqueryanalyticshub:DataExchangeIamMember
///     properties:
///       project: ${dataExchange.project}
///       location: ${dataExchange.location}
///       dataExchangeId: ${dataExchange.dataExchangeId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}
/// * {{project}}/{{location}}/{{data_exchange_id}}
/// * {{location}}/{{data_exchange_id}}
/// * {{data_exchange_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Analytics Hub dataexchange IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_bigquery_analytics_hub_data_exchange_iam_member.editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_bigquery_analytics_hub_data_exchange_iam_binding.editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchangeIamBinding:DataExchangeIamBinding editor projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DataExchangeIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<DataExchangeIamBindingCondition?> condition;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataExchangeId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The name of the location this data exchange.
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
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.bigqueryanalyticshub.DataExchangeIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [DataExchangeIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataExchangeIamBinding]. {@macro pulumi_bigqueryanalyticshub_data_exchange_iam_binding_data_exchange_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataExchangeIamBinding(
    String name, {
    DataExchangeIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/dataExchangeIamBinding:DataExchangeIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<DataExchangeIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataExchangeIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataExchangeId = registerOutput<String>('dataExchangeId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [DataExchangeIamBinding] resource's state with the given [name] and [id].
  static DataExchangeIamBinding get(
    String name,
    pulumi.Input<String> id, {
    DataExchangeIamBindingState? state,
  }) {
    return DataExchangeIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataExchangeIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/dataExchangeIamBinding:DataExchangeIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<DataExchangeIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataExchangeIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataExchangeId = registerOutput<String>('dataExchangeId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
