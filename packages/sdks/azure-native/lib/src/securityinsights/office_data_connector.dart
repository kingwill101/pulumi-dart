import 'package:pulumi/pulumi.dart' as pulumi;
import 'office_data_connector_args.dart';
import 'office_data_connector_data_types_response.dart';
import 'system_data_response.dart';

/// Represents office data connector.
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
///     var officeDataConnector = new AzureNative.SecurityInsights.OfficeDataConnector("officeDataConnector", new()
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
/// 		_, err := securityinsights.NewOfficeDataConnector(ctx, "officeDataConnector", &securityinsights.OfficeDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnector;
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnectorArgs;
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
///         var officeDataConnector = new OfficeDataConnector("officeDataConnector", OfficeDataConnectorArgs.builder()
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
/// const officeDataConnector = new azure_native.securityinsights.OfficeDataConnector("officeDataConnector", {
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
/// office_data_connector = azure_native.securityinsights.OfficeDataConnector("officeDataConnector",
///     data_connector_id="c345bf40-8509-4ed2-b947-50cb773aaf04",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   officeDataConnector:
///     type: azure-native:securityinsights:OfficeDataConnector
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
///     var officeDataConnector = new AzureNative.SecurityInsights.OfficeDataConnector("officeDataConnector", new()
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
/// 		_, err := securityinsights.NewOfficeDataConnector(ctx, "officeDataConnector", &securityinsights.OfficeDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnector;
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnectorArgs;
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
///         var officeDataConnector = new OfficeDataConnector("officeDataConnector", OfficeDataConnectorArgs.builder()
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
/// const officeDataConnector = new azure_native.securityinsights.OfficeDataConnector("officeDataConnector", {
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
/// office_data_connector = azure_native.securityinsights.OfficeDataConnector("officeDataConnector",
///     data_connector_id="8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   officeDataConnector:
///     type: azure-native:securityinsights:OfficeDataConnector
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
///     var officeDataConnector = new AzureNative.SecurityInsights.OfficeDataConnector("officeDataConnector", new()
///     {
///         DataConnectorId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         DataTypes = new AzureNative.SecurityInsights.Inputs.OfficeDataConnectorDataTypesArgs
///         {
///             Exchange = new AzureNative.SecurityInsights.Inputs.OfficeDataConnectorDataTypesExchangeArgs
///             {
///                 State = AzureNative.SecurityInsights.DataTypeState.Enabled,
///             },
///             SharePoint = new AzureNative.SecurityInsights.Inputs.OfficeDataConnectorDataTypesSharePointArgs
///             {
///                 State = AzureNative.SecurityInsights.DataTypeState.Enabled,
///             },
///             Teams = new AzureNative.SecurityInsights.Inputs.OfficeDataConnectorDataTypesTeamsArgs
///             {
///                 State = AzureNative.SecurityInsights.DataTypeState.Enabled,
///             },
///         },
///         Kind = "Office365",
///         ResourceGroupName = "myRg",
///         TenantId = "2070ecc9-b4d5-4ae4-adaa-936fa1954fa8",
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
/// 		_, err := securityinsights.NewOfficeDataConnector(ctx, "officeDataConnector", &securityinsights.OfficeDataConnectorArgs{
/// 			DataConnectorId: pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			DataTypes: &securityinsights.OfficeDataConnectorDataTypesArgs{
/// 				Exchange: &securityinsights.OfficeDataConnectorDataTypesExchangeArgs{
/// 					State: pulumi.String(securityinsights.DataTypeStateEnabled),
/// 				},
/// 				SharePoint: &securityinsights.OfficeDataConnectorDataTypesSharePointArgs{
/// 					State: pulumi.String(securityinsights.DataTypeStateEnabled),
/// 				},
/// 				Teams: &securityinsights.OfficeDataConnectorDataTypesTeamsArgs{
/// 					State: pulumi.String(securityinsights.DataTypeStateEnabled),
/// 				},
/// 			},
/// 			Kind:              pulumi.String("Office365"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			TenantId:          pulumi.String("2070ecc9-b4d5-4ae4-adaa-936fa1954fa8"),
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
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnector;
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnectorArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.OfficeDataConnectorDataTypesArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.OfficeDataConnectorDataTypesExchangeArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.OfficeDataConnectorDataTypesSharePointArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.OfficeDataConnectorDataTypesTeamsArgs;
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
///         var officeDataConnector = new OfficeDataConnector("officeDataConnector", OfficeDataConnectorArgs.builder()
///             .dataConnectorId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .dataTypes(OfficeDataConnectorDataTypesArgs.builder()
///                 .exchange(OfficeDataConnectorDataTypesExchangeArgs.builder()
///                     .state("Enabled")
///                     .build())
///                 .sharePoint(OfficeDataConnectorDataTypesSharePointArgs.builder()
///                     .state("Enabled")
///                     .build())
///                 .teams(OfficeDataConnectorDataTypesTeamsArgs.builder()
///                     .state("Enabled")
///                     .build())
///                 .build())
///             .kind("Office365")
///             .resourceGroupName("myRg")
///             .tenantId("2070ecc9-b4d5-4ae4-adaa-936fa1954fa8")
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
/// const officeDataConnector = new azure_native.securityinsights.OfficeDataConnector("officeDataConnector", {
///     dataConnectorId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     dataTypes: {
///         exchange: {
///             state: azure_native.securityinsights.DataTypeState.Enabled,
///         },
///         sharePoint: {
///             state: azure_native.securityinsights.DataTypeState.Enabled,
///         },
///         teams: {
///             state: azure_native.securityinsights.DataTypeState.Enabled,
///         },
///     },
///     kind: "Office365",
///     resourceGroupName: "myRg",
///     tenantId: "2070ecc9-b4d5-4ae4-adaa-936fa1954fa8",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// office_data_connector = azure_native.securityinsights.OfficeDataConnector("officeDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     data_types={
///         "exchange": {
///             "state": azure_native.securityinsights.DataTypeState.ENABLED,
///         },
///         "share_point": {
///             "state": azure_native.securityinsights.DataTypeState.ENABLED,
///         },
///         "teams": {
///             "state": azure_native.securityinsights.DataTypeState.ENABLED,
///         },
///     },
///     kind="Office365",
///     resource_group_name="myRg",
///     tenant_id="2070ecc9-b4d5-4ae4-adaa-936fa1954fa8",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   officeDataConnector:
///     type: azure-native:securityinsights:OfficeDataConnector
///     properties:
///       dataConnectorId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       dataTypes:
///         exchange:
///           state: Enabled
///         sharePoint:
///           state: Enabled
///         teams:
///           state: Enabled
///       kind: Office365
///       resourceGroupName: myRg
///       tenantId: 2070ecc9-b4d5-4ae4-adaa-936fa1954fa8
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
///     var officeDataConnector = new AzureNative.SecurityInsights.OfficeDataConnector("officeDataConnector", new()
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
/// 		_, err := securityinsights.NewOfficeDataConnector(ctx, "officeDataConnector", &securityinsights.OfficeDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnector;
/// import com.pulumi.azurenative.securityinsights.OfficeDataConnectorArgs;
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
///         var officeDataConnector = new OfficeDataConnector("officeDataConnector", OfficeDataConnectorArgs.builder()
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
/// const officeDataConnector = new azure_native.securityinsights.OfficeDataConnector("officeDataConnector", {
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
/// office_data_connector = azure_native.securityinsights.OfficeDataConnector("officeDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   officeDataConnector:
///     type: azure-native:securityinsights:OfficeDataConnector
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
/// $ pulumi import azure-native:securityinsights:OfficeDataConnector 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectors/{dataConnectorId}
/// ```
class OfficeDataConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The available data types for the connector.
  late final pulumi.Output<OfficeDataConnectorDataTypesResponse> dataTypes;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// The kind of the data connector
  /// Expected value is 'Office365'.
  late final pulumi.Output<String> kind;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tenant id to connect to, and get the data from.
  late final pulumi.Output<String> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OfficeDataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OfficeDataConnector]. {@macro pulumi_securityinsights_office_data_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OfficeDataConnector(
    String name, {
    OfficeDataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:OfficeDataConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataTypes = registerOutput<OfficeDataConnectorDataTypesResponse>(
      'dataTypes',
    );
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
