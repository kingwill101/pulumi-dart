import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_server_dns_alias_args.dart';

/// A managed server DNS alias.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create managed server DNS alias
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedServerDnsAlias = new AzureNative.Sql.ManagedServerDnsAlias("managedServerDnsAlias", new()
///     {
///         DnsAliasName = "dns-alias-mi",
///         ManagedInstanceName = "dns-mi",
///         ResourceGroupName = "Default",
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
/// 		_, err := sql.NewManagedServerDnsAlias(ctx, "managedServerDnsAlias", &sql.ManagedServerDnsAliasArgs{
/// 			DnsAliasName:        pulumi.String("dns-alias-mi"),
/// 			ManagedInstanceName: pulumi.String("dns-mi"),
/// 			ResourceGroupName:   pulumi.String("Default"),
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
/// resource "azure-native_sql_managedserverdnsalias" "managedServerDnsAlias" {
///   dns_alias_name        = "dns-alias-mi"
///   managed_instance_name = "dns-mi"
///   resource_group_name   = "Default"
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
/// import com.pulumi.azurenative.sql.ManagedServerDnsAlias;
/// import com.pulumi.azurenative.sql.ManagedServerDnsAliasArgs;
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
///         var managedServerDnsAlias = new ManagedServerDnsAlias("managedServerDnsAlias", ManagedServerDnsAliasArgs.builder()
///             .dnsAliasName("dns-alias-mi")
///             .managedInstanceName("dns-mi")
///             .resourceGroupName("Default")
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
/// const managedServerDnsAlias = new azure_native.sql.ManagedServerDnsAlias("managedServerDnsAlias", {
///     dnsAliasName: "dns-alias-mi",
///     managedInstanceName: "dns-mi",
///     resourceGroupName: "Default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_server_dns_alias = azure_native.sql.ManagedServerDnsAlias("managedServerDnsAlias",
///     dns_alias_name="dns-alias-mi",
///     managed_instance_name="dns-mi",
///     resource_group_name="Default")
///
/// ```
///
/// ```yaml
/// resources:
///   managedServerDnsAlias:
///     type: azure-native:sql:ManagedServerDnsAlias
///     properties:
///       dnsAliasName: dns-alias-mi
///       managedInstanceName: dns-mi
///       resourceGroupName: Default
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
/// $ pulumi import azure-native:sql:ManagedServerDnsAlias dns-alias-mi /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/dnsAliases/{dnsAliasName}
/// ```
class ManagedServerDnsAlias extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The fully qualified DNS record for managed server alias
  late final pulumi.Output<String> azureDnsRecord;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The fully qualified public DNS record for managed server alias
  late final pulumi.Output<String> publicAzureDnsRecord;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedServerDnsAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedServerDnsAlias]. {@macro pulumi_sql_managed_server_dns_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedServerDnsAlias(
    String name, {
    ManagedServerDnsAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ManagedServerDnsAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureDnsRecord = registerOutput<String>('azureDnsRecord');
    this.name = registerOutput<String>('name');
    publicAzureDnsRecord = registerOutput<String>('publicAzureDnsRecord');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ManagedServerDnsAlias] resource.
  ManagedServerDnsAlias.reference(String urn)
    : super(
        'azure-native:sql:ManagedServerDnsAlias',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureDnsRecord = registerOutput<String>('azureDnsRecord');
    this.name = registerOutput<String>('name');
    publicAzureDnsRecord = registerOutput<String>('publicAzureDnsRecord');
    type = registerOutput<String>('type');
  }
}
