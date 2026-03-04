import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_args.dart';
import 'domain_mapping_ssl_settings.dart';
import 'domain_mapping_state.dart';

/// A domain serving an App Engine application.
///
///
/// To get more information about DomainMapping, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.domainMappings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/standard/python/mapping-custom-domains)
///
/// ## Example Usage
///
/// ### App Engine Domain Mapping Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const domainMapping = new gcp.appengine.DomainMapping("domain_mapping", {
///     domainName: "verified-domain.com",
///     sslSettings: {
///         sslManagementType: "AUTOMATIC",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// domain_mapping = gcp.appengine.DomainMapping("domain_mapping",
///     domain_name="verified-domain.com",
///     ssl_settings={
///         "ssl_management_type": "AUTOMATIC",
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
///     var domainMapping = new Gcp.AppEngine.DomainMapping("domain_mapping", new()
///     {
///         DomainName = "verified-domain.com",
///         SslSettings = new Gcp.AppEngine.Inputs.DomainMappingSslSettingsArgs
///         {
///             SslManagementType = "AUTOMATIC",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appengine.NewDomainMapping(ctx, "domain_mapping", &appengine.DomainMappingArgs{
/// 			DomainName: pulumi.String("verified-domain.com"),
/// 			SslSettings: &appengine.DomainMappingSslSettingsArgs{
/// 				SslManagementType: pulumi.String("AUTOMATIC"),
/// 			},
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
/// import com.pulumi.gcp.appengine.DomainMapping;
/// import com.pulumi.gcp.appengine.DomainMappingArgs;
/// import com.pulumi.gcp.appengine.inputs.DomainMappingSslSettingsArgs;
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
///         var domainMapping = new DomainMapping("domainMapping", DomainMappingArgs.builder()
///             .domainName("verified-domain.com")
///             .sslSettings(DomainMappingSslSettingsArgs.builder()
///                 .sslManagementType("AUTOMATIC")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   domainMapping:
///     type: gcp:appengine:DomainMapping
///     name: domain_mapping
///     properties:
///       domainName: verified-domain.com
///       sslSettings:
///         sslManagementType: AUTOMATIC
/// ```
///
///
/// ## Import
///
/// DomainMapping can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/domainMappings/{{domain_name}}`
///
/// * `{{project}}/{{domain_name}}`
///
/// * `{{domain_name}}`
///
/// When using the `pulumi import` command, DomainMapping can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/domainMapping:DomainMapping default apps/{{project}}/domainMappings/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/domainMapping:DomainMapping default {{project}}/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/domainMapping:DomainMapping default {{domain_name}}
/// ```
class DomainMapping extends pulumi.CustomResource {
  /// Relative name of the domain serving the application. Example: example.com.
  late final pulumi.Output<String> domainName;

  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  late final pulumi.Output<String> name;

  /// Whether the domain creation should override any existing mappings for this domain.
  /// By default, overrides are rejected.
  /// Default value is `STRICT`.
  /// Possible values are: `STRICT`, `OVERRIDE`.
  late final pulumi.Output<String?> overrideStrategy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS
  /// configuration in order to serve the application via this domain mapping.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> resourceRecords;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  /// Structure is documented below.
  late final pulumi.Output<DomainMappingSslSettings> sslSettings;

  /// Creates a new [DomainMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainMapping]. {@macro pulumi_appengine_domain_mapping_domain_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainMapping(
    String name, {
    DomainMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:appengine/domainMapping:DomainMapping',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    overrideStrategy = registerOutput<String?>('overrideStrategy');
    project = registerOutput<String>('project');
    resourceRecords = registerOutput<List<Map<String, dynamic>>>(
      'resourceRecords',
    );
    sslSettings = registerOutput<DomainMappingSslSettings>('sslSettings');
  }

  /// Gets an existing [DomainMapping] resource's state with the given [name] and [id].
  static DomainMapping get(
    String name,
    pulumi.Input<String> id, {
    DomainMappingState? state,
  }) {
    return DomainMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:appengine/domainMapping:DomainMapping',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    overrideStrategy = registerOutput<String?>('overrideStrategy');
    project = registerOutput<String>('project');
    resourceRecords = registerOutput<List<Map<String, dynamic>>>(
      'resourceRecords',
    );
    sslSettings = registerOutput<DomainMappingSslSettings>('sslSettings');
  }
}
