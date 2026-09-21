import 'package:pulumi/pulumi.dart' as pulumi;
import 'nel_setting_args.dart';
import 'nel_setting_state.dart';
import 'nel_setting_value.dart';

/// Accepted Permissions
///
/// - `Zone Settings Read`
/// - `Zone Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleNelSetting = new cloudflare.NelSetting("example_nel_setting", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: {
///         enabled: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_nel_setting = cloudflare.NelSetting("example_nel_setting",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     value={
///         "enabled": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleNelSetting = new Cloudflare.NelSetting("example_nel_setting", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Value = new Cloudflare.Inputs.NelSettingValueArgs
///         {
///             Enabled = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewNelSetting(ctx, "example_nel_setting", &cloudflare.NelSettingArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Value: &cloudflare.NelSettingValueArgs{
/// 				Enabled: pulumi.Bool(false),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_nelsetting" "example_nel_setting" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   value = {
///     enabled = false
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.NelSetting;
/// import com.pulumi.cloudflare.NelSettingArgs;
/// import com.pulumi.cloudflare.inputs.NelSettingValueArgs;
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
///         var exampleNelSetting = new NelSetting("exampleNelSetting", NelSettingArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value(NelSettingValueArgs.builder()
///                 .enabled(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNelSetting:
///     type: cloudflare:NelSetting
///     name: example_nel_setting
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value:
///         enabled: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/nelSetting:NelSetting example '<zone_id>'
/// ```
class NelSetting extends pulumi.CustomResource {
  /// Whether the setting is editable. This is false when the zone's plan does not include NEL or the NEL product feature is not enabled.
  late final pulumi.Output<bool> editable;
  /// When the setting was last modified. A zero value (0001-01-01T00:00:00Z) indicates the setting has never been explicitly set and is using the default value.
  late final pulumi.Output<String> modifiedOn;
  /// The NEL configuration value.
  late final pulumi.Output<NelSettingValue> value;
  /// Identifier of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [NelSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NelSetting]. {@macro pulumi_index_nel_setting_nel_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NelSetting(
    String name, {
    NelSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/nelSetting:NelSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.21.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<NelSettingValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NelSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [NelSetting] resource's state with the given [name] and [id].
  static NelSetting get(
    String name,
    pulumi.Input<String> id, {
    NelSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NelSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NelSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/nelSetting:NelSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<NelSettingValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NelSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [NelSetting] resource.
  NelSetting.reference(String urn)
    : super(
        'cloudflare:index/nelSetting:NelSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<NelSettingValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NelSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }
}
