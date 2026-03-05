import 'package:pulumi/pulumi.dart' as pulumi;
import 'premium_mdti_data_connector_data_types_response.dart';
import 'premium_microsoft_defender_for_threat_intelligence_args.dart';
import 'system_data_response.dart';

/// Represents Microsoft Defender for Threat Intelligence Premium data connector.
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
///     var premiumMicrosoftDefenderForThreatIntelligence = new AzureNative.SecurityInsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", new()
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
/// 		_, err := securityinsights.NewPremiumMicrosoftDefenderForThreatIntelligence(ctx, "premiumMicrosoftDefenderForThreatIntelligence", &securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs{
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
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence;
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs;
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
///         var premiumMicrosoftDefenderForThreatIntelligence = new PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", PremiumMicrosoftDefenderForThreatIntelligenceArgs.builder()
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
/// const premiumMicrosoftDefenderForThreatIntelligence = new azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", {
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
/// premium_microsoft_defender_for_threat_intelligence = azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence",
///     data_connector_id="c345bf40-8509-4ed2-b947-50cb773aaf04",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   premiumMicrosoftDefenderForThreatIntelligence:
///     type: azure-native:securityinsights:PremiumMicrosoftDefenderForThreatIntelligence
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
///     var premiumMicrosoftDefenderForThreatIntelligence = new AzureNative.SecurityInsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", new()
///     {
///         DataConnectorId = "8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///         DataTypes = new AzureNative.SecurityInsights.Inputs.PremiumMdtiDataConnectorDataTypesArgs
///         {
///             Connector = new AzureNative.SecurityInsights.Inputs.PremiumMdtiDataConnectorDataTypesConnectorArgs
///             {
///                 State = AzureNative.SecurityInsights.DataTypeState.Enabled,
///             },
///         },
///         Kind = "PremiumMicrosoftDefenderForThreatIntelligence",
///         LookbackPeriod = "1970-01-01T00:00:00.000Z",
///         ResourceGroupName = "myRg",
///         TenantId = "e4afb3c4-813b-4e68-b6de-e5360866e798",
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
/// 		_, err := securityinsights.NewPremiumMicrosoftDefenderForThreatIntelligence(ctx, "premiumMicrosoftDefenderForThreatIntelligence", &securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs{
/// 			DataConnectorId: pulumi.String("8c569548-a86c-4fb4-8ae4-d1e35a6146f8"),
/// 			DataTypes: &securityinsights.PremiumMdtiDataConnectorDataTypesArgs{
/// 				Connector: &securityinsights.PremiumMdtiDataConnectorDataTypesConnectorArgs{
/// 					State: pulumi.String(securityinsights.DataTypeStateEnabled),
/// 				},
/// 			},
/// 			Kind:              pulumi.String("PremiumMicrosoftDefenderForThreatIntelligence"),
/// 			LookbackPeriod:    pulumi.String("1970-01-01T00:00:00.000Z"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			TenantId:          pulumi.String("e4afb3c4-813b-4e68-b6de-e5360866e798"),
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
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence;
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.PremiumMdtiDataConnectorDataTypesArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.PremiumMdtiDataConnectorDataTypesConnectorArgs;
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
///         var premiumMicrosoftDefenderForThreatIntelligence = new PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", PremiumMicrosoftDefenderForThreatIntelligenceArgs.builder()
///             .dataConnectorId("8c569548-a86c-4fb4-8ae4-d1e35a6146f8")
///             .dataTypes(PremiumMdtiDataConnectorDataTypesArgs.builder()
///                 .connector(PremiumMdtiDataConnectorDataTypesConnectorArgs.builder()
///                     .state("Enabled")
///                     .build())
///                 .build())
///             .kind("PremiumMicrosoftDefenderForThreatIntelligence")
///             .lookbackPeriod("1970-01-01T00:00:00.000Z")
///             .resourceGroupName("myRg")
///             .tenantId("e4afb3c4-813b-4e68-b6de-e5360866e798")
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
/// const premiumMicrosoftDefenderForThreatIntelligence = new azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", {
///     dataConnectorId: "8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     dataTypes: {
///         connector: {
///             state: azure_native.securityinsights.DataTypeState.Enabled,
///         },
///     },
///     kind: "PremiumMicrosoftDefenderForThreatIntelligence",
///     lookbackPeriod: "1970-01-01T00:00:00.000Z",
///     resourceGroupName: "myRg",
///     tenantId: "e4afb3c4-813b-4e68-b6de-e5360866e798",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// premium_microsoft_defender_for_threat_intelligence = azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence",
///     data_connector_id="8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     data_types={
///         "connector": {
///             "state": azure_native.securityinsights.DataTypeState.ENABLED,
///         },
///     },
///     kind="PremiumMicrosoftDefenderForThreatIntelligence",
///     lookback_period="1970-01-01T00:00:00.000Z",
///     resource_group_name="myRg",
///     tenant_id="e4afb3c4-813b-4e68-b6de-e5360866e798",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   premiumMicrosoftDefenderForThreatIntelligence:
///     type: azure-native:securityinsights:PremiumMicrosoftDefenderForThreatIntelligence
///     properties:
///       dataConnectorId: 8c569548-a86c-4fb4-8ae4-d1e35a6146f8
///       dataTypes:
///         connector:
///           state: Enabled
///       kind: PremiumMicrosoftDefenderForThreatIntelligence
///       lookbackPeriod: 1970-01-01T00:00:00.000Z
///       resourceGroupName: myRg
///       tenantId: e4afb3c4-813b-4e68-b6de-e5360866e798
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
///     var premiumMicrosoftDefenderForThreatIntelligence = new AzureNative.SecurityInsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", new()
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
/// 		_, err := securityinsights.NewPremiumMicrosoftDefenderForThreatIntelligence(ctx, "premiumMicrosoftDefenderForThreatIntelligence", &securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs{
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
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence;
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs;
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
///         var premiumMicrosoftDefenderForThreatIntelligence = new PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", PremiumMicrosoftDefenderForThreatIntelligenceArgs.builder()
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
/// const premiumMicrosoftDefenderForThreatIntelligence = new azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", {
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
/// premium_microsoft_defender_for_threat_intelligence = azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   premiumMicrosoftDefenderForThreatIntelligence:
///     type: azure-native:securityinsights:PremiumMicrosoftDefenderForThreatIntelligence
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
///     var premiumMicrosoftDefenderForThreatIntelligence = new AzureNative.SecurityInsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", new()
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
/// 		_, err := securityinsights.NewPremiumMicrosoftDefenderForThreatIntelligence(ctx, "premiumMicrosoftDefenderForThreatIntelligence", &securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs{
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
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence;
/// import com.pulumi.azurenative.securityinsights.PremiumMicrosoftDefenderForThreatIntelligenceArgs;
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
///         var premiumMicrosoftDefenderForThreatIntelligence = new PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", PremiumMicrosoftDefenderForThreatIntelligenceArgs.builder()
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
/// const premiumMicrosoftDefenderForThreatIntelligence = new azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence", {
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
/// premium_microsoft_defender_for_threat_intelligence = azure_native.securityinsights.PremiumMicrosoftDefenderForThreatIntelligence("premiumMicrosoftDefenderForThreatIntelligence",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   premiumMicrosoftDefenderForThreatIntelligence:
///     type: azure-native:securityinsights:PremiumMicrosoftDefenderForThreatIntelligence
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
/// $ pulumi import azure-native:securityinsights:PremiumMicrosoftDefenderForThreatIntelligence 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectors/{dataConnectorId}
/// ```
class PremiumMicrosoftDefenderForThreatIntelligence
    extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The available data types for the connector.
  late final pulumi.Output<PremiumMdtiDataConnectorDataTypesResponse> dataTypes;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// The kind of the data connector
  /// Expected value is 'PremiumMicrosoftDefenderForThreatIntelligence'.
  late final pulumi.Output<String> kind;

  /// The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  late final pulumi.Output<String> lookbackPeriod;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The flag to indicate whether the tenant has the premium SKU required to access this connector.
  late final pulumi.Output<bool?> requiredSKUsPresent;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tenant id to connect to, and get the data from.
  late final pulumi.Output<String> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PremiumMicrosoftDefenderForThreatIntelligence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PremiumMicrosoftDefenderForThreatIntelligence]. {@macro pulumi_securityinsights_premium_microsoft_defender_for_threat_intelligence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PremiumMicrosoftDefenderForThreatIntelligence(
    String name, {
    PremiumMicrosoftDefenderForThreatIntelligenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:PremiumMicrosoftDefenderForThreatIntelligence',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataTypes = registerOutput<PremiumMdtiDataConnectorDataTypesResponse>(
      'dataTypes',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PremiumMdtiDataConnectorDataTypesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    lookbackPeriod = registerOutput<String>('lookbackPeriod');
    this.name = registerOutput<String>('name');
    requiredSKUsPresent = registerOutput<bool?>('requiredSKUsPresent');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
