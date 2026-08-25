import 'package:pulumi/pulumi.dart' as pulumi;
import 'soar_domain_args.dart';
import 'soar_domain_state.dart';

/// A SOAR domain designate a domain as internal, ensuring that entities associated with it are treated as organizational assets rather than external threats during ingestion.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about SoarDomain, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1beta/projects.locations.instances.soarDomains)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Soardomain Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.SoarDomain("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "test.com",
///     environmentsJson: "[\"Default Environment\"]",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.SoarDomain("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="test.com",
///     environments_json="[\"Default Environment\"]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.SoarDomain("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "test.com",
///         EnvironmentsJson = "[\"Default Environment\"]",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewSoarDomain(ctx, "example", &chronicle.SoarDomainArgs{
/// 			Location:         pulumi.String("us"),
/// 			Instance:         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName:      pulumi.String("test.com"),
/// 			EnvironmentsJson: pulumi.String("[\"Default Environment\"]"),
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
/// resource "gcp_chronicle_soardomain" "example" {
///   location          = "us"
///   instance          = "00000000-0000-0000-0000-000000000000"
///   display_name      = "test.com"
///   environments_json = "[\"Default Environment\"]"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.SoarDomain;
/// import com.pulumi.gcp.chronicle.SoarDomainArgs;
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
///         var example = new SoarDomain("example", SoarDomainArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("test.com")
///             .environmentsJson("[\"Default Environment\"]")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:SoarDomain
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: test.com
///       environmentsJson: '["Default Environment"]'
/// ```
///
///
/// ## Import
///
/// SoarDomain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/soarDomains/{{soar_domain_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{soar_domain_id}}`
/// * `{{location}}/{{instance}}/{{soar_domain_id}}`
///
///
/// When using the `pulumi import` command, SoarDomain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/soarDomain:SoarDomain default projects/{{project}}/locations/{{location}}/instances/{{instance}}/soarDomains/{{soar_domain_id}}
/// $ pulumi import gcp:chronicle/soarDomain:SoarDomain default {{project}}/{{location}}/{{instance}}/{{soar_domain_id}}
/// $ pulumi import gcp:chronicle/soarDomain:SoarDomain default {{location}}/{{instance}}/{{soar_domain_id}}
/// ```
class SoarDomain extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// SoarDomain display name, limited to 4096 characters.
  late final pulumi.Output<String> displayName;
  /// SoarDomain associated logical environments (json).
  late final pulumi.Output<String> environmentsJson;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The unique name(ID) of the SoarDomain.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/soarDomains/{soar_domain_id}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Id of the domain record.
  late final pulumi.Output<String> soarDomainId;

  /// Creates a new [SoarDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SoarDomain]. {@macro pulumi_chronicle_soar_domain_soar_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SoarDomain(
    String name, {
    SoarDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/soarDomain:SoarDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    environmentsJson = registerOutput<String>('environmentsJson');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    soarDomainId = registerOutput<String>('soarDomainId');
  }

  /// Gets an existing [SoarDomain] resource's state with the given [name] and [id].
  static SoarDomain get(
    String name,
    pulumi.Input<String> id, {
    SoarDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SoarDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SoarDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/soarDomain:SoarDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    environmentsJson = registerOutput<String>('environmentsJson');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    soarDomainId = registerOutput<String>('soarDomainId');
  }

  /// Creates a typed reference to an existing [SoarDomain] resource.
  SoarDomain.reference(String urn)
    : super(
        'gcp:chronicle/soarDomain:SoarDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    environmentsJson = registerOutput<String>('environmentsJson');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    soarDomainId = registerOutput<String>('soarDomainId');
  }
}
