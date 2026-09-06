import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcasdata_connector_args.dart';
import 'mcasdata_connector_data_types_response.dart';
import 'system_data_response.dart';

/// Represents MCAS (Microsoft Cloud App Security) data connector.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a MicrosoftThreatIntelligence data connector.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mcasDataConnector = new AzureNative.SecurityInsights.MCASDataConnector("mcasDataConnector", new()
///     {
///         DataConnectorId = "c345bf40-8509-4ed2-b947-50cb773aaf04",
///         ResourceGroupName = "myRg",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewMCASDataConnector(ctx, "mcasDataConnector", &securityinsights.MCASDataConnectorArgs{
/// 			DataConnectorId:   pulumi.String("c345bf40-8509-4ed2-b947-50cb773aaf04"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_mcasdataconnector" "mcasDataConnector" {
///   data_connector_id   = "c345bf40-8509-4ed2-b947-50cb773aaf04"
///   resource_group_name = "myRg"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.MCASDataConnector;
/// import com.pulumi.azurenative.securityinsights.MCASDataConnectorArgs;
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
///         var mcasDataConnector = new MCASDataConnector("mcasDataConnector", MCASDataConnectorArgs.builder()
///             .dataConnectorId("c345bf40-8509-4ed2-b947-50cb773aaf04")
///             .resourceGroupName("myRg")
///             .workspaceName("myWorkspace")
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
/// const mcasDataConnector = new azure_native.securityinsights.MCASDataConnector("mcasDataConnector", {
///     dataConnectorId: "c345bf40-8509-4ed2-b947-50cb773aaf04",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mcas_data_connector = azure_native.securityinsights.MCASDataConnector("mcasDataConnector",
///     data_connector_id="c345bf40-8509-4ed2-b947-50cb773aaf04",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mcasDataConnector:
///     type: azure-native:securityinsights:MCASDataConnector
///     properties:
///       dataConnectorId: c345bf40-8509-4ed2-b947-50cb773aaf04
///       resourceGroupName: myRg
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a PremiumMicrosoftDefenderForThreatIntelligence data connector.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mcasDataConnector = new AzureNative.SecurityInsights.MCASDataConnector("mcasDataConnector", new()
///     {
///         DataConnectorId = "8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///         ResourceGroupName = "myRg",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewMCASDataConnector(ctx, "mcasDataConnector", &securityinsights.MCASDataConnectorArgs{
/// 			DataConnectorId:   pulumi.String("8c569548-a86c-4fb4-8ae4-d1e35a6146f8"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_mcasdataconnector" "mcasDataConnector" {
///   data_connector_id   = "8c569548-a86c-4fb4-8ae4-d1e35a6146f8"
///   resource_group_name = "myRg"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.MCASDataConnector;
/// import com.pulumi.azurenative.securityinsights.MCASDataConnectorArgs;
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
///         var mcasDataConnector = new MCASDataConnector("mcasDataConnector", MCASDataConnectorArgs.builder()
///             .dataConnectorId("8c569548-a86c-4fb4-8ae4-d1e35a6146f8")
///             .resourceGroupName("myRg")
///             .workspaceName("myWorkspace")
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
/// const mcasDataConnector = new azure_native.securityinsights.MCASDataConnector("mcasDataConnector", {
///     dataConnectorId: "8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mcas_data_connector = azure_native.securityinsights.MCASDataConnector("mcasDataConnector",
///     data_connector_id="8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mcasDataConnector:
///     type: azure-native:securityinsights:MCASDataConnector
///     properties:
///       dataConnectorId: 8c569548-a86c-4fb4-8ae4-d1e35a6146f8
///       resourceGroupName: myRg
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates an Office365 data connector.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mcasDataConnector = new AzureNative.SecurityInsights.MCASDataConnector("mcasDataConnector", new()
///     {
///         DataConnectorId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         ResourceGroupName = "myRg",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewMCASDataConnector(ctx, "mcasDataConnector", &securityinsights.MCASDataConnectorArgs{
/// 			DataConnectorId:   pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_mcasdataconnector" "mcasDataConnector" {
///   data_connector_id   = "73e01a99-5cd7-4139-a149-9f2736ff2ab5"
///   resource_group_name = "myRg"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.MCASDataConnector;
/// import com.pulumi.azurenative.securityinsights.MCASDataConnectorArgs;
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
///         var mcasDataConnector = new MCASDataConnector("mcasDataConnector", MCASDataConnectorArgs.builder()
///             .dataConnectorId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .resourceGroupName("myRg")
///             .workspaceName("myWorkspace")
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
/// const mcasDataConnector = new azure_native.securityinsights.MCASDataConnector("mcasDataConnector", {
///     dataConnectorId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mcas_data_connector = azure_native.securityinsights.MCASDataConnector("mcasDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mcasDataConnector:
///     type: azure-native:securityinsights:MCASDataConnector
///     properties:
///       dataConnectorId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       resourceGroupName: myRg
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates an Threat Intelligence Platform data connector.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mcasDataConnector = new AzureNative.SecurityInsights.MCASDataConnector("mcasDataConnector", new()
///     {
///         DataConnectorId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         ResourceGroupName = "myRg",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewMCASDataConnector(ctx, "mcasDataConnector", &securityinsights.MCASDataConnectorArgs{
/// 			DataConnectorId:   pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_mcasdataconnector" "mcasDataConnector" {
///   data_connector_id   = "73e01a99-5cd7-4139-a149-9f2736ff2ab5"
///   resource_group_name = "myRg"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.MCASDataConnector;
/// import com.pulumi.azurenative.securityinsights.MCASDataConnectorArgs;
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
///         var mcasDataConnector = new MCASDataConnector("mcasDataConnector", MCASDataConnectorArgs.builder()
///             .dataConnectorId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .resourceGroupName("myRg")
///             .workspaceName("myWorkspace")
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
/// const mcasDataConnector = new azure_native.securityinsights.MCASDataConnector("mcasDataConnector", {
///     dataConnectorId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mcas_data_connector = azure_native.securityinsights.MCASDataConnector("mcasDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mcasDataConnector:
///     type: azure-native:securityinsights:MCASDataConnector
///     properties:
///       dataConnectorId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       resourceGroupName: myRg
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:MCASDataConnector 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectors/{dataConnectorId}
/// ```
class MCASDataConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The available data types for the connector.
  late final pulumi.Output<MCASDataConnectorDataTypesResponse> dataTypes;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The kind of the data connector
  /// Expected value is 'MicrosoftCloudAppSecurity'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tenant id to connect to, and get the data from.
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MCASDataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MCASDataConnector]. {@macro pulumi_securityinsights_mcasdata_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MCASDataConnector(
    String name, {
    MCASDataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:MCASDataConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataTypes = registerOutput<MCASDataConnectorDataTypesResponse>('dataTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MCASDataConnectorDataTypesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [MCASDataConnector] resource.
  MCASDataConnector.reference(String urn)
    : super(
        'azure-native:securityinsights:MCASDataConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataTypes = registerOutput<MCASDataConnectorDataTypesResponse>('dataTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MCASDataConnectorDataTypesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
