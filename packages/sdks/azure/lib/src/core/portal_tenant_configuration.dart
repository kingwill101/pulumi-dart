import 'package:pulumi/pulumi.dart' as pulumi;
import 'portal_tenant_configuration_args.dart';
import 'portal_tenant_configuration_state.dart';

/// Manages Portal Tenant Configuration.
///
/// &gt; **Note:** User has to be `Contributor` or `Owner` at scope `/` for managing this resource.
///
/// &gt; **Note:** The Service Principal with Tenant Admin can be created by `az ad sp create-for-rbac --name "&lt;sp name&gt;" --role="Contributor" --scopes="/"`.
///
/// &gt; **Note:** The Service Principal can be granted Tenant Admin permission by `az role assignment create --assignee "&lt;app id&gt;" --role "Contributor" --scope "/"`.
///
/// &gt; **Note:** While assigning the role to the existing/new Service Principal at the Tenant Scope, the user assigning role must already have the `Owner` role assigned at the Tenant Scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.PortalTenantConfiguration("example", {privateMarkdownStorageEnforced: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.PortalTenantConfiguration("example", private_markdown_storage_enforced=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.PortalTenantConfiguration("example", new()
///     {
///         PrivateMarkdownStorageEnforced = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewPortalTenantConfiguration(ctx, "example", &core.PortalTenantConfigurationArgs{
/// 			PrivateMarkdownStorageEnforced: pulumi.Bool(true),
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
/// import com.pulumi.azure.core.PortalTenantConfiguration;
/// import com.pulumi.azure.core.PortalTenantConfigurationArgs;
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
///         var example = new PortalTenantConfiguration("example", PortalTenantConfigurationArgs.builder()
///             .privateMarkdownStorageEnforced(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:PortalTenantConfiguration
///     properties:
///       privateMarkdownStorageEnforced: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Portal` - 2019-01-01-preview
///
/// ## Import
///
/// Portal Tenant Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/portalTenantConfiguration:PortalTenantConfiguration example /providers/Microsoft.Portal/tenantConfigurations/default
/// ```
class PortalTenantConfiguration extends pulumi.CustomResource {
  /// Is the private tile markdown storage which used to display custom dynamic and static content enabled?
  ///
  /// &gt; **Note:** When `private_markdown_storage_enforced` is set to `true`, only external storage configuration (URI) is allowed for Markdown tiles. Inline content configuration will be prohibited.
  late final pulumi.Output<bool> privateMarkdownStorageEnforced;

  /// Creates a new [PortalTenantConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PortalTenantConfiguration]. {@macro pulumi_core_portal_tenant_configuration_portal_tenant_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PortalTenantConfiguration(
    String name, {
    PortalTenantConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/portalTenantConfiguration:PortalTenantConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    privateMarkdownStorageEnforced = registerOutput<bool>('privateMarkdownStorageEnforced');
  }

  /// Gets an existing [PortalTenantConfiguration] resource's state with the given [name] and [id].
  static PortalTenantConfiguration get(
    String name,
    pulumi.Input<String> id, {
    PortalTenantConfigurationState? state,
  }) {
    return PortalTenantConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PortalTenantConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/portalTenantConfiguration:PortalTenantConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    privateMarkdownStorageEnforced = registerOutput<bool>('privateMarkdownStorageEnforced');
  }
}
