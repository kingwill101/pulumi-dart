import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_dns_alias_args.dart';

/// A server DNS alias.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create server DNS alias
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverDnsAlias = new AzureNative.Sql.ServerDnsAlias("serverDnsAlias", new()
///     {
///         DnsAliasName = "dns-alias-name-1",
///         ResourceGroupName = "Default",
///         ServerName = "dns-alias-server",
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
/// 		_, err := sql.NewServerDnsAlias(ctx, "serverDnsAlias", &sql.ServerDnsAliasArgs{
/// 			DnsAliasName:      pulumi.String("dns-alias-name-1"),
/// 			ResourceGroupName: pulumi.String("Default"),
/// 			ServerName:        pulumi.String("dns-alias-server"),
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
/// resource "azure-native_sql_serverdnsalias" "serverDnsAlias" {
///   dns_alias_name      = "dns-alias-name-1"
///   resource_group_name = "Default"
///   server_name         = "dns-alias-server"
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
/// import com.pulumi.azurenative.sql.ServerDnsAlias;
/// import com.pulumi.azurenative.sql.ServerDnsAliasArgs;
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
///         var serverDnsAlias = new ServerDnsAlias("serverDnsAlias", ServerDnsAliasArgs.builder()
///             .dnsAliasName("dns-alias-name-1")
///             .resourceGroupName("Default")
///             .serverName("dns-alias-server")
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
/// const serverDnsAlias = new azure_native.sql.ServerDnsAlias("serverDnsAlias", {
///     dnsAliasName: "dns-alias-name-1",
///     resourceGroupName: "Default",
///     serverName: "dns-alias-server",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_dns_alias = azure_native.sql.ServerDnsAlias("serverDnsAlias",
///     dns_alias_name="dns-alias-name-1",
///     resource_group_name="Default",
///     server_name="dns-alias-server")
///
/// ```
///
/// ```yaml
/// resources:
///   serverDnsAlias:
///     type: azure-native:sql:ServerDnsAlias
///     properties:
///       dnsAliasName: dns-alias-name-1
///       resourceGroupName: Default
///       serverName: dns-alias-server
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
/// $ pulumi import azure-native:sql:ServerDnsAlias dns-alias-name-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/dnsAliases/{dnsAliasName}
/// ```
class ServerDnsAlias extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The fully qualified DNS record for alias
  late final pulumi.Output<String> azureDnsRecord;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerDnsAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerDnsAlias]. {@macro pulumi_sql_server_dns_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerDnsAlias(
    String name, {
    ServerDnsAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerDnsAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureDnsRecord = registerOutput<String>('azureDnsRecord');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServerDnsAlias] resource.
  ServerDnsAlias.reference(String urn)
    : super(
        'azure-native:sql:ServerDnsAlias',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureDnsRecord = registerOutput<String>('azureDnsRecord');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
