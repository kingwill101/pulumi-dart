import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_policy_binding_args.dart';
import 'organizations_policy_binding_condition.dart';
import 'organizations_policy_binding_state.dart';
import 'organizations_policy_binding_target.dart';

/// ## Example Usage
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
///     displayName: "binding for all principals in the Organization",
///     principalAccessBoundaryPolicyId: "my-pab-policy",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [pabPolicy],
/// });
/// const binding_for_all_org_principals = new gcp.iam.OrganizationsPolicyBinding("binding-for-all-org-principals", {
///     organization: "123456789",
///     location: "global",
///     displayName: "binding for all principals in the Organization",
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
///     display_name="binding for all principals in the Organization",
///     principal_access_boundary_policy_id="my-pab-policy")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[pab_policy]))
/// binding_for_all_org_principals = gcp.iam.OrganizationsPolicyBinding("binding-for-all-org-principals",
///     organization="123456789",
///     location="global",
///     display_name="binding for all principals in the Organization",
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
///         DisplayName = "binding for all principals in the Organization",
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
///     var binding_for_all_org_principals = new Gcp.Iam.OrganizationsPolicyBinding("binding-for-all-org-principals", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         DisplayName = "binding for all principals in the Organization",
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
/// 			DisplayName:                     pulumi.String("binding for all principals in the Organization"),
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
/// 		_, err = iam.NewOrganizationsPolicyBinding(ctx, "binding-for-all-org-principals", &iam.OrganizationsPolicyBindingArgs{
/// 			Organization:    pulumi.String("123456789"),
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("binding for all principals in the Organization"),
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
///             .displayName("binding for all principals in the Organization")
///             .principalAccessBoundaryPolicyId("my-pab-policy")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(pabPolicy)
///                 .build());
///
///         var binding_for_all_org_principals = new OrganizationsPolicyBinding("binding-for-all-org-principals", OrganizationsPolicyBindingArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .displayName("binding for all principals in the Organization")
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
///       displayName: binding for all principals in the Organization
///       principalAccessBoundaryPolicyId: my-pab-policy
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${pabPolicy}
///   binding-for-all-org-principals:
///     type: gcp:iam:OrganizationsPolicyBinding
///     properties:
///       organization: '123456789'
///       location: global
///       displayName: binding for all principals in the Organization
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
/// OrganizationsPolicyBinding can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/policyBindings/{{policy_binding_id}}`
///
/// * `{{organization}}/{{location}}/{{policy_binding_id}}`
///
/// When using the `pulumi import` command, OrganizationsPolicyBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/organizationsPolicyBinding:OrganizationsPolicyBinding default organizations/{{organization}}/locations/{{location}}/policyBindings/{{policy_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/organizationsPolicyBinding:OrganizationsPolicyBinding default {{organization}}/{{location}}/{{policy_binding_id}}
/// ```
class OrganizationsPolicyBinding extends pulumi.CustomResource {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Represents a textual expression in the Common Expression Language
  /// (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of
  /// CEL are documented at https://github.com/google/cel-spec.
  /// Example (Comparison):
  /// title: \"Summary size limit\"
  /// description: \"Determines if a summary is less than 100 chars\"
  /// expression: \"document.summary.size() &lt; 100\"
  /// Example
  /// (Equality):
  /// title: \"Requestor is owner\"
  /// description: \"Determines if requestor is the document owner\"
  /// expression: \"document.owner == request.auth.claims.email\"  Example
  /// (Logic):
  /// title: \"Public documents\"
  /// description: \"Determine whether the document should be publicly visible\"
  /// expression: \"document.type != 'private' && document.type != 'internal'\"
  /// Example (Data Manipulation):
  /// title: \"Notification string\"
  /// description: \"Create a notification string with a timestamp.\"
  /// expression: \"'New message received at ' + string(document.create_time)\"
  /// The exact variables and functions that may be referenced within an expression are
  /// determined by the service that evaluates it. See the service documentation for
  /// additional information.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationsPolicyBindingCondition?> condition;

  /// Output only. The time when the policy binding was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;

  /// The location of the Policy Binding
  late final pulumi.Output<String> location;

  /// The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  late final pulumi.Output<String> name;

  /// The parent organization of the Policy Binding.
  late final pulumi.Output<String> organization;

  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  late final pulumi.Output<String> policy;

  /// The Policy Binding ID.
  late final pulumi.Output<String> policyBindingId;

  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  late final pulumi.Output<String?> policyKind;

  /// Output only. The globally unique ID of the policy to be bound.
  late final pulumi.Output<String> policyUid;

  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationsPolicyBindingTarget> target;

  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the policy binding was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationsPolicyBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationsPolicyBinding]. {@macro pulumi_iam_organizations_policy_binding_organizations_policy_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationsPolicyBinding(
    String name, {
    OrganizationsPolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:iam/organizationsPolicyBinding:OrganizationsPolicyBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    condition = registerOutput<OrganizationsPolicyBindingCondition?>(
      'condition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OrganizationsPolicyBindingCondition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    target = registerOutput<OrganizationsPolicyBindingTarget>(
      'target',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OrganizationsPolicyBindingTarget.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [OrganizationsPolicyBinding] resource's state with the given [name] and [id].
  static OrganizationsPolicyBinding get(
    String name,
    pulumi.Input<String> id, {
    OrganizationsPolicyBindingState? state,
  }) {
    return OrganizationsPolicyBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationsPolicyBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:iam/organizationsPolicyBinding:OrganizationsPolicyBinding',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    condition = registerOutput<OrganizationsPolicyBindingCondition?>(
      'condition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OrganizationsPolicyBindingCondition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    target = registerOutput<OrganizationsPolicyBindingTarget>(
      'target',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OrganizationsPolicyBindingTarget.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
