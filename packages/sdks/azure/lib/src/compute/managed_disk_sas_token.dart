import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_sas_token_args.dart';
import 'managed_disk_sas_token_state.dart';

/// Manages a Disk SAS Token.
///
/// Use this resource to obtain a Shared Access Signature (SAS Token) for an existing Managed Disk.
///
/// Shared access signatures allow fine-grained, ephemeral access control to various aspects of Managed Disk similar to blob/storage account container.
///
/// With the help of this resource, data from the disk can be copied from managed disk to a storage blob or to some other system without the need of azcopy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = new azure.core.ResourceGroup("test", {
///     name: "testrg",
///     location: "West Europe",
/// });
/// const testManagedDisk = new azure.compute.ManagedDisk("test", {
///     name: "tst-disk-export",
///     location: test.location,
///     resourceGroupName: test.name,
///     storageAccountType: "Standard_LRS",
///     createOption: "Empty",
///     diskSizeGb: 1,
/// });
/// const testManagedDiskSasToken = new azure.compute.ManagedDiskSasToken("test", {
///     managedDiskId: testManagedDisk.id,
///     durationInSeconds: 300,
///     accessLevel: "Read",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.core.ResourceGroup("test",
///     name="testrg",
///     location="West Europe")
/// test_managed_disk = azure.compute.ManagedDisk("test",
///     name="tst-disk-export",
///     location=test.location,
///     resource_group_name=test.name,
///     storage_account_type="Standard_LRS",
///     create_option="Empty",
///     disk_size_gb=1)
/// test_managed_disk_sas_token = azure.compute.ManagedDiskSasToken("test",
///     managed_disk_id=test_managed_disk.id,
///     duration_in_seconds=300,
///     access_level="Read")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Azure.Core.ResourceGroup("test", new()
///     {
///         Name = "testrg",
///         Location = "West Europe",
///     });
///
///     var testManagedDisk = new Azure.Compute.ManagedDisk("test", new()
///     {
///         Name = "tst-disk-export",
///         Location = test.Location,
///         ResourceGroupName = test.Name,
///         StorageAccountType = "Standard_LRS",
///         CreateOption = "Empty",
///         DiskSizeGb = 1,
///     });
///
///     var testManagedDiskSasToken = new Azure.Compute.ManagedDiskSasToken("test", new()
///     {
///         ManagedDiskId = testManagedDisk.Id,
///         DurationInSeconds = 300,
///         AccessLevel = "Read",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := core.NewResourceGroup(ctx, "test", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("testrg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testManagedDisk, err := compute.NewManagedDisk(ctx, "test", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.String("tst-disk-export"),
/// 			Location:           test.Location,
/// 			ResourceGroupName:  test.Name,
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			CreateOption:       pulumi.String("Empty"),
/// 			DiskSizeGb:         pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewManagedDiskSasToken(ctx, "test", &compute.ManagedDiskSasTokenArgs{
/// 			ManagedDiskId:     testManagedDisk.ID(),
/// 			DurationInSeconds: pulumi.Int(300),
/// 			AccessLevel:       pulumi.String("Read"),
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
/// import com.pulumi.azure.compute.ManagedDisk;
/// import com.pulumi.azure.compute.ManagedDiskArgs;
/// import com.pulumi.azure.compute.ManagedDiskSasToken;
/// import com.pulumi.azure.compute.ManagedDiskSasTokenArgs;
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
///         var test = new ResourceGroup("test", ResourceGroupArgs.builder()
///             .name("testrg")
///             .location("West Europe")
///             .build());
///
///         var testManagedDisk = new ManagedDisk("testManagedDisk", ManagedDiskArgs.builder()
///             .name("tst-disk-export")
///             .location(test.location())
///             .resourceGroupName(test.name())
///             .storageAccountType("Standard_LRS")
///             .createOption("Empty")
///             .diskSizeGb(1)
///             .build());
///
///         var testManagedDiskSasToken = new ManagedDiskSasToken("testManagedDiskSasToken", ManagedDiskSasTokenArgs.builder()
///             .managedDiskId(testManagedDisk.id())
///             .durationInSeconds(300)
///             .accessLevel("Read")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: azure:core:ResourceGroup
///     properties:
///       name: testrg
///       location: West Europe
///   testManagedDisk:
///     type: azure:compute:ManagedDisk
///     name: test
///     properties:
///       name: tst-disk-export
///       location: ${test.location}
///       resourceGroupName: ${test.name}
///       storageAccountType: Standard_LRS
///       createOption: Empty
///       diskSizeGb: '1'
///   testManagedDiskSasToken:
///     type: azure:compute:ManagedDiskSasToken
///     name: test
///     properties:
///       managedDiskId: ${testManagedDisk.id}
///       durationInSeconds: 300
///       accessLevel: Read
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-04-02
///
/// ## Import
///
/// Disk SAS Token can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/managedDiskSasToken:ManagedDiskSasToken example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/disks/manageddisk1
/// ```
class ManagedDiskSasToken extends pulumi.CustomResource {
  /// The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created.
  ///
  /// Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/compute/disks/grant-access)
  /// for additional details on the fields above.
  late final pulumi.Output<String> accessLevel;
  /// The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created.
  late final pulumi.Output<int> durationInSeconds;
  /// The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedDiskId;
  /// The computed Shared Access Signature (SAS) of the Managed Disk.
  late final pulumi.Output<String> sasUrl;

  /// Creates a new [ManagedDiskSasToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedDiskSasToken]. {@macro pulumi_compute_managed_disk_sas_token_managed_disk_sas_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedDiskSasToken(
    String name, {
    ManagedDiskSasTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/managedDiskSasToken:ManagedDiskSasToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLevel = registerOutput<String>('accessLevel');
    durationInSeconds = registerOutput<int>('durationInSeconds');
    managedDiskId = registerOutput<String>('managedDiskId');
    sasUrl = registerOutput<String>('sasUrl');
  }

  /// Gets an existing [ManagedDiskSasToken] resource's state with the given [name] and [id].
  static ManagedDiskSasToken get(
    String name,
    pulumi.Input<String> id, {
    ManagedDiskSasTokenState? state,
  }) {
    return ManagedDiskSasToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedDiskSasToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/managedDiskSasToken:ManagedDiskSasToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLevel = registerOutput<String>('accessLevel');
    durationInSeconds = registerOutput<int>('durationInSeconds');
    managedDiskId = registerOutput<String>('managedDiskId');
    sasUrl = registerOutput<String>('sasUrl');
  }
}
