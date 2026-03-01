import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_backup_policy_args.dart';

/// A Geo backup policy.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2021-11-01, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a database default Geo backup policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var geoBackupPolicy = new AzureNative.Sql.GeoBackupPolicy("geoBackupPolicy", new()
///     {
///         DatabaseName = "testdw",
///         GeoBackupPolicyName = "Default",
///         ResourceGroupName = "sqlcrudtest-4799",
///         ServerName = "sqlcrudtest-5961",
///         State = AzureNative.Sql.GeoBackupPolicyState.Enabled,
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
/// 		_, err := sql.NewGeoBackupPolicy(ctx, "geoBackupPolicy", &sql.GeoBackupPolicyArgs{
/// 			DatabaseName:        pulumi.String("testdw"),
/// 			GeoBackupPolicyName: pulumi.String("Default"),
/// 			ResourceGroupName:   pulumi.String("sqlcrudtest-4799"),
/// 			ServerName:          pulumi.String("sqlcrudtest-5961"),
/// 			State:               sql.GeoBackupPolicyStateEnabled,
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
/// import com.pulumi.azurenative.sql.GeoBackupPolicy;
/// import com.pulumi.azurenative.sql.GeoBackupPolicyArgs;
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
///         var geoBackupPolicy = new GeoBackupPolicy("geoBackupPolicy", GeoBackupPolicyArgs.builder()
///             .databaseName("testdw")
///             .geoBackupPolicyName("Default")
///             .resourceGroupName("sqlcrudtest-4799")
///             .serverName("sqlcrudtest-5961")
///             .state("Enabled")
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
/// const geoBackupPolicy = new azure_native.sql.GeoBackupPolicy("geoBackupPolicy", {
///     databaseName: "testdw",
///     geoBackupPolicyName: "Default",
///     resourceGroupName: "sqlcrudtest-4799",
///     serverName: "sqlcrudtest-5961",
///     state: azure_native.sql.GeoBackupPolicyState.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// geo_backup_policy = azure_native.sql.GeoBackupPolicy("geoBackupPolicy",
///     database_name="testdw",
///     geo_backup_policy_name="Default",
///     resource_group_name="sqlcrudtest-4799",
///     server_name="sqlcrudtest-5961",
///     state=azure_native.sql.GeoBackupPolicyState.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   geoBackupPolicy:
///     type: azure-native:sql:GeoBackupPolicy
///     properties:
///       databaseName: testdw
///       geoBackupPolicyName: Default
///       resourceGroupName: sqlcrudtest-4799
///       serverName: sqlcrudtest-5961
///       state: Enabled
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
/// $ pulumi import azure-native:sql:GeoBackupPolicy Default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/geoBackupPolicies/{geoBackupPolicyName}
/// ```
class GeoBackupPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of geo backup policy.  This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;
  /// Backup policy location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The state of the geo backup policy.
  late final pulumi.Output<String> state;
  /// The storage type of the geo backup policy.
  late final pulumi.Output<String> storageType;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [GeoBackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GeoBackupPolicy]. {@macro pulumi_sql_geo_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GeoBackupPolicy(
    String name, {
    GeoBackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:GeoBackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.state = registerOutput<String>('state');
    this.storageType = registerOutput<String>('storageType');
    this.type = registerOutput<String>('type');
  }
}
