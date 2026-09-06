import 'package:pulumi/pulumi.dart' as pulumi;
import 'transparent_data_encryption_args.dart';

/// A logical database transparent data encryption state.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a database's Transparent Data Encryption state with minimal parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var transparentDataEncryption = new AzureNative.Sql.TransparentDataEncryption("transparentDataEncryption", new()
///     {
///         DatabaseName = "testdb",
///         ResourceGroupName = "securitytde-42-rg",
///         ServerName = "securitytde-42",
///         State = AzureNative.Sql.TransparentDataEncryptionState.Enabled,
///         TdeName = "current",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewTransparentDataEncryption(ctx, "transparentDataEncryption", &sql.TransparentDataEncryptionArgs{
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			ResourceGroupName: pulumi.String("securitytde-42-rg"),
/// 			ServerName:        pulumi.String("securitytde-42"),
/// 			State:             sql.TransparentDataEncryptionStateEnabled,
/// 			TdeName:           pulumi.String("current"),
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
/// resource "azure-native_sql_transparentdataencryption" "transparentDataEncryption" {
///   database_name       = "testdb"
///   resource_group_name = "securitytde-42-rg"
///   server_name         = "securitytde-42"
///   state               = "Enabled"
///   tde_name            = "current"
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
/// import com.pulumi.azurenative.sql.TransparentDataEncryption;
/// import com.pulumi.azurenative.sql.TransparentDataEncryptionArgs;
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
///         var transparentDataEncryption = new TransparentDataEncryption("transparentDataEncryption", TransparentDataEncryptionArgs.builder()
///             .databaseName("testdb")
///             .resourceGroupName("securitytde-42-rg")
///             .serverName("securitytde-42")
///             .state("Enabled")
///             .tdeName("current")
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
/// const transparentDataEncryption = new azure_native.sql.TransparentDataEncryption("transparentDataEncryption", {
///     databaseName: "testdb",
///     resourceGroupName: "securitytde-42-rg",
///     serverName: "securitytde-42",
///     state: azure_native.sql.TransparentDataEncryptionState.Enabled,
///     tdeName: "current",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// transparent_data_encryption = azure_native.sql.TransparentDataEncryption("transparentDataEncryption",
///     database_name="testdb",
///     resource_group_name="securitytde-42-rg",
///     server_name="securitytde-42",
///     state=azure_native.sql.TransparentDataEncryptionState.ENABLED,
///     tde_name="current")
///
/// ```
///
/// ```yaml
/// resources:
///   transparentDataEncryption:
///     type: azure-native:sql:TransparentDataEncryption
///     properties:
///       databaseName: testdb
///       resourceGroupName: securitytde-42-rg
///       serverName: securitytde-42
///       state: Enabled
///       tdeName: current
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
/// $ pulumi import azure-native:sql:TransparentDataEncryption current /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/transparentDataEncryption/{tdeName}
/// ```
class TransparentDataEncryption extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Specifies the state of the transparent data encryption.
  late final pulumi.Output<String> state;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [TransparentDataEncryption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransparentDataEncryption]. {@macro pulumi_sql_transparent_data_encryption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransparentDataEncryption(
    String name, {
    TransparentDataEncryptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:TransparentDataEncryption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [TransparentDataEncryption] resource.
  TransparentDataEncryption.reference(String urn)
    : super(
        'azure-native:sql:TransparentDataEncryption',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
