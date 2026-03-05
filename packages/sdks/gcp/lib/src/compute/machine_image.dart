import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_image_args.dart';
import 'machine_image_machine_image_encryption_key.dart';
import 'machine_image_state.dart';

/// Represents a Machine Image resource. Machine images store all the configuration,
/// metadata, permissions, and data from one or more disks required to create a
/// Virtual machine (VM) instance.
///
/// To get more information about MachineImage, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/machineImages)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/machine-images)
///
/// ## Example Usage
///
/// ### Machine Image Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vm = new gcp.compute.Instance("vm", {
///     name: "my-vm",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
/// });
/// const image = new gcp.compute.MachineImage("image", {
///     name: "my-image",
///     sourceInstance: vm.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vm = gcp.compute.Instance("vm",
///     name="my-vm",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     network_interfaces=[{
///         "network": "default",
///     }])
/// image = gcp.compute.MachineImage("image",
///     name="my-image",
///     source_instance=vm.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vm = new Gcp.Compute.Instance("vm", new()
///     {
///         Name = "my-vm",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///     });
///
///     var image = new Gcp.Compute.MachineImage("image", new()
///     {
///         Name = "my-image",
///         SourceInstance = vm.SelfLink,
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
/// 		vm, err := compute.NewInstance(ctx, "vm", &compute.InstanceArgs{
/// 			Name:        pulumi.String("my-vm"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewMachineImage(ctx, "image", &compute.MachineImageArgs{
/// 			Name:           pulumi.String("my-image"),
/// 			SourceInstance: vm.SelfLink,
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.MachineImage;
/// import com.pulumi.gcp.compute.MachineImageArgs;
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
///         var vm = new Instance("vm", InstanceArgs.builder()
///             .name("my-vm")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .build());
///
///         var image = new MachineImage("image", MachineImageArgs.builder()
///             .name("my-image")
///             .sourceInstance(vm.selfLink())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vm:
///     type: gcp:compute:Instance
///     properties:
///       name: my-vm
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       networkInterfaces:
///         - network: default
///   image:
///     type: gcp:compute:MachineImage
///     properties:
///       name: my-image
///       sourceInstance: ${vm.selfLink}
/// ```
///
/// ### Compute Machine Image Kms
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vm = new gcp.compute.Instance("vm", {
///     name: "my-vm",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
/// });
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "keyring",
///     location: "us",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "key",
///     keyRing: keyRing.id,
/// });
/// const image = new gcp.compute.MachineImage("image", {
///     name: "my-image",
///     sourceInstance: vm.selfLink,
///     machineImageEncryptionKey: {
///         kmsKeyName: cryptoKey.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vm = gcp.compute.Instance("vm",
///     name="my-vm",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     network_interfaces=[{
///         "network": "default",
///     }])
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="keyring",
///     location="us")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="key",
///     key_ring=key_ring.id)
/// image = gcp.compute.MachineImage("image",
///     name="my-image",
///     source_instance=vm.self_link,
///     machine_image_encryption_key={
///         "kms_key_name": crypto_key.id,
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
///     var vm = new Gcp.Compute.Instance("vm", new()
///     {
///         Name = "my-vm",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///     });
///
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "keyring",
///         Location = "us",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "key",
///         KeyRing = keyRing.Id,
///     });
///
///     var image = new Gcp.Compute.MachineImage("image", new()
///     {
///         Name = "my-image",
///         SourceInstance = vm.SelfLink,
///         MachineImageEncryptionKey = new Gcp.Compute.Inputs.MachineImageMachineImageEncryptionKeyArgs
///         {
///             KmsKeyName = cryptoKey.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vm, err := compute.NewInstance(ctx, "vm", &compute.InstanceArgs{
/// 			Name:        pulumi.String("my-vm"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring"),
/// 			Location: pulumi.String("us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("key"),
/// 			KeyRing: keyRing.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewMachineImage(ctx, "image", &compute.MachineImageArgs{
/// 			Name:           pulumi.String("my-image"),
/// 			SourceInstance: vm.SelfLink,
/// 			MachineImageEncryptionKey: &compute.MachineImageMachineImageEncryptionKeyArgs{
/// 				KmsKeyName: cryptoKey.ID(),
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.compute.MachineImage;
/// import com.pulumi.gcp.compute.MachineImageArgs;
/// import com.pulumi.gcp.compute.inputs.MachineImageMachineImageEncryptionKeyArgs;
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
///         var vm = new Instance("vm", InstanceArgs.builder()
///             .name("my-vm")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .build());
///
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("keyring")
///             .location("us")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("key")
///             .keyRing(keyRing.id())
///             .build());
///
///         var image = new MachineImage("image", MachineImageArgs.builder()
///             .name("my-image")
///             .sourceInstance(vm.selfLink())
///             .machineImageEncryptionKey(MachineImageMachineImageEncryptionKeyArgs.builder()
///                 .kmsKeyName(cryptoKey.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vm:
///     type: gcp:compute:Instance
///     properties:
///       name: my-vm
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       networkInterfaces:
///         - network: default
///   image:
///     type: gcp:compute:MachineImage
///     properties:
///       name: my-image
///       sourceInstance: ${vm.selfLink}
///       machineImageEncryptionKey:
///         kmsKeyName: ${cryptoKey.id}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: key
///       keyRing: ${keyRing.id}
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: keyring
///       location: us
/// ```
///
///
/// ## Import
///
/// MachineImage can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/machineImages/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MachineImage can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/machineImage:MachineImage default projects/{{project}}/global/machineImages/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/machineImage:MachineImage default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/machineImage:MachineImage default {{name}}
/// ```
class MachineImage extends pulumi.CustomResource {
  /// A text description of the resource.
  late final pulumi.Output<String?> description;

  /// Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// Currently only supported on Windows instances using the Volume Shadow Copy Service (VSS).
  late final pulumi.Output<bool?> guestFlush;

  /// Encrypts the machine image using a customer-supplied encryption key.
  /// After you encrypt a machine image with a customer-supplied key, you must
  /// provide the same key if you use the machine image later (e.g. to create a
  /// instance from the image)
  /// Structure is documented below.
  late final pulumi.Output<MachineImageMachineImageEncryptionKey?>
  machineImageEncryptionKey;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  late final pulumi.Output<String> sourceInstance;

  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  late final pulumi.Output<List<String>> storageLocations;

  /// Creates a new [MachineImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineImage]. {@macro pulumi_compute_machine_image_machine_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineImage(
    String name, {
    MachineImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/machineImage:MachineImage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    guestFlush = registerOutput<bool?>('guestFlush');
    machineImageEncryptionKey =
        registerOutput<MachineImageMachineImageEncryptionKey?>(
          'machineImageEncryptionKey',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return MachineImageMachineImageEncryptionKey.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sourceInstance = registerOutput<String>('sourceInstance');
    storageLocations = registerOutput<List<String>>('storageLocations');
  }

  /// Gets an existing [MachineImage] resource's state with the given [name] and [id].
  static MachineImage get(
    String name,
    pulumi.Input<String> id, {
    MachineImageState? state,
  }) {
    return MachineImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MachineImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/machineImage:MachineImage',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    guestFlush = registerOutput<bool?>('guestFlush');
    machineImageEncryptionKey =
        registerOutput<MachineImageMachineImageEncryptionKey?>(
          'machineImageEncryptionKey',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return MachineImageMachineImageEncryptionKey.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sourceInstance = registerOutput<String>('sourceInstance');
    storageLocations = registerOutput<List<String>>('storageLocations');
  }
}
