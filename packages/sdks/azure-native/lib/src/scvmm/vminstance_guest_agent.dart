import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_credential_response.dart';
import 'http_proxy_configuration_response.dart';
import 'system_data_response.dart';
import 'vminstance_guest_agent_args.dart';

/// Defines the GuestAgent.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateGuestAgent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vmInstanceGuestAgent = new AzureNative.ScVmm.VMInstanceGuestAgent("vmInstanceGuestAgent", new()
///     {
///         Credentials = new AzureNative.ScVmm.Inputs.GuestCredentialArgs
///         {
///             Password = "<password>",
///             Username = "tempuser",
///         },
///         HttpProxyConfig = new AzureNative.ScVmm.Inputs.HttpProxyConfigurationArgs
///         {
///             HttpsProxy = "http://192.1.2.3:8080",
///         },
///         ProvisioningAction = AzureNative.ScVmm.ProvisioningAction.Install,
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// 	scvmm "github.com/pulumi/pulumi-azure-native-sdk/scvmm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scvmm.NewVMInstanceGuestAgent(ctx, "vmInstanceGuestAgent", &scvmm.VMInstanceGuestAgentArgs{
/// 			Credentials: &scvmm.GuestCredentialArgs{
/// 				Password: pulumi.String("<password>"),
/// 				Username: pulumi.String("tempuser"),
/// 			},
/// 			HttpProxyConfig: &scvmm.HttpProxyConfigurationArgs{
/// 				HttpsProxy: pulumi.String("http://192.1.2.3:8080"),
/// 			},
/// 			ProvisioningAction: pulumi.String(scvmm.ProvisioningActionInstall),
/// 			ResourceUri:        pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
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
/// resource "azure-native_scvmm_vminstanceguestagent" "vmInstanceGuestAgent" {
///   credentials = {
///     password = "<password>"
///     username = "tempuser"
///   }
///   http_proxy_config = {
///     https_proxy = "http://192.1.2.3:8080"
///   }
///   provisioning_action = "install"
///   resource_uri        = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
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
/// import com.pulumi.azurenative.scvmm.VMInstanceGuestAgent;
/// import com.pulumi.azurenative.scvmm.VMInstanceGuestAgentArgs;
/// import com.pulumi.azurenative.scvmm.inputs.GuestCredentialArgs;
/// import com.pulumi.azurenative.scvmm.inputs.HttpProxyConfigurationArgs;
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
///         var vmInstanceGuestAgent = new VMInstanceGuestAgent("vmInstanceGuestAgent", VMInstanceGuestAgentArgs.builder()
///             .credentials(GuestCredentialArgs.builder()
///                 .password("<password>")
///                 .username("tempuser")
///                 .build())
///             .httpProxyConfig(HttpProxyConfigurationArgs.builder()
///                 .httpsProxy("http://192.1.2.3:8080")
///                 .build())
///             .provisioningAction("install")
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
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
/// const vmInstanceGuestAgent = new azure_native.scvmm.VMInstanceGuestAgent("vmInstanceGuestAgent", {
///     credentials: {
///         password: "<password>",
///         username: "tempuser",
///     },
///     httpProxyConfig: {
///         httpsProxy: "http://192.1.2.3:8080",
///     },
///     provisioningAction: azure_native.scvmm.ProvisioningAction.Install,
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vm_instance_guest_agent = azure_native.scvmm.VMInstanceGuestAgent("vmInstanceGuestAgent",
///     credentials={
///         "password": "<password>",
///         "username": "tempuser",
///     },
///     http_proxy_config={
///         "https_proxy": "http://192.1.2.3:8080",
///     },
///     provisioning_action=azure_native.scvmm.ProvisioningAction.INSTALL,
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///
/// ```
///
/// ```yaml
/// resources:
///   vmInstanceGuestAgent:
///     type: azure-native:scvmm:VMInstanceGuestAgent
///     properties:
///       credentials:
///         password: <password>
///         username: tempuser
///       httpProxyConfig:
///         httpsProxy: http://192.1.2.3:8080
///       provisioningAction: install
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
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
/// $ pulumi import azure-native:scvmm:VMInstanceGuestAgent default /{resourceUri}/providers/Microsoft.ScVmm/virtualMachineInstances/default/guestAgents/default
/// ```
class VMInstanceGuestAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Username / Password Credentials to provision guest agent.
  late final pulumi.Output<GuestCredentialResponse?> credentials;
  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;
  /// HTTP Proxy configuration for the VM.
  late final pulumi.Output<HttpProxyConfigurationResponse?> httpProxyConfig;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the guest agent provisioning action.
  late final pulumi.Output<String?> provisioningAction;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the guest agent status.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;

  /// Creates a new [VMInstanceGuestAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VMInstanceGuestAgent]. {@macro pulumi_scvmm_vminstance_guest_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VMInstanceGuestAgent(
    String name, {
    VMInstanceGuestAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:VMInstanceGuestAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credentials = registerOutput<GuestCredentialResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GuestCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customResourceName = registerOutput<String>('customResourceName');
    httpProxyConfig = registerOutput<HttpProxyConfigurationResponse?>('httpProxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpProxyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningAction = registerOutput<String?>('provisioningAction');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }

  /// Creates a typed reference to an existing [VMInstanceGuestAgent] resource.
  VMInstanceGuestAgent.reference(String urn)
    : super(
        'azure-native:scvmm:VMInstanceGuestAgent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credentials = registerOutput<GuestCredentialResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GuestCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customResourceName = registerOutput<String>('customResourceName');
    httpProxyConfig = registerOutput<HttpProxyConfigurationResponse?>('httpProxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpProxyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningAction = registerOutput<String?>('provisioningAction');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
