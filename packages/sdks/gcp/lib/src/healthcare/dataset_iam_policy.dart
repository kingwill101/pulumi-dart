import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_iam_policy_args.dart';
import 'dataset_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Healthcare dataset. Each of these resources serves a different use case:
///
/// * `gcp.healthcare.DatasetIamPolicy`: Authoritative. Sets the IAM policy for the dataset and replaces any existing policy already attached.
/// * `gcp.healthcare.DatasetIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataset are preserved.
/// * `gcp.healthcare.DatasetIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataset are preserved.
///
/// > **Note:** `gcp.healthcare.DatasetIamPolicy` **cannot** be used in conjunction with `gcp.healthcare.DatasetIamBinding` and `gcp.healthcare.DatasetIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.healthcare.DatasetIamBinding` resources **can be** used in conjunction with `gcp.healthcare.DatasetIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.healthcare.DatasetIamPolicy
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
/// const dataset = new gcp.healthcare.DatasetIamPolicy("dataset", {
///     datasetId: "your-dataset-id",
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
/// dataset = gcp.healthcare.DatasetIamPolicy("dataset",
///     dataset_id="your-dataset-id",
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
///     var dataset = new Gcp.Healthcare.DatasetIamPolicy("dataset", new()
///     {
///         DatasetId = "your-dataset-id",
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
/// 		_, err = healthcare.NewDatasetIamPolicy(ctx, "dataset", &healthcare.DatasetIamPolicyArgs{
/// 			DatasetId:  pulumi.String("your-dataset-id"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamPolicy;
/// import com.pulumi.gcp.healthcare.DatasetIamPolicyArgs;
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
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
///             .datasetId("your-dataset-id")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:healthcare:DatasetIamPolicy
///     properties:
///       datasetId: your-dataset-id
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
/// ## gcp.healthcare.DatasetIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamBinding("dataset", {
///     datasetId: "your-dataset-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamBinding("dataset",
///     dataset_id="your-dataset-id",
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
///     var dataset = new Gcp.Healthcare.DatasetIamBinding("dataset", new()
///     {
///         DatasetId = "your-dataset-id",
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
/// 		_, err := healthcare.NewDatasetIamBinding(ctx, "dataset", &healthcare.DatasetIamBindingArgs{
/// 			DatasetId: pulumi.String("your-dataset-id"),
/// 			Role:      pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamBinding;
/// import com.pulumi.gcp.healthcare.DatasetIamBindingArgs;
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
///         var dataset = new DatasetIamBinding("dataset", DatasetIamBindingArgs.builder()
///             .datasetId("your-dataset-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:healthcare:DatasetIamBinding
///     properties:
///       datasetId: your-dataset-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.DatasetIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamMember("dataset", {
///     datasetId: "your-dataset-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamMember("dataset",
///     dataset_id="your-dataset-id",
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
///     var dataset = new Gcp.Healthcare.DatasetIamMember("dataset", new()
///     {
///         DatasetId = "your-dataset-id",
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
/// 		_, err := healthcare.NewDatasetIamMember(ctx, "dataset", &healthcare.DatasetIamMemberArgs{
/// 			DatasetId: pulumi.String("your-dataset-id"),
/// 			Role:      pulumi.String("roles/editor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamMember;
/// import com.pulumi.gcp.healthcare.DatasetIamMemberArgs;
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
///         var dataset = new DatasetIamMember("dataset", DatasetIamMemberArgs.builder()
///             .datasetId("your-dataset-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:healthcare:DatasetIamMember
///     properties:
///       datasetId: your-dataset-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.DatasetIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamBinding("dataset", {
///     datasetId: "your-dataset-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamBinding("dataset",
///     dataset_id="your-dataset-id",
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
///     var dataset = new Gcp.Healthcare.DatasetIamBinding("dataset", new()
///     {
///         DatasetId = "your-dataset-id",
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
/// 		_, err := healthcare.NewDatasetIamBinding(ctx, "dataset", &healthcare.DatasetIamBindingArgs{
/// 			DatasetId: pulumi.String("your-dataset-id"),
/// 			Role:      pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamBinding;
/// import com.pulumi.gcp.healthcare.DatasetIamBindingArgs;
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
///         var dataset = new DatasetIamBinding("dataset", DatasetIamBindingArgs.builder()
///             .datasetId("your-dataset-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:healthcare:DatasetIamBinding
///     properties:
///       datasetId: your-dataset-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.DatasetIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamMember("dataset", {
///     datasetId: "your-dataset-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamMember("dataset",
///     dataset_id="your-dataset-id",
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
///     var dataset = new Gcp.Healthcare.DatasetIamMember("dataset", new()
///     {
///         DatasetId = "your-dataset-id",
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
/// 		_, err := healthcare.NewDatasetIamMember(ctx, "dataset", &healthcare.DatasetIamMemberArgs{
/// 			DatasetId: pulumi.String("your-dataset-id"),
/// 			Role:      pulumi.String("roles/editor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamMember;
/// import com.pulumi.gcp.healthcare.DatasetIamMemberArgs;
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
///         var dataset = new DatasetIamMember("dataset", DatasetIamMemberArgs.builder()
///             .datasetId("your-dataset-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:healthcare:DatasetIamMember
///     properties:
///       datasetId: your-dataset-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Healthcase Dataset resource. For example:
///
/// * `"{{project_id}}/{{location}}/{{dataset}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{dataset}}"
///
/// to = google_healthcare_dataset_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:healthcare/datasetIamPolicy:DatasetIamPolicy default {{project_id}}/{{location}}/{{dataset}}
/// ```
class DatasetIamPolicy extends pulumi.CustomResource {
  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final pulumi.Output<String> datasetId;
  /// (Computed) The etag of the dataset's IAM policy.
  late final pulumi.Output<String> etag;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// Creates a new [DatasetIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetIamPolicy]. {@macro pulumi_healthcare_dataset_iam_policy_dataset_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetIamPolicy(
    String name, {
    DatasetIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/datasetIamPolicy:DatasetIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.datasetId = registerOutput<String>('datasetId');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
  }

  /// Gets an existing [DatasetIamPolicy] resource's state with the given [name] and [id].
  static DatasetIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    DatasetIamPolicyState? state,
  }) {
    return DatasetIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/datasetIamPolicy:DatasetIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.datasetId = registerOutput<String>('datasetId');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
  }
}
