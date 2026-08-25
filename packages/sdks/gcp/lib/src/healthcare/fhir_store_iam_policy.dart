import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_store_iam_policy_args.dart';
import 'fhir_store_iam_policy_state.dart';

/// &gt; **Warning:** These resources are in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// Three different resources help you manage your IAM policy for Healthcare FHIR store. Each of these resources serves a different use case:
///
/// * `gcp.healthcare.FhirStoreIamPolicy`: Authoritative. Sets the IAM policy for the FHIR store and replaces any existing policy already attached.
/// * `gcp.healthcare.FhirStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the FHIR store are preserved.
/// * `gcp.healthcare.FhirStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the FHIR store are preserved.
///
/// &gt; **Note:** `gcp.healthcare.FhirStoreIamPolicy` **cannot** be used in conjunction with `gcp.healthcare.FhirStoreIamBinding` and `gcp.healthcare.FhirStoreIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.healthcare.FhirStoreIamBinding` resources **can be** used in conjunction with `gcp.healthcare.FhirStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.healthcare.FhirStoreIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const fhirStore = new gcp.healthcare.FhirStoreIamPolicy("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// fhir_store = gcp.healthcare.FhirStoreIamPolicy("fhir_store",
///     fhir_store_id="your-fhir-store-id",
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
///                 Role = "roles/editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamPolicy("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewFhirStoreIamPolicy(ctx, "fhir_store", &healthcare.FhirStoreIamPolicyArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
///     role    = "roles/editor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_healthcare_fhirstoreiampolicy" "fhir_store" {
///   fhir_store_id = "your-fhir-store-id"
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
/// import com.pulumi.gcp.healthcare.FhirStoreIamPolicy;
/// import com.pulumi.gcp.healthcare.FhirStoreIamPolicyArgs;
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
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var fhirStore = new FhirStoreIamPolicy("fhirStore", FhirStoreIamPolicyArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamPolicy
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamBinding("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamBinding("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamBinding("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamBinding(ctx, "fhir_store", &healthcare.FhirStoreIamBindingArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
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
/// resource "gcp_healthcare_fhirstoreiambinding" "fhir_store" {
///   fhir_store_id = "your-fhir-store-id"
///   role          = "roles/editor"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.FhirStoreIamBinding;
/// import com.pulumi.gcp.healthcare.FhirStoreIamBindingArgs;
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
///         var fhirStore = new FhirStoreIamBinding("fhirStore", FhirStoreIamBindingArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamBinding
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamMember("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamMember("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamMember("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamMember(ctx, "fhir_store", &healthcare.FhirStoreIamMemberArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// resource "gcp_healthcare_fhirstoreiammember" "fhir_store" {
///   fhir_store_id = "your-fhir-store-id"
///   role          = "roles/editor"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.FhirStoreIamMember;
/// import com.pulumi.gcp.healthcare.FhirStoreIamMemberArgs;
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
///         var fhirStore = new FhirStoreIamMember("fhirStore", FhirStoreIamMemberArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamMember
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamBinding("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamBinding("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamBinding("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamBinding(ctx, "fhir_store", &healthcare.FhirStoreIamBindingArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
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
/// resource "gcp_healthcare_fhirstoreiambinding" "fhir_store" {
///   fhir_store_id = "your-fhir-store-id"
///   role          = "roles/editor"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.FhirStoreIamBinding;
/// import com.pulumi.gcp.healthcare.FhirStoreIamBindingArgs;
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
///         var fhirStore = new FhirStoreIamBinding("fhirStore", FhirStoreIamBindingArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamBinding
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamMember("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamMember("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamMember("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamMember(ctx, "fhir_store", &healthcare.FhirStoreIamMemberArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// resource "gcp_healthcare_fhirstoreiammember" "fhir_store" {
///   fhir_store_id = "your-fhir-store-id"
///   role          = "roles/editor"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.FhirStoreIamMember;
/// import com.pulumi.gcp.healthcare.FhirStoreIamMemberArgs;
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
///         var fhirStore = new FhirStoreIamMember("fhirStore", FhirStoreIamMemberArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamMember
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class FhirStoreIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the FHIR store's IAM policy.
  late final pulumi.Output<String> etag;
  /// The FHIR store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{fhir_store_name}` or
  /// `{location_name}/{dataset_name}/{fhir_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final pulumi.Output<String> fhirStoreId;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// Creates a new [FhirStoreIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FhirStoreIamPolicy]. {@macro pulumi_healthcare_fhir_store_iam_policy_fhir_store_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FhirStoreIamPolicy(
    String name, {
    FhirStoreIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/fhirStoreIamPolicy:FhirStoreIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    fhirStoreId = registerOutput<String>('fhirStoreId');
    policyData = registerOutput<String>('policyData');
  }

  /// Gets an existing [FhirStoreIamPolicy] resource's state with the given [name] and [id].
  static FhirStoreIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    FhirStoreIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FhirStoreIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FhirStoreIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/fhirStoreIamPolicy:FhirStoreIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    fhirStoreId = registerOutput<String>('fhirStoreId');
    policyData = registerOutput<String>('policyData');
  }

  /// Creates a typed reference to an existing [FhirStoreIamPolicy] resource.
  FhirStoreIamPolicy.reference(String urn)
    : super(
        'gcp:healthcare/fhirStoreIamPolicy:FhirStoreIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    fhirStoreId = registerOutput<String>('fhirStoreId');
    policyData = registerOutput<String>('policyData');
  }
}
