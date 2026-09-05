import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_exclusion_args.dart';
import 'organization_exclusion_state.dart';

/// Manages an organization-level logging exclusion. For more information see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/organizations.exclusions)
/// * How-to Guides
/// * [Excluding Logs](https://cloud.google.com/logging/docs/exclusions)
///
/// &gt; You can specify exclusions for log sinks created by the provider by using the exclusions field of `gcp.logging.OrganizationSink`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_exclusion = new gcp.logging.OrganizationExclusion("my-exclusion", {
///     name: "my-instance-debug-exclusion",
///     orgId: "123456789",
///     description: "Exclude GCE instance debug logs",
///     filter: "resource.type = gce_instance AND severity <= DEBUG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_exclusion = gcp.logging.OrganizationExclusion("my-exclusion",
///     name="my-instance-debug-exclusion",
///     org_id="123456789",
///     description="Exclude GCE instance debug logs",
///     filter="resource.type = gce_instance AND severity <= DEBUG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_exclusion = new Gcp.Logging.OrganizationExclusion("my-exclusion", new()
///     {
///         Name = "my-instance-debug-exclusion",
///         OrgId = "123456789",
///         Description = "Exclude GCE instance debug logs",
///         Filter = "resource.type = gce_instance AND severity <= DEBUG",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewOrganizationExclusion(ctx, "my-exclusion", &logging.OrganizationExclusionArgs{
/// 			Name:        pulumi.String("my-instance-debug-exclusion"),
/// 			OrgId:       pulumi.String("123456789"),
/// 			Description: pulumi.String("Exclude GCE instance debug logs"),
/// 			Filter:      pulumi.String("resource.type = gce_instance AND severity <= DEBUG"),
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
/// resource "gcp_logging_organizationexclusion" "my-exclusion" {
///   name        = "my-instance-debug-exclusion"
///   org_id      = "123456789"
///   description = "Exclude GCE instance debug logs"
///   filter      = "resource.type = gce_instance AND severity <= DEBUG"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.OrganizationExclusion;
/// import com.pulumi.gcp.logging.OrganizationExclusionArgs;
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
///         var my_exclusion = new OrganizationExclusion("my-exclusion", OrganizationExclusionArgs.builder()
///             .name("my-instance-debug-exclusion")
///             .orgId("123456789")
///             .description("Exclude GCE instance debug logs")
///             .filter("resource.type = gce_instance AND severity <= DEBUG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-exclusion:
///     type: gcp:logging:OrganizationExclusion
///     properties:
///       name: my-instance-debug-exclusion
///       orgId: '123456789'
///       description: Exclude GCE instance debug logs
///       filter: resource.type = gce_instance AND severity <= DEBUG
/// ```
///
///
/// ## Import
///
/// Organization-level logging exclusions can be imported using their URI, e.g.
///
/// * `organizations/{{organization}}/exclusions/{{name}}`
///
///
/// When using the `pulumi import` command, organization-level logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationExclusion:OrganizationExclusion default organizations/{{organization}}/exclusions/{{name}}
/// ```
class OrganizationExclusion extends pulumi.CustomResource {
  /// A human-readable description.
  late final pulumi.Output<String?> description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final pulumi.Output<bool?> disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String> filter;
  /// The name of the logging exclusion.
  late final pulumi.Output<String> name;
  /// The organization to create the exclusion in.
  late final pulumi.Output<String> orgId;

  /// Creates a new [OrganizationExclusion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationExclusion]. {@macro pulumi_logging_organization_exclusion_organization_exclusion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationExclusion(
    String name, {
    OrganizationExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationExclusion:OrganizationExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
  }

  /// Gets an existing [OrganizationExclusion] resource's state with the given [name] and [id].
  static OrganizationExclusion get(
    String name,
    pulumi.Input<String> id, {
    OrganizationExclusionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationExclusion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationExclusion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationExclusion:OrganizationExclusion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
  }

  /// Creates a typed reference to an existing [OrganizationExclusion] resource.
  OrganizationExclusion.reference(String urn)
    : super(
        'gcp:logging/organizationExclusion:OrganizationExclusion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
  }
}
