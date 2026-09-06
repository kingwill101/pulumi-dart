import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'storage_connector_properties_response.dart';
import 'system_data_response.dart';

/// A Connector is a tracked ARM resource modeled as a sub-resource of a Storage Account.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateConnector
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.Storage.Connector("connector", new()
///     {
///         AccountName = "teststorageaccount",
///         ConnectorName = "testconnector",
///         Location = "eastus",
///         Properties = new AzureNative.Storage.Inputs.StorageConnectorPropertiesArgs
///         {
///             DataSourceType = AzureNative.Storage.StorageConnectorDataSourceType.Azure_DataShare,
///             Description = "Example connector",
///             Source = new AzureNative.Storage.Inputs.DataShareSourceArgs
///             {
///                 AuthProperties = new AzureNative.Storage.Inputs.ManagedIdentityAuthPropertiesArgs
///                 {
///                     IdentityResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity",
///                     Type = "ManagedIdentity",
///                 },
///                 Connection = new AzureNative.Storage.Inputs.DataShareConnectionArgs
///                 {
///                     DataShareUri = "azds://eastus:datashare1:12345678-1234-1234-1234-123456789123",
///                     Type = "DataShare",
///                 },
///                 Type = "DataShare",
///             },
///             State = AzureNative.Storage.StorageConnectorState.Active,
///         },
///         ResourceGroupName = "testrg",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewConnector(ctx, "connector", &storage.ConnectorArgs{
/// 			AccountName:   pulumi.String("teststorageaccount"),
/// 			ConnectorName: pulumi.String("testconnector"),
/// 			Location:      pulumi.String("eastus"),
/// 			Properties: &storage.StorageConnectorPropertiesArgs{
/// 				DataSourceType: pulumi.String(storage.StorageConnectorDataSourceType_Azure_DataShare),
/// 				Description:    pulumi.String("Example connector"),
/// 				Source: &storage.DataShareSourceArgs{
/// 					AuthProperties: &storage.ManagedIdentityAuthPropertiesArgs{
/// 						IdentityResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity"),
/// 						Type:               pulumi.String("ManagedIdentity"),
/// 					},
/// 					Connection: &storage.DataShareConnectionArgs{
/// 						DataShareUri: pulumi.String("azds://eastus:datashare1:12345678-1234-1234-1234-123456789123"),
/// 						Type:         pulumi.String("DataShare"),
/// 					},
/// 					Type: pulumi.String("DataShare"),
/// 				},
/// 				State: pulumi.String(storage.StorageConnectorStateActive),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_storage_connector" "connector" {
///   account_name   = "teststorageaccount"
///   connector_name = "testconnector"
///   location       = "eastus"
///   properties = {
///     data_source_type = "Azure_DataShare"
///     description      = "Example connector"
///     source = {
///       auth_properties = {
///         identity_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity"
///         type                 = "ManagedIdentity"
///       }
///       connection = {
///         data_share_uri = "azds://eastus:datashare1:12345678-1234-1234-1234-123456789123"
///         type           = "DataShare"
///       }
///       type = "DataShare"
///     }
///     state = "Active"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.storage.Connector;
/// import com.pulumi.azurenative.storage.ConnectorArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageConnectorPropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.DataShareSourceArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagedIdentityAuthPropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.DataShareConnectionArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .accountName("teststorageaccount")
///             .connectorName("testconnector")
///             .location("eastus")
///             .properties(StorageConnectorPropertiesArgs.builder()
///                 .dataSourceType("Azure_DataShare")
///                 .description("Example connector")
///                 .source(Map.ofEntries(
///                     Map.entry("authProperties", Map.ofEntries(
///                         Map.entry("identityResourceId", "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity"),
///                         Map.entry("type", "ManagedIdentity")
///                     )),
///                     Map.entry("connection", Map.ofEntries(
///                         Map.entry("dataShareUri", "azds://eastus:datashare1:12345678-1234-1234-1234-123456789123"),
///                         Map.entry("type", "DataShare")
///                     )),
///                     Map.entry("type", "DataShare")
///                 ))
///                 .state("Active")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const connector = new azure_native.storage.Connector("connector", {
///     accountName: "teststorageaccount",
///     connectorName: "testconnector",
///     location: "eastus",
///     properties: {
///         dataSourceType: azure_native.storage.StorageConnectorDataSourceType.Azure_DataShare,
///         description: "Example connector",
///         source: {
///             authProperties: {
///                 identityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity",
///                 type: "ManagedIdentity",
///             },
///             connection: {
///                 dataShareUri: "azds://eastus:datashare1:12345678-1234-1234-1234-123456789123",
///                 type: "DataShare",
///             },
///             type: "DataShare",
///         },
///         state: azure_native.storage.StorageConnectorState.Active,
///     },
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.storage.Connector("connector",
///     account_name="teststorageaccount",
///     connector_name="testconnector",
///     location="eastus",
///     properties={
///         "data_source_type": azure_native.storage.StorageConnectorDataSourceType.AZURE_DATA_SHARE,
///         "description": "Example connector",
///         "source": {
///             "auth_properties": {
///                 "identity_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity",
///                 "type": "ManagedIdentity",
///             },
///             "connection": {
///                 "data_share_uri": "azds://eastus:datashare1:12345678-1234-1234-1234-123456789123",
///                 "type": "DataShare",
///             },
///             "type": "DataShare",
///         },
///         "state": azure_native.storage.StorageConnectorState.ACTIVE,
///     },
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:storage:Connector
///     properties:
///       accountName: teststorageaccount
///       connectorName: testconnector
///       location: eastus
///       properties:
///         dataSourceType: Azure_DataShare
///         description: Example connector
///         source:
///           authProperties:
///             identityResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity
///             type: ManagedIdentity
///           connection:
///             dataShareUri: azds://eastus:datashare1:12345678-1234-1234-1234-123456789123
///             type: DataShare
///           type: DataShare
///         state: Active
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:storage:Connector testconnector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of the Storage Connector.
  late final pulumi.Output<StorageConnectorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_storage_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Connector] resource.
  Connector.reference(String urn)
    : super(
        'azure-native:storage:Connector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
