import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_source_args.dart';
import 'v2_organization_source_state.dart';

/// A Cloud Security Command Center's (Cloud SCC) finding source. A finding
/// source is an entity or a mechanism that can produce a finding. A source is
/// like a container of findings that come from the same scanner, logger,
/// monitor, etc.
///
///
/// To get more information about OrganizationSource, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/organizations.sources)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Source Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customSource = new gcp.securitycenter.Source("custom_source", {
///     displayName: "My Source",
///     organization: "123456789",
///     description: "My custom Cloud Security Command Center Finding Source",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_source = gcp.securitycenter.Source("custom_source",
///     display_name="My Source",
///     organization="123456789",
///     description="My custom Cloud Security Command Center Finding Source")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customSource = new Gcp.SecurityCenter.Source("custom_source", new()
///     {
///         DisplayName = "My Source",
///         Organization = "123456789",
///         Description = "My custom Cloud Security Command Center Finding Source",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewSource(ctx, "custom_source", &securitycenter.SourceArgs{
/// 			DisplayName:  pulumi.String("My Source"),
/// 			Organization: pulumi.String("123456789"),
/// 			Description:  pulumi.String("My custom Cloud Security Command Center Finding Source"),
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
/// resource "gcp_securitycenter_source" "custom_source" {
///   display_name = "My Source"
///   organization = "123456789"
///   description  = "My custom Cloud Security Command Center Finding Source"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.Source;
/// import com.pulumi.gcp.securitycenter.SourceArgs;
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
///         var customSource = new Source("customSource", SourceArgs.builder()
///             .displayName("My Source")
///             .organization("123456789")
///             .description("My custom Cloud Security Command Center Finding Source")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customSource:
///     type: gcp:securitycenter:Source
///     name: custom_source
///     properties:
///       displayName: My Source
///       organization: '123456789'
///       description: My custom Cloud Security Command Center Finding Source
/// ```
///
///
/// ## Import
///
/// OrganizationSource can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/sources/{{name}}`
/// * `{{organization}}/{{name}}`
///
///
/// When using the `pulumi import` command, OrganizationSource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSource:V2OrganizationSource default organizations/{{organization}}/sources/{{name}}
/// $ pulumi import gcp:securitycenter/v2OrganizationSource:V2OrganizationSource default {{organization}}/{{name}}
/// ```
class V2OrganizationSource extends pulumi.CustomResource {
  /// The description of the source (max of 1024 characters).
  late final pulumi.Output<String?> description;
  /// The source’s display name. A source’s display name must be unique
  /// amongst its siblings, for example, two sources with the same parent
  /// can't share the same display name. The display name must start and end
  /// with a letter or digit, may contain letters, digits, spaces, hyphens,
  /// and underscores, and can be no longer than 32 characters.
  late final pulumi.Output<String> displayName;
  /// The resource name of this source, in the format
  /// `organizations/{{organization}}/sources/{{source}}`.
  late final pulumi.Output<String> name;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  late final pulumi.Output<String> organization;

  /// Creates a new [V2OrganizationSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2OrganizationSource]. {@macro pulumi_securitycenter_v2_organization_source_v2_organization_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2OrganizationSource(
    String name, {
    V2OrganizationSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationSource:V2OrganizationSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
  }

  /// Gets an existing [V2OrganizationSource] resource's state with the given [name] and [id].
  static V2OrganizationSource get(
    String name,
    pulumi.Input<String> id, {
    V2OrganizationSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2OrganizationSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2OrganizationSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationSource:V2OrganizationSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
  }

  /// Creates a typed reference to an existing [V2OrganizationSource] resource.
  V2OrganizationSource.reference(String urn)
    : super(
        'gcp:securitycenter/v2OrganizationSource:V2OrganizationSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
  }
}
