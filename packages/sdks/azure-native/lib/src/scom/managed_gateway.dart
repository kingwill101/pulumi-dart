import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_gateway_args.dart';
import 'managed_gateway_properties_response.dart';
import 'system_data_response.dart';

/// A gateway resource.
///
/// Uses Azure REST API version 2023-07-07-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-07-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedGateway_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedGateway = new AzureNative.Scom.ManagedGateway("managedGateway", new()
///     {
///         InstanceName = "myInstance",
///         ManagedGatewayName = "d877b154-9a8d-4bfe-8a24-20682fcf2ed3",
///         ResourceGroupName = "myResGroup",
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
/// 	scom "github.com/pulumi/pulumi-azure-native-sdk/scom/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scom.NewManagedGateway(ctx, "managedGateway", &scom.ManagedGatewayArgs{
/// 			InstanceName:       pulumi.String("myInstance"),
/// 			ManagedGatewayName: pulumi.String("d877b154-9a8d-4bfe-8a24-20682fcf2ed3"),
/// 			ResourceGroupName:  pulumi.String("myResGroup"),
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
/// resource "azure-native_scom_managedgateway" "managedGateway" {
///   instance_name        = "myInstance"
///   managed_gateway_name = "d877b154-9a8d-4bfe-8a24-20682fcf2ed3"
///   resource_group_name  = "myResGroup"
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
/// import com.pulumi.azurenative.scom.ManagedGateway;
/// import com.pulumi.azurenative.scom.ManagedGatewayArgs;
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
///         var managedGateway = new ManagedGateway("managedGateway", ManagedGatewayArgs.builder()
///             .instanceName("myInstance")
///             .managedGatewayName("d877b154-9a8d-4bfe-8a24-20682fcf2ed3")
///             .resourceGroupName("myResGroup")
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
/// const managedGateway = new azure_native.scom.ManagedGateway("managedGateway", {
///     instanceName: "myInstance",
///     managedGatewayName: "d877b154-9a8d-4bfe-8a24-20682fcf2ed3",
///     resourceGroupName: "myResGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_gateway = azure_native.scom.ManagedGateway("managedGateway",
///     instance_name="myInstance",
///     managed_gateway_name="d877b154-9a8d-4bfe-8a24-20682fcf2ed3",
///     resource_group_name="myResGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   managedGateway:
///     type: azure-native:scom:ManagedGateway
///     properties:
///       instanceName: myInstance
///       managedGatewayName: d877b154-9a8d-4bfe-8a24-20682fcf2ed3
///       resourceGroupName: myResGroup
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
/// $ pulumi import azure-native:scom:ManagedGateway d877b154-9a8d-4bfe-8a24-20682fcf2ed3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Scom/managedInstances/{instanceName}/managedGateways/{managedGatewayName}
/// ```
class ManagedGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of a gateway resource.
  late final pulumi.Output<ManagedGatewayPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedGateway]. {@macro pulumi_scom_managed_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedGateway(
    String name, {
    ManagedGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scom:ManagedGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedGatewayPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedGatewayPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
