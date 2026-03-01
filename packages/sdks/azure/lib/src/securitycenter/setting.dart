import 'package:pulumi/pulumi.dart' as pulumi;
import 'setting_args.dart';
import 'setting_state.dart';

/// Manages the Data Access Settings for Azure Security Center.
///
/// > **Note:** This resource requires the `Owner` permission on the Subscription.
///
/// > **Note:** Deletion of this resource disables the setting.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.securitycenter.Setting("example", {
///     settingName: "MCAS",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.securitycenter.Setting("example",
///     setting_name="MCAS",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.SecurityCenter.Setting("example", new()
///     {
///         SettingName = "MCAS",
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewSetting(ctx, "example", &securitycenter.SettingArgs{
/// 			SettingName: pulumi.String("MCAS"),
/// 			Enabled:     pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.securitycenter.Setting;
/// import com.pulumi.azure.securitycenter.SettingArgs;
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
///         var example = new Setting("example", SettingArgs.builder()
///             .settingName("MCAS")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:securitycenter:Setting
///     properties:
///       settingName: MCAS
///       enabled: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Security` - 2022-05-01
///
/// ## Import
///
/// The setting can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/setting:Setting example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Security/settings/<setting_name>
/// ```
class Setting extends pulumi.CustomResource {
  /// Boolean flag to enable/disable data access.
  late final pulumi.Output<bool> enabled;
  /// The setting to manage. Possible values are `MCAS` , `WDATP`, `WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW`, `WDATP_UNIFIED_SOLUTION` and `Sentinel`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> settingName;

  /// Creates a new [Setting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Setting]. {@macro pulumi_securitycenter_setting_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Setting(
    String name, {
    SettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/setting:Setting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.settingName = registerOutput<String>('settingName');
  }

  /// Gets an existing [Setting] resource's state with the given [name] and [id].
  static Setting get(
    String name,
    pulumi.Input<String> id, {
    SettingState? state,
  }) {
    return Setting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Setting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/setting:Setting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.settingName = registerOutput<String>('settingName');
  }
}
