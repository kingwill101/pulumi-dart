import 'package:pulumi/pulumi.dart' as pulumi;
import 'sso_connector_args.dart';
import 'sso_connector_state.dart';
import 'sso_connector_verification.dart';

/// Accepted Permissions
///
/// - `SSO Connector Read`
/// - `SSO Connector Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleSsoConnector = new cloudflare.SsoConnector("example_sso_connector", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     emailDomain: "example.com",
///     beginVerification: true,
///     useFedrampLanguage: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_sso_connector = cloudflare.SsoConnector("example_sso_connector",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     email_domain="example.com",
///     begin_verification=True,
///     use_fedramp_language=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSsoConnector = new Cloudflare.SsoConnector("example_sso_connector", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         EmailDomain = "example.com",
///         BeginVerification = true,
///         UseFedrampLanguage = false,
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
/// 		_, err := cloudflare.NewSsoConnector(ctx, "example_sso_connector", &cloudflare.SsoConnectorArgs{
/// 			AccountId:          pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			EmailDomain:        pulumi.String("example.com"),
/// 			BeginVerification:  pulumi.Bool(true),
/// 			UseFedrampLanguage: pulumi.Bool(false),
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
/// resource "cloudflare_ssoconnector" "example_sso_connector" {
///   account_id           = "023e105f4ecef8ad9ca31a8372d0c353"
///   email_domain         = "example.com"
///   begin_verification   = true
///   use_fedramp_language = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.SsoConnector;
/// import com.pulumi.cloudflare.SsoConnectorArgs;
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
///         var exampleSsoConnector = new SsoConnector("exampleSsoConnector", SsoConnectorArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .emailDomain("example.com")
///             .beginVerification(true)
///             .useFedrampLanguage(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSsoConnector:
///     type: cloudflare:SsoConnector
///     name: example_sso_connector
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       emailDomain: example.com
///       beginVerification: true
///       useFedrampLanguage: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/ssoConnector:SsoConnector example '<account_id>/<sso_connector_id>'
/// ```
class SsoConnector extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// Begin the verification process after creation
  late final pulumi.Output<bool> beginVerification;
  /// Timestamp for the creation of the SSO connector
  late final pulumi.Output<String> createdOn;
  /// Email domain of the new SSO connector
  late final pulumi.Output<String> emailDomain;
  /// SSO Connector enabled state
  late final pulumi.Output<bool?> enabled;
  /// Timestamp for the last update of the SSO connector
  late final pulumi.Output<String> updatedOn;
  /// Controls the display of FedRAMP language to the user during SSO login
  late final pulumi.Output<bool> useFedrampLanguage;
  late final pulumi.Output<SsoConnectorVerification> verification;

  /// Creates a new [SsoConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SsoConnector]. {@macro pulumi_index_sso_connector_sso_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SsoConnector(
    String name, {
    SsoConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/ssoConnector:SsoConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    beginVerification = registerOutput<bool>('beginVerification');
    createdOn = registerOutput<String>('createdOn');
    emailDomain = registerOutput<String>('emailDomain');
    enabled = registerOutput<bool?>('enabled');
    updatedOn = registerOutput<String>('updatedOn');
    useFedrampLanguage = registerOutput<bool>('useFedrampLanguage');
    verification = registerOutput<SsoConnectorVerification>('verification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SsoConnectorVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SsoConnector] resource's state with the given [name] and [id].
  static SsoConnector get(
    String name,
    pulumi.Input<String> id, {
    SsoConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SsoConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SsoConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/ssoConnector:SsoConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    beginVerification = registerOutput<bool>('beginVerification');
    createdOn = registerOutput<String>('createdOn');
    emailDomain = registerOutput<String>('emailDomain');
    enabled = registerOutput<bool?>('enabled');
    updatedOn = registerOutput<String>('updatedOn');
    useFedrampLanguage = registerOutput<bool>('useFedrampLanguage');
    verification = registerOutput<SsoConnectorVerification>('verification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SsoConnectorVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [SsoConnector] resource.
  SsoConnector.reference(String urn)
    : super(
        'cloudflare:index/ssoConnector:SsoConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    beginVerification = registerOutput<bool>('beginVerification');
    createdOn = registerOutput<String>('createdOn');
    emailDomain = registerOutput<String>('emailDomain');
    enabled = registerOutput<bool?>('enabled');
    updatedOn = registerOutput<String>('updatedOn');
    useFedrampLanguage = registerOutput<bool>('useFedrampLanguage');
    verification = registerOutput<SsoConnectorVerification>('verification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SsoConnectorVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
