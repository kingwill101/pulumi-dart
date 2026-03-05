import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_iam_binding_args.dart';
import 'source_iam_binding_condition.dart';
import 'source_iam_binding_state.dart';

/// A Cloud Security Command Center's (Cloud SCC) finding source. A finding
/// source is an entity or a mechanism that can produce a finding. A source is
/// like a container of findings that come from the same scanner, logger,
/// monitor, etc.
///
///
/// To get more information about Source, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/organizations.sources)
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.Source;
/// import com.pulumi.gcp.securitycenter.SourceArgs;
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
/// Source can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/sources/{{name}}`
///
/// * `{{organization}}/{{name}}`
///
/// When using the `pulumi import` command, Source can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/sourceIamBinding:SourceIamBinding default organizations/{{organization}}/sources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/sourceIamBinding:SourceIamBinding default {{organization}}/{{name}}
/// ```
class SourceIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<SourceIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<List<String>> members;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  late final pulumi.Output<String> organization;
  late final pulumi.Output<String> role;
  late final pulumi.Output<String> source;

  /// Creates a new [SourceIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceIamBinding]. {@macro pulumi_securitycenter_source_iam_binding_source_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceIamBinding(
    String name, {
    SourceIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/sourceIamBinding:SourceIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<SourceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SourceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    organization = registerOutput<String>('organization');
    role = registerOutput<String>('role');
    source = registerOutput<String>('source');
  }

  /// Gets an existing [SourceIamBinding] resource's state with the given [name] and [id].
  static SourceIamBinding get(
    String name,
    pulumi.Input<String> id, {
    SourceIamBindingState? state,
  }) {
    return SourceIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SourceIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/sourceIamBinding:SourceIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<SourceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SourceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    organization = registerOutput<String>('organization');
    role = registerOutput<String>('role');
    source = registerOutput<String>('source');
  }
}
