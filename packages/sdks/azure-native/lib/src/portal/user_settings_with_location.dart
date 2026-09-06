import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_properties_response.dart';
import 'user_settings_with_location_args.dart';

/// Response to get user settings
///
/// Uses Azure REST API version 2018-10-01. In version 2.x of the Azure Native provider, it used API version 2018-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutUserSettings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userSettingsWithLocation = new AzureNative.Portal.UserSettingsWithLocation("userSettingsWithLocation", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.Portal.Inputs.UserPropertiesArgs
///         {
///             PreferredLocation = "eastus",
///             PreferredOsType = AzureNative.Portal.OsType.Linux,
///             PreferredShellType = AzureNative.Portal.ShellType.Bash,
///             StorageProfile = new AzureNative.Portal.Inputs.StorageProfileArgs
///             {
///                 DiskSizeInGB = 5,
///                 FileShareName = "string",
///                 StorageAccountResourceId = "string",
///             },
///             TerminalSettings = new AzureNative.Portal.Inputs.TerminalSettingsArgs
///             {
///                 FontSize = AzureNative.Portal.FontSize.Medium,
///                 FontStyle = AzureNative.Portal.FontStyle.Monospace,
///             },
///         },
///         UserSettingsName = "cloudconsole",
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
/// 		_, err := portal.NewUserSettingsWithLocation(ctx, "userSettingsWithLocation", &portal.UserSettingsWithLocationArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &portal.UserPropertiesArgs{
/// 				PreferredLocation:  pulumi.String("eastus"),
/// 				PreferredOsType:    pulumi.String(portal.OsTypeLinux),
/// 				PreferredShellType: pulumi.String(portal.ShellTypeBash),
/// 				StorageProfile: &portal.StorageProfileArgs{
/// 					DiskSizeInGB:             pulumi.Int(5),
/// 					FileShareName:            pulumi.String("string"),
/// 					StorageAccountResourceId: pulumi.String("string"),
/// 				},
/// 				TerminalSettings: &portal.TerminalSettingsArgs{
/// 					FontSize:  pulumi.String(portal.FontSizeMedium),
/// 					FontStyle: pulumi.String(portal.FontStyleMonospace),
/// 				},
/// 			},
/// 			UserSettingsName: pulumi.String("cloudconsole"),
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
/// resource "azure-native_portal_usersettingswithlocation" "userSettingsWithLocation" {
///   location = "eastus"
///   properties = {
///     preferred_location   = "eastus"
///     preferred_os_type    = "Linux"
///     preferred_shell_type = "bash"
///     storage_profile = {
///       disk_size_in_gb             = 5
///       file_share_name             = "string"
///       storage_account_resource_id = "string"
///     }
///     terminal_settings = {
///       font_size  = "Medium"
///       font_style = "Monospace"
///     }
///   }
///   user_settings_name = "cloudconsole"
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
/// import com.pulumi.azurenative.portal.UserSettingsWithLocation;
/// import com.pulumi.azurenative.portal.UserSettingsWithLocationArgs;
/// import com.pulumi.azurenative.portal.inputs.UserPropertiesArgs;
/// import com.pulumi.azurenative.portal.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.portal.inputs.TerminalSettingsArgs;
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
///         var userSettingsWithLocation = new UserSettingsWithLocation("userSettingsWithLocation", UserSettingsWithLocationArgs.builder()
///             .location("eastus")
///             .properties(UserPropertiesArgs.builder()
///                 .preferredLocation("eastus")
///                 .preferredOsType("Linux")
///                 .preferredShellType("bash")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .diskSizeInGB(5)
///                     .fileShareName("string")
///                     .storageAccountResourceId("string")
///                     .build())
///                 .terminalSettings(TerminalSettingsArgs.builder()
///                     .fontSize("Medium")
///                     .fontStyle("Monospace")
///                     .build())
///                 .build())
///             .userSettingsName("cloudconsole")
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
/// const userSettingsWithLocation = new azure_native.portal.UserSettingsWithLocation("userSettingsWithLocation", {
///     location: "eastus",
///     properties: {
///         preferredLocation: "eastus",
///         preferredOsType: azure_native.portal.OsType.Linux,
///         preferredShellType: azure_native.portal.ShellType.Bash,
///         storageProfile: {
///             diskSizeInGB: 5,
///             fileShareName: "string",
///             storageAccountResourceId: "string",
///         },
///         terminalSettings: {
///             fontSize: azure_native.portal.FontSize.Medium,
///             fontStyle: azure_native.portal.FontStyle.Monospace,
///         },
///     },
///     userSettingsName: "cloudconsole",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user_settings_with_location = azure_native.portal.UserSettingsWithLocation("userSettingsWithLocation",
///     location="eastus",
///     properties={
///         "preferred_location": "eastus",
///         "preferred_os_type": azure_native.portal.OsType.LINUX,
///         "preferred_shell_type": azure_native.portal.ShellType.BASH,
///         "storage_profile": {
///             "disk_size_in_gb": 5,
///             "file_share_name": "string",
///             "storage_account_resource_id": "string",
///         },
///         "terminal_settings": {
///             "font_size": azure_native.portal.FontSize.MEDIUM,
///             "font_style": azure_native.portal.FontStyle.MONOSPACE,
///         },
///     },
///     user_settings_name="cloudconsole")
///
/// ```
///
/// ```yaml
/// resources:
///   userSettingsWithLocation:
///     type: azure-native:portal:UserSettingsWithLocation
///     properties:
///       location: eastus
///       properties:
///         preferredLocation: eastus
///         preferredOsType: Linux
///         preferredShellType: bash
///         storageProfile:
///           diskSizeInGB: 5
///           fileShareName: string
///           storageAccountResourceId: string
///         terminalSettings:
///           fontSize: Medium
///           fontStyle: Monospace
///       userSettingsName: cloudconsole
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
/// $ pulumi import azure-native:portal:UserSettingsWithLocation myresource1 /providers/Microsoft.Portal/locations/{location}/userSettings/{userSettingsName}
/// ```
class UserSettingsWithLocation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The cloud shell user settings properties.
  late final pulumi.Output<UserPropertiesResponse> properties;

  /// Creates a new [UserSettingsWithLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserSettingsWithLocation]. {@macro pulumi_portal_user_settings_with_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserSettingsWithLocation(
    String name, {
    UserSettingsWithLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:portal:UserSettingsWithLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    properties = registerOutput<UserPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [UserSettingsWithLocation] resource.
  UserSettingsWithLocation.reference(String urn)
    : super(
        'azure-native:portal:UserSettingsWithLocation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    properties = registerOutput<UserPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
