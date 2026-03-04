import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_args.dart';
import 'organization_security_policy_state.dart';

/// Organization security policies are used to control incoming/outgoing traffic.
///
///
/// To get more information about OrganizationSecurityPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/organizationSecurityPolicies)
/// * How-to Guides
/// * [Creating a firewall policy](https://cloud.google.com/vpc/docs/using-firewall-policies#create-policy)
///
/// ## Example Usage
///
/// ### Organization Security Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "my-short-name",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="my-short-name",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "my-short-name",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("my-short-name"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
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
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("my-short-name")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: my-short-name
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
/// ```
///
///
/// ## Import
///
/// OrganizationSecurityPolicy can be imported using any of these accepted formats:
///
/// * `locations/global/securityPolicies/{{policy_id}}`
///
/// * `{{policy_id}}`
///
/// When using the `pulumi import` command, OrganizationSecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy default locations/global/securityPolicies/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy default {{policy_id}}
/// ```
class OrganizationSecurityPolicy extends pulumi.CustomResource {
  /// A textual description for the organization security policy.
  late final pulumi.Output<String?> description;

  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  late final pulumi.Output<String?> displayName;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  late final pulumi.Output<String> parent;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> policyId;

  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  late final pulumi.Output<String?> shortName;

  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// **NOTE** : 'FIREWALL' type is deprecated and will be removed in a future major release. Please use 'google_compute_firewall_policy' instead."
  /// Possible values are: `FIREWALL`, `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_INTERNAL_SERVICE`, `CLOUD_ARMOR_NETWORK`.
  late final pulumi.Output<String> type;

  /// Creates a new [OrganizationSecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSecurityPolicy]. {@macro pulumi_compute_organization_security_policy_organization_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSecurityPolicy(
    String name, {
    OrganizationSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    fingerprint = registerOutput<String>('fingerprint');
    parent = registerOutput<String>('parent');
    policyId = registerOutput<String>('policyId');
    shortName = registerOutput<String?>('shortName');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [OrganizationSecurityPolicy] resource's state with the given [name] and [id].
  static OrganizationSecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    OrganizationSecurityPolicyState? state,
  }) {
    return OrganizationSecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationSecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    fingerprint = registerOutput<String>('fingerprint');
    parent = registerOutput<String>('parent');
    policyId = registerOutput<String>('policyId');
    shortName = registerOutput<String?>('shortName');
    type = registerOutput<String>('type');
  }
}
