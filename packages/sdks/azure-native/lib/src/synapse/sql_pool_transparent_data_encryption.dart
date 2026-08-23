import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_transparent_data_encryption_args.dart';

/// Represents a Sql pool transparent data encryption configuration.
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Sql pool's transparent data encryption configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlPoolTransparentDataEncryption = new AzureNative.Synapse.SqlPoolTransparentDataEncryption("sqlPoolTransparentDataEncryption", new()
///     {
///         ResourceGroupName = "sqlcrudtest-6852",
///         SqlPoolName = "sqlcrudtest-9187",
///         Status = AzureNative.Synapse.TransparentDataEncryptionStatus.Enabled,
///         TransparentDataEncryptionName = "current",
///         WorkspaceName = "sqlcrudtest-2080",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewSqlPoolTransparentDataEncryption(ctx, "sqlPoolTransparentDataEncryption", &synapse.SqlPoolTransparentDataEncryptionArgs{
/// 			ResourceGroupName:             pulumi.String("sqlcrudtest-6852"),
/// 			SqlPoolName:                   pulumi.String("sqlcrudtest-9187"),
/// 			Status:                        pulumi.String(synapse.TransparentDataEncryptionStatusEnabled),
/// 			TransparentDataEncryptionName: pulumi.String("current"),
/// 			WorkspaceName:                 pulumi.String("sqlcrudtest-2080"),
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
/// resource "azure-native_synapse_sqlpooltransparentdataencryption" "sqlPoolTransparentDataEncryption" {
///   resource_group_name              = "sqlcrudtest-6852"
///   sql_pool_name                    = "sqlcrudtest-9187"
///   status                           = "Enabled"
///   transparent_data_encryption_name = "current"
///   workspace_name                   = "sqlcrudtest-2080"
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
/// import com.pulumi.azurenative.synapse.SqlPoolTransparentDataEncryption;
/// import com.pulumi.azurenative.synapse.SqlPoolTransparentDataEncryptionArgs;
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
///         var sqlPoolTransparentDataEncryption = new SqlPoolTransparentDataEncryption("sqlPoolTransparentDataEncryption", SqlPoolTransparentDataEncryptionArgs.builder()
///             .resourceGroupName("sqlcrudtest-6852")
///             .sqlPoolName("sqlcrudtest-9187")
///             .status("Enabled")
///             .transparentDataEncryptionName("current")
///             .workspaceName("sqlcrudtest-2080")
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
/// const sqlPoolTransparentDataEncryption = new azure_native.synapse.SqlPoolTransparentDataEncryption("sqlPoolTransparentDataEncryption", {
///     resourceGroupName: "sqlcrudtest-6852",
///     sqlPoolName: "sqlcrudtest-9187",
///     status: azure_native.synapse.TransparentDataEncryptionStatus.Enabled,
///     transparentDataEncryptionName: "current",
///     workspaceName: "sqlcrudtest-2080",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_pool_transparent_data_encryption = azure_native.synapse.SqlPoolTransparentDataEncryption("sqlPoolTransparentDataEncryption",
///     resource_group_name="sqlcrudtest-6852",
///     sql_pool_name="sqlcrudtest-9187",
///     status=azure_native.synapse.TransparentDataEncryptionStatus.ENABLED,
///     transparent_data_encryption_name="current",
///     workspace_name="sqlcrudtest-2080")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlPoolTransparentDataEncryption:
///     type: azure-native:synapse:SqlPoolTransparentDataEncryption
///     properties:
///       resourceGroupName: sqlcrudtest-6852
///       sqlPoolName: sqlcrudtest-9187
///       status: Enabled
///       transparentDataEncryptionName: current
///       workspaceName: sqlcrudtest-2080
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
/// $ pulumi import azure-native:synapse:SqlPoolTransparentDataEncryption current /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/sqlPools/{sqlPoolName}/transparentDataEncryption/{transparentDataEncryptionName}
/// ```
class SqlPoolTransparentDataEncryption extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the database transparent data encryption.
  late final pulumi.Output<String?> status;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlPoolTransparentDataEncryption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPoolTransparentDataEncryption]. {@macro pulumi_synapse_sql_pool_transparent_data_encryption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPoolTransparentDataEncryption(
    String name, {
    SqlPoolTransparentDataEncryptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:SqlPoolTransparentDataEncryption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    status = registerOutput<String?>('status');
    type = registerOutput<String>('type');
  }
}
