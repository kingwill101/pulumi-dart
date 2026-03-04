import 'package:pulumi/pulumi.dart' as pulumi;
import 'mstidata_connector_args.dart';
import 'mstidata_connector_data_types_response.dart';
import 'system_data_response.dart';

/// Represents Microsoft Threat Intelligence data connector.
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
///     var mstiDataConnector = new AzureNative.SecurityInsights.MSTIDataConnector("mstiDataConnector", new()
///     {
///         DataConnectorId = "c345bf40-8509-4ed2-b947-50cb773aaf04",
///         DataTypes = new AzureNative.SecurityInsights.Inputs.MSTIDataConnectorDataTypesArgs
///         {
///             MicrosoftEmergingThreatFeed = new AzureNative.SecurityInsights.Inputs.MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeedArgs
///             {
///                 LookbackPeriod = "2024-11-01T00:00:00Z",
///                 State = AzureNative.SecurityInsights.DataTypeState.Enabled,
///             },
///         },
///         Kind = "MicrosoftThreatIntelligence",
///         ResourceGroupName = "myRg",
///         TenantId = "06b3ccb8-1384-4bcc-aec7-852f6d57161b",
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
/// 		_, err := securityinsights.NewMSTIDataConnector(ctx, "mstiDataConnector", &securityinsights.MSTIDataConnectorArgs{
/// 			DataConnectorId: pulumi.String("c345bf40-8509-4ed2-b947-50cb773aaf04"),
/// 			DataTypes: &securityinsights.MSTIDataConnectorDataTypesArgs{
/// 				MicrosoftEmergingThreatFeed: &securityinsights.MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeedArgs{
/// 					LookbackPeriod: pulumi.String("2024-11-01T00:00:00Z"),
/// 					State:          pulumi.String(securityinsights.DataTypeStateEnabled),
/// 				},
/// 			},
/// 			Kind:              pulumi.String("MicrosoftThreatIntelligence"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			TenantId:          pulumi.String("06b3ccb8-1384-4bcc-aec7-852f6d57161b"),
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
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnector;
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnectorArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MSTIDataConnectorDataTypesArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeedArgs;
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
///         var mstiDataConnector = new MSTIDataConnector("mstiDataConnector", MSTIDataConnectorArgs.builder()
///             .dataConnectorId("c345bf40-8509-4ed2-b947-50cb773aaf04")
///             .dataTypes(MSTIDataConnectorDataTypesArgs.builder()
///                 .microsoftEmergingThreatFeed(MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeedArgs.builder()
///                     .lookbackPeriod("2024-11-01T00:00:00Z")
///                     .state("Enabled")
///                     .build())
///                 .build())
///             .kind("MicrosoftThreatIntelligence")
///             .resourceGroupName("myRg")
///             .tenantId("06b3ccb8-1384-4bcc-aec7-852f6d57161b")
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
/// const mstiDataConnector = new azure_native.securityinsights.MSTIDataConnector("mstiDataConnector", {
///     dataConnectorId: "c345bf40-8509-4ed2-b947-50cb773aaf04",
///     dataTypes: {
///         microsoftEmergingThreatFeed: {
///             lookbackPeriod: "2024-11-01T00:00:00Z",
///             state: azure_native.securityinsights.DataTypeState.Enabled,
///         },
///     },
///     kind: "MicrosoftThreatIntelligence",
///     resourceGroupName: "myRg",
///     tenantId: "06b3ccb8-1384-4bcc-aec7-852f6d57161b",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// msti_data_connector = azure_native.securityinsights.MSTIDataConnector("mstiDataConnector",
///     data_connector_id="c345bf40-8509-4ed2-b947-50cb773aaf04",
///     data_types={
///         "microsoft_emerging_threat_feed": {
///             "lookback_period": "2024-11-01T00:00:00Z",
///             "state": azure_native.securityinsights.DataTypeState.ENABLED,
///         },
///     },
///     kind="MicrosoftThreatIntelligence",
///     resource_group_name="myRg",
///     tenant_id="06b3ccb8-1384-4bcc-aec7-852f6d57161b",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mstiDataConnector:
///     type: azure-native:securityinsights:MSTIDataConnector
///     properties:
///       dataConnectorId: c345bf40-8509-4ed2-b947-50cb773aaf04
///       dataTypes:
///         microsoftEmergingThreatFeed:
///           lookbackPeriod: 2024-11-01T00:00:00Z
///           state: Enabled
///       kind: MicrosoftThreatIntelligence
///       resourceGroupName: myRg
///       tenantId: 06b3ccb8-1384-4bcc-aec7-852f6d57161b
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
///     var mstiDataConnector = new AzureNative.SecurityInsights.MSTIDataConnector("mstiDataConnector", new()
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
/// 		_, err := securityinsights.NewMSTIDataConnector(ctx, "mstiDataConnector", &securityinsights.MSTIDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnector;
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnectorArgs;
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
///         var mstiDataConnector = new MSTIDataConnector("mstiDataConnector", MSTIDataConnectorArgs.builder()
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
/// const mstiDataConnector = new azure_native.securityinsights.MSTIDataConnector("mstiDataConnector", {
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
/// msti_data_connector = azure_native.securityinsights.MSTIDataConnector("mstiDataConnector",
///     data_connector_id="8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mstiDataConnector:
///     type: azure-native:securityinsights:MSTIDataConnector
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
///     var mstiDataConnector = new AzureNative.SecurityInsights.MSTIDataConnector("mstiDataConnector", new()
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
/// 		_, err := securityinsights.NewMSTIDataConnector(ctx, "mstiDataConnector", &securityinsights.MSTIDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnector;
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnectorArgs;
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
///         var mstiDataConnector = new MSTIDataConnector("mstiDataConnector", MSTIDataConnectorArgs.builder()
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
/// const mstiDataConnector = new azure_native.securityinsights.MSTIDataConnector("mstiDataConnector", {
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
/// msti_data_connector = azure_native.securityinsights.MSTIDataConnector("mstiDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mstiDataConnector:
///     type: azure-native:securityinsights:MSTIDataConnector
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
///     var mstiDataConnector = new AzureNative.SecurityInsights.MSTIDataConnector("mstiDataConnector", new()
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
/// 		_, err := securityinsights.NewMSTIDataConnector(ctx, "mstiDataConnector", &securityinsights.MSTIDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnector;
/// import com.pulumi.azurenative.securityinsights.MSTIDataConnectorArgs;
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
///         var mstiDataConnector = new MSTIDataConnector("mstiDataConnector", MSTIDataConnectorArgs.builder()
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
/// const mstiDataConnector = new azure_native.securityinsights.MSTIDataConnector("mstiDataConnector", {
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
/// msti_data_connector = azure_native.securityinsights.MSTIDataConnector("mstiDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   mstiDataConnector:
///     type: azure-native:securityinsights:MSTIDataConnector
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
/// $ pulumi import azure-native:securityinsights:MSTIDataConnector 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectors/{dataConnectorId}
/// ```
class MSTIDataConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The available data types for the connector.
  late final pulumi.Output<MSTIDataConnectorDataTypesResponse> dataTypes;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// The kind of the data connector
  /// Expected value is 'MicrosoftThreatIntelligence'.
  late final pulumi.Output<String> kind;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tenant id to connect to, and get the data from.
  late final pulumi.Output<String> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MSTIDataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MSTIDataConnector]. {@macro pulumi_securityinsights_mstidata_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MSTIDataConnector(
    String name, {
    MSTIDataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:MSTIDataConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataTypes = registerOutput<MSTIDataConnectorDataTypesResponse>('dataTypes');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
