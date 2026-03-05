import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'tidata_connector_args.dart';
import 'tidata_connector_data_types_response.dart';

/// Represents threat intelligence data connector.
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
///     var tiDataConnector = new AzureNative.SecurityInsights.TIDataConnector("tiDataConnector", new()
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
/// 		_, err := securityinsights.NewTIDataConnector(ctx, "tiDataConnector", &securityinsights.TIDataConnectorArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.TIDataConnector;
/// import com.pulumi.azurenative.securityinsights.TIDataConnectorArgs;
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
///         var tiDataConnector = new TIDataConnector("tiDataConnector", TIDataConnectorArgs.builder()
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
/// const tiDataConnector = new azure_native.securityinsights.TIDataConnector("tiDataConnector", {
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
/// ti_data_connector = azure_native.securityinsights.TIDataConnector("tiDataConnector",
///     data_connector_id="c345bf40-8509-4ed2-b947-50cb773aaf04",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   tiDataConnector:
///     type: azure-native:securityinsights:TIDataConnector
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
///     var tiDataConnector = new AzureNative.SecurityInsights.TIDataConnector("tiDataConnector", new()
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
/// 		_, err := securityinsights.NewTIDataConnector(ctx, "tiDataConnector", &securityinsights.TIDataConnectorArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.TIDataConnector;
/// import com.pulumi.azurenative.securityinsights.TIDataConnectorArgs;
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
///         var tiDataConnector = new TIDataConnector("tiDataConnector", TIDataConnectorArgs.builder()
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
/// const tiDataConnector = new azure_native.securityinsights.TIDataConnector("tiDataConnector", {
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
/// ti_data_connector = azure_native.securityinsights.TIDataConnector("tiDataConnector",
///     data_connector_id="8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   tiDataConnector:
///     type: azure-native:securityinsights:TIDataConnector
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
///     var tiDataConnector = new AzureNative.SecurityInsights.TIDataConnector("tiDataConnector", new()
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
/// 		_, err := securityinsights.NewTIDataConnector(ctx, "tiDataConnector", &securityinsights.TIDataConnectorArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.TIDataConnector;
/// import com.pulumi.azurenative.securityinsights.TIDataConnectorArgs;
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
///         var tiDataConnector = new TIDataConnector("tiDataConnector", TIDataConnectorArgs.builder()
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
/// const tiDataConnector = new azure_native.securityinsights.TIDataConnector("tiDataConnector", {
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
/// ti_data_connector = azure_native.securityinsights.TIDataConnector("tiDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   tiDataConnector:
///     type: azure-native:securityinsights:TIDataConnector
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
///     var tiDataConnector = new AzureNative.SecurityInsights.TIDataConnector("tiDataConnector", new()
///     {
///         DataConnectorId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         DataTypes = new AzureNative.SecurityInsights.Inputs.TIDataConnectorDataTypesArgs
///         {
///             Indicators = new AzureNative.SecurityInsights.Inputs.TIDataConnectorDataTypesIndicatorsArgs
///             {
///                 State = AzureNative.SecurityInsights.DataTypeState.Enabled,
///             },
///         },
///         Kind = "ThreatIntelligence",
///         ResourceGroupName = "myRg",
///         TenantId = "06b3ccb8-1384-4bcc-aec7-852f6d57161b",
///         TipLookbackPeriod = "2020-01-01T13:00:30.123Z",
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
/// 		_, err := securityinsights.NewTIDataConnector(ctx, "tiDataConnector", &securityinsights.TIDataConnectorArgs{
/// 			DataConnectorId: pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			DataTypes: &securityinsights.TIDataConnectorDataTypesArgs{
/// 				Indicators: &securityinsights.TIDataConnectorDataTypesIndicatorsArgs{
/// 					State: pulumi.String(securityinsights.DataTypeStateEnabled),
/// 				},
/// 			},
/// 			Kind:              pulumi.String("ThreatIntelligence"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			TenantId:          pulumi.String("06b3ccb8-1384-4bcc-aec7-852f6d57161b"),
/// 			TipLookbackPeriod: pulumi.String("2020-01-01T13:00:30.123Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.TIDataConnector;
/// import com.pulumi.azurenative.securityinsights.TIDataConnectorArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.TIDataConnectorDataTypesArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.TIDataConnectorDataTypesIndicatorsArgs;
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
///         var tiDataConnector = new TIDataConnector("tiDataConnector", TIDataConnectorArgs.builder()
///             .dataConnectorId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .dataTypes(TIDataConnectorDataTypesArgs.builder()
///                 .indicators(TIDataConnectorDataTypesIndicatorsArgs.builder()
///                     .state("Enabled")
///                     .build())
///                 .build())
///             .kind("ThreatIntelligence")
///             .resourceGroupName("myRg")
///             .tenantId("06b3ccb8-1384-4bcc-aec7-852f6d57161b")
///             .tipLookbackPeriod("2020-01-01T13:00:30.123Z")
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
/// const tiDataConnector = new azure_native.securityinsights.TIDataConnector("tiDataConnector", {
///     dataConnectorId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     dataTypes: {
///         indicators: {
///             state: azure_native.securityinsights.DataTypeState.Enabled,
///         },
///     },
///     kind: "ThreatIntelligence",
///     resourceGroupName: "myRg",
///     tenantId: "06b3ccb8-1384-4bcc-aec7-852f6d57161b",
///     tipLookbackPeriod: "2020-01-01T13:00:30.123Z",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ti_data_connector = azure_native.securityinsights.TIDataConnector("tiDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     data_types={
///         "indicators": {
///             "state": azure_native.securityinsights.DataTypeState.ENABLED,
///         },
///     },
///     kind="ThreatIntelligence",
///     resource_group_name="myRg",
///     tenant_id="06b3ccb8-1384-4bcc-aec7-852f6d57161b",
///     tip_lookback_period="2020-01-01T13:00:30.123Z",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   tiDataConnector:
///     type: azure-native:securityinsights:TIDataConnector
///     properties:
///       dataConnectorId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       dataTypes:
///         indicators:
///           state: Enabled
///       kind: ThreatIntelligence
///       resourceGroupName: myRg
///       tenantId: 06b3ccb8-1384-4bcc-aec7-852f6d57161b
///       tipLookbackPeriod: 2020-01-01T13:00:30.123Z
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
/// $ pulumi import azure-native:securityinsights:TIDataConnector 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectors/{dataConnectorId}
/// ```
class TIDataConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The available data types for the connector.
  late final pulumi.Output<TIDataConnectorDataTypesResponse> dataTypes;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The kind of the data connector
  /// Expected value is 'ThreatIntelligence'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tenant id to connect to, and get the data from.
  late final pulumi.Output<String> tenantId;
  /// The lookback period for the feed to be imported.
  late final pulumi.Output<String?> tipLookbackPeriod;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TIDataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TIDataConnector]. {@macro pulumi_securityinsights_tidata_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TIDataConnector(
    String name, {
    TIDataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:TIDataConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataTypes = registerOutput<TIDataConnectorDataTypesResponse>('dataTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TIDataConnectorDataTypesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String>('tenantId');
    tipLookbackPeriod = registerOutput<String?>('tipLookbackPeriod');
    type = registerOutput<String>('type');
  }
}
