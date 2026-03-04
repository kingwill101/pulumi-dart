import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_error_definition_response.dart';
import 'managed_rgconfiguration_response.dart';
import 'system_data_response.dart';
import 'user_assigned_service_identity_response.dart';

/// Define the connector resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a connector resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.Workloads.Connector("connector", new()
///     {
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SourceResourceId = "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.Workloads/sapVirtualInstances/X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewConnector(ctx, "connector", &workloads.ConnectorArgs{
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SourceResourceId:  pulumi.String("/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.Workloads/sapVirtualInstances/X00"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.Connector;
/// import com.pulumi.azurenative.workloads.ConnectorArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sourceResourceId("/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.Workloads/sapVirtualInstances/X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const connector = new azure_native.workloads.Connector("connector", {
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sourceResourceId: "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.Workloads/sapVirtualInstances/X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.workloads.Connector("connector",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     source_resource_id="/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.Workloads/sapVirtualInstances/X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:workloads:Connector
///     properties:
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       sourceResourceId: /subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.Workloads/sapVirtualInstances/X00
///       tags: {}
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
/// $ pulumi import azure-native:workloads:Connector C1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Indicates any errors on the connector resource.
  late final pulumi.Output<ConnectorErrorDefinitionResponse> errors;

  /// Managed service identity (user assigned identities)
  late final pulumi.Output<UserAssignedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Managed resource group configuration
  late final pulumi.Output<ManagedRGConfigurationResponse?>
  managedResourceGroupConfiguration;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;

  /// Defines the ID of the connector's source resource.
  late final pulumi.Output<String> sourceResourceId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_workloads_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:workloads:Connector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errors = registerOutput<ConnectorErrorDefinitionResponse>('errors');
    identity = registerOutput<UserAssignedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    managedResourceGroupConfiguration =
        registerOutput<ManagedRGConfigurationResponse?>(
          'managedResourceGroupConfiguration',
        );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
