import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_image_args.dart';
import 'machine_image_machine_image_encryption_key.dart';
import 'machine_image_params.dart';
import 'machine_image_state.dart';

/// Represents a Machine Image resource. Machine images store all the configuration,
/// metadata, permissions, and data from one or more disks required to create a
/// Virtual machine (VM) instance.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about MachineImage, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/machineImages)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/machine-images)
///
///
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_instance" "vm" {
///   name         = "my-vm"
///   machine_type = "e2-medium"
///   boot_disk = {
///     initialize_params = {
///       image = "debian-cloud/debian-11"
///     }
///   }
///   network_interfaces {
///     network = "default"
///   }
/// }
/// resource "gcp_compute_machineimage" "image" {
///   name            = "my-image"
///   source_instance = gcp_compute_instance.vm.self_link
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
/// 			KeyRing: keyRing.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewMachineImage(ctx, "image", &compute.MachineImageArgs{
/// 			Name:           pulumi.String("my-image"),
/// 			SourceInstance: vm.SelfLink,
/// 			MachineImageEncryptionKey: &compute.MachineImageMachineImageEncryptionKeyArgs{
/// 				KmsKeyName: cryptoKey.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_instance" "vm" {
///   name         = "my-vm"
///   machine_type = "e2-medium"
///   boot_disk = {
///     initialize_params = {
///       image = "debian-cloud/debian-11"
///     }
///   }
///   network_interfaces {
///     network = "default"
///   }
/// }
/// resource "gcp_compute_machineimage" "image" {
///   name            = "my-image"
///   source_instance = gcp_compute_instance.vm.self_link
///   machine_image_encryption_key = {
///     kms_key_name = gcp_kms_cryptokey.crypto_key.id
///   }
/// }
/// resource "gcp_kms_cryptokey" "crypto_key" {
///   name     = "key"
///   key_ring = gcp_kms_keyring.key_ring.id
/// }
/// resource "gcp_kms_keyring" "key_ring" {
///   name     = "keyring"
///   location = "us"
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
/// ### Machine Image Resource Manager Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const tagKey1 = new gcp.tags.TagKey("tag_key1", {
///     parent: project.then(project => `projects/${project.number}`),
///     shortName: "tagkey",
/// });
/// const tagValue1 = new gcp.tags.TagValue("tag_value1", {
///     parent: tagKey1.id,
///     shortName: "tagvalue",
/// });
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
///     params: {
///         resourceManagerTags: pulumi.all([tagKey1.id, tagValue1.id]).apply(([tagKey1Id, tagValue1Id]) => {
///             [tagKey1Id]: tagValue1Id,
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// tag_key1 = gcp.tags.TagKey("tag_key1",
///     parent=f"projects/{project.number}",
///     short_name="tagkey")
/// tag_value1 = gcp.tags.TagValue("tag_value1",
///     parent=tag_key1.id,
///     short_name="tagvalue")
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
///     source_instance=vm.self_link,
///     params={
///         "resource_manager_tags": pulumi.Output.all(
///             tagKey1Id=tag_key1.id,
///             tagValue1Id=tag_value1.id
/// ).apply(lambda resolved_outputs: {
///             str(resolved_outputs['tagKey1Id']): resolved_outputs['tagValue1Id'],
///         })
/// ,
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var tagKey1 = new Gcp.Tags.TagKey("tag_key1", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         ShortName = "tagkey",
///     });
///
///     var tagValue1 = new Gcp.Tags.TagValue("tag_value1", new()
///     {
///         Parent = tagKey1.Id,
///         ShortName = "tagvalue",
///     });
///
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
///         Params = new Gcp.Compute.Inputs.MachineImageParamsArgs
///         {
///             ResourceManagerTags = Output.Tuple(tagKey1.Id, tagValue1.Id).Apply(values =>
///             {
///                 var tagKey1Id = values.Item1;
///                 var tagValue1Id = values.Item2;
///                 return
///                 {
///                     { tagKey1Id, tagValue1Id },
///                 };
///             }),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagKey1, err := tags.NewTagKey(ctx, "tag_key1", &tags.TagKeyArgs{
/// 			Parent:    pulumi.Sprintf("projects/%v", project.Number),
/// 			ShortName: pulumi.String("tagkey"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagValue1, err := tags.NewTagValue(ctx, "tag_value1", &tags.TagValueArgs{
/// 			Parent:    tagKey1.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName: pulumi.String("tagvalue"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 			Params: &compute.MachineImageParamsArgs{
/// 				ResourceManagerTags: pulumi.StringMap(pulumi.All(tagKey1.ID(), tagValue1.ID()).ApplyT(func(_args []interface{}) (map[string]pulumi.ID, error) {
/// 					tagKey1Id := _args[0].(pulumi.ID)
/// 					tagValue1Id := _args[1].(pulumi.ID)
/// 					return map[string]pulumi.ID(pulumi.String(tagKey1Id).ApplyT(func(__convert string) (map[string]pulumi.ID, error) {
/// 						return map[string]pulumi.ID{
/// 							__convert: tagValue1Id,
/// 						}, nil
/// 					}).(pulumi.IDMapOutput)), nil
/// 				}).(pulumi.IDMapOutput)),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_tags_tagkey" "tag_key1" {
///   parent     ="projects/${data.gcp_organizations_getproject.project.number}"
///   short_name = "tagkey"
/// }
/// resource "gcp_tags_tagvalue" "tag_value1" {
///   parent     = gcp_tags_tagkey.tag_key1.id
///   short_name = "tagvalue"
/// }
/// resource "gcp_compute_instance" "vm" {
///   name         = "my-vm"
///   machine_type = "e2-medium"
///   boot_disk = {
///     initialize_params = {
///       image = "debian-cloud/debian-11"
///     }
///   }
///   network_interfaces {
///     network = "default"
///   }
/// }
/// resource "gcp_compute_machineimage" "image" {
///   name            = "my-image"
///   source_instance = gcp_compute_instance.vm.self_link
///   params = {
///     resource_manager_tags = {
///       gcp_tags_tagkey.tag_key1.id = gcp_tags_tagvalue.tag_value1.id
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.MachineImage;
/// import com.pulumi.gcp.compute.MachineImageArgs;
/// import com.pulumi.gcp.compute.inputs.MachineImageParamsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var tagKey1 = new TagKey("tagKey1", TagKeyArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .shortName("tagkey")
///             .build());
///
///         var tagValue1 = new TagValue("tagValue1", TagValueArgs.builder()
///             .parent(tagKey1.id())
///             .shortName("tagvalue")
///             .build());
///
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
///             .params(MachineImageParamsArgs.builder()
///                 .resourceManagerTags(Output.tuple(tagKey1.id(), tagValue1.id()).applyValue(values -> {
///                     var tagKey1Id = values.t1;
///                     var tagValue1Id = values.t2;
///                     return tagKey1Id.applyValue(___convert -> Map.of(___convert, tagValue1Id));
///                 }))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tagKey1:
///     type: gcp:tags:TagKey
///     name: tag_key1
///     properties:
///       parent: projects/${project.number}
///       shortName: tagkey
///   tagValue1:
///     type: gcp:tags:TagValue
///     name: tag_value1
///     properties:
///       parent: ${tagKey1.id}
///       shortName: tagvalue
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
///       params:
///         resourceManagerTags:
///           ${tagKey1.id}: ${tagValue1.id}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// MachineImage can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/machineImages/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, MachineImage can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/machineImage:MachineImage default projects/{{project}}/global/machineImages/{{name}}
/// $ pulumi import gcp:compute/machineImage:MachineImage default {{project}}/{{name}}
/// $ pulumi import gcp:compute/machineImage:MachineImage default {{name}}
/// ```
class MachineImage extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
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
  late final pulumi.Output<MachineImageMachineImageEncryptionKey?> machineImageEncryptionKey;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Additional params passed with the request, but not persisted as part of resource payload.
  /// Structure is documented below.
  late final pulumi.Output<MachineImageParams?> params;
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
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    guestFlush = registerOutput<bool?>('guestFlush');
    machineImageEncryptionKey = registerOutput<MachineImageMachineImageEncryptionKey?>('machineImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineImageMachineImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    params = registerOutput<MachineImageParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineImageParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    guestFlush = registerOutput<bool?>('guestFlush');
    machineImageEncryptionKey = registerOutput<MachineImageMachineImageEncryptionKey?>('machineImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineImageMachineImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    params = registerOutput<MachineImageParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineImageParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sourceInstance = registerOutput<String>('sourceInstance');
    storageLocations = registerOutput<List<String>>('storageLocations');
  }
}
