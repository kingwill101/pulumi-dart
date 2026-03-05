import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'system_data_response.dart';

/// Secret represents a secret.
///
/// Uses Azure REST API version 2023-11-22. In version 2.x of the Azure Native provider, it used API version 2022-09-04.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a Secret with the specified subscription, resource group and resource name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new AzureNative.RedHatOpenShift.Secret("secret", new()
///     {
///         ChildResourceName = "childResourceName",
///         ResourceGroupName = "resourceGroup",
///         ResourceName = "resourceName",
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
/// 		_, err := redhatopenshift.NewSecret(ctx, "secret", &redhatopenshift.SecretArgs{
/// 			ChildResourceName: pulumi.String("childResourceName"),
/// 			ResourceGroupName: pulumi.String("resourceGroup"),
/// 			ResourceName:      pulumi.String("resourceName"),
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
/// import com.pulumi.azurenative.redhatopenshift.Secret;
/// import com.pulumi.azurenative.redhatopenshift.SecretArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .childResourceName("childResourceName")
///             .resourceGroupName("resourceGroup")
///             .resourceName("resourceName")
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
/// const secret = new azure_native.redhatopenshift.Secret("secret", {
///     childResourceName: "childResourceName",
///     resourceGroupName: "resourceGroup",
///     resourceName: "resourceName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secret = azure_native.redhatopenshift.Secret("secret",
///     child_resource_name="childResourceName",
///     resource_group_name="resourceGroup",
///     resource_name_="resourceName")
///
/// ```
///
/// ```yaml
/// resources:
///   secret:
///     type: azure-native:redhatopenshift:Secret
///     properties:
///       childResourceName: childResourceName
///       resourceGroupName: resourceGroup
///       resourceName: resourceName
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
/// $ pulumi import azure-native:redhatopenshift:Secret mySecret /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RedHatOpenShift/openshiftclusters/{resourceName}/secret/{childResourceName}
/// ```
class Secret extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The Secrets Resources.
  late final pulumi.Output<String?> secretResources;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_redhatopenshift_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(String name, {SecretArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:redhatopenshift:Secret',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    secretResources = registerOutput<String?>('secretResources');
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
    type = registerOutput<String>('type');
  }
}
