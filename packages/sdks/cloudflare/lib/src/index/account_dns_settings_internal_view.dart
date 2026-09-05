import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_dns_settings_internal_view_args.dart';
import 'account_dns_settings_internal_view_state.dart';

/// Accepted Permissions
///
/// - `DNS View Read`
/// - `DNS View Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAccountDnsSettingsInternalView = new cloudflare.AccountDnsSettingsInternalView("example_account_dns_settings_internal_view", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "my view",
///     zones: ["372e67954025e0ba6aaa6d586b9e0b59"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_account_dns_settings_internal_view = cloudflare.AccountDnsSettingsInternalView("example_account_dns_settings_internal_view",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="my view",
///     zones=["372e67954025e0ba6aaa6d586b9e0b59"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAccountDnsSettingsInternalView = new Cloudflare.AccountDnsSettingsInternalView("example_account_dns_settings_internal_view", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "my view",
///         Zones = new[]
///         {
///             "372e67954025e0ba6aaa6d586b9e0b59",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewAccountDnsSettingsInternalView(ctx, "example_account_dns_settings_internal_view", &cloudflare.AccountDnsSettingsInternalViewArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("my view"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("372e67954025e0ba6aaa6d586b9e0b59"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_accountdnssettingsinternalview" "example_account_dns_settings_internal_view" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "my view"
///   zones      = ["372e67954025e0ba6aaa6d586b9e0b59"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AccountDnsSettingsInternalView;
/// import com.pulumi.cloudflare.AccountDnsSettingsInternalViewArgs;
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
///         var exampleAccountDnsSettingsInternalView = new AccountDnsSettingsInternalView("exampleAccountDnsSettingsInternalView", AccountDnsSettingsInternalViewArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("my view")
///             .zones("372e67954025e0ba6aaa6d586b9e0b59")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccountDnsSettingsInternalView:
///     type: cloudflare:AccountDnsSettingsInternalView
///     name: example_account_dns_settings_internal_view
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: my view
///       zones:
///         - 372e67954025e0ba6aaa6d586b9e0b59
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/accountDnsSettingsInternalView:AccountDnsSettingsInternalView example '<account_id>/<view_id>'
/// ```
class AccountDnsSettingsInternalView extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// When the view was created.
  late final pulumi.Output<String> createdTime;
  /// When the view was last modified.
  late final pulumi.Output<String> modifiedTime;
  /// The name of the view.
  late final pulumi.Output<String> name;
  /// The list of zones linked to this view.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [AccountDnsSettingsInternalView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountDnsSettingsInternalView]. {@macro pulumi_index_account_dns_settings_internal_view_account_dns_settings_internal_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountDnsSettingsInternalView(
    String name, {
    AccountDnsSettingsInternalViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountDnsSettingsInternalView:AccountDnsSettingsInternalView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdTime = registerOutput<String>('createdTime');
    modifiedTime = registerOutput<String>('modifiedTime');
    this.name = registerOutput<String>('name');
    zones = registerOutput<List<String>>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [AccountDnsSettingsInternalView] resource's state with the given [name] and [id].
  static AccountDnsSettingsInternalView get(
    String name,
    pulumi.Input<String> id, {
    AccountDnsSettingsInternalViewState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountDnsSettingsInternalView._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountDnsSettingsInternalView._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountDnsSettingsInternalView:AccountDnsSettingsInternalView',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdTime = registerOutput<String>('createdTime');
    modifiedTime = registerOutput<String>('modifiedTime');
    this.name = registerOutput<String>('name');
    zones = registerOutput<List<String>>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [AccountDnsSettingsInternalView] resource.
  AccountDnsSettingsInternalView.reference(String urn)
    : super(
        'cloudflare:index/accountDnsSettingsInternalView:AccountDnsSettingsInternalView',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdTime = registerOutput<String>('createdTime');
    modifiedTime = registerOutput<String>('modifiedTime');
    this.name = registerOutput<String>('name');
    zones = registerOutput<List<String>>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
