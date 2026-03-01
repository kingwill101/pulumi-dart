import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_access_boundary_policy_args.dart';
import 'principal_access_boundary_policy_details.dart';
import 'principal_access_boundary_policy_state.dart';

/// ## Example Usage
///
/// ### Iam Principal Access Boundary Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pab_policy_for_org = new gcp.iam.PrincipalAccessBoundaryPolicy("pab-policy-for-org", {
///     organization: "123456789",
///     location: "global",
///     displayName: "PAB policy for Organization",
///     principalAccessBoundaryPolicyId: "pab-policy-for-org",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pab_policy_for_org = gcp.iam.PrincipalAccessBoundaryPolicy("pab-policy-for-org",
///     organization="123456789",
///     location="global",
///     display_name="PAB policy for Organization",
///     principal_access_boundary_policy_id="pab-policy-for-org")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pab_policy_for_org = new Gcp.Iam.PrincipalAccessBoundaryPolicy("pab-policy-for-org", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         DisplayName = "PAB policy for Organization",
///         PrincipalAccessBoundaryPolicyId = "pab-policy-for-org",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewPrincipalAccessBoundaryPolicy(ctx, "pab-policy-for-org", &iam.PrincipalAccessBoundaryPolicyArgs{
/// 			Organization:                    pulumi.String("123456789"),
/// 			Location:                        pulumi.String("global"),
/// 			DisplayName:                     pulumi.String("PAB policy for Organization"),
/// 			PrincipalAccessBoundaryPolicyId: pulumi.String("pab-policy-for-org"),
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
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicy;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicyArgs;
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
///         var pab_policy_for_org = new PrincipalAccessBoundaryPolicy("pab-policy-for-org", PrincipalAccessBoundaryPolicyArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .displayName("PAB policy for Organization")
///             .principalAccessBoundaryPolicyId("pab-policy-for-org")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pab-policy-for-org:
///     type: gcp:iam:PrincipalAccessBoundaryPolicy
///     properties:
///       organization: '123456789'
///       location: global
///       displayName: PAB policy for Organization
///       principalAccessBoundaryPolicyId: pab-policy-for-org
/// ```
///
/// ### Iam Organizations Policy Binding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const pabPolicy = new gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy", {
///     organization: "123456789",
///     location: "global",
///     displayName: "Binding for all principals in the Organization",
///     principalAccessBoundaryPolicyId: "my-pab-policy",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [pabPolicy],
/// });
/// const my_pab_policy = new gcp.iam.OrganizationsPolicyBinding("my-pab-policy", {
///     organization: "123456789",
///     location: "global",
///     displayName: "Binding for all principals in the Organization",
///     policyKind: "PRINCIPAL_ACCESS_BOUNDARY",
///     policyBindingId: "binding-for-all-org-principals",
///     policy: pulumi.interpolate`organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}`,
///     target: {
///         principalSet: "//cloudresourcemanager.googleapis.com/organizations/123456789",
///     },
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// pab_policy = gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy",
///     organization="123456789",
///     location="global",
///     display_name="Binding for all principals in the Organization",
///     principal_access_boundary_policy_id="my-pab-policy")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[pab_policy]))
/// my_pab_policy = gcp.iam.OrganizationsPolicyBinding("my-pab-policy",
///     organization="123456789",
///     location="global",
///     display_name="Binding for all principals in the Organization",
///     policy_kind="PRINCIPAL_ACCESS_BOUNDARY",
///     policy_binding_id="binding-for-all-org-principals",
///     policy=pab_policy.principal_access_boundary_policy_id.apply(lambda principal_access_boundary_policy_id: f"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principal_access_boundary_policy_id}"),
///     target={
///         "principal_set": "//cloudresourcemanager.googleapis.com/organizations/123456789",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pabPolicy = new Gcp.Iam.PrincipalAccessBoundaryPolicy("pab_policy", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         DisplayName = "Binding for all principals in the Organization",
///         PrincipalAccessBoundaryPolicyId = "my-pab-policy",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             pabPolicy,
///         },
///     });
///
///     var my_pab_policy = new Gcp.Iam.OrganizationsPolicyBinding("my-pab-policy", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         DisplayName = "Binding for all principals in the Organization",
///         PolicyKind = "PRINCIPAL_ACCESS_BOUNDARY",
///         PolicyBindingId = "binding-for-all-org-principals",
///         Policy = pabPolicy.PrincipalAccessBoundaryPolicyId.Apply(principalAccessBoundaryPolicyId => $"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principalAccessBoundaryPolicyId}"),
///         Target = new Gcp.Iam.Inputs.OrganizationsPolicyBindingTargetArgs
///         {
///             PrincipalSet = "//cloudresourcemanager.googleapis.com/organizations/123456789",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pabPolicy, err := iam.NewPrincipalAccessBoundaryPolicy(ctx, "pab_policy", &iam.PrincipalAccessBoundaryPolicyArgs{
/// 			Organization:                    pulumi.String("123456789"),
/// 			Location:                        pulumi.String("global"),
/// 			DisplayName:                     pulumi.String("Binding for all principals in the Organization"),
/// 			PrincipalAccessBoundaryPolicyId: pulumi.String("my-pab-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			pabPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewOrganizationsPolicyBinding(ctx, "my-pab-policy", &iam.OrganizationsPolicyBindingArgs{
/// 			Organization:    pulumi.String("123456789"),
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("Binding for all principals in the Organization"),
/// 			PolicyKind:      pulumi.String("PRINCIPAL_ACCESS_BOUNDARY"),
/// 			PolicyBindingId: pulumi.String("binding-for-all-org-principals"),
/// 			Policy: pabPolicy.PrincipalAccessBoundaryPolicyId.ApplyT(func(principalAccessBoundaryPolicyId string) (string, error) {
/// 				return fmt.Sprintf("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%v", principalAccessBoundaryPolicyId), nil
/// 			}).(pulumi.StringOutput),
/// 			Target: &iam.OrganizationsPolicyBindingTargetArgs{
/// 				PrincipalSet: pulumi.String("//cloudresourcemanager.googleapis.com/organizations/123456789"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
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
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicy;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicyArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.iam.OrganizationsPolicyBinding;
/// import com.pulumi.gcp.iam.OrganizationsPolicyBindingArgs;
/// import com.pulumi.gcp.iam.inputs.OrganizationsPolicyBindingTargetArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var pabPolicy = new PrincipalAccessBoundaryPolicy("pabPolicy", PrincipalAccessBoundaryPolicyArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .displayName("Binding for all principals in the Organization")
///             .principalAccessBoundaryPolicyId("my-pab-policy")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(pabPolicy)
///                 .build());
///
///         var my_pab_policy = new OrganizationsPolicyBinding("my-pab-policy", OrganizationsPolicyBindingArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .displayName("Binding for all principals in the Organization")
///             .policyKind("PRINCIPAL_ACCESS_BOUNDARY")
///             .policyBindingId("binding-for-all-org-principals")
///             .policy(pabPolicy.principalAccessBoundaryPolicyId().applyValue(_principalAccessBoundaryPolicyId -> String.format("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%s", _principalAccessBoundaryPolicyId)))
///             .target(OrganizationsPolicyBindingTargetArgs.builder()
///                 .principalSet("//cloudresourcemanager.googleapis.com/organizations/123456789")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pabPolicy:
///     type: gcp:iam:PrincipalAccessBoundaryPolicy
///     name: pab_policy
///     properties:
///       organization: '123456789'
///       location: global
///       displayName: Binding for all principals in the Organization
///       principalAccessBoundaryPolicyId: my-pab-policy
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${pabPolicy}
///   my-pab-policy:
///     type: gcp:iam:OrganizationsPolicyBinding
///     properties:
///       organization: '123456789'
///       location: global
///       displayName: Binding for all principals in the Organization
///       policyKind: PRINCIPAL_ACCESS_BOUNDARY
///       policyBindingId: binding-for-all-org-principals
///       policy: organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}
///       target:
///         principalSet: //cloudresourcemanager.googleapis.com/organizations/123456789
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// ```
///
///
/// ## Import
///
/// PrincipalAccessBoundaryPolicy can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/principalAccessBoundaryPolicies/{{principal_access_boundary_policy_id}}`
///
/// * `{{organization}}/{{location}}/{{principal_access_boundary_policy_id}}`
///
/// When using the `pulumi import` command, PrincipalAccessBoundaryPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/principalAccessBoundaryPolicy:PrincipalAccessBoundaryPolicy default organizations/{{organization}}/locations/{{location}}/principalAccessBoundaryPolicies/{{principal_access_boundary_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/principalAccessBoundaryPolicy:PrincipalAccessBoundaryPolicy default {{organization}}/{{location}}/{{principal_access_boundary_policy_id}}
/// ```
class PrincipalAccessBoundaryPolicy extends pulumi.CustomResource {
  /// User defined annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Output only. The time when the principal access boundary policy was created.
  late final pulumi.Output<String> createTime;
  /// Principal access boundary policy details
  /// Structure is documented below.
  late final pulumi.Output<PrincipalAccessBoundaryPolicyDetails> details;
  /// The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// The etag for the principal access boundary. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;
  /// The location the principal access boundary policy is in.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the principal access boundary policy.  The following format is supported:
  /// `organizations/{organization_id}/locations/{location}/principalAccessBoundaryPolicies/{policy_id}`
  late final pulumi.Output<String> name;
  /// The parent organization of the principal access boundary policy.
  late final pulumi.Output<String> organization;
  /// The ID to use to create the principal access boundary policy.
  /// This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, hyphens, or dots. Pattern, /a-z{2,62}/.
  late final pulumi.Output<String> principalAccessBoundaryPolicyId;
  /// Output only. The globally unique ID of the principal access boundary policy.
  late final pulumi.Output<String> uid;
  /// Output only. The time when the principal access boundary policy was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PrincipalAccessBoundaryPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrincipalAccessBoundaryPolicy]. {@macro pulumi_iam_principal_access_boundary_policy_principal_access_boundary_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrincipalAccessBoundaryPolicy(
    String name, {
    PrincipalAccessBoundaryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/principalAccessBoundaryPolicy:PrincipalAccessBoundaryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.details = registerOutput<PrincipalAccessBoundaryPolicyDetails>('details');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.principalAccessBoundaryPolicyId = registerOutput<String>('principalAccessBoundaryPolicyId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [PrincipalAccessBoundaryPolicy] resource's state with the given [name] and [id].
  static PrincipalAccessBoundaryPolicy get(
    String name,
    pulumi.Input<String> id, {
    PrincipalAccessBoundaryPolicyState? state,
  }) {
    return PrincipalAccessBoundaryPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrincipalAccessBoundaryPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/principalAccessBoundaryPolicy:PrincipalAccessBoundaryPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.details = registerOutput<PrincipalAccessBoundaryPolicyDetails>('details');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.principalAccessBoundaryPolicyId = registerOutput<String>('principalAccessBoundaryPolicyId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
