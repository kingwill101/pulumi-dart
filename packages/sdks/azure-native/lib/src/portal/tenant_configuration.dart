import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_properties_response.dart';
import 'system_data_response.dart';
import 'tenant_configuration_args.dart';

/// The tenant configuration resource definition.
///
/// Uses Azure REST API version 2022-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-09-01-preview.
///
/// Other available API versions: 2019-01-01-preview, 2020-09-01-preview, 2025-04-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native portal [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Tenant configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tenantConfiguration = new AzureNative.Portal.TenantConfiguration("tenantConfiguration", new()
///     {
///         ConfigurationName = "default",
///         Properties = new AzureNative.Portal.Inputs.ConfigurationPropertiesArgs
///         {
///             EnforcePrivateMarkdownStorage = true,
///         },
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
/// 	portal "github.com/pulumi/pulumi-azure-native-sdk/portal/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := portal.NewTenantConfiguration(ctx, "tenantConfiguration", &portal.TenantConfigurationArgs{
/// 			ConfigurationName: pulumi.String("default"),
/// 			Properties: &portal.ConfigurationPropertiesArgs{
/// 				EnforcePrivateMarkdownStorage: pulumi.Bool(true),
/// 			},
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
/// resource "azure-native_portal_tenantconfiguration" "tenantConfiguration" {
///   configuration_name = "default"
///   properties = {
///     enforce_private_markdown_storage = true
///   }
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
/// import com.pulumi.azurenative.portal.TenantConfiguration;
/// import com.pulumi.azurenative.portal.TenantConfigurationArgs;
/// import com.pulumi.azurenative.portal.inputs.ConfigurationPropertiesArgs;
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
///         var tenantConfiguration = new TenantConfiguration("tenantConfiguration", TenantConfigurationArgs.builder()
///             .configurationName("default")
///             .properties(ConfigurationPropertiesArgs.builder()
///                 .enforcePrivateMarkdownStorage(true)
///                 .build())
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
/// const tenantConfiguration = new azure_native.portal.TenantConfiguration("tenantConfiguration", {
///     configurationName: "default",
///     properties: {
///         enforcePrivateMarkdownStorage: true,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tenant_configuration = azure_native.portal.TenantConfiguration("tenantConfiguration",
///     configuration_name="default",
///     properties={
///         "enforce_private_markdown_storage": True,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   tenantConfiguration:
///     type: azure-native:portal:TenantConfiguration
///     properties:
///       configurationName: default
///       properties:
///         enforcePrivateMarkdownStorage: true
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
/// $ pulumi import azure-native:portal:TenantConfiguration default /providers/Microsoft.Portal/tenantConfigurations/{configurationName}
/// ```
class TenantConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ConfigurationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TenantConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantConfiguration]. {@macro pulumi_portal_tenant_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantConfiguration(
    String name, {
    TenantConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:portal:TenantConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigurationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [TenantConfiguration] resource.
  TenantConfiguration.reference(String urn)
    : super(
        'azure-native:portal:TenantConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigurationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
