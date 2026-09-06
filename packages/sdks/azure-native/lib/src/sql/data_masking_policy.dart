import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_policy_args.dart';

/// A database data masking policy.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2021-11-01, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update data masking policy max
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataMaskingPolicy = new AzureNative.Sql.DataMaskingPolicy("dataMaskingPolicy", new()
///     {
///         DataMaskingPolicyName = "Default",
///         DataMaskingState = AzureNative.Sql.DataMaskingState.Enabled,
///         DatabaseName = "sqlcrudtest-331",
///         ExemptPrincipals = "testuser;",
///         ResourceGroupName = "sqlcrudtest-6852",
///         ServerName = "sqlcrudtest-2080",
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
/// 		_, err := sql.NewDataMaskingPolicy(ctx, "dataMaskingPolicy", &sql.DataMaskingPolicyArgs{
/// 			DataMaskingPolicyName: pulumi.String("Default"),
/// 			DataMaskingState:      sql.DataMaskingStateEnabled,
/// 			DatabaseName:          pulumi.String("sqlcrudtest-331"),
/// 			ExemptPrincipals:      pulumi.String("testuser;"),
/// 			ResourceGroupName:     pulumi.String("sqlcrudtest-6852"),
/// 			ServerName:            pulumi.String("sqlcrudtest-2080"),
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
/// resource "azure-native_sql_datamaskingpolicy" "dataMaskingPolicy" {
///   data_masking_policy_name = "Default"
///   data_masking_state       = "Enabled"
///   database_name            = "sqlcrudtest-331"
///   exempt_principals        = "testuser;"
///   resource_group_name      = "sqlcrudtest-6852"
///   server_name              = "sqlcrudtest-2080"
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
/// import com.pulumi.azurenative.sql.DataMaskingPolicy;
/// import com.pulumi.azurenative.sql.DataMaskingPolicyArgs;
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
///         var dataMaskingPolicy = new DataMaskingPolicy("dataMaskingPolicy", DataMaskingPolicyArgs.builder()
///             .dataMaskingPolicyName("Default")
///             .dataMaskingState("Enabled")
///             .databaseName("sqlcrudtest-331")
///             .exemptPrincipals("testuser;")
///             .resourceGroupName("sqlcrudtest-6852")
///             .serverName("sqlcrudtest-2080")
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
/// const dataMaskingPolicy = new azure_native.sql.DataMaskingPolicy("dataMaskingPolicy", {
///     dataMaskingPolicyName: "Default",
///     dataMaskingState: azure_native.sql.DataMaskingState.Enabled,
///     databaseName: "sqlcrudtest-331",
///     exemptPrincipals: "testuser;",
///     resourceGroupName: "sqlcrudtest-6852",
///     serverName: "sqlcrudtest-2080",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_masking_policy = azure_native.sql.DataMaskingPolicy("dataMaskingPolicy",
///     data_masking_policy_name="Default",
///     data_masking_state=azure_native.sql.DataMaskingState.ENABLED,
///     database_name="sqlcrudtest-331",
///     exempt_principals="testuser;",
///     resource_group_name="sqlcrudtest-6852",
///     server_name="sqlcrudtest-2080")
///
/// ```
///
/// ```yaml
/// resources:
///   dataMaskingPolicy:
///     type: azure-native:sql:DataMaskingPolicy
///     properties:
///       dataMaskingPolicyName: Default
///       dataMaskingState: Enabled
///       databaseName: sqlcrudtest-331
///       exemptPrincipals: testuser;
///       resourceGroupName: sqlcrudtest-6852
///       serverName: sqlcrudtest-2080
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update data masking policy min.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataMaskingPolicy = new AzureNative.Sql.DataMaskingPolicy("dataMaskingPolicy", new()
///     {
///         DataMaskingPolicyName = "Default",
///         DataMaskingState = AzureNative.Sql.DataMaskingState.Enabled,
///         DatabaseName = "sqlcrudtest-331",
///         ResourceGroupName = "sqlcrudtest-6852",
///         ServerName = "sqlcrudtest-2080",
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
/// 		_, err := sql.NewDataMaskingPolicy(ctx, "dataMaskingPolicy", &sql.DataMaskingPolicyArgs{
/// 			DataMaskingPolicyName: pulumi.String("Default"),
/// 			DataMaskingState:      sql.DataMaskingStateEnabled,
/// 			DatabaseName:          pulumi.String("sqlcrudtest-331"),
/// 			ResourceGroupName:     pulumi.String("sqlcrudtest-6852"),
/// 			ServerName:            pulumi.String("sqlcrudtest-2080"),
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
/// resource "azure-native_sql_datamaskingpolicy" "dataMaskingPolicy" {
///   data_masking_policy_name = "Default"
///   data_masking_state       = "Enabled"
///   database_name            = "sqlcrudtest-331"
///   resource_group_name      = "sqlcrudtest-6852"
///   server_name              = "sqlcrudtest-2080"
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
/// import com.pulumi.azurenative.sql.DataMaskingPolicy;
/// import com.pulumi.azurenative.sql.DataMaskingPolicyArgs;
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
///         var dataMaskingPolicy = new DataMaskingPolicy("dataMaskingPolicy", DataMaskingPolicyArgs.builder()
///             .dataMaskingPolicyName("Default")
///             .dataMaskingState("Enabled")
///             .databaseName("sqlcrudtest-331")
///             .resourceGroupName("sqlcrudtest-6852")
///             .serverName("sqlcrudtest-2080")
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
/// const dataMaskingPolicy = new azure_native.sql.DataMaskingPolicy("dataMaskingPolicy", {
///     dataMaskingPolicyName: "Default",
///     dataMaskingState: azure_native.sql.DataMaskingState.Enabled,
///     databaseName: "sqlcrudtest-331",
///     resourceGroupName: "sqlcrudtest-6852",
///     serverName: "sqlcrudtest-2080",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_masking_policy = azure_native.sql.DataMaskingPolicy("dataMaskingPolicy",
///     data_masking_policy_name="Default",
///     data_masking_state=azure_native.sql.DataMaskingState.ENABLED,
///     database_name="sqlcrudtest-331",
///     resource_group_name="sqlcrudtest-6852",
///     server_name="sqlcrudtest-2080")
///
/// ```
///
/// ```yaml
/// resources:
///   dataMaskingPolicy:
///     type: azure-native:sql:DataMaskingPolicy
///     properties:
///       dataMaskingPolicyName: Default
///       dataMaskingState: Enabled
///       databaseName: sqlcrudtest-331
///       resourceGroupName: sqlcrudtest-6852
///       serverName: sqlcrudtest-2080
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
/// $ pulumi import azure-native:sql:DataMaskingPolicy Default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/dataMaskingPolicies/{dataMaskingPolicyName}
/// ```
class DataMaskingPolicy extends pulumi.CustomResource {
  /// The list of the application principals. This is a legacy parameter and is no longer used.
  late final pulumi.Output<String> applicationPrincipals;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The state of the data masking policy.
  late final pulumi.Output<String> dataMaskingState;
  /// The list of the exempt principals. Specifies the semicolon-separated list of database users for which the data masking policy does not apply. The specified users receive data results without masking for all of the database queries.
  late final pulumi.Output<String?> exemptPrincipals;
  /// The kind of Data Masking Policy. Metadata, used for Azure portal.
  late final pulumi.Output<String> kind;
  /// The location of the data masking policy.
  late final pulumi.Output<String> location;
  /// The masking level. This is a legacy parameter and is no longer used.
  late final pulumi.Output<String> maskingLevel;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DataMaskingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataMaskingPolicy]. {@macro pulumi_sql_data_masking_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataMaskingPolicy(
    String name, {
    DataMaskingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:DataMaskingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationPrincipals = registerOutput<String>('applicationPrincipals');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataMaskingState = registerOutput<String>('dataMaskingState');
    exemptPrincipals = registerOutput<String?>('exemptPrincipals');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    maskingLevel = registerOutput<String>('maskingLevel');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DataMaskingPolicy] resource.
  DataMaskingPolicy.reference(String urn)
    : super(
        'azure-native:sql:DataMaskingPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationPrincipals = registerOutput<String>('applicationPrincipals');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataMaskingState = registerOutput<String>('dataMaskingState');
    exemptPrincipals = registerOutput<String?>('exemptPrincipals');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    maskingLevel = registerOutput<String>('maskingLevel');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
