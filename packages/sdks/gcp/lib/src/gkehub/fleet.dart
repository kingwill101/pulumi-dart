import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'fleet_default_cluster_config.dart';
import 'fleet_gkehub_state.dart';
import 'fleet_state.dart';

/// Fleet contains information about a group of clusters.
///
///
/// To get more information about Fleet, see:
///
/// * [API documentation](https://cloud.google.com/anthos/multicluster-management/reference/rest/v1/projects.locations.fleets)
/// * How-to Guides
/// * [Registering a Cluster to a Fleet](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Fleet Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.gkehub.Fleet("default", {
///     displayName: "my production fleet",
///     defaultClusterConfig: {
///         securityPostureConfig: {
///             mode: "DISABLED",
///             vulnerabilityMode: "VULNERABILITY_DISABLED",
///         },
///         compliancePostureConfig: {
///             mode: "ENABLED",
///         },
///     },
///     labels: {
///         env: "prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.gkehub.Fleet("default",
///     display_name="my production fleet",
///     default_cluster_config={
///         "security_posture_config": {
///             "mode": "DISABLED",
///             "vulnerability_mode": "VULNERABILITY_DISABLED",
///         },
///         "compliance_posture_config": {
///             "mode": "ENABLED",
///         },
///     },
///     labels={
///         "env": "prod",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.GkeHub.Fleet("default", new()
///     {
///         DisplayName = "my production fleet",
///         DefaultClusterConfig = new Gcp.GkeHub.Inputs.FleetDefaultClusterConfigArgs
///         {
///             SecurityPostureConfig = new Gcp.GkeHub.Inputs.FleetDefaultClusterConfigSecurityPostureConfigArgs
///             {
///                 Mode = "DISABLED",
///                 VulnerabilityMode = "VULNERABILITY_DISABLED",
///             },
///             CompliancePostureConfig = new Gcp.GkeHub.Inputs.FleetDefaultClusterConfigCompliancePostureConfigArgs
///             {
///                 Mode = "ENABLED",
///             },
///         },
///         Labels =
///         {
///             { "env", "prod" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFleet(ctx, "default", &gkehub.FleetArgs{
/// 			DisplayName: pulumi.String("my production fleet"),
/// 			DefaultClusterConfig: &gkehub.FleetDefaultClusterConfigArgs{
/// 				SecurityPostureConfig: &gkehub.FleetDefaultClusterConfigSecurityPostureConfigArgs{
/// 					Mode:              pulumi.String("DISABLED"),
/// 					VulnerabilityMode: pulumi.String("VULNERABILITY_DISABLED"),
/// 				},
/// 				CompliancePostureConfig: &gkehub.FleetDefaultClusterConfigCompliancePostureConfigArgs{
/// 					Mode: pulumi.String("ENABLED"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("prod"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gkehub_fleet" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "my production fleet"
///   default_cluster_config = {
///     security_posture_config = {
///       mode               = "DISABLED"
///       vulnerability_mode = "VULNERABILITY_DISABLED"
///     }
///     compliance_posture_config = {
///       mode = "ENABLED"
///     }
///   }
///   labels = {
///     "env" = "prod"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.Fleet;
/// import com.pulumi.gcp.gkehub.FleetArgs;
/// import com.pulumi.gcp.gkehub.inputs.FleetDefaultClusterConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FleetDefaultClusterConfigSecurityPostureConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FleetDefaultClusterConfigCompliancePostureConfigArgs;
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
///         var default_ = new Fleet("default", FleetArgs.builder()
///             .displayName("my production fleet")
///             .defaultClusterConfig(FleetDefaultClusterConfigArgs.builder()
///                 .securityPostureConfig(FleetDefaultClusterConfigSecurityPostureConfigArgs.builder()
///                     .mode("DISABLED")
///                     .vulnerabilityMode("VULNERABILITY_DISABLED")
///                     .build())
///                 .compliancePostureConfig(FleetDefaultClusterConfigCompliancePostureConfigArgs.builder()
///                     .mode("ENABLED")
///                     .build())
///                 .build())
///             .labels(Map.of("env", "prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:gkehub:Fleet
///     properties:
///       displayName: my production fleet
///       defaultClusterConfig:
///         securityPostureConfig:
///           mode: DISABLED
///           vulnerabilityMode: VULNERABILITY_DISABLED
///         compliancePostureConfig:
///           mode: ENABLED
///       labels:
///         env: prod
/// ```
///
///
/// ## Import
///
/// Fleet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/fleets/default`
/// * `{{project}}`
///
///
/// When using the `pulumi import` command, Fleet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/fleet:Fleet default projects/{{project}}/locations/global/fleets/default
/// $ pulumi import gcp:gkehub/fleet:Fleet default {{project}}
/// ```
class Fleet extends pulumi.CustomResource {
  /// The time the fleet was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  late final pulumi.Output<FleetDefaultClusterConfig?> defaultClusterConfig;
  /// The time the fleet was deleted, in RFC3339 text format.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels for this Fleet.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The state of the fleet resource.
  /// Structure is documented below.
  late final pulumi.Output<List<FleetState>> states;
  /// Google-generated UUID for this resource. This is unique across all
  /// Fleet resources. If a Fleet resource is deleted and another
  /// resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;
  /// The time the fleet was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_gkehub_fleet_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(
    String name, {
    FleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    defaultClusterConfig = registerOutput<FleetDefaultClusterConfig?>('defaultClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetDefaultClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<FleetState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetState>(guardedValue, (value) => FleetState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Fleet] resource's state with the given [name] and [id].
  static Fleet get(
    String name,
    pulumi.Input<String> id, {
    FleetGkehubState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Fleet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Fleet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    defaultClusterConfig = registerOutput<FleetDefaultClusterConfig?>('defaultClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetDefaultClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<FleetState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetState>(guardedValue, (value) => FleetState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Fleet] resource.
  Fleet.reference(String urn)
    : super(
        'gcp:gkehub/fleet:Fleet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    defaultClusterConfig = registerOutput<FleetDefaultClusterConfig?>('defaultClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetDefaultClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<FleetState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetState>(guardedValue, (value) => FleetState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
