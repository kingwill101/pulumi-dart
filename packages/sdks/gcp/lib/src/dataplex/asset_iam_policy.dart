import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_iam_policy_args.dart';
import 'asset_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Dataplex Asset. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.AssetIamPolicy`: Authoritative. Sets the IAM policy for the asset and replaces any existing policy already attached.
/// * `gcp.dataplex.AssetIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the asset are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.AssetIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the asset are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.AssetIamPolicy`: Retrieves the IAM policy for the asset
///
/// &gt; **Note:** `gcp.dataplex.AssetIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.AssetIamBinding` and `gcp.dataplex.AssetIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.AssetIamBinding` resources **can be** used in conjunction with `gcp.dataplex.AssetIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.AssetIamPolicy
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
/// const policy = new gcp.dataplex.AssetIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.dataplexZone,
///     asset: example.name,
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
/// policy = gcp.dataplex.AssetIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["dataplexZone"],
///     asset=example["name"],
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
///     var policy = new Gcp.DataPlex.AssetIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.DataplexZone,
///         Asset = example.Name,
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
/// 		_, err = dataplex.NewAssetIamPolicy(ctx, "policy", &dataplex.AssetIamPolicyArgs{
/// 			Project:      pulumi.Any(example.Project),
/// 			Location:     pulumi.Any(example.Location),
/// 			Lake:         pulumi.Any(example.Lake),
/// 			DataplexZone: pulumi.Any(example.DataplexZone),
/// 			Asset:        pulumi.Any(example.Name),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// resource "gcp_dataplex_assetiampolicy" "policy" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.dataplexZone
///   asset         = example.name
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.dataplex.AssetIamPolicy;
/// import com.pulumi.gcp.dataplex.AssetIamPolicyArgs;
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
///         var policy = new AssetIamPolicy("policy", AssetIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("dataplexZone"))
///             .asset(example.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:AssetIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       lake: ${example.lake}
///       dataplexZone: ${example.dataplexZone}
///       asset: ${example.name}
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
/// ## gcp.dataplex.AssetIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AssetIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.dataplexZone,
///     asset: example.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AssetIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["dataplexZone"],
///     asset=example["name"],
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
///     var binding = new Gcp.DataPlex.AssetIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.DataplexZone,
///         Asset = example.Name,
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
/// 		_, err := dataplex.NewAssetIamBinding(ctx, "binding", &dataplex.AssetIamBindingArgs{
/// 			Project:      pulumi.Any(example.Project),
/// 			Location:     pulumi.Any(example.Location),
/// 			Lake:         pulumi.Any(example.Lake),
/// 			DataplexZone: pulumi.Any(example.DataplexZone),
/// 			Asset:        pulumi.Any(example.Name),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_assetiambinding" "binding" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.dataplexZone
///   asset         = example.name
///   role          = "roles/viewer"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.AssetIamBinding;
/// import com.pulumi.gcp.dataplex.AssetIamBindingArgs;
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
///         var binding = new AssetIamBinding("binding", AssetIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("dataplexZone"))
///             .asset(example.get("name"))
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
///     type: gcp:dataplex:AssetIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       lake: ${example.lake}
///       dataplexZone: ${example.dataplexZone}
///       asset: ${example.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.AssetIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AssetIamMember("member", {
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.dataplexZone,
///     asset: example.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AssetIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["dataplexZone"],
///     asset=example["name"],
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
///     var member = new Gcp.DataPlex.AssetIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.DataplexZone,
///         Asset = example.Name,
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
/// 		_, err := dataplex.NewAssetIamMember(ctx, "member", &dataplex.AssetIamMemberArgs{
/// 			Project:      pulumi.Any(example.Project),
/// 			Location:     pulumi.Any(example.Location),
/// 			Lake:         pulumi.Any(example.Lake),
/// 			DataplexZone: pulumi.Any(example.DataplexZone),
/// 			Asset:        pulumi.Any(example.Name),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// resource "gcp_dataplex_assetiammember" "member" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.dataplexZone
///   asset         = example.name
///   role          = "roles/viewer"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.AssetIamMember;
/// import com.pulumi.gcp.dataplex.AssetIamMemberArgs;
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
///         var member = new AssetIamMember("member", AssetIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("dataplexZone"))
///             .asset(example.get("name"))
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
///     type: gcp:dataplex:AssetIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       lake: ${example.lake}
///       dataplexZone: ${example.dataplexZone}
///       asset: ${example.name}
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
/// # IAM policy for Dataplex Asset
///
/// Three different resources help you manage your IAM policy for Dataplex Asset. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.AssetIamPolicy`: Authoritative. Sets the IAM policy for the asset and replaces any existing policy already attached.
/// * `gcp.dataplex.AssetIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the asset are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.AssetIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the asset are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.AssetIamPolicy`: Retrieves the IAM policy for the asset
///
/// &gt; **Note:** `gcp.dataplex.AssetIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.AssetIamBinding` and `gcp.dataplex.AssetIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.AssetIamBinding` resources **can be** used in conjunction with `gcp.dataplex.AssetIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.AssetIamPolicy
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
/// const policy = new gcp.dataplex.AssetIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.dataplexZone,
///     asset: example.name,
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
/// policy = gcp.dataplex.AssetIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["dataplexZone"],
///     asset=example["name"],
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
///     var policy = new Gcp.DataPlex.AssetIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.DataplexZone,
///         Asset = example.Name,
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
/// 		_, err = dataplex.NewAssetIamPolicy(ctx, "policy", &dataplex.AssetIamPolicyArgs{
/// 			Project:      pulumi.Any(example.Project),
/// 			Location:     pulumi.Any(example.Location),
/// 			Lake:         pulumi.Any(example.Lake),
/// 			DataplexZone: pulumi.Any(example.DataplexZone),
/// 			Asset:        pulumi.Any(example.Name),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// resource "gcp_dataplex_assetiampolicy" "policy" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.dataplexZone
///   asset         = example.name
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.dataplex.AssetIamPolicy;
/// import com.pulumi.gcp.dataplex.AssetIamPolicyArgs;
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
///         var policy = new AssetIamPolicy("policy", AssetIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("dataplexZone"))
///             .asset(example.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:AssetIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       lake: ${example.lake}
///       dataplexZone: ${example.dataplexZone}
///       asset: ${example.name}
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
/// ## gcp.dataplex.AssetIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AssetIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.dataplexZone,
///     asset: example.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AssetIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["dataplexZone"],
///     asset=example["name"],
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
///     var binding = new Gcp.DataPlex.AssetIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.DataplexZone,
///         Asset = example.Name,
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
/// 		_, err := dataplex.NewAssetIamBinding(ctx, "binding", &dataplex.AssetIamBindingArgs{
/// 			Project:      pulumi.Any(example.Project),
/// 			Location:     pulumi.Any(example.Location),
/// 			Lake:         pulumi.Any(example.Lake),
/// 			DataplexZone: pulumi.Any(example.DataplexZone),
/// 			Asset:        pulumi.Any(example.Name),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_assetiambinding" "binding" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.dataplexZone
///   asset         = example.name
///   role          = "roles/viewer"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.AssetIamBinding;
/// import com.pulumi.gcp.dataplex.AssetIamBindingArgs;
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
///         var binding = new AssetIamBinding("binding", AssetIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("dataplexZone"))
///             .asset(example.get("name"))
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
///     type: gcp:dataplex:AssetIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       lake: ${example.lake}
///       dataplexZone: ${example.dataplexZone}
///       asset: ${example.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.AssetIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AssetIamMember("member", {
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.dataplexZone,
///     asset: example.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AssetIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["dataplexZone"],
///     asset=example["name"],
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
///     var member = new Gcp.DataPlex.AssetIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.DataplexZone,
///         Asset = example.Name,
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
/// 		_, err := dataplex.NewAssetIamMember(ctx, "member", &dataplex.AssetIamMemberArgs{
/// 			Project:      pulumi.Any(example.Project),
/// 			Location:     pulumi.Any(example.Location),
/// 			Lake:         pulumi.Any(example.Lake),
/// 			DataplexZone: pulumi.Any(example.DataplexZone),
/// 			Asset:        pulumi.Any(example.Name),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// resource "gcp_dataplex_assetiammember" "member" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.dataplexZone
///   asset         = example.name
///   role          = "roles/viewer"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.AssetIamMember;
/// import com.pulumi.gcp.dataplex.AssetIamMemberArgs;
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
///         var member = new AssetIamMember("member", AssetIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("dataplexZone"))
///             .asset(example.get("name"))
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
///     type: gcp:dataplex:AssetIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       lake: ${example.lake}
///       dataplexZone: ${example.dataplexZone}
///       asset: ${example.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{name}}
/// * {{project}}/{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
/// * {{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex asset IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_dataplex_asset_iam_member.editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{asset}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_dataplex_asset_iam_binding.editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{asset}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:dataplex/assetIamPolicy:AssetIamPolicy editor projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{asset}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AssetIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> asset;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataplexZone;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> lake;
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

  /// Creates a new [AssetIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssetIamPolicy]. {@macro pulumi_dataplex_asset_iam_policy_asset_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssetIamPolicy(
    String name, {
    AssetIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/assetIamPolicy:AssetIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asset = registerOutput<String>('asset');
    dataplexZone = registerOutput<String>('dataplexZone');
    etag = registerOutput<String>('etag');
    lake = registerOutput<String>('lake');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [AssetIamPolicy] resource's state with the given [name] and [id].
  static AssetIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    AssetIamPolicyState? state,
  }) {
    return AssetIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AssetIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/assetIamPolicy:AssetIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asset = registerOutput<String>('asset');
    dataplexZone = registerOutput<String>('dataplexZone');
    etag = registerOutput<String>('etag');
    lake = registerOutput<String>('lake');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
