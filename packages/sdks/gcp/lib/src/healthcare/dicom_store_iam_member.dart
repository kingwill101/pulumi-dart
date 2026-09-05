import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_iam_member_args.dart';
import 'dicom_store_iam_member_condition.dart';
import 'dicom_store_iam_member_state.dart';

/// &gt; **Warning:** These resources are in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// Three different resources help you manage your IAM policy for Healthcare DICOM store. Each of these resources serves a different use case:
///
/// * `gcp.healthcare.DicomStoreIamPolicy`: Authoritative. Sets the IAM policy for the DICOM store and replaces any existing policy already attached.
/// * `gcp.healthcare.DicomStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the DICOM store are preserved.
/// * `gcp.healthcare.DicomStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the DICOM store are preserved.
///
/// &gt; **Note:** `gcp.healthcare.DicomStoreIamPolicy` **cannot** be used in conjunction with `gcp.healthcare.DicomStoreIamBinding` and `gcp.healthcare.DicomStoreIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.healthcare.DicomStoreIamBinding` resources **can be** used in conjunction with `gcp.healthcare.DicomStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.healthcare.DicomStoreIamPolicy
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
/// const dicomStore = new gcp.healthcare.DicomStoreIamPolicy("dicom_store", {
///     dicomStoreId: "your-dicom-store-id",
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
/// dicom_store = gcp.healthcare.DicomStoreIamPolicy("dicom_store",
///     dicom_store_id="your-dicom-store-id",
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
///     var dicomStore = new Gcp.Healthcare.DicomStoreIamPolicy("dicom_store", new()
///     {
///         DicomStoreId = "your-dicom-store-id",
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
/// 		_, err = healthcare.NewDicomStoreIamPolicy(ctx, "dicom_store", &healthcare.DicomStoreIamPolicyArgs{
/// 			DicomStoreId: pulumi.String("your-dicom-store-id"),
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
///     role    = "roles/editor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_healthcare_dicomstoreiampolicy" "dicom_store" {
///   dicom_store_id = "your-dicom-store-id"
///   policy_data    = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.healthcare.DicomStoreIamPolicy;
/// import com.pulumi.gcp.healthcare.DicomStoreIamPolicyArgs;
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
///         var dicomStore = new DicomStoreIamPolicy("dicomStore", DicomStoreIamPolicyArgs.builder()
///             .dicomStoreId("your-dicom-store-id")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dicomStore:
///     type: gcp:healthcare:DicomStoreIamPolicy
///     name: dicom_store
///     properties:
///       dicomStoreId: your-dicom-store-id
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
/// ## gcp.healthcare.DicomStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamBinding("dicom_store", {
///     dicomStoreId: "your-dicom-store-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamBinding("dicom_store",
///     dicom_store_id="your-dicom-store-id",
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
///     var dicomStore = new Gcp.Healthcare.DicomStoreIamBinding("dicom_store", new()
///     {
///         DicomStoreId = "your-dicom-store-id",
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
/// 		_, err := healthcare.NewDicomStoreIamBinding(ctx, "dicom_store", &healthcare.DicomStoreIamBindingArgs{
/// 			DicomStoreId: pulumi.String("your-dicom-store-id"),
/// 			Role:         pulumi.String("roles/editor"),
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
/// resource "gcp_healthcare_dicomstoreiambinding" "dicom_store" {
///   dicom_store_id = "your-dicom-store-id"
///   role           = "roles/editor"
///   members        = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.DicomStoreIamBinding;
/// import com.pulumi.gcp.healthcare.DicomStoreIamBindingArgs;
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
///         var dicomStore = new DicomStoreIamBinding("dicomStore", DicomStoreIamBindingArgs.builder()
///             .dicomStoreId("your-dicom-store-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dicomStore:
///     type: gcp:healthcare:DicomStoreIamBinding
///     name: dicom_store
///     properties:
///       dicomStoreId: your-dicom-store-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.DicomStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamMember("dicom_store", {
///     dicomStoreId: "your-dicom-store-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamMember("dicom_store",
///     dicom_store_id="your-dicom-store-id",
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
///     var dicomStore = new Gcp.Healthcare.DicomStoreIamMember("dicom_store", new()
///     {
///         DicomStoreId = "your-dicom-store-id",
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
/// 		_, err := healthcare.NewDicomStoreIamMember(ctx, "dicom_store", &healthcare.DicomStoreIamMemberArgs{
/// 			DicomStoreId: pulumi.String("your-dicom-store-id"),
/// 			Role:         pulumi.String("roles/editor"),
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
/// resource "gcp_healthcare_dicomstoreiammember" "dicom_store" {
///   dicom_store_id = "your-dicom-store-id"
///   role           = "roles/editor"
///   member         = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.DicomStoreIamMember;
/// import com.pulumi.gcp.healthcare.DicomStoreIamMemberArgs;
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
///         var dicomStore = new DicomStoreIamMember("dicomStore", DicomStoreIamMemberArgs.builder()
///             .dicomStoreId("your-dicom-store-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dicomStore:
///     type: gcp:healthcare:DicomStoreIamMember
///     name: dicom_store
///     properties:
///       dicomStoreId: your-dicom-store-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.DicomStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamBinding("dicom_store", {
///     dicomStoreId: "your-dicom-store-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamBinding("dicom_store",
///     dicom_store_id="your-dicom-store-id",
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
///     var dicomStore = new Gcp.Healthcare.DicomStoreIamBinding("dicom_store", new()
///     {
///         DicomStoreId = "your-dicom-store-id",
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
/// 		_, err := healthcare.NewDicomStoreIamBinding(ctx, "dicom_store", &healthcare.DicomStoreIamBindingArgs{
/// 			DicomStoreId: pulumi.String("your-dicom-store-id"),
/// 			Role:         pulumi.String("roles/editor"),
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
/// resource "gcp_healthcare_dicomstoreiambinding" "dicom_store" {
///   dicom_store_id = "your-dicom-store-id"
///   role           = "roles/editor"
///   members        = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.DicomStoreIamBinding;
/// import com.pulumi.gcp.healthcare.DicomStoreIamBindingArgs;
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
///         var dicomStore = new DicomStoreIamBinding("dicomStore", DicomStoreIamBindingArgs.builder()
///             .dicomStoreId("your-dicom-store-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dicomStore:
///     type: gcp:healthcare:DicomStoreIamBinding
///     name: dicom_store
///     properties:
///       dicomStoreId: your-dicom-store-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.DicomStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamMember("dicom_store", {
///     dicomStoreId: "your-dicom-store-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamMember("dicom_store",
///     dicom_store_id="your-dicom-store-id",
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
///     var dicomStore = new Gcp.Healthcare.DicomStoreIamMember("dicom_store", new()
///     {
///         DicomStoreId = "your-dicom-store-id",
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
/// 		_, err := healthcare.NewDicomStoreIamMember(ctx, "dicom_store", &healthcare.DicomStoreIamMemberArgs{
/// 			DicomStoreId: pulumi.String("your-dicom-store-id"),
/// 			Role:         pulumi.String("roles/editor"),
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
/// resource "gcp_healthcare_dicomstoreiammember" "dicom_store" {
///   dicom_store_id = "your-dicom-store-id"
///   role           = "roles/editor"
///   member         = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.DicomStoreIamMember;
/// import com.pulumi.gcp.healthcare.DicomStoreIamMemberArgs;
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
///         var dicomStore = new DicomStoreIamMember("dicomStore", DicomStoreIamMemberArgs.builder()
///             .dicomStoreId("your-dicom-store-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dicomStore:
///     type: gcp:healthcare:DicomStoreIamMember
///     name: dicom_store
///     properties:
///       dicomStoreId: your-dicom-store-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DicomStoreIamMember extends pulumi.CustomResource {
  late final pulumi.Output<DicomStoreIamMemberCondition?> condition;
  /// The DICOM store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{dicom_store_name}` or
  /// `{location_name}/{dataset_name}/{dicom_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final pulumi.Output<String> dicomStoreId;
  /// (Computed) The etag of the DICOM store's IAM policy.
  late final pulumi.Output<String> etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;
  /// The role that should be applied. Only one
  /// `gcp.healthcare.DicomStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [DicomStoreIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DicomStoreIamMember]. {@macro pulumi_healthcare_dicom_store_iam_member_dicom_store_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DicomStoreIamMember(
    String name, {
    DicomStoreIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/dicomStoreIamMember:DicomStoreIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    condition = registerOutput<DicomStoreIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomStoreIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dicomStoreId = registerOutput<String>('dicomStoreId');
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [DicomStoreIamMember] resource's state with the given [name] and [id].
  static DicomStoreIamMember get(
    String name,
    pulumi.Input<String> id, {
    DicomStoreIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DicomStoreIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DicomStoreIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/dicomStoreIamMember:DicomStoreIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<DicomStoreIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomStoreIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dicomStoreId = registerOutput<String>('dicomStoreId');
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [DicomStoreIamMember] resource.
  DicomStoreIamMember.reference(String urn)
    : super(
        'gcp:healthcare/dicomStoreIamMember:DicomStoreIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<DicomStoreIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomStoreIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dicomStoreId = registerOutput<String>('dicomStoreId');
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    role = registerOutput<String>('role');
  }
}
