import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_administrator_args.dart';

/// An Azure SQL managed instance administrator.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create administrator of managed instance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedInstanceAdministrator = new AzureNative.Sql.ManagedInstanceAdministrator("managedInstanceAdministrator", new()
///     {
///         AdministratorName = "ActiveDirectory",
///         AdministratorType = AzureNative.Sql.ManagedInstanceAdministratorType.ActiveDirectory,
///         Login = "bob@contoso.com",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         Sid = "44444444-3333-2222-1111-000000000000",
///         TenantId = "55555555-4444-3333-2222-111111111111",
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
/// 		_, err := sql.NewManagedInstanceAdministrator(ctx, "managedInstanceAdministrator", &sql.ManagedInstanceAdministratorArgs{
/// 			AdministratorName:   pulumi.String("ActiveDirectory"),
/// 			AdministratorType:   pulumi.String(sql.ManagedInstanceAdministratorTypeActiveDirectory),
/// 			Login:               pulumi.String("bob@contoso.com"),
/// 			ManagedInstanceName: pulumi.String("managedInstance"),
/// 			ResourceGroupName:   pulumi.String("Default-SQL-SouthEastAsia"),
/// 			Sid:                 pulumi.String("44444444-3333-2222-1111-000000000000"),
/// 			TenantId:            pulumi.String("55555555-4444-3333-2222-111111111111"),
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
/// import com.pulumi.azurenative.sql.ManagedInstanceAdministrator;
/// import com.pulumi.azurenative.sql.ManagedInstanceAdministratorArgs;
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
///         var managedInstanceAdministrator = new ManagedInstanceAdministrator("managedInstanceAdministrator", ManagedInstanceAdministratorArgs.builder()
///             .administratorName("ActiveDirectory")
///             .administratorType("ActiveDirectory")
///             .login("bob@contoso.com")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .sid("44444444-3333-2222-1111-000000000000")
///             .tenantId("55555555-4444-3333-2222-111111111111")
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
/// const managedInstanceAdministrator = new azure_native.sql.ManagedInstanceAdministrator("managedInstanceAdministrator", {
///     administratorName: "ActiveDirectory",
///     administratorType: azure_native.sql.ManagedInstanceAdministratorType.ActiveDirectory,
///     login: "bob@contoso.com",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     sid: "44444444-3333-2222-1111-000000000000",
///     tenantId: "55555555-4444-3333-2222-111111111111",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_instance_administrator = azure_native.sql.ManagedInstanceAdministrator("managedInstanceAdministrator",
///     administrator_name="ActiveDirectory",
///     administrator_type=azure_native.sql.ManagedInstanceAdministratorType.ACTIVE_DIRECTORY,
///     login="bob@contoso.com",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     sid="44444444-3333-2222-1111-000000000000",
///     tenant_id="55555555-4444-3333-2222-111111111111")
///
/// ```
///
/// ```yaml
/// resources:
///   managedInstanceAdministrator:
///     type: azure-native:sql:ManagedInstanceAdministrator
///     properties:
///       administratorName: ActiveDirectory
///       administratorType: ActiveDirectory
///       login: bob@contoso.com
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       sid: 44444444-3333-2222-1111-000000000000
///       tenantId: 55555555-4444-3333-2222-111111111111
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update administrator of managed instance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedInstanceAdministrator = new AzureNative.Sql.ManagedInstanceAdministrator("managedInstanceAdministrator", new()
///     {
///         AdministratorName = "ActiveDirectory",
///         AdministratorType = AzureNative.Sql.ManagedInstanceAdministratorType.ActiveDirectory,
///         Login = "bob@contoso.com",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         Sid = "44444444-3333-2222-1111-000000000000",
///         TenantId = "55555555-4444-3333-2222-111111111111",
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
/// 		_, err := sql.NewManagedInstanceAdministrator(ctx, "managedInstanceAdministrator", &sql.ManagedInstanceAdministratorArgs{
/// 			AdministratorName:   pulumi.String("ActiveDirectory"),
/// 			AdministratorType:   pulumi.String(sql.ManagedInstanceAdministratorTypeActiveDirectory),
/// 			Login:               pulumi.String("bob@contoso.com"),
/// 			ManagedInstanceName: pulumi.String("managedInstance"),
/// 			ResourceGroupName:   pulumi.String("Default-SQL-SouthEastAsia"),
/// 			Sid:                 pulumi.String("44444444-3333-2222-1111-000000000000"),
/// 			TenantId:            pulumi.String("55555555-4444-3333-2222-111111111111"),
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
/// import com.pulumi.azurenative.sql.ManagedInstanceAdministrator;
/// import com.pulumi.azurenative.sql.ManagedInstanceAdministratorArgs;
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
///         var managedInstanceAdministrator = new ManagedInstanceAdministrator("managedInstanceAdministrator", ManagedInstanceAdministratorArgs.builder()
///             .administratorName("ActiveDirectory")
///             .administratorType("ActiveDirectory")
///             .login("bob@contoso.com")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .sid("44444444-3333-2222-1111-000000000000")
///             .tenantId("55555555-4444-3333-2222-111111111111")
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
/// const managedInstanceAdministrator = new azure_native.sql.ManagedInstanceAdministrator("managedInstanceAdministrator", {
///     administratorName: "ActiveDirectory",
///     administratorType: azure_native.sql.ManagedInstanceAdministratorType.ActiveDirectory,
///     login: "bob@contoso.com",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     sid: "44444444-3333-2222-1111-000000000000",
///     tenantId: "55555555-4444-3333-2222-111111111111",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_instance_administrator = azure_native.sql.ManagedInstanceAdministrator("managedInstanceAdministrator",
///     administrator_name="ActiveDirectory",
///     administrator_type=azure_native.sql.ManagedInstanceAdministratorType.ACTIVE_DIRECTORY,
///     login="bob@contoso.com",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     sid="44444444-3333-2222-1111-000000000000",
///     tenant_id="55555555-4444-3333-2222-111111111111")
///
/// ```
///
/// ```yaml
/// resources:
///   managedInstanceAdministrator:
///     type: azure-native:sql:ManagedInstanceAdministrator
///     properties:
///       administratorName: ActiveDirectory
///       administratorType: ActiveDirectory
///       login: bob@contoso.com
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       sid: 44444444-3333-2222-1111-000000000000
///       tenantId: 55555555-4444-3333-2222-111111111111
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
/// $ pulumi import azure-native:sql:ManagedInstanceAdministrator ActiveDirectory /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/administrators/{administratorName}
/// ```
class ManagedInstanceAdministrator extends pulumi.CustomResource {
  /// Type of the managed instance administrator.
  late final pulumi.Output<String> administratorType;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Login name of the managed instance administrator.
  late final pulumi.Output<String> login;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// SID (object ID) of the managed instance administrator.
  late final pulumi.Output<String> sid;

  /// Tenant ID of the managed instance administrator.
  late final pulumi.Output<String?> tenantId;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedInstanceAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstanceAdministrator]. {@macro pulumi_sql_managed_instance_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstanceAdministrator(
    String name, {
    ManagedInstanceAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:ManagedInstanceAdministrator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorType = registerOutput<String>('administratorType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    login = registerOutput<String>('login');
    this.name = registerOutput<String>('name');
    sid = registerOutput<String>('sid');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
