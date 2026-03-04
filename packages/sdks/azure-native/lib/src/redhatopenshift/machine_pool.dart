import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_pool_args.dart';
import 'system_data_response.dart';

/// MachinePool represents a MachinePool
///
/// Uses Azure REST API version 2023-11-22. In version 2.x of the Azure Native provider, it used API version 2022-09-04.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a MachinePool with the specified subscription, resource group and resource name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machinePool = new AzureNative.RedHatOpenShift.MachinePool("machinePool", new()
///     {
///         ChildResourceName = "childResourceName",
///         ResourceGroupName = "resourceGroup",
///         ResourceName = "resourceName",
///         Resources = "ewogICAgImFwaVZlcnNpb24iOiAiaGl2ZS5vcGVuc2hpZnQuaW8vdjEiLAogICAgImtpbmQiOiAiTWFjaGluZVBvb2wiLAogICAgIm1ldGFkYXRhIjogewogICAgICAgICJuYW1lIjogInRlc3QtY2x1c3Rlci13b3JrZXIiLAogICAgICAgICJuYW1lc3BhY2UiOiAiYXJvLWY2MGFlOGEyLWJjYTEtNDk4Ny05MDU2LVhYWFhYWFhYWFhYWCIKICAgIH0sCiAgICAic3BlYyI6IHsKICAgICAgICAiY2x1c3RlckRlcGxveW1lbnRSZWYiOiB7CiAgICAgICAgICAgICJuYW1lIjogInRlc3QtY2x1c3RlciIKICAgICAgICB9LAogICAgICAgICJuYW1lIjogIndvcmtlciIsCiAgICAgICAgInBsYXRmb3JtIjogewogICAgICAgICAgICAiYXdzIjogewogICAgICAgICAgICAgICAgInJvb3RWb2x1bWUiOiB7CiAgICAgICAgICAgICAgICAgICAgImlvcHMiOiAwLAogICAgICAgICAgICAgICAgICAgICJzaXplIjogMzAwLAogICAgICAgICAgICAgICAgICAgICJ0eXBlIjogImdwMyIKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAidHlwZSI6ICJtNS54bGFyZ2UiLAogICAgICAgICAgICAgICAgInpvbmVzIjogWwogICAgICAgICAgICAgICAgICAgICJ1cy1lYXN0LTFhIgogICAgICAgICAgICAgICAgXQogICAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICAicmVwbGljYXMiOiAyCiAgICB9LAogICAgInN0YXR1cyI6IHsKICAgICAgICAiY29uZGl0aW9ucyI6IFsKICAgICAgICBdCiAgICB9Cn0K",
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
/// 	redhatopenshift "github.com/pulumi/pulumi-azure-native-sdk/redhatopenshift/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redhatopenshift.NewMachinePool(ctx, "machinePool", &redhatopenshift.MachinePoolArgs{
/// 			ChildResourceName: pulumi.String("childResourceName"),
/// 			ResourceGroupName: pulumi.String("resourceGroup"),
/// 			ResourceName:      pulumi.String("resourceName"),
/// 			Resources:         pulumi.String("ewogICAgImFwaVZlcnNpb24iOiAiaGl2ZS5vcGVuc2hpZnQuaW8vdjEiLAogICAgImtpbmQiOiAiTWFjaGluZVBvb2wiLAogICAgIm1ldGFkYXRhIjogewogICAgICAgICJuYW1lIjogInRlc3QtY2x1c3Rlci13b3JrZXIiLAogICAgICAgICJuYW1lc3BhY2UiOiAiYXJvLWY2MGFlOGEyLWJjYTEtNDk4Ny05MDU2LVhYWFhYWFhYWFhYWCIKICAgIH0sCiAgICAic3BlYyI6IHsKICAgICAgICAiY2x1c3RlckRlcGxveW1lbnRSZWYiOiB7CiAgICAgICAgICAgICJuYW1lIjogInRlc3QtY2x1c3RlciIKICAgICAgICB9LAogICAgICAgICJuYW1lIjogIndvcmtlciIsCiAgICAgICAgInBsYXRmb3JtIjogewogICAgICAgICAgICAiYXdzIjogewogICAgICAgICAgICAgICAgInJvb3RWb2x1bWUiOiB7CiAgICAgICAgICAgICAgICAgICAgImlvcHMiOiAwLAogICAgICAgICAgICAgICAgICAgICJzaXplIjogMzAwLAogICAgICAgICAgICAgICAgICAgICJ0eXBlIjogImdwMyIKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAidHlwZSI6ICJtNS54bGFyZ2UiLAogICAgICAgICAgICAgICAgInpvbmVzIjogWwogICAgICAgICAgICAgICAgICAgICJ1cy1lYXN0LTFhIgogICAgICAgICAgICAgICAgXQogICAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICAicmVwbGljYXMiOiAyCiAgICB9LAogICAgInN0YXR1cyI6IHsKICAgICAgICAiY29uZGl0aW9ucyI6IFsKICAgICAgICBdCiAgICB9Cn0K"),
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
/// import com.pulumi.azurenative.redhatopenshift.MachinePool;
/// import com.pulumi.azurenative.redhatopenshift.MachinePoolArgs;
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
///         var machinePool = new MachinePool("machinePool", MachinePoolArgs.builder()
///             .childResourceName("childResourceName")
///             .resourceGroupName("resourceGroup")
///             .resourceName("resourceName")
///             .resources("ewogICAgImFwaVZlcnNpb24iOiAiaGl2ZS5vcGVuc2hpZnQuaW8vdjEiLAogICAgImtpbmQiOiAiTWFjaGluZVBvb2wiLAogICAgIm1ldGFkYXRhIjogewogICAgICAgICJuYW1lIjogInRlc3QtY2x1c3Rlci13b3JrZXIiLAogICAgICAgICJuYW1lc3BhY2UiOiAiYXJvLWY2MGFlOGEyLWJjYTEtNDk4Ny05MDU2LVhYWFhYWFhYWFhYWCIKICAgIH0sCiAgICAic3BlYyI6IHsKICAgICAgICAiY2x1c3RlckRlcGxveW1lbnRSZWYiOiB7CiAgICAgICAgICAgICJuYW1lIjogInRlc3QtY2x1c3RlciIKICAgICAgICB9LAogICAgICAgICJuYW1lIjogIndvcmtlciIsCiAgICAgICAgInBsYXRmb3JtIjogewogICAgICAgICAgICAiYXdzIjogewogICAgICAgICAgICAgICAgInJvb3RWb2x1bWUiOiB7CiAgICAgICAgICAgICAgICAgICAgImlvcHMiOiAwLAogICAgICAgICAgICAgICAgICAgICJzaXplIjogMzAwLAogICAgICAgICAgICAgICAgICAgICJ0eXBlIjogImdwMyIKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAidHlwZSI6ICJtNS54bGFyZ2UiLAogICAgICAgICAgICAgICAgInpvbmVzIjogWwogICAgICAgICAgICAgICAgICAgICJ1cy1lYXN0LTFhIgogICAgICAgICAgICAgICAgXQogICAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICAicmVwbGljYXMiOiAyCiAgICB9LAogICAgInN0YXR1cyI6IHsKICAgICAgICAiY29uZGl0aW9ucyI6IFsKICAgICAgICBdCiAgICB9Cn0K")
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
/// const machinePool = new azure_native.redhatopenshift.MachinePool("machinePool", {
///     childResourceName: "childResourceName",
///     resourceGroupName: "resourceGroup",
///     resourceName: "resourceName",
///     resources: "ewogICAgImFwaVZlcnNpb24iOiAiaGl2ZS5vcGVuc2hpZnQuaW8vdjEiLAogICAgImtpbmQiOiAiTWFjaGluZVBvb2wiLAogICAgIm1ldGFkYXRhIjogewogICAgICAgICJuYW1lIjogInRlc3QtY2x1c3Rlci13b3JrZXIiLAogICAgICAgICJuYW1lc3BhY2UiOiAiYXJvLWY2MGFlOGEyLWJjYTEtNDk4Ny05MDU2LVhYWFhYWFhYWFhYWCIKICAgIH0sCiAgICAic3BlYyI6IHsKICAgICAgICAiY2x1c3RlckRlcGxveW1lbnRSZWYiOiB7CiAgICAgICAgICAgICJuYW1lIjogInRlc3QtY2x1c3RlciIKICAgICAgICB9LAogICAgICAgICJuYW1lIjogIndvcmtlciIsCiAgICAgICAgInBsYXRmb3JtIjogewogICAgICAgICAgICAiYXdzIjogewogICAgICAgICAgICAgICAgInJvb3RWb2x1bWUiOiB7CiAgICAgICAgICAgICAgICAgICAgImlvcHMiOiAwLAogICAgICAgICAgICAgICAgICAgICJzaXplIjogMzAwLAogICAgICAgICAgICAgICAgICAgICJ0eXBlIjogImdwMyIKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAidHlwZSI6ICJtNS54bGFyZ2UiLAogICAgICAgICAgICAgICAgInpvbmVzIjogWwogICAgICAgICAgICAgICAgICAgICJ1cy1lYXN0LTFhIgogICAgICAgICAgICAgICAgXQogICAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICAicmVwbGljYXMiOiAyCiAgICB9LAogICAgInN0YXR1cyI6IHsKICAgICAgICAiY29uZGl0aW9ucyI6IFsKICAgICAgICBdCiAgICB9Cn0K",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_pool = azure_native.redhatopenshift.MachinePool("machinePool",
///     child_resource_name="childResourceName",
///     resource_group_name="resourceGroup",
///     resource_name_="resourceName",
///     resources="ewogICAgImFwaVZlcnNpb24iOiAiaGl2ZS5vcGVuc2hpZnQuaW8vdjEiLAogICAgImtpbmQiOiAiTWFjaGluZVBvb2wiLAogICAgIm1ldGFkYXRhIjogewogICAgICAgICJuYW1lIjogInRlc3QtY2x1c3Rlci13b3JrZXIiLAogICAgICAgICJuYW1lc3BhY2UiOiAiYXJvLWY2MGFlOGEyLWJjYTEtNDk4Ny05MDU2LVhYWFhYWFhYWFhYWCIKICAgIH0sCiAgICAic3BlYyI6IHsKICAgICAgICAiY2x1c3RlckRlcGxveW1lbnRSZWYiOiB7CiAgICAgICAgICAgICJuYW1lIjogInRlc3QtY2x1c3RlciIKICAgICAgICB9LAogICAgICAgICJuYW1lIjogIndvcmtlciIsCiAgICAgICAgInBsYXRmb3JtIjogewogICAgICAgICAgICAiYXdzIjogewogICAgICAgICAgICAgICAgInJvb3RWb2x1bWUiOiB7CiAgICAgICAgICAgICAgICAgICAgImlvcHMiOiAwLAogICAgICAgICAgICAgICAgICAgICJzaXplIjogMzAwLAogICAgICAgICAgICAgICAgICAgICJ0eXBlIjogImdwMyIKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAidHlwZSI6ICJtNS54bGFyZ2UiLAogICAgICAgICAgICAgICAgInpvbmVzIjogWwogICAgICAgICAgICAgICAgICAgICJ1cy1lYXN0LTFhIgogICAgICAgICAgICAgICAgXQogICAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICAicmVwbGljYXMiOiAyCiAgICB9LAogICAgInN0YXR1cyI6IHsKICAgICAgICAiY29uZGl0aW9ucyI6IFsKICAgICAgICBdCiAgICB9Cn0K")
///
/// ```
///
/// ```yaml
/// resources:
///   machinePool:
///     type: azure-native:redhatopenshift:MachinePool
///     properties:
///       childResourceName: childResourceName
///       resourceGroupName: resourceGroup
///       resourceName: resourceName
///       resources: ewogICAgImFwaVZlcnNpb24iOiAiaGl2ZS5vcGVuc2hpZnQuaW8vdjEiLAogICAgImtpbmQiOiAiTWFjaGluZVBvb2wiLAogICAgIm1ldGFkYXRhIjogewogICAgICAgICJuYW1lIjogInRlc3QtY2x1c3Rlci13b3JrZXIiLAogICAgICAgICJuYW1lc3BhY2UiOiAiYXJvLWY2MGFlOGEyLWJjYTEtNDk4Ny05MDU2LVhYWFhYWFhYWFhYWCIKICAgIH0sCiAgICAic3BlYyI6IHsKICAgICAgICAiY2x1c3RlckRlcGxveW1lbnRSZWYiOiB7CiAgICAgICAgICAgICJuYW1lIjogInRlc3QtY2x1c3RlciIKICAgICAgICB9LAogICAgICAgICJuYW1lIjogIndvcmtlciIsCiAgICAgICAgInBsYXRmb3JtIjogewogICAgICAgICAgICAiYXdzIjogewogICAgICAgICAgICAgICAgInJvb3RWb2x1bWUiOiB7CiAgICAgICAgICAgICAgICAgICAgImlvcHMiOiAwLAogICAgICAgICAgICAgICAgICAgICJzaXplIjogMzAwLAogICAgICAgICAgICAgICAgICAgICJ0eXBlIjogImdwMyIKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAidHlwZSI6ICJtNS54bGFyZ2UiLAogICAgICAgICAgICAgICAgInpvbmVzIjogWwogICAgICAgICAgICAgICAgICAgICJ1cy1lYXN0LTFhIgogICAgICAgICAgICAgICAgXQogICAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICAicmVwbGljYXMiOiAyCiAgICB9LAogICAgInN0YXR1cyI6IHsKICAgICAgICAiY29uZGl0aW9ucyI6IFsKICAgICAgICBdCiAgICB9Cn0K
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
/// $ pulumi import azure-native:redhatopenshift:MachinePool myMachinePool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RedHatOpenShift/openshiftclusters/{resourceName}/machinePool/{childResourceName}
/// ```
class MachinePool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> resources;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MachinePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachinePool]. {@macro pulumi_redhatopenshift_machine_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachinePool(
    String name, {
    MachinePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:redhatopenshift:MachinePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    resources = registerOutput<String?>('resources');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
