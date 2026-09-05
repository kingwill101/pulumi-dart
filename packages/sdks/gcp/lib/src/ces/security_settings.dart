import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_settings_args.dart';
import 'security_settings_endpoint_control_policy.dart';
import 'security_settings_state.dart';

/// Security settings for a location in Customer Engagement Suite.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about SecuritySettings, see:
///
/// * [API documentation](https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/reference/rest/v1beta/SecuritySettings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/customer-engagement-ai/docs)
///
/// ## Example Usage
///
/// ### Ces Security Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const securitySettings = new gcp.ces.SecuritySettings("security_settings", {
///     location: "us",
///     endpointControlPolicy: {
///         enforcementScope: "ALWAYS",
///         allowedOrigins: [
///             "https://example.com",
///             "https://google.com",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// security_settings = gcp.ces.SecuritySettings("security_settings",
///     location="us",
///     endpoint_control_policy={
///         "enforcement_scope": "ALWAYS",
///         "allowed_origins": [
///             "https://example.com",
///             "https://google.com",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securitySettings = new Gcp.Ces.SecuritySettings("security_settings", new()
///     {
///         Location = "us",
///         EndpointControlPolicy = new Gcp.Ces.Inputs.SecuritySettingsEndpointControlPolicyArgs
///         {
///             EnforcementScope = "ALWAYS",
///             AllowedOrigins = new[]
///             {
///                 "https://example.com",
///                 "https://google.com",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ces.NewSecuritySettings(ctx, "security_settings", &ces.SecuritySettingsArgs{
/// 			Location: pulumi.String("us"),
/// 			EndpointControlPolicy: &ces.SecuritySettingsEndpointControlPolicyArgs{
/// 				EnforcementScope: pulumi.String("ALWAYS"),
/// 				AllowedOrigins: pulumi.StringArray{
/// 					pulumi.String("https://example.com"),
/// 					pulumi.String("https://google.com"),
/// 				},
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
///   }
/// }
///
/// resource "gcp_ces_securitysettings" "security_settings" {
///   location = "us"
///   endpoint_control_policy = {
///     enforcement_scope = "ALWAYS"
///     allowed_origins   = ["https://example.com", "https://google.com"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.SecuritySettings;
/// import com.pulumi.gcp.ces.SecuritySettingsArgs;
/// import com.pulumi.gcp.ces.inputs.SecuritySettingsEndpointControlPolicyArgs;
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
///         var securitySettings = new SecuritySettings("securitySettings", SecuritySettingsArgs.builder()
///             .location("us")
///             .endpointControlPolicy(SecuritySettingsEndpointControlPolicyArgs.builder()
///                 .enforcementScope("ALWAYS")
///                 .allowedOrigins(
///                     "https://example.com",
///                     "https://google.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   securitySettings:
///     type: gcp:ces:SecuritySettings
///     name: security_settings
///     properties:
///       location: us
///       endpointControlPolicy:
///         enforcementScope: ALWAYS
///         allowedOrigins:
///           - https://example.com
///           - https://google.com
/// ```
///
///
/// ## Import
///
/// SecuritySettings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/securitySettings`
/// * `{{project}}/{{location}}`
/// * `{{location}}`
///
///
/// When using the `pulumi import` command, SecuritySettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/securitySettings:SecuritySettings default projects/{{project}}/locations/{{location}}/securitySettings
/// $ pulumi import gcp:ces/securitySettings:SecuritySettings default {{project}}/{{location}}
/// $ pulumi import gcp:ces/securitySettings:SecuritySettings default {{location}}
/// ```
class SecuritySettings extends pulumi.CustomResource {
  /// Output only. Timestamp when the security settings were created.
  late final pulumi.Output<String> createTime;
  /// Optional. Endpoint control related settings.
  /// Structure is documented below.
  late final pulumi.Output<SecuritySettingsEndpointControlPolicy?> endpointControlPolicy;
  /// Output only. Etag of the resource.
  late final pulumi.Output<String> etag;
  /// The location of the security settings.
  late final pulumi.Output<String> location;
  /// Identifier. The unique identifier of the security settings.
  /// Format: projects/{project}/locations/{location}/securitySettings
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. Timestamp when the security settings were last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SecuritySettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecuritySettings]. {@macro pulumi_ces_security_settings_security_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecuritySettings(
    String name, {
    SecuritySettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/securitySettings:SecuritySettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    endpointControlPolicy = registerOutput<SecuritySettingsEndpointControlPolicy?>('endpointControlPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecuritySettingsEndpointControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [SecuritySettings] resource's state with the given [name] and [id].
  static SecuritySettings get(
    String name,
    pulumi.Input<String> id, {
    SecuritySettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecuritySettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecuritySettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/securitySettings:SecuritySettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    endpointControlPolicy = registerOutput<SecuritySettingsEndpointControlPolicy?>('endpointControlPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecuritySettingsEndpointControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [SecuritySettings] resource.
  SecuritySettings.reference(String urn)
    : super(
        'gcp:ces/securitySettings:SecuritySettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    endpointControlPolicy = registerOutput<SecuritySettingsEndpointControlPolicy?>('endpointControlPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecuritySettingsEndpointControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
