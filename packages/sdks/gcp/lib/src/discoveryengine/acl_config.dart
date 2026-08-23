import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_config_args.dart';
import 'acl_config_idp_config.dart';
import 'acl_config_state.dart';

/// Access Control Configuration.
///
///
/// To get more information about AclConfig, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.discoveryengine.v1alpha#aclconfigservice)
///
/// ## Example Usage
///
/// ### Discoveryengine Aclconfig Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.AclConfig("basic", {
///     location: "global",
///     idpConfig: {
///         idpType: "THIRD_PARTY",
///         externalIdpConfig: {
///             workforcePoolName: "locations/global/workforcePools/cloud-console-pool-manual",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.AclConfig("basic",
///     location="global",
///     idp_config={
///         "idp_type": "THIRD_PARTY",
///         "external_idp_config": {
///             "workforce_pool_name": "locations/global/workforcePools/cloud-console-pool-manual",
///         },
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
///     var basic = new Gcp.DiscoveryEngine.AclConfig("basic", new()
///     {
///         Location = "global",
///         IdpConfig = new Gcp.DiscoveryEngine.Inputs.AclConfigIdpConfigArgs
///         {
///             IdpType = "THIRD_PARTY",
///             ExternalIdpConfig = new Gcp.DiscoveryEngine.Inputs.AclConfigIdpConfigExternalIdpConfigArgs
///             {
///                 WorkforcePoolName = "locations/global/workforcePools/cloud-console-pool-manual",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewAclConfig(ctx, "basic", &discoveryengine.AclConfigArgs{
/// 			Location: pulumi.String("global"),
/// 			IdpConfig: &discoveryengine.AclConfigIdpConfigArgs{
/// 				IdpType: pulumi.String("THIRD_PARTY"),
/// 				ExternalIdpConfig: &discoveryengine.AclConfigIdpConfigExternalIdpConfigArgs{
/// 					WorkforcePoolName: pulumi.String("locations/global/workforcePools/cloud-console-pool-manual"),
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
/// resource "gcp_discoveryengine_aclconfig" "basic" {
///   location = "global"
///   idp_config = {
///     idp_type = "THIRD_PARTY"
///     external_idp_config = {
///       workforce_pool_name = "locations/global/workforcePools/cloud-console-pool-manual"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.AclConfig;
/// import com.pulumi.gcp.discoveryengine.AclConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.AclConfigIdpConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.AclConfigIdpConfigExternalIdpConfigArgs;
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
///         var basic = new AclConfig("basic", AclConfigArgs.builder()
///             .location("global")
///             .idpConfig(AclConfigIdpConfigArgs.builder()
///                 .idpType("THIRD_PARTY")
///                 .externalIdpConfig(AclConfigIdpConfigExternalIdpConfigArgs.builder()
///                     .workforcePoolName("locations/global/workforcePools/cloud-console-pool-manual")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:AclConfig
///     properties:
///       location: global
///       idpConfig:
///         idpType: THIRD_PARTY
///         externalIdpConfig:
///           workforcePoolName: locations/global/workforcePools/cloud-console-pool-manual
/// ```
///
///
/// ## Import
///
/// AclConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/aclConfig`
/// * `{{project}}/{{location}}`
/// * `{{location}}`
///
///
/// When using the `pulumi import` command, AclConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/aclConfig:AclConfig default projects/{{project}}/locations/{{location}}/aclConfig
/// $ pulumi import gcp:discoveryengine/aclConfig:AclConfig default {{project}}/{{location}}
/// $ pulumi import gcp:discoveryengine/aclConfig:AclConfig default {{location}}
/// ```
class AclConfig extends pulumi.CustomResource {
  /// Identity provider config.
  /// Structure is documented below.
  late final pulumi.Output<AclConfigIdpConfig?> idpConfig;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;
  /// The unique full resource name of the aclConfig. Values are of the format
  /// `projects/{project}/locations/{location}/aclConfig`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [AclConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclConfig]. {@macro pulumi_discoveryengine_acl_config_acl_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclConfig(
    String name, {
    AclConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/aclConfig:AclConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    idpConfig = registerOutput<AclConfigIdpConfig?>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AclConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [AclConfig] resource's state with the given [name] and [id].
  static AclConfig get(
    String name,
    pulumi.Input<String> id, {
    AclConfigState? state,
  }) {
    return AclConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AclConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/aclConfig:AclConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    idpConfig = registerOutput<AclConfigIdpConfig?>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AclConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
