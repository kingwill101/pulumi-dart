import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_policy_args.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2020-01-01. In version 2.x of the Azure Native provider, it used API version 2020-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create JIT network access policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jitNetworkAccessPolicy = new AzureNative.Security.JitNetworkAccessPolicy("jitNetworkAccessPolicy", new()
///     {
///         AscLocation = "westeurope",
///         JitNetworkAccessPolicyName = "default",
///         Kind = "Basic",
///         Requests = new[]
///         {
///             new AzureNative.Security.Inputs.JitNetworkAccessRequestArgs
///             {
///                 Requestor = "barbara@contoso.com",
///                 StartTimeUtc = "2018-05-17T08:06:45.5691611Z",
///                 VirtualMachines = new[]
///                 {
///                     new AzureNative.Security.Inputs.JitNetworkAccessRequestVirtualMachineArgs
///                     {
///                         Id = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1",
///                         Ports = new[]
///                         {
///                             new AzureNative.Security.Inputs.JitNetworkAccessRequestPortArgs
///                             {
///                                 AllowedSourceAddressPrefix = "192.127.0.2",
///                                 EndTimeUtc = "2018-05-17T09:06:45.5691611Z",
///                                 Number = 3389,
///                                 Status = AzureNative.Security.Status.Initiated,
///                                 StatusReason = AzureNative.Security.StatusReason.UserRequested,
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "myRg1",
///         VirtualMachines = new[]
///         {
///             new AzureNative.Security.Inputs.JitNetworkAccessPolicyVirtualMachineArgs
///             {
///                 Id = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1",
///                 Ports = new[]
///                 {
///                     new AzureNative.Security.Inputs.JitNetworkAccessPortRuleArgs
///                     {
///                         AllowedSourceAddressPrefix = "*",
///                         MaxRequestAccessDuration = "PT3H",
///                         Number = 22,
///                         Protocol = AzureNative.Security.Protocol.All,
///                     },
///                     new AzureNative.Security.Inputs.JitNetworkAccessPortRuleArgs
///                     {
///                         AllowedSourceAddressPrefix = "*",
///                         MaxRequestAccessDuration = "PT3H",
///                         Number = 3389,
///                         Protocol = AzureNative.Security.Protocol.All,
///                     },
///                 },
///             },
///         },
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
/// 		_, err := security.NewJitNetworkAccessPolicy(ctx, "jitNetworkAccessPolicy", &security.JitNetworkAccessPolicyArgs{
/// 			AscLocation:                pulumi.String("westeurope"),
/// 			JitNetworkAccessPolicyName: pulumi.String("default"),
/// 			Kind:                       pulumi.String("Basic"),
/// 			Requests: security.JitNetworkAccessRequestArray{
/// 				&security.JitNetworkAccessRequestArgs{
/// 					Requestor:    pulumi.String("barbara@contoso.com"),
/// 					StartTimeUtc: pulumi.String("2018-05-17T08:06:45.5691611Z"),
/// 					VirtualMachines: security.JitNetworkAccessRequestVirtualMachineArray{
/// 						&security.JitNetworkAccessRequestVirtualMachineArgs{
/// 							Id: pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 							Ports: security.JitNetworkAccessRequestPortArray{
/// 								&security.JitNetworkAccessRequestPortArgs{
/// 									AllowedSourceAddressPrefix: pulumi.String("192.127.0.2"),
/// 									EndTimeUtc:                 pulumi.String("2018-05-17T09:06:45.5691611Z"),
/// 									Number:                     pulumi.Int(3389),
/// 									Status:                     pulumi.String(security.StatusInitiated),
/// 									StatusReason:               pulumi.String(security.StatusReasonUserRequested),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myRg1"),
/// 			VirtualMachines: security.JitNetworkAccessPolicyVirtualMachineArray{
/// 				&security.JitNetworkAccessPolicyVirtualMachineArgs{
/// 					Id: pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 					Ports: security.JitNetworkAccessPortRuleArray{
/// 						&security.JitNetworkAccessPortRuleArgs{
/// 							AllowedSourceAddressPrefix: pulumi.String("*"),
/// 							MaxRequestAccessDuration:   pulumi.String("PT3H"),
/// 							Number:                     pulumi.Int(22),
/// 							Protocol:                   pulumi.String(security.ProtocolAll),
/// 						},
/// 						&security.JitNetworkAccessPortRuleArgs{
/// 							AllowedSourceAddressPrefix: pulumi.String("*"),
/// 							MaxRequestAccessDuration:   pulumi.String("PT3H"),
/// 							Number:                     pulumi.Int(3389),
/// 							Protocol:                   pulumi.String(security.ProtocolAll),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// resource "azure-native_security_jitnetworkaccesspolicy" "jitNetworkAccessPolicy" {
///   asc_location                   = "westeurope"
///   jit_network_access_policy_name = "default"
///   kind                           = "Basic"
///   requests {
///     requestor      = "barbara@contoso.com"
///     start_time_utc = "2018-05-17T08:06:45.5691611Z"
///     virtual_machines {
///       id = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1"
///       ports {
///         allowed_source_address_prefix = "192.127.0.2"
///         end_time_utc                  = "2018-05-17T09:06:45.5691611Z"
///         number                        = 3389
///         status                        = "Initiated"
///         status_reason                 = "UserRequested"
///       }
///     }
///   }
///   resource_group_name = "myRg1"
///   virtual_machines {
///     id = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1"
///     ports {
///       allowed_source_address_prefix = "*"
///       max_request_access_duration   = "PT3H"
///       number                        = 22
///       protocol                      = "*"
///     }
///     ports {
///       allowed_source_address_prefix = "*"
///       max_request_access_duration   = "PT3H"
///       number                        = 3389
///       protocol                      = "*"
///     }
///   }
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
/// import com.pulumi.azurenative.security.JitNetworkAccessPolicy;
/// import com.pulumi.azurenative.security.JitNetworkAccessPolicyArgs;
/// import com.pulumi.azurenative.security.inputs.JitNetworkAccessRequestArgs;
/// import com.pulumi.azurenative.security.inputs.JitNetworkAccessPolicyVirtualMachineArgs;
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
///         var jitNetworkAccessPolicy = new JitNetworkAccessPolicy("jitNetworkAccessPolicy", JitNetworkAccessPolicyArgs.builder()
///             .ascLocation("westeurope")
///             .jitNetworkAccessPolicyName("default")
///             .kind("Basic")
///             .requests(JitNetworkAccessRequestArgs.builder()
///                 .requestor("barbara@contoso.com")
///                 .startTimeUtc("2018-05-17T08:06:45.5691611Z")
///                 .virtualMachines(JitNetworkAccessRequestVirtualMachineArgs.builder()
///                     .id("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1")
///                     .ports(JitNetworkAccessRequestPortArgs.builder()
///                         .allowedSourceAddressPrefix("192.127.0.2")
///                         .endTimeUtc("2018-05-17T09:06:45.5691611Z")
///                         .number(3389)
///                         .status("Initiated")
///                         .statusReason("UserRequested")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("myRg1")
///             .virtualMachines(JitNetworkAccessPolicyVirtualMachineArgs.builder()
///                 .id("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1")
///                 .ports(
///                     JitNetworkAccessPortRuleArgs.builder()
///                         .allowedSourceAddressPrefix("*")
///                         .maxRequestAccessDuration("PT3H")
///                         .number(22)
///                         .protocol("*")
///                         .build(),
///                     JitNetworkAccessPortRuleArgs.builder()
///                         .allowedSourceAddressPrefix("*")
///                         .maxRequestAccessDuration("PT3H")
///                         .number(3389)
///                         .protocol("*")
///                         .build())
///                 .build())
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
/// const jitNetworkAccessPolicy = new azure_native.security.JitNetworkAccessPolicy("jitNetworkAccessPolicy", {
///     ascLocation: "westeurope",
///     jitNetworkAccessPolicyName: "default",
///     kind: "Basic",
///     requests: [{
///         requestor: "barbara@contoso.com",
///         startTimeUtc: "2018-05-17T08:06:45.5691611Z",
///         virtualMachines: [{
///             id: "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1",
///             ports: [{
///                 allowedSourceAddressPrefix: "192.127.0.2",
///                 endTimeUtc: "2018-05-17T09:06:45.5691611Z",
///                 number: 3389,
///                 status: azure_native.security.Status.Initiated,
///                 statusReason: azure_native.security.StatusReason.UserRequested,
///             }],
///         }],
///     }],
///     resourceGroupName: "myRg1",
///     virtualMachines: [{
///         id: "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1",
///         ports: [
///             {
///                 allowedSourceAddressPrefix: "*",
///                 maxRequestAccessDuration: "PT3H",
///                 number: 22,
///                 protocol: azure_native.security.Protocol.All,
///             },
///             {
///                 allowedSourceAddressPrefix: "*",
///                 maxRequestAccessDuration: "PT3H",
///                 number: 3389,
///                 protocol: azure_native.security.Protocol.All,
///             },
///         ],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// jit_network_access_policy = azure_native.security.JitNetworkAccessPolicy("jitNetworkAccessPolicy",
///     asc_location="westeurope",
///     jit_network_access_policy_name="default",
///     kind="Basic",
///     requests=[{
///         "requestor": "barbara@contoso.com",
///         "start_time_utc": "2018-05-17T08:06:45.5691611Z",
///         "virtual_machines": [{
///             "id": "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1",
///             "ports": [{
///                 "allowed_source_address_prefix": "192.127.0.2",
///                 "end_time_utc": "2018-05-17T09:06:45.5691611Z",
///                 "number": 3389,
///                 "status": azure_native.security.Status.INITIATED,
///                 "status_reason": azure_native.security.StatusReason.USER_REQUESTED,
///             }],
///         }],
///     }],
///     resource_group_name="myRg1",
///     virtual_machines=[{
///         "id": "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1",
///         "ports": [
///             {
///                 "allowed_source_address_prefix": "*",
///                 "max_request_access_duration": "PT3H",
///                 "number": 22,
///                 "protocol": azure_native.security.Protocol.ALL,
///             },
///             {
///                 "allowed_source_address_prefix": "*",
///                 "max_request_access_duration": "PT3H",
///                 "number": 3389,
///                 "protocol": azure_native.security.Protocol.ALL,
///             },
///         ],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   jitNetworkAccessPolicy:
///     type: azure-native:security:JitNetworkAccessPolicy
///     properties:
///       ascLocation: westeurope
///       jitNetworkAccessPolicyName: default
///       kind: Basic
///       requests:
///         - requestor: barbara@contoso.com
///           startTimeUtc: 2018-05-17T08:06:45.5691611Z
///           virtualMachines:
///             - id: /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1
///               ports:
///                 - allowedSourceAddressPrefix: 192.127.0.2
///                   endTimeUtc: 2018-05-17T09:06:45.5691611Z
///                   number: 3389
///                   status: Initiated
///                   statusReason: UserRequested
///       resourceGroupName: myRg1
///       virtualMachines:
///         - id: /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg1/providers/Microsoft.Compute/virtualMachines/vm1
///           ports:
///             - allowedSourceAddressPrefix: '*'
///               maxRequestAccessDuration: PT3H
///               number: 22
///               protocol: '*'
///             - allowedSourceAddressPrefix: '*'
///               maxRequestAccessDuration: PT3H
///               number: 3389
///               protocol: '*'
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
/// $ pulumi import azure-native:security:JitNetworkAccessPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/locations/{ascLocation}/jitNetworkAccessPolicies/{jitNetworkAccessPolicyName}
/// ```
class JitNetworkAccessPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of the resource
  late final pulumi.Output<String?> kind;
  /// Location where the resource is stored
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the provisioning state of the Just-in-Time policy.
  late final pulumi.Output<String> provisioningState;
  late final pulumi.Output<List<Map<String, dynamic>>?> requests;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Configurations for Microsoft.Compute/virtualMachines resource type.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualMachines;

  /// Creates a new [JitNetworkAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JitNetworkAccessPolicy]. {@macro pulumi_security_jit_network_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JitNetworkAccessPolicy(
    String name, {
    JitNetworkAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:JitNetworkAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    requests = registerOutput<List<Map<String, dynamic>>?>('requests');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    virtualMachines = registerOutput<List<Map<String, dynamic>>>('virtualMachines');
  }
}
