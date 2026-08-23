import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_config_args.dart';
import 'inbound_saml_config_idp_config.dart';
import 'inbound_saml_config_sp_config.dart';
import 'inbound_saml_config_state.dart';

/// Inbound SAML configuration for a Identity Toolkit project.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Inbound Saml Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const samlConfig = new gcp.identityplatform.InboundSamlConfig("saml_config", {
///     name: "saml.tf-config",
///     displayName: "Display Name",
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
/// saml_config = gcp.identityplatform.InboundSamlConfig("saml_config",
///     name="saml.tf-config",
///     display_name="Display Name",
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
///     var samlConfig = new Gcp.IdentityPlatform.InboundSamlConfig("saml_config", new()
///     {
///         Name = "saml.tf-config",
///         DisplayName = "Display Name",
///         IdpConfig = new Gcp.IdentityPlatform.Inputs.InboundSamlConfigIdpConfigArgs
///         {
///             IdpEntityId = "tf-idp",
///             SignRequest = true,
///             SsoUrl = "https://example.com",
///             IdpCertificates = new[]
///             {
///                 new Gcp.IdentityPlatform.Inputs.InboundSamlConfigIdpConfigIdpCertificateArgs
///                 {
///                     X509Certificate = Std.File.Invoke(new()
///                     {
///                         Input = "test-fixtures/rsa_cert.pem",
///                     }).Apply(invoke => invoke.Result),
///                 },
///             },
///         },
///         SpConfig = new Gcp.IdentityPlatform.Inputs.InboundSamlConfigSpConfigArgs
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/rsa_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identityplatform.NewInboundSamlConfig(ctx, "saml_config", &identityplatform.InboundSamlConfigArgs{
/// 			Name:        pulumi.String("saml.tf-config"),
/// 			DisplayName: pulumi.String("Display Name"),
/// 			IdpConfig: &identityplatform.InboundSamlConfigIdpConfigArgs{
/// 				IdpEntityId: pulumi.String("tf-idp"),
/// 				SignRequest: pulumi.Bool(true),
/// 				SsoUrl:      pulumi.String("https://example.com"),
/// 				IdpCertificates: identityplatform.InboundSamlConfigIdpConfigIdpCertificateArray{
/// 					&identityplatform.InboundSamlConfigIdpConfigIdpCertificateArgs{
/// 						X509Certificate: pulumi.String(invokeFile.Result),
/// 					},
/// 				},
/// 			},
/// 			SpConfig: &identityplatform.InboundSamlConfigSpConfigArgs{
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
/// resource "gcp_identityplatform_inboundsamlconfig" "saml_config" {
///   name         = "saml.tf-config"
///   display_name = "Display Name"
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
/// import com.pulumi.gcp.identityplatform.InboundSamlConfig;
/// import com.pulumi.gcp.identityplatform.InboundSamlConfigArgs;
/// import com.pulumi.gcp.identityplatform.inputs.InboundSamlConfigIdpConfigArgs;
/// import com.pulumi.gcp.identityplatform.inputs.InboundSamlConfigIdpConfigIdpCertificateArgs;
/// import com.pulumi.gcp.identityplatform.inputs.InboundSamlConfigSpConfigArgs;
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
///         var samlConfig = new InboundSamlConfig("samlConfig", InboundSamlConfigArgs.builder()
///             .name("saml.tf-config")
///             .displayName("Display Name")
///             .idpConfig(InboundSamlConfigIdpConfigArgs.builder()
///                 .idpEntityId("tf-idp")
///                 .signRequest(true)
///                 .ssoUrl("https://example.com")
///                 .idpCertificates(InboundSamlConfigIdpConfigIdpCertificateArgs.builder()
///                     .x509Certificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/rsa_cert.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .spConfig(InboundSamlConfigSpConfigArgs.builder()
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
///   samlConfig:
///     type: gcp:identityplatform:InboundSamlConfig
///     name: saml_config
///     properties:
///       name: saml.tf-config
///       displayName: Display Name
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
/// InboundSamlConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/inboundSamlConfigs/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, InboundSamlConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/inboundSamlConfig:InboundSamlConfig default projects/{{project}}/inboundSamlConfigs/{{name}}
/// $ pulumi import gcp:identityplatform/inboundSamlConfig:InboundSamlConfig default {{project}}/{{name}}
/// $ pulumi import gcp:identityplatform/inboundSamlConfig:InboundSamlConfig default {{name}}
/// ```
class InboundSamlConfig extends pulumi.CustomResource {
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
  late final pulumi.Output<InboundSamlConfigIdpConfig> idpConfig;
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
  late final pulumi.Output<InboundSamlConfigSpConfig> spConfig;

  /// Creates a new [InboundSamlConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundSamlConfig]. {@macro pulumi_identityplatform_inbound_saml_config_inbound_saml_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundSamlConfig(
    String name, {
    InboundSamlConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/inboundSamlConfig:InboundSamlConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    idpConfig = registerOutput<InboundSamlConfigIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundSamlConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spConfig = registerOutput<InboundSamlConfigSpConfig>('spConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundSamlConfigSpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [InboundSamlConfig] resource's state with the given [name] and [id].
  static InboundSamlConfig get(
    String name,
    pulumi.Input<String> id, {
    InboundSamlConfigState? state,
  }) {
    return InboundSamlConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InboundSamlConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/inboundSamlConfig:InboundSamlConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    idpConfig = registerOutput<InboundSamlConfigIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundSamlConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spConfig = registerOutput<InboundSamlConfigSpConfig>('spConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundSamlConfigSpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
