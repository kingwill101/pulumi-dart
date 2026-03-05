import 'package:pulumi/pulumi.dart' as pulumi;
import 'lab_args.dart';
import 'lab_state.dart';

/// Manages a Dev Test Lab.
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
/// const exampleLab = new azure.devtest.Lab("example", {
///     name: "example-devtestlab",
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         Sydney: "Australia",
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
/// example_lab = azure.devtest.Lab("example",
///     name="example-devtestlab",
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "Sydney": "Australia",
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
///     var exampleLab = new Azure.DevTest.Lab("example", new()
///     {
///         Name = "example-devtestlab",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Tags =
///         {
///             { "Sydney", "Australia" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devtest"
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
/// 		_, err = devtest.NewLab(ctx, "example", &devtest.LabArgs{
/// 			Name:              pulumi.String("example-devtestlab"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"Sydney": pulumi.String("Australia"),
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
/// import com.pulumi.azure.devtest.Lab;
/// import com.pulumi.azure.devtest.LabArgs;
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
///         var exampleLab = new Lab("exampleLab", LabArgs.builder()
///             .name("example-devtestlab")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("Sydney", "Australia"))
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
///   exampleLab:
///     type: azure:devtest:Lab
///     name: example
///     properties:
///       name: example-devtestlab
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         Sydney: Australia
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
///
/// ## Import
///
/// Dev Test Labs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devtest/lab:Lab lab1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevTestLab/labs/lab1
/// ```
class Lab extends pulumi.CustomResource {
  /// The ID of the Storage Account used for Artifact Storage.
  late final pulumi.Output<String> artifactsStorageAccountId;
  /// The ID of the Default Premium Storage Account for this Dev Test Lab.
  late final pulumi.Output<String> defaultPremiumStorageAccountId;
  /// The ID of the Default Storage Account for this Dev Test Lab.
  late final pulumi.Output<String> defaultStorageAccountId;
  /// The ID of the Key used for this Dev Test Lab.
  late final pulumi.Output<String> keyVaultId;
  /// Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Dev Test Lab. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Storage Account used for Storage of Premium Data Disk.
  late final pulumi.Output<String> premiumDataDiskStorageAccountId;
  /// The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The unique immutable identifier of the Dev Test Lab.
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [Lab].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lab]. {@macro pulumi_devtest_lab_lab_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lab(
    String name, {
    LabArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/lab:Lab',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    artifactsStorageAccountId = registerOutput<String>('artifactsStorageAccountId');
    defaultPremiumStorageAccountId = registerOutput<String>('defaultPremiumStorageAccountId');
    defaultStorageAccountId = registerOutput<String>('defaultStorageAccountId');
    keyVaultId = registerOutput<String>('keyVaultId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    premiumDataDiskStorageAccountId = registerOutput<String>('premiumDataDiskStorageAccountId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }

  /// Gets an existing [Lab] resource's state with the given [name] and [id].
  static Lab get(
    String name,
    pulumi.Input<String> id, {
    LabState? state,
  }) {
    return Lab._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Lab._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/lab:Lab',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    artifactsStorageAccountId = registerOutput<String>('artifactsStorageAccountId');
    defaultPremiumStorageAccountId = registerOutput<String>('defaultPremiumStorageAccountId');
    defaultStorageAccountId = registerOutput<String>('defaultStorageAccountId');
    keyVaultId = registerOutput<String>('keyVaultId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    premiumDataDiskStorageAccountId = registerOutput<String>('premiumDataDiskStorageAccountId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
