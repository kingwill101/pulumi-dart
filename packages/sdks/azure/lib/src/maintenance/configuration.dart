import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'configuration_install_patches.dart';
import 'configuration_state.dart';
import 'configuration_window.dart';

/// Manages a maintenance configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleConfiguration = new azure.maintenance.Configuration("example", {
///     name: "example-mc",
///     resourceGroupName: example.name,
///     location: example.location,
///     scope: "SQLDB",
///     tags: {
///         Env: "prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_configuration = azure.maintenance.Configuration("example",
///     name="example-mc",
///     resource_group_name=example.name,
///     location=example.location,
///     scope="SQLDB",
///     tags={
///         "Env": "prod",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleConfiguration = new Azure.Maintenance.Configuration("example", new()
///     {
///         Name = "example-mc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Scope = "SQLDB",
///         Tags =
///         {
///             { "Env", "prod" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maintenance"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = maintenance.NewConfiguration(ctx, "example", &maintenance.ConfigurationArgs{
/// 			Name:              pulumi.String("example-mc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Scope:             pulumi.String("SQLDB"),
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("prod"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.maintenance.Configuration;
/// import com.pulumi.azure.maintenance.ConfigurationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .name("example-mc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .scope("SQLDB")
///             .tags(Map.of("Env", "prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleConfiguration:
///     type: azure:maintenance:Configuration
///     name: example
///     properties:
///       name: example-mc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       scope: SQLDB
///       tags:
///         Env: prod
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Maintenance` - 2023-04-01
///
/// ## Import
///
/// Maintenance Configuration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:maintenance/configuration:Configuration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Maintenance/maintenanceConfigurations/example-mc
/// ```
class Configuration extends pulumi.CustomResource {
  /// The in guest user patch mode. Possible values are `Platform` or `User`. Must be specified when `scope` is `InGuestPatch`.
  late final pulumi.Output<String?> inGuestUserPatchMode;
  /// An `install_patches` block as defined below.
  ///
  /// &gt; **Note:** `install_patches` must be specified when `scope` is `InGuestPatch`.
  late final pulumi.Output<ConfigurationInstallPatches?> installPatches;
  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A mapping of properties to assign to the resource.
  late final pulumi.Output<Map<String, String>?> properties;
  /// The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The scope of the Maintenance Configuration. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` or `SQLManagedInstance`.
  late final pulumi.Output<String> scope;
  /// A mapping of tags to assign to the resource. The key could not contain upper case letter.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The visibility of the Maintenance Configuration. The only allowable value is `Custom`. Defaults to `Custom`.
  late final pulumi.Output<String?> visibility;
  /// A `window` block as defined below.
  late final pulumi.Output<ConfigurationWindow?> window;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_maintenance_configuration_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maintenance/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    inGuestUserPatchMode = registerOutput<String?>('inGuestUserPatchMode');
    installPatches = registerOutput<ConfigurationInstallPatches?>('installPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationInstallPatches.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>?>('properties');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    visibility = registerOutput<String?>('visibility');
    window = registerOutput<ConfigurationWindow?>('window', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Configuration] resource's state with the given [name] and [id].
  static Configuration get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationState? state,
  }) {
    return Configuration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Configuration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maintenance/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    inGuestUserPatchMode = registerOutput<String?>('inGuestUserPatchMode');
    installPatches = registerOutput<ConfigurationInstallPatches?>('installPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationInstallPatches.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>?>('properties');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    visibility = registerOutput<String?>('visibility');
    window = registerOutput<ConfigurationWindow?>('window', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
