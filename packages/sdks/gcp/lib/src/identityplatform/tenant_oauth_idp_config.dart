import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_oauth_idp_config_args.dart';
import 'tenant_oauth_idp_config_state.dart';

/// OIDC IdP configuration for a Identity Toolkit project within a tenant.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Oauth Idp Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tenant = new gcp.identityplatform.Tenant("tenant", {displayName: "tenant"});
/// const tenantOauthIdpConfig = new gcp.identityplatform.TenantOauthIdpConfig("tenant_oauth_idp_config", {
///     name: "oidc.oauth-idp-config",
///     tenant: tenant.name,
///     displayName: "Display Name",
///     clientId: "client-id",
///     issuer: "issuer",
///     enabled: true,
///     clientSecret: "secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tenant = gcp.identityplatform.Tenant("tenant", display_name="tenant")
/// tenant_oauth_idp_config = gcp.identityplatform.TenantOauthIdpConfig("tenant_oauth_idp_config",
///     name="oidc.oauth-idp-config",
///     tenant=tenant.name,
///     display_name="Display Name",
///     client_id="client-id",
///     issuer="issuer",
///     enabled=True,
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
///     var tenantOauthIdpConfig = new Gcp.IdentityPlatform.TenantOauthIdpConfig("tenant_oauth_idp_config", new()
///     {
///         Name = "oidc.oauth-idp-config",
///         Tenant = tenant.Name,
///         DisplayName = "Display Name",
///         ClientId = "client-id",
///         Issuer = "issuer",
///         Enabled = true,
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
/// 		_, err = identityplatform.NewTenantOauthIdpConfig(ctx, "tenant_oauth_idp_config", &identityplatform.TenantOauthIdpConfigArgs{
/// 			Name:         pulumi.String("oidc.oauth-idp-config"),
/// 			Tenant:       tenant.Name,
/// 			DisplayName:  pulumi.String("Display Name"),
/// 			ClientId:     pulumi.String("client-id"),
/// 			Issuer:       pulumi.String("issuer"),
/// 			Enabled:      pulumi.Bool(true),
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
/// resource "gcp_identityplatform_tenantoauthidpconfig" "tenant_oauth_idp_config" {
///   name          = "oidc.oauth-idp-config"
///   tenant        = gcp_identityplatform_tenant.tenant.name
///   display_name  = "Display Name"
///   client_id     = "client-id"
///   issuer        = "issuer"
///   enabled       = true
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
/// import com.pulumi.gcp.identityplatform.TenantOauthIdpConfig;
/// import com.pulumi.gcp.identityplatform.TenantOauthIdpConfigArgs;
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
///         var tenantOauthIdpConfig = new TenantOauthIdpConfig("tenantOauthIdpConfig", TenantOauthIdpConfigArgs.builder()
///             .name("oidc.oauth-idp-config")
///             .tenant(tenant.name())
///             .displayName("Display Name")
///             .clientId("client-id")
///             .issuer("issuer")
///             .enabled(true)
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
///   tenantOauthIdpConfig:
///     type: gcp:identityplatform:TenantOauthIdpConfig
///     name: tenant_oauth_idp_config
///     properties:
///       name: oidc.oauth-idp-config
///       tenant: ${tenant.name}
///       displayName: Display Name
///       clientId: client-id
///       issuer: issuer
///       enabled: true
///       clientSecret: secret
/// ```
///
///
/// ## Import
///
/// TenantOauthIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{tenant}}/oauthIdpConfigs/{{name}}`
/// * `{{project}}/{{tenant}}/{{name}}`
/// * `{{tenant}}/{{name}}`
///
///
/// When using the `pulumi import` command, TenantOauthIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig default projects/{{project}}/tenants/{{tenant}}/oauthIdpConfigs/{{name}}
/// $ pulumi import gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig default {{project}}/{{tenant}}/{{name}}
/// $ pulumi import gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig default {{tenant}}/{{name}}
/// ```
class TenantOauthIdpConfig extends pulumi.CustomResource {
  /// The client id of an OAuth client.
  late final pulumi.Output<String> clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  late final pulumi.Output<String?> clientSecret;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human friendly display name.
  late final pulumi.Output<String> displayName;
  /// If this config allows users to sign in with the provider.
  late final pulumi.Output<bool?> enabled;
  /// For OIDC Idps, the issuer identifier.
  late final pulumi.Output<String> issuer;
  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The name of the tenant where this OIDC IDP configuration resource exists
  late final pulumi.Output<String> tenant;

  /// Creates a new [TenantOauthIdpConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantOauthIdpConfig]. {@macro pulumi_identityplatform_tenant_oauth_idp_config_tenant_oauth_idp_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantOauthIdpConfig(
    String name, {
    TenantOauthIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String?>('clientSecret');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenant = registerOutput<String>('tenant');
  }

  /// Gets an existing [TenantOauthIdpConfig] resource's state with the given [name] and [id].
  static TenantOauthIdpConfig get(
    String name,
    pulumi.Input<String> id, {
    TenantOauthIdpConfigState? state,
  }) {
    return TenantOauthIdpConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TenantOauthIdpConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String?>('clientSecret');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenant = registerOutput<String>('tenant');
  }
}
