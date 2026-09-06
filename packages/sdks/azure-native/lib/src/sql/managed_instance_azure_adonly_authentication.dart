import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_azure_adonly_authentication_args.dart';

/// Azure Active Directory only authentication.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates Azure Active Directory only authentication object.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedInstanceAzureADOnlyAuthentication = new AzureNative.Sql.ManagedInstanceAzureADOnlyAuthentication("managedInstanceAzureADOnlyAuthentication", new()
///     {
///         AuthenticationName = "Default",
///         AzureADOnlyAuthentication = false,
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
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
/// 		_, err := sql.NewManagedInstanceAzureADOnlyAuthentication(ctx, "managedInstanceAzureADOnlyAuthentication", &sql.ManagedInstanceAzureADOnlyAuthenticationArgs{
/// 			AuthenticationName:        pulumi.String("Default"),
/// 			AzureADOnlyAuthentication: pulumi.Bool(false),
/// 			ManagedInstanceName:       pulumi.String("managedInstance"),
/// 			ResourceGroupName:         pulumi.String("Default-SQL-SouthEastAsia"),
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
/// resource "azure-native_sql_managedinstanceazureadonlyauthentication" "managedInstanceAzureADOnlyAuthentication" {
///   authentication_name          = "Default"
///   azure_ad_only_authentication = false
///   managed_instance_name        = "managedInstance"
///   resource_group_name          = "Default-SQL-SouthEastAsia"
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
/// import com.pulumi.azurenative.sql.ManagedInstanceAzureADOnlyAuthentication;
/// import com.pulumi.azurenative.sql.ManagedInstanceAzureADOnlyAuthenticationArgs;
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
///         var managedInstanceAzureADOnlyAuthentication = new ManagedInstanceAzureADOnlyAuthentication("managedInstanceAzureADOnlyAuthentication", ManagedInstanceAzureADOnlyAuthenticationArgs.builder()
///             .authenticationName("Default")
///             .azureADOnlyAuthentication(false)
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
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
/// const managedInstanceAzureADOnlyAuthentication = new azure_native.sql.ManagedInstanceAzureADOnlyAuthentication("managedInstanceAzureADOnlyAuthentication", {
///     authenticationName: "Default",
///     azureADOnlyAuthentication: false,
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_instance_azure_ad_only_authentication = azure_native.sql.ManagedInstanceAzureADOnlyAuthentication("managedInstanceAzureADOnlyAuthentication",
///     authentication_name="Default",
///     azure_ad_only_authentication=False,
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia")
///
/// ```
///
/// ```yaml
/// resources:
///   managedInstanceAzureADOnlyAuthentication:
///     type: azure-native:sql:ManagedInstanceAzureADOnlyAuthentication
///     properties:
///       authenticationName: Default
///       azureADOnlyAuthentication: false
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
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
/// $ pulumi import azure-native:sql:ManagedInstanceAzureADOnlyAuthentication Default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/azureADOnlyAuthentications/{authenticationName}
/// ```
class ManagedInstanceAzureADOnlyAuthentication extends pulumi.CustomResource {
  /// Azure Active Directory only Authentication enabled.
  late final pulumi.Output<bool> azureADOnlyAuthentication;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedInstanceAzureADOnlyAuthentication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstanceAzureADOnlyAuthentication]. {@macro pulumi_sql_managed_instance_azure_adonly_authentication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstanceAzureADOnlyAuthentication(
    String name, {
    ManagedInstanceAzureADOnlyAuthenticationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ManagedInstanceAzureADOnlyAuthentication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureADOnlyAuthentication = registerOutput<bool>('azureADOnlyAuthentication');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ManagedInstanceAzureADOnlyAuthentication] resource.
  ManagedInstanceAzureADOnlyAuthentication.reference(String urn)
    : super(
        'azure-native:sql:ManagedInstanceAzureADOnlyAuthentication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureADOnlyAuthentication = registerOutput<bool>('azureADOnlyAuthentication');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
