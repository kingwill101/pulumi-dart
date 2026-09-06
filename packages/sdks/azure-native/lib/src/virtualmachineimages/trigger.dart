import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'trigger_args.dart';
import 'trigger_status_response.dart';

/// Represents a trigger that can invoke an image template build.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2022-07-01.
///
/// Other available API versions: 2022-07-01, 2023-07-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native virtualmachineimages [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a source image type trigger
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trigger = new AzureNative.VirtualMachineImages.Trigger("trigger", new()
///     {
///         ImageTemplateName = "myImageTemplate",
///         Kind = "SourceImage",
///         ResourceGroupName = "myResourceGroup",
///         TriggerName = "source",
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
/// 	virtualmachineimages "github.com/pulumi/pulumi-azure-native-sdk/virtualmachineimages/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := virtualmachineimages.NewTrigger(ctx, "trigger", &virtualmachineimages.TriggerArgs{
/// 			ImageTemplateName: pulumi.String("myImageTemplate"),
/// 			Kind:              pulumi.String("SourceImage"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			TriggerName:       pulumi.String("source"),
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
/// resource "azure-native_virtualmachineimages_trigger" "trigger" {
///   image_template_name = "myImageTemplate"
///   kind                = "SourceImage"
///   resource_group_name = "myResourceGroup"
///   trigger_name        = "source"
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
/// import com.pulumi.azurenative.virtualmachineimages.Trigger;
/// import com.pulumi.azurenative.virtualmachineimages.TriggerArgs;
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
///         var trigger = new Trigger("trigger", TriggerArgs.builder()
///             .imageTemplateName("myImageTemplate")
///             .kind("SourceImage")
///             .resourceGroupName("myResourceGroup")
///             .triggerName("source")
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
/// const trigger = new azure_native.virtualmachineimages.Trigger("trigger", {
///     imageTemplateName: "myImageTemplate",
///     kind: "SourceImage",
///     resourceGroupName: "myResourceGroup",
///     triggerName: "source",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// trigger = azure_native.virtualmachineimages.Trigger("trigger",
///     image_template_name="myImageTemplate",
///     kind="SourceImage",
///     resource_group_name="myResourceGroup",
///     trigger_name="source")
///
/// ```
///
/// ```yaml
/// resources:
///   trigger:
///     type: azure-native:virtualmachineimages:Trigger
///     properties:
///       imageTemplateName: myImageTemplate
///       kind: SourceImage
///       resourceGroupName: myResourceGroup
///       triggerName: source
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
/// $ pulumi import azure-native:virtualmachineimages:Trigger source /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VirtualMachineImages/imageTemplates/{imageTemplateName}/triggers/{triggerName}
/// ```
class Trigger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The kind of trigger.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource
  late final pulumi.Output<String> provisioningState;
  /// Trigger status
  late final pulumi.Output<TriggerStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_virtualmachineimages_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:virtualmachineimages:Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<TriggerStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Trigger] resource.
  Trigger.reference(String urn)
    : super(
        'azure-native:virtualmachineimages:Trigger',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<TriggerStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
