import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_default_supported_idp_config_args.dart';
import 'tenant_default_supported_idp_config_state.dart';

/// Configurations options for the tenant for authenticating with a the standard set of Identity Toolkit-trusted IDPs.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Default Supported Idp Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tenant = new gcp.identityplatform.Tenant("tenant", {displayName: "tenant"});
/// const idpConfig = new gcp.identityplatform.TenantDefaultSupportedIdpConfig("idp_config", {
///     enabled: true,
///     tenant: tenant.name,
///     idpId: "playgames.google.com",
///     clientId: "my-client-id",
///     clientSecret: "secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tenant = gcp.identityplatform.Tenant("tenant", display_name="tenant")
/// idp_config = gcp.identityplatform.TenantDefaultSupportedIdpConfig("idp_config",
///     enabled=True,
///     tenant=tenant.name,
///     idp_id="playgames.google.com",
///     client_id="my-client-id",
///     client_secret="secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tenant = new Gcp.IdentityPlatform.Tenant("tenant", new()
///     {
///         DisplayName = "tenant",
///     });
///
///     var idpConfig = new Gcp.IdentityPlatform.TenantDefaultSupportedIdpConfig("idp_config", new()
///     {
///         Enabled = true,
///         Tenant = tenant.Name,
///         IdpId = "playgames.google.com",
///         ClientId = "my-client-id",
///         ClientSecret = "secret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/identityplatform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tenant, err := identityplatform.NewTenant(ctx, "tenant", &identityplatform.TenantArgs{
/// 			DisplayName: pulumi.String("tenant"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identityplatform.NewTenantDefaultSupportedIdpConfig(ctx, "idp_config", &identityplatform.TenantDefaultSupportedIdpConfigArgs{
/// 			Enabled:      pulumi.Bool(true),
/// 			Tenant:       tenant.Name,
/// 			IdpId:        pulumi.String("playgames.google.com"),
/// 			ClientId:     pulumi.String("my-client-id"),
/// 			ClientSecret: pulumi.String("secret"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_identityplatform_tenant" "tenant" {
///   display_name = "tenant"
/// }
/// resource "gcp_identityplatform_tenantdefaultsupportedidpconfig" "idp_config" {
///   enabled       = true
///   tenant        = gcp_identityplatform_tenant.tenant.name
///   idp_id        = "playgames.google.com"
///   client_id     = "my-client-id"
///   client_secret = "secret"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.identityplatform.Tenant;
/// import com.pulumi.gcp.identityplatform.TenantArgs;
/// import com.pulumi.gcp.identityplatform.TenantDefaultSupportedIdpConfig;
/// import com.pulumi.gcp.identityplatform.TenantDefaultSupportedIdpConfigArgs;
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
///         var tenant = new Tenant("tenant", TenantArgs.builder()
///             .displayName("tenant")
///             .build());
///
///         var idpConfig = new TenantDefaultSupportedIdpConfig("idpConfig", TenantDefaultSupportedIdpConfigArgs.builder()
///             .enabled(true)
///             .tenant(tenant.name())
///             .idpId("playgames.google.com")
///             .clientId("my-client-id")
///             .clientSecret("secret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tenant:
///     type: gcp:identityplatform:Tenant
///     properties:
///       displayName: tenant
///   idpConfig:
///     type: gcp:identityplatform:TenantDefaultSupportedIdpConfig
///     name: idp_config
///     properties:
///       enabled: true
///       tenant: ${tenant.name}
///       idpId: playgames.google.com
///       clientId: my-client-id
///       clientSecret: secret
/// ```
///
///
/// ## Import
///
/// TenantDefaultSupportedIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{tenant}}/defaultSupportedIdpConfigs/{{idp_id}}`
/// * `{{project}}/{{tenant}}/{{idp_id}}`
/// * `{{tenant}}/{{idp_id}}`
///
///
/// When using the `pulumi import` command, TenantDefaultSupportedIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default projects/{{project}}/tenants/{{tenant}}/defaultSupportedIdpConfigs/{{idp_id}}
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default {{project}}/{{tenant}}/{{idp_id}}
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default {{tenant}}/{{idp_id}}
/// ```
class TenantDefaultSupportedIdpConfig extends pulumi.CustomResource {
  /// OAuth client ID
  late final pulumi.Output<String> clientId;
  /// OAuth client secret
  late final pulumi.Output<String> clientSecret;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// If this IDP allows the user to sign in
  late final pulumi.Output<bool?> enabled;
  /// ID of the IDP. Possible values include:
  /// * `apple.com`
  /// * `facebook.com`
  /// * `gc.apple.com`
  /// * `github.com`
  /// * `google.com`
  /// * `linkedin.com`
  /// * `microsoft.com`
  /// * `playgames.google.com`
  /// * `twitter.com`
  /// * `yahoo.com`
  late final pulumi.Output<String> idpId;
  /// The name of the default supported IDP config resource
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The name of the tenant where this DefaultSupportedIdpConfig resource exists
  late final pulumi.Output<String> tenant;

  /// Creates a new [TenantDefaultSupportedIdpConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantDefaultSupportedIdpConfig]. {@macro pulumi_identityplatform_tenant_default_supported_idp_config_tenant_default_supported_idp_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantDefaultSupportedIdpConfig(
    String name, {
    TenantDefaultSupportedIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enabled = registerOutput<bool?>('enabled');
    idpId = registerOutput<String>('idpId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenant = registerOutput<String>('tenant');
  }

  /// Gets an existing [TenantDefaultSupportedIdpConfig] resource's state with the given [name] and [id].
  static TenantDefaultSupportedIdpConfig get(
    String name,
    pulumi.Input<String> id, {
    TenantDefaultSupportedIdpConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TenantDefaultSupportedIdpConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TenantDefaultSupportedIdpConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enabled = registerOutput<bool?>('enabled');
    idpId = registerOutput<String>('idpId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenant = registerOutput<String>('tenant');
  }

  /// Creates a typed reference to an existing [TenantDefaultSupportedIdpConfig] resource.
  TenantDefaultSupportedIdpConfig.reference(String urn)
    : super(
        'gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enabled = registerOutput<bool?>('enabled');
    idpId = registerOutput<String>('idpId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenant = registerOutput<String>('tenant');
  }
}
