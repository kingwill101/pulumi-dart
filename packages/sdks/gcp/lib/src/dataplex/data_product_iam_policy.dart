import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_iam_policy_args.dart';
import 'data_product_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Dataplex DataProduct. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.DataProductIamPolicy`: Authoritative. Sets the IAM policy for the dataproduct and replaces any existing policy already attached.
/// * `gcp.dataplex.DataProductIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataproduct are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.DataProductIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataproduct are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.DataProductIamPolicy`: Retrieves the IAM policy for the dataproduct
///
/// &gt; **Note:** `gcp.dataplex.DataProductIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.DataProductIamBinding` and `gcp.dataplex.DataProductIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.DataProductIamBinding` resources **can be** used in conjunction with `gcp.dataplex.DataProductIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.DataProductIamPolicy
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
/// const policy = new gcp.dataplex.DataProductIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     dataProductId: example.dataProductId,
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
/// policy = gcp.dataplex.DataProductIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     data_product_id=example["dataProductId"],
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
///     var policy = new Gcp.DataPlex.DataProductIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataProductId = example.DataProductId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// 		_, err = dataplex.NewDataProductIamPolicy(ctx, "policy", &dataplex.DataProductIamPolicyArgs{
/// 			Project:       pulumi.Any(example.Project),
/// 			Location:      pulumi.Any(example.Location),
/// 			DataProductId: pulumi.Any(example.DataProductId),
/// 			PolicyData:    pulumi.String(admin.PolicyData),
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
/// resource "gcp_dataplex_dataproductiampolicy" "policy" {
///   project         = example.project
///   location        = example.location
///   data_product_id = example.dataProductId
///   policy_data     = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.dataplex.DataProductIamPolicy;
/// import com.pulumi.gcp.dataplex.DataProductIamPolicyArgs;
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
///         var policy = new DataProductIamPolicy("policy", DataProductIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataProductId(example.get("dataProductId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:DataProductIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataProductId: ${example.dataProductId}
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
/// ## gcp.dataplex.DataProductIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.DataProductIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     dataProductId: example.dataProductId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.DataProductIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     data_product_id=example["dataProductId"],
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
///     var binding = new Gcp.DataPlex.DataProductIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataProductId = example.DataProductId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDataProductIamBinding(ctx, "binding", &dataplex.DataProductIamBindingArgs{
/// 			Project:       pulumi.Any(example.Project),
/// 			Location:      pulumi.Any(example.Location),
/// 			DataProductId: pulumi.Any(example.DataProductId),
/// 			Role:          pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_dataproductiambinding" "binding" {
///   project         = example.project
///   location        = example.location
///   data_product_id = example.dataProductId
///   role            = "roles/viewer"
///   members         = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataProductIamBinding;
/// import com.pulumi.gcp.dataplex.DataProductIamBindingArgs;
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
///         var binding = new DataProductIamBinding("binding", DataProductIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataProductId(example.get("dataProductId"))
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
///     type: gcp:dataplex:DataProductIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataProductId: ${example.dataProductId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.DataProductIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.DataProductIamMember("member", {
///     project: example.project,
///     location: example.location,
///     dataProductId: example.dataProductId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.DataProductIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     data_product_id=example["dataProductId"],
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
///     var member = new Gcp.DataPlex.DataProductIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataProductId = example.DataProductId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDataProductIamMember(ctx, "member", &dataplex.DataProductIamMemberArgs{
/// 			Project:       pulumi.Any(example.Project),
/// 			Location:      pulumi.Any(example.Location),
/// 			DataProductId: pulumi.Any(example.DataProductId),
/// 			Role:          pulumi.String("roles/viewer"),
/// 			Member:        pulumi.String("user:jane@example.com"),
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
/// resource "gcp_dataplex_dataproductiammember" "member" {
///   project         = example.project
///   location        = example.location
///   data_product_id = example.dataProductId
///   role            = "roles/viewer"
///   member          = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataProductIamMember;
/// import com.pulumi.gcp.dataplex.DataProductIamMemberArgs;
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
///         var member = new DataProductIamMember("member", DataProductIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataProductId(example.get("dataProductId"))
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
///     type: gcp:dataplex:DataProductIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataProductId: ${example.dataProductId}
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
/// # IAM policy for Dataplex DataProduct
///
/// Three different resources help you manage your IAM policy for Dataplex DataProduct. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.DataProductIamPolicy`: Authoritative. Sets the IAM policy for the dataproduct and replaces any existing policy already attached.
/// * `gcp.dataplex.DataProductIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataproduct are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.DataProductIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataproduct are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.DataProductIamPolicy`: Retrieves the IAM policy for the dataproduct
///
/// &gt; **Note:** `gcp.dataplex.DataProductIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.DataProductIamBinding` and `gcp.dataplex.DataProductIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.DataProductIamBinding` resources **can be** used in conjunction with `gcp.dataplex.DataProductIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.DataProductIamPolicy
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
/// const policy = new gcp.dataplex.DataProductIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     dataProductId: example.dataProductId,
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
/// policy = gcp.dataplex.DataProductIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     data_product_id=example["dataProductId"],
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
///     var policy = new Gcp.DataPlex.DataProductIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataProductId = example.DataProductId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// 		_, err = dataplex.NewDataProductIamPolicy(ctx, "policy", &dataplex.DataProductIamPolicyArgs{
/// 			Project:       pulumi.Any(example.Project),
/// 			Location:      pulumi.Any(example.Location),
/// 			DataProductId: pulumi.Any(example.DataProductId),
/// 			PolicyData:    pulumi.String(admin.PolicyData),
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
/// resource "gcp_dataplex_dataproductiampolicy" "policy" {
///   project         = example.project
///   location        = example.location
///   data_product_id = example.dataProductId
///   policy_data     = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.dataplex.DataProductIamPolicy;
/// import com.pulumi.gcp.dataplex.DataProductIamPolicyArgs;
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
///         var policy = new DataProductIamPolicy("policy", DataProductIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataProductId(example.get("dataProductId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:DataProductIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataProductId: ${example.dataProductId}
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
/// ## gcp.dataplex.DataProductIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.DataProductIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     dataProductId: example.dataProductId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.DataProductIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     data_product_id=example["dataProductId"],
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
///     var binding = new Gcp.DataPlex.DataProductIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataProductId = example.DataProductId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDataProductIamBinding(ctx, "binding", &dataplex.DataProductIamBindingArgs{
/// 			Project:       pulumi.Any(example.Project),
/// 			Location:      pulumi.Any(example.Location),
/// 			DataProductId: pulumi.Any(example.DataProductId),
/// 			Role:          pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_dataproductiambinding" "binding" {
///   project         = example.project
///   location        = example.location
///   data_product_id = example.dataProductId
///   role            = "roles/viewer"
///   members         = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataProductIamBinding;
/// import com.pulumi.gcp.dataplex.DataProductIamBindingArgs;
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
///         var binding = new DataProductIamBinding("binding", DataProductIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataProductId(example.get("dataProductId"))
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
///     type: gcp:dataplex:DataProductIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataProductId: ${example.dataProductId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.DataProductIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.DataProductIamMember("member", {
///     project: example.project,
///     location: example.location,
///     dataProductId: example.dataProductId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.DataProductIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     data_product_id=example["dataProductId"],
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
///     var member = new Gcp.DataPlex.DataProductIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataProductId = example.DataProductId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDataProductIamMember(ctx, "member", &dataplex.DataProductIamMemberArgs{
/// 			Project:       pulumi.Any(example.Project),
/// 			Location:      pulumi.Any(example.Location),
/// 			DataProductId: pulumi.Any(example.DataProductId),
/// 			Role:          pulumi.String("roles/viewer"),
/// 			Member:        pulumi.String("user:jane@example.com"),
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
/// resource "gcp_dataplex_dataproductiammember" "member" {
///   project         = example.project
///   location        = example.location
///   data_product_id = example.dataProductId
///   role            = "roles/viewer"
///   member          = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataProductIamMember;
/// import com.pulumi.gcp.dataplex.DataProductIamMemberArgs;
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
///         var member = new DataProductIamMember("member", DataProductIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataProductId(example.get("dataProductId"))
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
///     type: gcp:dataplex:DataProductIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataProductId: ${example.dataProductId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}
/// * {{project}}/{{location}}/{{data_product_id}}
/// * {{location}}/{{data_product_id}}
/// * {{data_product_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex dataproduct IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_dataplex_data_product_iam_member.editor "projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_dataplex_data_product_iam_binding.editor "projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:dataplex/dataProductIamPolicy:DataProductIamPolicy editor projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DataProductIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataProductId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location for the data product.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [DataProductIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProductIamPolicy]. {@macro pulumi_dataplex_data_product_iam_policy_data_product_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProductIamPolicy(
    String name, {
    DataProductIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProductIamPolicy:DataProductIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataProductId = registerOutput<String>('dataProductId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [DataProductIamPolicy] resource's state with the given [name] and [id].
  static DataProductIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    DataProductIamPolicyState? state,
  }) {
    return DataProductIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataProductIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProductIamPolicy:DataProductIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataProductId = registerOutput<String>('dataProductId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
