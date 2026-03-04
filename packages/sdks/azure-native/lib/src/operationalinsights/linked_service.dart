import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_args.dart';

/// The top level Linked service resource container.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2020-08-01.
///
/// Other available API versions: 2015-11-01-preview, 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LinkedServicesCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedService = new AzureNative.OperationalInsights.LinkedService("linkedService", new()
///     {
///         LinkedServiceName = "Cluster",
///         ResourceGroupName = "mms-eus",
///         WorkspaceName = "TestLinkWS",
///         WriteAccessResourceId = "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/clusters/testcluster",
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewLinkedService(ctx, "linkedService", &operationalinsights.LinkedServiceArgs{
/// 			LinkedServiceName:     pulumi.String("Cluster"),
/// 			ResourceGroupName:     pulumi.String("mms-eus"),
/// 			WorkspaceName:         pulumi.String("TestLinkWS"),
/// 			WriteAccessResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/clusters/testcluster"),
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
/// import com.pulumi.azurenative.operationalinsights.LinkedService;
/// import com.pulumi.azurenative.operationalinsights.LinkedServiceArgs;
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
///         var linkedService = new LinkedService("linkedService", LinkedServiceArgs.builder()
///             .linkedServiceName("Cluster")
///             .resourceGroupName("mms-eus")
///             .workspaceName("TestLinkWS")
///             .writeAccessResourceId("/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/clusters/testcluster")
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
/// const linkedService = new azure_native.operationalinsights.LinkedService("linkedService", {
///     linkedServiceName: "Cluster",
///     resourceGroupName: "mms-eus",
///     workspaceName: "TestLinkWS",
///     writeAccessResourceId: "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/clusters/testcluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_service = azure_native.operationalinsights.LinkedService("linkedService",
///     linked_service_name="Cluster",
///     resource_group_name="mms-eus",
///     workspace_name="TestLinkWS",
///     write_access_resource_id="/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/clusters/testcluster")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedService:
///     type: azure-native:operationalinsights:LinkedService
///     properties:
///       linkedServiceName: Cluster
///       resourceGroupName: mms-eus
///       workspaceName: TestLinkWS
///       writeAccessResourceId: /subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/clusters/testcluster
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
/// $ pulumi import azure-native:operationalinsights:LinkedService TestLinkWS/Cluster /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/linkedServices/{linkedServiceName}
/// ```
class LinkedService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the linked service.
  late final pulumi.Output<String?> provisioningState;

  /// The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access
  late final pulumi.Output<String?> resourceId;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access
  late final pulumi.Output<String?> writeAccessResourceId;

  /// Creates a new [LinkedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedService]. {@macro pulumi_operationalinsights_linked_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedService(
    String name, {
    LinkedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:operationalinsights:LinkedService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    resourceId = registerOutput<String?>('resourceId');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    writeAccessResourceId = registerOutput<String?>('writeAccessResourceId');
  }
}
