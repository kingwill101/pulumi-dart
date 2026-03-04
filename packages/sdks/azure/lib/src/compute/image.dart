import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_os_disk.dart';
import 'image_state.dart';

/// Manages a custom virtual machine image that can be used to create virtual machines.
///
/// ## Example Usage
///
/// &gt; **Note:** For a more complete example, see the `examples/image` directory within the GitHub Repository.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getVirtualMachine({
///     name: "examplevm",
///     resourceGroupName: "example-resources",
/// });
/// const exampleImage = new azure.compute.Image("example", {
///     name: "exampleimage",
///     location: example.then(example => example.location),
///     resourceGroupName: example.then(example => example.name),
///     sourceVirtualMachineId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_virtual_machine(name="examplevm",
///     resource_group_name="example-resources")
/// example_image = azure.compute.Image("example",
///     name="exampleimage",
///     location=example.location,
///     resource_group_name=example.name,
///     source_virtual_machine_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetVirtualMachine.Invoke(new()
///     {
///         Name = "examplevm",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleImage = new Azure.Compute.Image("example", new()
///     {
///         Name = "exampleimage",
///         Location = example.Apply(getVirtualMachineResult => getVirtualMachineResult.Location),
///         ResourceGroupName = example.Apply(getVirtualMachineResult => getVirtualMachineResult.Name),
///         SourceVirtualMachineId = example.Apply(getVirtualMachineResult => getVirtualMachineResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupVirtualMachine(ctx, &compute.LookupVirtualMachineArgs{
/// 			Name:              "examplevm",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewImage(ctx, "example", &compute.ImageArgs{
/// 			Name:                   pulumi.String("exampleimage"),
/// 			Location:               pulumi.String(example.Location),
/// 			ResourceGroupName:      pulumi.String(example.Name),
/// 			SourceVirtualMachineId: pulumi.String(example.Id),
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetVirtualMachineArgs;
/// import com.pulumi.azure.compute.Image;
/// import com.pulumi.azure.compute.ImageArgs;
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
///         final var example = ComputeFunctions.getVirtualMachine(GetVirtualMachineArgs.builder()
///             .name("examplevm")
///             .resourceGroupName("example-resources")
///             .build());
///
///         var exampleImage = new Image("exampleImage", ImageArgs.builder()
///             .name("exampleimage")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sourceVirtualMachineId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleImage:
///     type: azure:compute:Image
///     name: example
///     properties:
///       name: exampleimage
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sourceVirtualMachineId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getVirtualMachine
///       arguments:
///         name: examplevm
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-01
///
/// ## Import
///
/// Images can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/image:Image example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/images/image1
/// ```
class Image extends pulumi.CustomResource {
  /// One or more `data_disk` blocks as defined below.
  ///
  /// &gt; **Note:** `data_disk` cannot be set together with `source_virtual_machine_id`.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;

  /// The Hyper-V Generation Type of the Virtual Machine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hyperVGeneration;

  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the image. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// One or more `os_disk` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `os_disk` cannot be set together with `source_virtual_machine_id`.
  late final pulumi.Output<ImageOsDisk?> osDisk;

  /// The name of the resource group in which to create the image. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The Virtual Machine ID from which to create the image.
  late final pulumi.Output<String?> sourceVirtualMachineId;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `zone_resilient` can only be set to `true` if the image is stored in a region that supports availability zones.
  ///
  /// &gt; **Note:** `zone_resilient` cannot be set together with `source_virtual_machine_id`.
  late final pulumi.Output<bool?> zoneResilient;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_compute_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(String name, {ImageArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:compute/image:Image',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osDisk = registerOutput<ImageOsDisk?>('osDisk');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceVirtualMachineId = registerOutput<String?>('sourceVirtualMachineId');
    tags = registerOutput<Map<String, String>?>('tags');
    zoneResilient = registerOutput<bool?>('zoneResilient');
  }

  /// Gets an existing [Image] resource's state with the given [name] and [id].
  static Image get(String name, pulumi.Input<String> id, {ImageState? state}) {
    return Image._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Image._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/image:Image',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osDisk = registerOutput<ImageOsDisk?>('osDisk');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceVirtualMachineId = registerOutput<String?>('sourceVirtualMachineId');
    tags = registerOutput<Map<String, String>?>('tags');
    zoneResilient = registerOutput<bool?>('zoneResilient');
  }
}
