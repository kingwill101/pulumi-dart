import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_args.dart';
import 'iambinding_condition.dart';
import 'iambinding_state.dart';

/// Allows creation and management of a single binding within IAM policy for
/// an existing Google Cloud Platform Organization.
///
/// &gt; **Note:** This resource __must not__ be used in conjunction with
/// `gcp.organizations.IAMMember` for the __same role__ or they will fight over
/// what your policy should be.
///
/// &gt; **Note:** On create, this resource will overwrite members of any existing roles.
/// Use `pulumi import` and inspect the `output to ensure
/// your existing members are preserved.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.organizations.IAMBinding("binding", {
///     orgId: "123456789",
///     role: "roles/browser",
///     members: ["user:alice@gmail.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.organizations.IAMBinding("binding",
///     org_id="123456789",
///     role="roles/browser",
///     members=["user:alice@gmail.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Organizations.IAMBinding("binding", new()
///     {
///         OrgId = "123456789",
///         Role = "roles/browser",
///         Members = new[]
///         {
///             "user:alice@gmail.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMBinding(ctx, "binding", &organizations.IAMBindingArgs{
/// 			OrgId: pulumi.String("123456789"),
/// 			Role:  pulumi.String("roles/browser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:alice@gmail.com"),
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
/// import com.pulumi.gcp.organizations.IAMBinding;
/// import com.pulumi.gcp.organizations.IAMBindingArgs;
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
///         var binding = new IAMBinding("binding", IAMBindingArgs.builder()
///             .orgId("123456789")
///             .role("roles/browser")
///             .members("user:alice@gmail.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:organizations:IAMBinding
///     properties:
///       orgId: '123456789'
///       role: roles/browser
///       members:
///         - user:alice@gmail.com
/// ```
///
///
/// ## Import
///
/// IAM binding imports use space-delimited identifiers; first the resource in question and then the role.  These bindings can be imported using the `org_id` and role, e.g.
///
/// ```sh
/// $ pulumi import gcp:organizations/iAMBinding:IAMBinding my_org "your-org-id roles/viewer"
/// ```
///
/// -&gt; **Custom Roles**: If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IAMBinding extends pulumi.CustomResource {
  late final pulumi.Output<IAMBindingCondition?> condition;
  /// (Computed) The etag of the organization's IAM policy.
  late final pulumi.Output<String> etag;
  /// A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  late final pulumi.Output<List<String>> members;
  /// The numeric ID of the organization in which you want to create a custom role.
  late final pulumi.Output<String> orgId;
  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [IAMBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IAMBinding]. {@macro pulumi_organizations_i_ambinding_iambinding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IAMBinding(
    String name, {
    IAMBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMBinding:IAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<IAMBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IAMBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    orgId = registerOutput<String>('orgId');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [IAMBinding] resource's state with the given [name] and [id].
  static IAMBinding get(
    String name,
    pulumi.Input<String> id, {
    IAMBindingState? state,
  }) {
    return IAMBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IAMBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMBinding:IAMBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<IAMBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IAMBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    orgId = registerOutput<String>('orgId');
    role = registerOutput<String>('role');
  }
}
