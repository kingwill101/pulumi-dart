import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_scanner_args.dart';
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// The data scanner resource used by Defender for Storage to scan data for malware and sensitive data discovery.
///
/// Uses Azure REST API version 2026-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a data scanner resource at resource group scope.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataScanner = new AzureNative.Security.DataScanner("dataScanner", new()
///     {
///         Identity = new AzureNative.Security.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.Security.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         ScannerName = "StorageDataScanner",
///         ScopeId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/rg1",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewDataScanner(ctx, "dataScanner", &security.DataScannerArgs{
/// 			Identity: &security.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(security.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			ScannerName: pulumi.String("StorageDataScanner"),
/// 			ScopeId:     pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/rg1"),
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
/// resource "azure-native_security_datascanner" "dataScanner" {
///   identity = {
///     type = "SystemAssigned"
///   }
///   scanner_name = "StorageDataScanner"
///   scope_id     = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/rg1"
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
/// import com.pulumi.azurenative.security.DataScanner;
/// import com.pulumi.azurenative.security.DataScannerArgs;
/// import com.pulumi.azurenative.security.inputs.SystemAssignedServiceIdentityArgs;
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
///         var dataScanner = new DataScanner("dataScanner", DataScannerArgs.builder()
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .scannerName("StorageDataScanner")
///             .scopeId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/rg1")
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
/// const dataScanner = new azure_native.security.DataScanner("dataScanner", {
///     identity: {
///         type: azure_native.security.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     scannerName: "StorageDataScanner",
///     scopeId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_scanner = azure_native.security.DataScanner("dataScanner",
///     identity={
///         "type": azure_native.security.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     scanner_name="StorageDataScanner",
///     scope_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   dataScanner:
///     type: azure-native:security:DataScanner
///     properties:
///       identity:
///         type: SystemAssigned
///       scannerName: StorageDataScanner
///       scopeId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a data scanner resource at subscription scope.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataScanner = new AzureNative.Security.DataScanner("dataScanner", new()
///     {
///         Identity = new AzureNative.Security.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.Security.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         ScannerName = "StorageDataScanner",
///         ScopeId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewDataScanner(ctx, "dataScanner", &security.DataScannerArgs{
/// 			Identity: &security.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(security.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			ScannerName: pulumi.String("StorageDataScanner"),
/// 			ScopeId:     pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
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
/// resource "azure-native_security_datascanner" "dataScanner" {
///   identity = {
///     type = "SystemAssigned"
///   }
///   scanner_name = "StorageDataScanner"
///   scope_id     = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"
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
/// import com.pulumi.azurenative.security.DataScanner;
/// import com.pulumi.azurenative.security.DataScannerArgs;
/// import com.pulumi.azurenative.security.inputs.SystemAssignedServiceIdentityArgs;
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
///         var dataScanner = new DataScanner("dataScanner", DataScannerArgs.builder()
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .scannerName("StorageDataScanner")
///             .scopeId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
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
/// const dataScanner = new azure_native.security.DataScanner("dataScanner", {
///     identity: {
///         type: azure_native.security.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     scannerName: "StorageDataScanner",
///     scopeId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_scanner = azure_native.security.DataScanner("dataScanner",
///     identity={
///         "type": azure_native.security.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     scanner_name="StorageDataScanner",
///     scope_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///
/// ```
///
/// ```yaml
/// resources:
///   dataScanner:
///     type: azure-native:security:DataScanner
///     properties:
///       identity:
///         type: SystemAssigned
///       scannerName: StorageDataScanner
///       scopeId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
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
/// $ pulumi import azure-native:security:DataScanner StorageDataScanner /{scopeId}/providers/Microsoft.Security/dataScanners/{scannerName}
/// ```
class DataScanner extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<SystemAssignedServiceIdentityResponse?> identity;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Data scanner resource properties.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataScanner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataScanner]. {@macro pulumi_security_data_scanner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataScanner(
    String name, {
    DataScannerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:DataScanner',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
