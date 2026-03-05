import 'package:pulumi/pulumi.dart' as pulumi;
import 'awsauth_model_response.dart';
import 'ccp_response_config_response.dart';
import 'dcrconfiguration_response.dart';
import 'rest_api_poller_data_connector_args.dart';
import 'rest_api_poller_request_config_response.dart';
import 'rest_api_poller_request_paging_config_response.dart';
import 'system_data_response.dart';

/// Represents Rest Api Poller data connector.
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
///     var restApiPollerDataConnector = new AzureNative.SecurityInsights.RestApiPollerDataConnector("restApiPollerDataConnector", new()
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
/// 		_, err := securityinsights.NewRestApiPollerDataConnector(ctx, "restApiPollerDataConnector", &securityinsights.RestApiPollerDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnector;
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnectorArgs;
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
///         var restApiPollerDataConnector = new RestApiPollerDataConnector("restApiPollerDataConnector", RestApiPollerDataConnectorArgs.builder()
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
/// const restApiPollerDataConnector = new azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector", {
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
/// rest_api_poller_data_connector = azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector",
///     data_connector_id="c345bf40-8509-4ed2-b947-50cb773aaf04",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   restApiPollerDataConnector:
///     type: azure-native:securityinsights:RestApiPollerDataConnector
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
///     var restApiPollerDataConnector = new AzureNative.SecurityInsights.RestApiPollerDataConnector("restApiPollerDataConnector", new()
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
/// 		_, err := securityinsights.NewRestApiPollerDataConnector(ctx, "restApiPollerDataConnector", &securityinsights.RestApiPollerDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnector;
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnectorArgs;
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
///         var restApiPollerDataConnector = new RestApiPollerDataConnector("restApiPollerDataConnector", RestApiPollerDataConnectorArgs.builder()
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
/// const restApiPollerDataConnector = new azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector", {
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
/// rest_api_poller_data_connector = azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector",
///     data_connector_id="8c569548-a86c-4fb4-8ae4-d1e35a6146f8",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   restApiPollerDataConnector:
///     type: azure-native:securityinsights:RestApiPollerDataConnector
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
///     var restApiPollerDataConnector = new AzureNative.SecurityInsights.RestApiPollerDataConnector("restApiPollerDataConnector", new()
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
/// 		_, err := securityinsights.NewRestApiPollerDataConnector(ctx, "restApiPollerDataConnector", &securityinsights.RestApiPollerDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnector;
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnectorArgs;
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
///         var restApiPollerDataConnector = new RestApiPollerDataConnector("restApiPollerDataConnector", RestApiPollerDataConnectorArgs.builder()
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
/// const restApiPollerDataConnector = new azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector", {
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
/// rest_api_poller_data_connector = azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   restApiPollerDataConnector:
///     type: azure-native:securityinsights:RestApiPollerDataConnector
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
///     var restApiPollerDataConnector = new AzureNative.SecurityInsights.RestApiPollerDataConnector("restApiPollerDataConnector", new()
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
/// 		_, err := securityinsights.NewRestApiPollerDataConnector(ctx, "restApiPollerDataConnector", &securityinsights.RestApiPollerDataConnectorArgs{
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
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnector;
/// import com.pulumi.azurenative.securityinsights.RestApiPollerDataConnectorArgs;
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
///         var restApiPollerDataConnector = new RestApiPollerDataConnector("restApiPollerDataConnector", RestApiPollerDataConnectorArgs.builder()
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
/// const restApiPollerDataConnector = new azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector", {
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
/// rest_api_poller_data_connector = azure_native.securityinsights.RestApiPollerDataConnector("restApiPollerDataConnector",
///     data_connector_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   restApiPollerDataConnector:
///     type: azure-native:securityinsights:RestApiPollerDataConnector
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
/// $ pulumi import azure-native:securityinsights:RestApiPollerDataConnector 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectors/{dataConnectorId}
/// ```
class RestApiPollerDataConnector extends pulumi.CustomResource {
  /// The add on attributes. The key name will become attribute name (a column) and the value will become the attribute value in the payload.
  late final pulumi.Output<Map<String, String>?> addOnAttributes;
  /// The a authentication model.
  late final pulumi.Output<AWSAuthModelResponse> auth;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The connector definition name (the dataConnectorDefinition resource id).
  late final pulumi.Output<String> connectorDefinitionName;
  /// The Log Analytics table destination.
  late final pulumi.Output<String?> dataType;
  /// The DCR related properties.
  late final pulumi.Output<DCRConfigurationResponse?> dcrConfig;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// Indicates whether the connector is active or not.
  late final pulumi.Output<bool?> isActive;
  /// The kind of the data connector
  /// Expected value is 'RestApiPoller'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The paging configuration.
  late final pulumi.Output<RestApiPollerRequestPagingConfigResponse?> paging;
  /// The request configuration.
  late final pulumi.Output<RestApiPollerRequestConfigResponse> request;
  /// The response configuration.
  late final pulumi.Output<CcpResponseConfigResponse?> response;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RestApiPollerDataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestApiPollerDataConnector]. {@macro pulumi_securityinsights_rest_api_poller_data_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestApiPollerDataConnector(
    String name, {
    RestApiPollerDataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:RestApiPollerDataConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addOnAttributes = registerOutput<Map<String, String>?>('addOnAttributes');
    auth = registerOutput<AWSAuthModelResponse>('auth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AWSAuthModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectorDefinitionName = registerOutput<String>('connectorDefinitionName');
    dataType = registerOutput<String?>('dataType');
    dcrConfig = registerOutput<DCRConfigurationResponse?>('dcrConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DCRConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    isActive = registerOutput<bool?>('isActive');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    paging = registerOutput<RestApiPollerRequestPagingConfigResponse?>('paging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestApiPollerRequestPagingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    request = registerOutput<RestApiPollerRequestConfigResponse>('request', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestApiPollerRequestConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    response = registerOutput<CcpResponseConfigResponse?>('response', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CcpResponseConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
