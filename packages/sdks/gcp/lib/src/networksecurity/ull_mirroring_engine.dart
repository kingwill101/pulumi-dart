import 'package:pulumi/pulumi.dart' as pulumi;
import 'ull_mirroring_engine_args.dart';
import 'ull_mirroring_engine_state.dart';

/// A Mirroring Engine is a logical representation of the underlying infrastructure
/// that is used to manage and monitor the ULL Mirroring setup.
///
///
///
/// ## Example Usage
///
/// ### Network Security Ull Mirroring Engine Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.UllMirroringEngine("default", {
///     ullMirroringEngineId: "example-ull-eng",
///     location: "us-south1-d",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.UllMirroringEngine("default",
///     ull_mirroring_engine_id="example-ull-eng",
///     location="us-south1-d",
///     labels={
///         "foo": "bar",
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
///     var @default = new Gcp.NetworkSecurity.UllMirroringEngine("default", new()
///     {
///         UllMirroringEngineId = "example-ull-eng",
///         Location = "us-south1-d",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewUllMirroringEngine(ctx, "default", &networksecurity.UllMirroringEngineArgs{
/// 			UllMirroringEngineId: pulumi.String("example-ull-eng"),
/// 			Location:             pulumi.String("us-south1-d"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "gcp_networksecurity_ullmirroringengine" "default" {
///   ull_mirroring_engine_id = "example-ull-eng"
///   location                = "us-south1-d"
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.UllMirroringEngine;
/// import com.pulumi.gcp.networksecurity.UllMirroringEngineArgs;
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
///         var default_ = new UllMirroringEngine("default", UllMirroringEngineArgs.builder()
///             .ullMirroringEngineId("example-ull-eng")
///             .location("us-south1-d")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:UllMirroringEngine
///     properties:
///       ullMirroringEngineId: example-ull-eng
///       location: us-south1-d
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// UllMirroringEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/ullMirroringEngines/{{ull_mirroring_engine_id}}`
/// * `{{project}}/{{location}}/{{ull_mirroring_engine_id}}`
/// * `{{location}}/{{ull_mirroring_engine_id}}`
///
///
/// When using the `pulumi import` command, UllMirroringEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/ullMirroringEngine:UllMirroringEngine default projects/{{project}}/locations/{{location}}/ullMirroringEngines/{{ull_mirroring_engine_id}}
/// $ pulumi import gcp:networksecurity/ullMirroringEngine:UllMirroringEngine default {{project}}/{{location}}/{{ull_mirroring_engine_id}}
/// $ pulumi import gcp:networksecurity/ullMirroringEngine:UllMirroringEngine default {{location}}/{{ull_mirroring_engine_id}}
/// ```
class UllMirroringEngine extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The cloud location of the engine, e.g. `us-south1-d` or `us-south1-e`.
  late final pulumi.Output<String> location;
  /// The resource name of this engine, for example:
  /// `projects/123456789/locations/us-south1-d/ullMirroringEngines/my-engine`.
  /// See https://google.aip.dev/122 for more details.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation. See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// The ID to use for the new engine, which will become the final
  /// component of the engine's resource name.
  late final pulumi.Output<String> ullMirroringEngineId;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [UllMirroringEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UllMirroringEngine]. {@macro pulumi_networksecurity_ull_mirroring_engine_ull_mirroring_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UllMirroringEngine(
    String name, {
    UllMirroringEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/ullMirroringEngine:UllMirroringEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    ullMirroringEngineId = registerOutput<String>('ullMirroringEngineId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [UllMirroringEngine] resource's state with the given [name] and [id].
  static UllMirroringEngine get(
    String name,
    pulumi.Input<String> id, {
    UllMirroringEngineState? state,
  }) {
    return UllMirroringEngine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UllMirroringEngine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/ullMirroringEngine:UllMirroringEngine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    ullMirroringEngineId = registerOutput<String>('ullMirroringEngineId');
    updateTime = registerOutput<String>('updateTime');
  }
}
