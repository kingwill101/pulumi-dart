import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_inbound_saml_config_args.dart';
import 'tenant_inbound_saml_config_idp_config.dart';
import 'tenant_inbound_saml_config_sp_config.dart';
import 'tenant_inbound_saml_config_state.dart';

/// Inbound SAML configuration for a Identity Toolkit tenant.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Inbound Saml Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const tenant = new gcp.identityplatform.Tenant("tenant", {displayName: "tenant"});
/// const tenantSamlConfig = new gcp.identityplatform.TenantInboundSamlConfig("tenant_saml_config", {
///     name: "saml.tf-config",
///     displayName: "Display Name",
///     tenant: tenant.name,
///     idpConfig: {
///         idpEntityId: "tf-idp",
///         signRequest: true,
///         ssoUrl: "https://example.com",
///         idpCertificates: [{
///             x509Certificate: std.file({
///                 input: "test-fixtures/rsa_cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///     },
///     spConfig: {
///         spEntityId: "tf-sp",
///         callbackUri: "https://example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// tenant = gcp.identityplatform.Tenant("tenant", display_name="tenant")
/// tenant_saml_config = gcp.identityplatform.TenantInboundSamlConfig("tenant_saml_config",
///     name="saml.tf-config",
///     display_name="Display Name",
///     tenant=tenant.name,
///     idp_config={
///         "idp_entity_id": "tf-idp",
///         "sign_request": True,
///         "sso_url": "https://example.com",
///         "idp_certificates": [{
///             "x509_certificate": std.file(input="test-fixtures/rsa_cert.pem").result,
///         }],
///     },
///     sp_config={
///         "sp_entity_id": "tf-sp",
///         "callback_uri": "https://example.com",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tenant = new Gcp.IdentityPlatform.Tenant("tenant", new()
///     {
///         DisplayName = "tenant",
///     });
///
///     var tenantSamlConfig = new Gcp.IdentityPlatform.TenantInboundSamlConfig("tenant_saml_config", new()
///     {
///         Name = "saml.tf-config",
///         DisplayName = "Display Name",
///         Tenant = tenant.Name,
///         IdpConfig = new Gcp.IdentityPlatform.Inputs.TenantInboundSamlConfigIdpConfigArgs
///         {
///             IdpEntityId = "tf-idp",
///             SignRequest = true,
///             SsoUrl = "https://example.com",
///             IdpCertificates = new[]
///             {
///                 new Gcp.IdentityPlatform.Inputs.TenantInboundSamlConfigIdpConfigIdpCertificateArgs
///                 {
///                     X509Certificate = Std.File.Invoke(new()
///                     {
///                         Input = "test-fixtures/rsa_cert.pem",
///                     }).Apply(invoke => invoke.Result),
///                 },
///             },
///         },
///         SpConfig = new Gcp.IdentityPlatform.Inputs.TenantInboundSamlConfigSpConfigArgs
///         {
///             SpEntityId = "tf-sp",
///             CallbackUri = "https://example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/identityplatform"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/rsa_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identityplatform.NewTenantInboundSamlConfig(ctx, "tenant_saml_config", &identityplatform.TenantInboundSamlConfigArgs{
/// 			Name:        pulumi.String("saml.tf-config"),
/// 			DisplayName: pulumi.String("Display Name"),
/// 			Tenant:      tenant.Name,
/// 			IdpConfig: &identityplatform.TenantInboundSamlConfigIdpConfigArgs{
/// 				IdpEntityId: pulumi.String("tf-idp"),
/// 				SignRequest: pulumi.Bool(true),
/// 				SsoUrl:      pulumi.String("https://example.com"),
/// 				IdpCertificates: identityplatform.TenantInboundSamlConfigIdpConfigIdpCertificateArray{
/// 					&identityplatform.TenantInboundSamlConfigIdpConfigIdpCertificateArgs{
/// 						X509Certificate: pulumi.String(invokeFile.Result),
/// 					},
/// 				},
/// 			},
/// 			SpConfig: &identityplatform.TenantInboundSamlConfigSpConfigArgs{
/// 				SpEntityId:  pulumi.String("tf-sp"),
/// 				CallbackUri: pulumi.String("https://example.com"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_identityplatform_tenant" "tenant" {
///   display_name = "tenant"
/// }
/// resource "gcp_identityplatform_tenantinboundsamlconfig" "tenant_saml_config" {
///   name         = "saml.tf-config"
///   display_name = "Display Name"
///   tenant       = gcp_identityplatform_tenant.tenant.name
///   idp_config = {
///     idp_entity_id = "tf-idp"
///     sign_request  = true
///     sso_url       = "https://example.com"
///     idp_certificates = [{
///       "x509Certificate" = file("test-fixtures/rsa_cert.pem")
///     }]
///   }
///   sp_config = {
///     sp_entity_id = "tf-sp"
///     callback_uri = "https://example.com"
///   }
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
/// import com.pulumi.gcp.identityplatform.TenantInboundSamlConfig;
/// import com.pulumi.gcp.identityplatform.TenantInboundSamlConfigArgs;
/// import com.pulumi.gcp.identityplatform.inputs.TenantInboundSamlConfigIdpConfigArgs;
/// import com.pulumi.gcp.identityplatform.inputs.TenantInboundSamlConfigIdpConfigIdpCertificateArgs;
/// import com.pulumi.gcp.identityplatform.inputs.TenantInboundSamlConfigSpConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var tenantSamlConfig = new TenantInboundSamlConfig("tenantSamlConfig", TenantInboundSamlConfigArgs.builder()
///             .name("saml.tf-config")
///             .displayName("Display Name")
///             .tenant(tenant.name())
///             .idpConfig(TenantInboundSamlConfigIdpConfigArgs.builder()
///                 .idpEntityId("tf-idp")
///                 .signRequest(true)
///                 .ssoUrl("https://example.com")
///                 .idpCertificates(TenantInboundSamlConfigIdpConfigIdpCertificateArgs.builder()
///                     .x509Certificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/rsa_cert.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .spConfig(TenantInboundSamlConfigSpConfigArgs.builder()
///                 .spEntityId("tf-sp")
///                 .callbackUri("https://example.com")
///                 .build())
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
///   tenantSamlConfig:
///     type: gcp:identityplatform:TenantInboundSamlConfig
///     name: tenant_saml_config
///     properties:
///       name: saml.tf-config
///       displayName: Display Name
///       tenant: ${tenant.name}
///       idpConfig:
///         idpEntityId: tf-idp
///         signRequest: true
///         ssoUrl: https://example.com
///         idpCertificates:
///           - x509Certificate:
///               fn::invoke:
///                 function: std:file
///                 arguments:
///                   input: test-fixtures/rsa_cert.pem
///                 return: result
///       spConfig:
///         spEntityId: tf-sp
///         callbackUri: https://example.com
/// ```
///
///
/// ## Import
///
/// TenantInboundSamlConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{tenant}}/inboundSamlConfigs/{{name}}`
/// * `{{project}}/{{tenant}}/{{name}}`
/// * `{{tenant}}/{{name}}`
///
///
/// When using the `pulumi import` command, TenantInboundSamlConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig default projects/{{project}}/tenants/{{tenant}}/inboundSamlConfigs/{{name}}
/// $ pulumi import gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig default {{project}}/{{tenant}}/{{name}}
/// $ pulumi import gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig default {{tenant}}/{{name}}
/// ```
class TenantInboundSamlConfig extends pulumi.CustomResource {
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
  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  late final pulumi.Output<TenantInboundSamlConfigIdpConfig> idpConfig;
  /// The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// hyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an
  /// alphanumeric character, and have at least 2 characters.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// and accept an authentication assertion issued by a SAML identity provider.
  /// Structure is documented below.
  late final pulumi.Output<TenantInboundSamlConfigSpConfig> spConfig;
  /// The name of the tenant where this inbound SAML config resource exists
  late final pulumi.Output<String> tenant;

  /// Creates a new [TenantInboundSamlConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantInboundSamlConfig]. {@macro pulumi_identityplatform_tenant_inbound_saml_config_tenant_inbound_saml_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantInboundSamlConfig(
    String name, {
    TenantInboundSamlConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    idpConfig = registerOutput<TenantInboundSamlConfigIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantInboundSamlConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spConfig = registerOutput<TenantInboundSamlConfigSpConfig>('spConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantInboundSamlConfigSpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenant = registerOutput<String>('tenant');
  }

  /// Gets an existing [TenantInboundSamlConfig] resource's state with the given [name] and [id].
  static TenantInboundSamlConfig get(
    String name,
    pulumi.Input<String> id, {
    TenantInboundSamlConfigState? state,
  }) {
    return TenantInboundSamlConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TenantInboundSamlConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    idpConfig = registerOutput<TenantInboundSamlConfigIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantInboundSamlConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spConfig = registerOutput<TenantInboundSamlConfigSpConfig>('spConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantInboundSamlConfigSpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenant = registerOutput<String>('tenant');
  }
}
