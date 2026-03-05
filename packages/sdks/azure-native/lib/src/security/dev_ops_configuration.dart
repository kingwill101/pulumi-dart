import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_ops_configuration_args.dart';
import 'dev_ops_configuration_properties_response.dart';
import 'system_data_response.dart';

/// DevOps Configuration resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-09-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-15-preview, 2025-03-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate_DevOpsConfigurations_OnboardCurrentAndFuture
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devOpsConfiguration = new AzureNative.Security.DevOpsConfiguration("devOpsConfiguration", new()
///     {
///         Properties = new AzureNative.Security.Inputs.DevOpsConfigurationPropertiesArgs
///         {
///             Authorization = new AzureNative.Security.Inputs.AuthorizationArgs
///             {
///                 Code = "00000000000000000000",
///             },
///             AutoDiscovery = AzureNative.Security.AutoDiscovery.Enabled,
///         },
///         ResourceGroupName = "myRg",
///         SecurityConnectorName = "mySecurityConnectorName",
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
/// 		_, err := security.NewDevOpsConfiguration(ctx, "devOpsConfiguration", &security.DevOpsConfigurationArgs{
/// 			Properties: &security.DevOpsConfigurationPropertiesArgs{
/// 				Authorization: &security.AuthorizationArgs{
/// 					Code: pulumi.String("00000000000000000000"),
/// 				},
/// 				AutoDiscovery: pulumi.String(security.AutoDiscoveryEnabled),
/// 			},
/// 			ResourceGroupName:     pulumi.String("myRg"),
/// 			SecurityConnectorName: pulumi.String("mySecurityConnectorName"),
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
/// import com.pulumi.azurenative.security.DevOpsConfiguration;
/// import com.pulumi.azurenative.security.DevOpsConfigurationArgs;
/// import com.pulumi.azurenative.security.inputs.DevOpsConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.AuthorizationArgs;
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
///         var devOpsConfiguration = new DevOpsConfiguration("devOpsConfiguration", DevOpsConfigurationArgs.builder()
///             .properties(DevOpsConfigurationPropertiesArgs.builder()
///                 .authorization(AuthorizationArgs.builder()
///                     .code("00000000000000000000")
///                     .build())
///                 .autoDiscovery("Enabled")
///                 .build())
///             .resourceGroupName("myRg")
///             .securityConnectorName("mySecurityConnectorName")
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
/// const devOpsConfiguration = new azure_native.security.DevOpsConfiguration("devOpsConfiguration", {
///     properties: {
///         authorization: {
///             code: "00000000000000000000",
///         },
///         autoDiscovery: azure_native.security.AutoDiscovery.Enabled,
///     },
///     resourceGroupName: "myRg",
///     securityConnectorName: "mySecurityConnectorName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dev_ops_configuration = azure_native.security.DevOpsConfiguration("devOpsConfiguration",
///     properties={
///         "authorization": {
///             "code": "00000000000000000000",
///         },
///         "auto_discovery": azure_native.security.AutoDiscovery.ENABLED,
///     },
///     resource_group_name="myRg",
///     security_connector_name="mySecurityConnectorName")
///
/// ```
///
/// ```yaml
/// resources:
///   devOpsConfiguration:
///     type: azure-native:security:DevOpsConfiguration
///     properties:
///       properties:
///         authorization:
///           code: '00000000000000000000'
///         autoDiscovery: Enabled
///       resourceGroupName: myRg
///       securityConnectorName: mySecurityConnectorName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate_DevOpsConfigurations_OnboardCurrentOnly
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devOpsConfiguration = new AzureNative.Security.DevOpsConfiguration("devOpsConfiguration", new()
///     {
///         Properties = new AzureNative.Security.Inputs.DevOpsConfigurationPropertiesArgs
///         {
///             Authorization = new AzureNative.Security.Inputs.AuthorizationArgs
///             {
///                 Code = "00000000000000000000",
///             },
///             AutoDiscovery = AzureNative.Security.AutoDiscovery.Disabled,
///         },
///         ResourceGroupName = "myRg",
///         SecurityConnectorName = "mySecurityConnectorName",
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
/// 		_, err := security.NewDevOpsConfiguration(ctx, "devOpsConfiguration", &security.DevOpsConfigurationArgs{
/// 			Properties: &security.DevOpsConfigurationPropertiesArgs{
/// 				Authorization: &security.AuthorizationArgs{
/// 					Code: pulumi.String("00000000000000000000"),
/// 				},
/// 				AutoDiscovery: pulumi.String(security.AutoDiscoveryDisabled),
/// 			},
/// 			ResourceGroupName:     pulumi.String("myRg"),
/// 			SecurityConnectorName: pulumi.String("mySecurityConnectorName"),
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
/// import com.pulumi.azurenative.security.DevOpsConfiguration;
/// import com.pulumi.azurenative.security.DevOpsConfigurationArgs;
/// import com.pulumi.azurenative.security.inputs.DevOpsConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.AuthorizationArgs;
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
///         var devOpsConfiguration = new DevOpsConfiguration("devOpsConfiguration", DevOpsConfigurationArgs.builder()
///             .properties(DevOpsConfigurationPropertiesArgs.builder()
///                 .authorization(AuthorizationArgs.builder()
///                     .code("00000000000000000000")
///                     .build())
///                 .autoDiscovery("Disabled")
///                 .build())
///             .resourceGroupName("myRg")
///             .securityConnectorName("mySecurityConnectorName")
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
/// const devOpsConfiguration = new azure_native.security.DevOpsConfiguration("devOpsConfiguration", {
///     properties: {
///         authorization: {
///             code: "00000000000000000000",
///         },
///         autoDiscovery: azure_native.security.AutoDiscovery.Disabled,
///     },
///     resourceGroupName: "myRg",
///     securityConnectorName: "mySecurityConnectorName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dev_ops_configuration = azure_native.security.DevOpsConfiguration("devOpsConfiguration",
///     properties={
///         "authorization": {
///             "code": "00000000000000000000",
///         },
///         "auto_discovery": azure_native.security.AutoDiscovery.DISABLED,
///     },
///     resource_group_name="myRg",
///     security_connector_name="mySecurityConnectorName")
///
/// ```
///
/// ```yaml
/// resources:
///   devOpsConfiguration:
///     type: azure-native:security:DevOpsConfiguration
///     properties:
///       properties:
///         authorization:
///           code: '00000000000000000000'
///         autoDiscovery: Disabled
///       resourceGroupName: myRg
///       securityConnectorName: mySecurityConnectorName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate_DevOpsConfigurations_OnboardSelected
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devOpsConfiguration = new AzureNative.Security.DevOpsConfiguration("devOpsConfiguration", new()
///     {
///         Properties = new AzureNative.Security.Inputs.DevOpsConfigurationPropertiesArgs
///         {
///             Authorization = new AzureNative.Security.Inputs.AuthorizationArgs
///             {
///                 Code = "00000000000000000000",
///             },
///             AutoDiscovery = AzureNative.Security.AutoDiscovery.Disabled,
///             TopLevelInventoryList = new[]
///             {
///                 "org1",
///                 "org2",
///             },
///         },
///         ResourceGroupName = "myRg",
///         SecurityConnectorName = "mySecurityConnectorName",
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
/// 		_, err := security.NewDevOpsConfiguration(ctx, "devOpsConfiguration", &security.DevOpsConfigurationArgs{
/// 			Properties: &security.DevOpsConfigurationPropertiesArgs{
/// 				Authorization: &security.AuthorizationArgs{
/// 					Code: pulumi.String("00000000000000000000"),
/// 				},
/// 				AutoDiscovery: pulumi.String(security.AutoDiscoveryDisabled),
/// 				TopLevelInventoryList: pulumi.StringArray{
/// 					pulumi.String("org1"),
/// 					pulumi.String("org2"),
/// 				},
/// 			},
/// 			ResourceGroupName:     pulumi.String("myRg"),
/// 			SecurityConnectorName: pulumi.String("mySecurityConnectorName"),
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
/// import com.pulumi.azurenative.security.DevOpsConfiguration;
/// import com.pulumi.azurenative.security.DevOpsConfigurationArgs;
/// import com.pulumi.azurenative.security.inputs.DevOpsConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.AuthorizationArgs;
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
///         var devOpsConfiguration = new DevOpsConfiguration("devOpsConfiguration", DevOpsConfigurationArgs.builder()
///             .properties(DevOpsConfigurationPropertiesArgs.builder()
///                 .authorization(AuthorizationArgs.builder()
///                     .code("00000000000000000000")
///                     .build())
///                 .autoDiscovery("Disabled")
///                 .topLevelInventoryList(
///                     "org1",
///                     "org2")
///                 .build())
///             .resourceGroupName("myRg")
///             .securityConnectorName("mySecurityConnectorName")
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
/// const devOpsConfiguration = new azure_native.security.DevOpsConfiguration("devOpsConfiguration", {
///     properties: {
///         authorization: {
///             code: "00000000000000000000",
///         },
///         autoDiscovery: azure_native.security.AutoDiscovery.Disabled,
///         topLevelInventoryList: [
///             "org1",
///             "org2",
///         ],
///     },
///     resourceGroupName: "myRg",
///     securityConnectorName: "mySecurityConnectorName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dev_ops_configuration = azure_native.security.DevOpsConfiguration("devOpsConfiguration",
///     properties={
///         "authorization": {
///             "code": "00000000000000000000",
///         },
///         "auto_discovery": azure_native.security.AutoDiscovery.DISABLED,
///         "top_level_inventory_list": [
///             "org1",
///             "org2",
///         ],
///     },
///     resource_group_name="myRg",
///     security_connector_name="mySecurityConnectorName")
///
/// ```
///
/// ```yaml
/// resources:
///   devOpsConfiguration:
///     type: azure-native:security:DevOpsConfiguration
///     properties:
///       properties:
///         authorization:
///           code: '00000000000000000000'
///         autoDiscovery: Disabled
///         topLevelInventoryList:
///           - org1
///           - org2
///       resourceGroupName: myRg
///       securityConnectorName: mySecurityConnectorName
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
/// $ pulumi import azure-native:security:DevOpsConfiguration default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName}/devops/default
/// ```
class DevOpsConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// DevOps Configuration properties.
  late final pulumi.Output<DevOpsConfigurationPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DevOpsConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevOpsConfiguration]. {@macro pulumi_security_dev_ops_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevOpsConfiguration(
    String name, {
    DevOpsConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:DevOpsConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DevOpsConfigurationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevOpsConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
