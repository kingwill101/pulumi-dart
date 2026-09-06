import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_ftp_allowed_slot_args.dart';

/// Publishing Credentials Policies parameters.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2023-12-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update FTP Allowed
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppFtpAllowedSlot = new AzureNative.Web.WebAppFtpAllowedSlot("webAppFtpAllowedSlot", new()
///     {
///         Allow = true,
///         Name = "testSite",
///         ResourceGroupName = "rg",
///         Slot = "stage",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebAppFtpAllowedSlot(ctx, "webAppFtpAllowedSlot", &web.WebAppFtpAllowedSlotArgs{
/// 			Allow:             pulumi.Bool(true),
/// 			Name:              pulumi.String("testSite"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Slot:              pulumi.String("stage"),
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
/// resource "azure-native_web_webappftpallowedslot" "webAppFtpAllowedSlot" {
///   allow               = true
///   name                = "testSite"
///   resource_group_name = "rg"
///   slot                = "stage"
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
/// import com.pulumi.azurenative.web.WebAppFtpAllowedSlot;
/// import com.pulumi.azurenative.web.WebAppFtpAllowedSlotArgs;
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
///         var webAppFtpAllowedSlot = new WebAppFtpAllowedSlot("webAppFtpAllowedSlot", WebAppFtpAllowedSlotArgs.builder()
///             .allow(true)
///             .name("testSite")
///             .resourceGroupName("rg")
///             .slot("stage")
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
/// const webAppFtpAllowedSlot = new azure_native.web.WebAppFtpAllowedSlot("webAppFtpAllowedSlot", {
///     allow: true,
///     name: "testSite",
///     resourceGroupName: "rg",
///     slot: "stage",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_ftp_allowed_slot = azure_native.web.WebAppFtpAllowedSlot("webAppFtpAllowedSlot",
///     allow=True,
///     name="testSite",
///     resource_group_name="rg",
///     slot="stage")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppFtpAllowedSlot:
///     type: azure-native:web:WebAppFtpAllowedSlot
///     properties:
///       allow: true
///       name: testSite
///       resourceGroupName: rg
///       slot: stage
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
/// $ pulumi import azure-native:web:WebAppFtpAllowedSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/basicPublishingCredentialsPolicies/ftp
/// ```
class WebAppFtpAllowedSlot extends pulumi.CustomResource {
  /// &lt;code&gt;true&lt;/code&gt; to allow access to a publishing method; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool> allow;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppFtpAllowedSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppFtpAllowedSlot]. {@macro pulumi_web_web_app_ftp_allowed_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppFtpAllowedSlot(
    String name, {
    WebAppFtpAllowedSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppFtpAllowedSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allow = registerOutput<bool>('allow');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAppFtpAllowedSlot] resource.
  WebAppFtpAllowedSlot.reference(String urn)
    : super(
        'azure-native:web:WebAppFtpAllowedSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allow = registerOutput<bool>('allow');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
