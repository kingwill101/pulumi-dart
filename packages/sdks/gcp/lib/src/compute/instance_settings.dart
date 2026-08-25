import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_settings_args.dart';
import 'instance_settings_metadata.dart';
import 'instance_settings_state.dart';

/// Represents an Instance Settings resource. Instance settings are centralized configuration parameters that allow users to configure the default values for specific VM parameters that are normally set using GCE instance API methods.
///
///
/// To get more information about InstanceSettings, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/instanceSettings)
/// * How-to Guides
/// * [Update Instance Settings](https://cloud.google.com/compute/docs/metadata/setting-custom-metadata#set-custom-project-zonal-metadata)
///
/// ## Example Usage
///
/// ### Instance Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gceInstanceSettings = new gcp.compute.InstanceSettings("gce_instance_settings", {
///     zone: "us-east7-b",
///     metadata: {
///         items: {
///             foo: "baz",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gce_instance_settings = gcp.compute.InstanceSettings("gce_instance_settings",
///     zone="us-east7-b",
///     metadata={
///         "items": {
///             "foo": "baz",
///         },
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
///     var gceInstanceSettings = new Gcp.Compute.InstanceSettings("gce_instance_settings", new()
///     {
///         Zone = "us-east7-b",
///         Metadata = new Gcp.Compute.Inputs.InstanceSettingsMetadataArgs
///         {
///             Items =
///             {
///                 { "foo", "baz" },
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
/// 		_, err := compute.NewInstanceSettings(ctx, "gce_instance_settings", &compute.InstanceSettingsArgs{
/// 			Zone: pulumi.String("us-east7-b"),
/// 			Metadata: &compute.InstanceSettingsMetadataArgs{
/// 				Items: pulumi.StringMap{
/// 					"foo": pulumi.String("baz"),
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
/// resource "gcp_compute_instancesettings" "gce_instance_settings" {
///   zone = "us-east7-b"
///   metadata = {
///     items = {
///       "foo" = "baz"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.InstanceSettings;
/// import com.pulumi.gcp.compute.InstanceSettingsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceSettingsMetadataArgs;
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
///         var gceInstanceSettings = new InstanceSettings("gceInstanceSettings", InstanceSettingsArgs.builder()
///             .zone("us-east7-b")
///             .metadata(InstanceSettingsMetadataArgs.builder()
///                 .items(Map.of("foo", "baz"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gceInstanceSettings:
///     type: gcp:compute:InstanceSettings
///     name: gce_instance_settings
///     properties:
///       zone: us-east7-b
///       metadata:
///         items:
///           foo: baz
/// ```
///
///
/// ## Import
///
/// InstanceSettings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceSettings`
/// * `{{project}}/{{zone}}`
/// * `{{zone}}`
///
///
/// When using the `pulumi import` command, InstanceSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceSettings:InstanceSettings default projects/{{project}}/zones/{{zone}}/instanceSettings
/// $ pulumi import gcp:compute/instanceSettings:InstanceSettings default {{project}}/{{zone}}
/// $ pulumi import gcp:compute/instanceSettings:InstanceSettings default {{zone}}
/// ```
class InstanceSettings extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> fingerprint;
  /// The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// Structure is documented below.
  late final pulumi.Output<InstanceSettingsMetadata?> metadata;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the zone where the machine resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [InstanceSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceSettings]. {@macro pulumi_compute_instance_settings_instance_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceSettings(
    String name, {
    InstanceSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceSettings:InstanceSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fingerprint = registerOutput<String>('fingerprint');
    metadata = registerOutput<InstanceSettingsMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceSettingsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [InstanceSettings] resource's state with the given [name] and [id].
  static InstanceSettings get(
    String name,
    pulumi.Input<String> id, {
    InstanceSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceSettings:InstanceSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fingerprint = registerOutput<String>('fingerprint');
    metadata = registerOutput<InstanceSettingsMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceSettingsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [InstanceSettings] resource.
  InstanceSettings.reference(String urn)
    : super(
        'gcp:compute/instanceSettings:InstanceSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fingerprint = registerOutput<String>('fingerprint');
    metadata = registerOutput<InstanceSettingsMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceSettingsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }
}
