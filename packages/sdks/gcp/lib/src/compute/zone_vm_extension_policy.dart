import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_vm_extension_policy_args.dart';
import 'zone_vm_extension_policy_extension_policy.dart';
import 'zone_vm_extension_policy_instance_selector.dart';
import 'zone_vm_extension_policy_state.dart';

/// A Zone VM Extension Policy.
///
///
///
/// ## Example Usage
///
/// ### Compute Zone Vm Extension Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const opsAgentPolicy = new gcp.compute.ZoneVmExtensionPolicy("ops_agent_policy", {
///     name: "zonal-ops-agent-vme-policy-_40289",
///     zone: "us-central1-a",
///     extensionPolicies: [{
///         extensionName: "ops-agent",
///         pinnedVersion: "2.66.0",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ops_agent_policy = gcp.compute.ZoneVmExtensionPolicy("ops_agent_policy",
///     name="zonal-ops-agent-vme-policy-_40289",
///     zone="us-central1-a",
///     extension_policies=[{
///         "extension_name": "ops-agent",
///         "pinned_version": "2.66.0",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var opsAgentPolicy = new Gcp.Compute.ZoneVmExtensionPolicy("ops_agent_policy", new()
///     {
///         Name = "zonal-ops-agent-vme-policy-_40289",
///         Zone = "us-central1-a",
///         ExtensionPolicies = new[]
///         {
///             new Gcp.Compute.Inputs.ZoneVmExtensionPolicyExtensionPolicyArgs
///             {
///                 ExtensionName = "ops-agent",
///                 PinnedVersion = "2.66.0",
///             },
///         },
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
/// 		_, err := compute.NewZoneVmExtensionPolicy(ctx, "ops_agent_policy", &compute.ZoneVmExtensionPolicyArgs{
/// 			Name: pulumi.String("zonal-ops-agent-vme-policy-_40289"),
/// 			Zone: pulumi.String("us-central1-a"),
/// 			ExtensionPolicies: compute.ZoneVmExtensionPolicyExtensionPolicyArray{
/// 				&compute.ZoneVmExtensionPolicyExtensionPolicyArgs{
/// 					ExtensionName: pulumi.String("ops-agent"),
/// 					PinnedVersion: pulumi.String("2.66.0"),
/// 				},
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
/// resource "gcp_compute_zonevmextensionpolicy" "ops_agent_policy" {
///   name = "zonal-ops-agent-vme-policy-_40289"
///   zone = "us-central1-a"
///   extension_policies {
///     extension_name = "ops-agent"
///     pinned_version = "2.66.0"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ZoneVmExtensionPolicy;
/// import com.pulumi.gcp.compute.ZoneVmExtensionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ZoneVmExtensionPolicyExtensionPolicyArgs;
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
///         var opsAgentPolicy = new ZoneVmExtensionPolicy("opsAgentPolicy", ZoneVmExtensionPolicyArgs.builder()
///             .name("zonal-ops-agent-vme-policy-_40289")
///             .zone("us-central1-a")
///             .extensionPolicies(ZoneVmExtensionPolicyExtensionPolicyArgs.builder()
///                 .extensionName("ops-agent")
///                 .pinnedVersion("2.66.0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   opsAgentPolicy:
///     type: gcp:compute:ZoneVmExtensionPolicy
///     name: ops_agent_policy
///     properties:
///       name: zonal-ops-agent-vme-policy-_40289
///       zone: us-central1-a
///       extensionPolicies:
///         - extensionName: ops-agent
///           pinnedVersion: 2.66.0
/// ```
///
///
/// ## Import
///
/// ZoneVmExtensionPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/vmExtensionPolicies/{{name}}`
/// * `{{project}}/{{zone}}/{{name}}`
/// * `{{zone}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ZoneVmExtensionPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/zoneVmExtensionPolicy:ZoneVmExtensionPolicy default projects/{{project}}/zones/{{zone}}/vmExtensionPolicies/{{name}}
/// $ pulumi import gcp:compute/zoneVmExtensionPolicy:ZoneVmExtensionPolicy default {{project}}/{{zone}}/{{name}}
/// $ pulumi import gcp:compute/zoneVmExtensionPolicy:ZoneVmExtensionPolicy default {{zone}}/{{name}}
/// $ pulumi import gcp:compute/zoneVmExtensionPolicy:ZoneVmExtensionPolicy default {{name}}
/// ```
class ZoneVmExtensionPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// A map of extension names (for example, "ops-agent") to their corresponding policy configurations.
  /// Structure is documented below.
  late final pulumi.Output<List<ZoneVmExtensionPolicyExtensionPolicy>> extensionPolicies;
  /// Selectors to target VMs for this policy.
  /// Structure is documented below.
  late final pulumi.Output<List<ZoneVmExtensionPolicyInstanceSelector>?> instanceSelectors;
  /// Type of the resource.
  late final pulumi.Output<String> kind;
  /// Indicates if this policy is managed by a global policy.
  late final pulumi.Output<bool> managedByGlobal;
  /// Name of the resource. Provided by the client when the resource is created.
  late final pulumi.Output<String> name;
  /// Priority of this policy.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Current state of the policy.
  late final pulumi.Output<String> state;
  /// Name of the zone for this request.
  late final pulumi.Output<String> zone;

  /// Creates a new [ZoneVmExtensionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneVmExtensionPolicy]. {@macro pulumi_compute_zone_vm_extension_policy_zone_vm_extension_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneVmExtensionPolicy(
    String name, {
    ZoneVmExtensionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/zoneVmExtensionPolicy:ZoneVmExtensionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    extensionPolicies = registerOutput<List<ZoneVmExtensionPolicyExtensionPolicy>>('extensionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneVmExtensionPolicyExtensionPolicy>(guardedValue, (value) => ZoneVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    instanceSelectors = registerOutput<List<ZoneVmExtensionPolicyInstanceSelector>?>('instanceSelectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneVmExtensionPolicyInstanceSelector>(guardedValue, (value) => ZoneVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    managedByGlobal = registerOutput<bool>('managedByGlobal');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [ZoneVmExtensionPolicy] resource's state with the given [name] and [id].
  static ZoneVmExtensionPolicy get(
    String name,
    pulumi.Input<String> id, {
    ZoneVmExtensionPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneVmExtensionPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneVmExtensionPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/zoneVmExtensionPolicy:ZoneVmExtensionPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    extensionPolicies = registerOutput<List<ZoneVmExtensionPolicyExtensionPolicy>>('extensionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneVmExtensionPolicyExtensionPolicy>(guardedValue, (value) => ZoneVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    instanceSelectors = registerOutput<List<ZoneVmExtensionPolicyInstanceSelector>?>('instanceSelectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneVmExtensionPolicyInstanceSelector>(guardedValue, (value) => ZoneVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    managedByGlobal = registerOutput<bool>('managedByGlobal');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [ZoneVmExtensionPolicy] resource.
  ZoneVmExtensionPolicy.reference(String urn)
    : super(
        'gcp:compute/zoneVmExtensionPolicy:ZoneVmExtensionPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    extensionPolicies = registerOutput<List<ZoneVmExtensionPolicyExtensionPolicy>>('extensionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneVmExtensionPolicyExtensionPolicy>(guardedValue, (value) => ZoneVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    instanceSelectors = registerOutput<List<ZoneVmExtensionPolicyInstanceSelector>?>('instanceSelectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneVmExtensionPolicyInstanceSelector>(guardedValue, (value) => ZoneVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    managedByGlobal = registerOutput<bool>('managedByGlobal');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    zone = registerOutput<String>('zone');
  }
}
