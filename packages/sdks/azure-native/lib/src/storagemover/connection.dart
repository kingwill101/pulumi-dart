import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_properties_response.dart';
import 'system_data_response.dart';

/// The Connection resource.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Connections_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new AzureNative.StorageMover.Connection("connection", new()
///     {
///         ConnectionName = "example-connection",
///         Properties = new AzureNative.StorageMover.Inputs.ConnectionPropertiesArgs
///         {
///             Description = "Example Connection Description",
///             PrivateLinkServiceId = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Network/privateLinkServices/example-pls",
///         },
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
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
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewConnection(ctx, "connection", &storagemover.ConnectionArgs{
/// 			ConnectionName: pulumi.String("example-connection"),
/// 			Properties: &storagemover.ConnectionPropertiesArgs{
/// 				Description:          pulumi.String("Example Connection Description"),
/// 				PrivateLinkServiceId: pulumi.String("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Network/privateLinkServices/example-pls"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storagemover_connection" "connection" {
///   connection_name = "example-connection"
///   properties = {
///     description             = "Example Connection Description"
///     private_link_service_id = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Network/privateLinkServices/example-pls"
///   }
///   resource_group_name = "examples-rg"
///   storage_mover_name  = "examples-storageMoverName"
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
/// import com.pulumi.azurenative.storagemover.Connection;
/// import com.pulumi.azurenative.storagemover.ConnectionArgs;
/// import com.pulumi.azurenative.storagemover.inputs.ConnectionPropertiesArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionName("example-connection")
///             .properties(ConnectionPropertiesArgs.builder()
///                 .description("Example Connection Description")
///                 .privateLinkServiceId("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Network/privateLinkServices/example-pls")
///                 .build())
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
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
/// const connection = new azure_native.storagemover.Connection("connection", {
///     connectionName: "example-connection",
///     properties: {
///         description: "Example Connection Description",
///         privateLinkServiceId: "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Network/privateLinkServices/example-pls",
///     },
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection = azure_native.storagemover.Connection("connection",
///     connection_name="example-connection",
///     properties={
///         "description": "Example Connection Description",
///         "private_link_service_id": "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Network/privateLinkServices/example-pls",
///     },
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName")
///
/// ```
///
/// ```yaml
/// resources:
///   connection:
///     type: azure-native:storagemover:Connection
///     properties:
///       connectionName: example-connection
///       properties:
///         description: Example Connection Description
///         privateLinkServiceId: /subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Network/privateLinkServices/example-pls
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
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
/// $ pulumi import azure-native:storagemover:Connection example-connection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageMover/storageMovers/{storageMoverName}/connections/{connectionName}
/// ```
class Connection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Connection properties.
  late final pulumi.Output<ConnectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_storagemover_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagemover:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
