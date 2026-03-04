import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_zone_args.dart';
import 'system_data_response.dart';

/// Describes a Private DNS zone.
///
/// Uses Azure REST API version 2024-06-01.
///
/// Other available API versions: 2018-09-01, 2020-01-01, 2020-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native privatedns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PUT Private DNS Zone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateZone = new AzureNative.PrivateDns.PrivateZone("privateZone", new()
///     {
///         Location = "Global",
///         PrivateZoneName = "privatezone1.com",
///         ResourceGroupName = "resourceGroup1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateZone(ctx, "privateZone", &privatedns.PrivateZoneArgs{
/// 			Location:          pulumi.String("Global"),
/// 			PrivateZoneName:   pulumi.String("privatezone1.com"),
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.privatedns.PrivateZone;
/// import com.pulumi.azurenative.privatedns.PrivateZoneArgs;
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
///         var privateZone = new PrivateZone("privateZone", PrivateZoneArgs.builder()
///             .location("Global")
///             .privateZoneName("privatezone1.com")
///             .resourceGroupName("resourceGroup1")
///             .tags(Map.of("key1", "value1"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const privateZone = new azure_native.privatedns.PrivateZone("privateZone", {
///     location: "Global",
///     privateZoneName: "privatezone1.com",
///     resourceGroupName: "resourceGroup1",
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_zone = azure_native.privatedns.PrivateZone("privateZone",
///     location="Global",
///     private_zone_name="privatezone1.com",
///     resource_group_name="resourceGroup1",
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateZone:
///     type: azure-native:privatedns:PrivateZone
///     properties:
///       location: Global
///       privateZoneName: privatezone1.com
///       resourceGroupName: resourceGroup1
///       tags:
///         key1: value1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:privatedns:PrivateZone privatezone1.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateDnsZones/{privateZoneName}
/// ```
class PrivateZone extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The ETag of the zone.
  late final pulumi.Output<String?> etag;

  /// Private zone internal Id
  late final pulumi.Output<String> internalId;

  /// The Azure Region where the resource lives
  late final pulumi.Output<String?> location;

  /// The maximum number of record sets that can be created in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> maxNumberOfRecordSets;

  /// The maximum number of virtual networks that can be linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> maxNumberOfVirtualNetworkLinks;

  /// The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double>
  maxNumberOfVirtualNetworkLinksWithRegistration;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The current number of record sets in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> numberOfRecordSets;

  /// The current number of virtual networks that are linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> numberOfVirtualNetworkLinks;

  /// The current number of virtual networks that are linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> numberOfVirtualNetworkLinksWithRegistration;

  /// The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateZone]. {@macro pulumi_privatedns_private_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateZone(
    String name, {
    PrivateZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:privatedns:PrivateZone',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    internalId = registerOutput<String>('internalId');
    location = registerOutput<String?>('location');
    maxNumberOfRecordSets = registerOutput<double>('maxNumberOfRecordSets');
    maxNumberOfVirtualNetworkLinks = registerOutput<double>(
      'maxNumberOfVirtualNetworkLinks',
    );
    maxNumberOfVirtualNetworkLinksWithRegistration = registerOutput<double>(
      'maxNumberOfVirtualNetworkLinksWithRegistration',
    );
    this.name = registerOutput<String>('name');
    numberOfRecordSets = registerOutput<double>('numberOfRecordSets');
    numberOfVirtualNetworkLinks = registerOutput<double>(
      'numberOfVirtualNetworkLinks',
    );
    numberOfVirtualNetworkLinksWithRegistration = registerOutput<double>(
      'numberOfVirtualNetworkLinksWithRegistration',
    );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
