import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'api_state.dart';

/// A consumable API that can be used by multiple Gateways.
///
/// To get more information about Api, see:
///
/// * [API documentation](https://cloud.google.com/api-gateway/docs/reference/rest/v1beta/projects.locations.apis)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/api-gateway/docs/quickstart)
///
/// ## Example Usage
///
/// ### Apigateway Api Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const api = new gcp.apigateway.Api("api", {apiId: "my-api"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// api = gcp.apigateway.Api("api", api_id="my-api")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new Gcp.ApiGateway.Api("api", new()
///     {
///         ApiId = "my-api",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewApi(ctx, "api", &apigateway.ApiArgs{
/// 			ApiId: pulumi.String("my-api"),
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
/// import com.pulumi.gcp.apigateway.Api;
/// import com.pulumi.gcp.apigateway.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("my-api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   api:
///     type: gcp:apigateway:Api
///     properties:
///       apiId: my-api
/// ```
///
///
/// ## Import
///
/// Api can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/apis/{{api_id}}`
///
/// * `{{project}}/{{api_id}}`
///
/// * `{{api_id}}`
///
/// When using the `pulumi import` command, Api can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigateway/api:Api default projects/{{project}}/locations/global/apis/{{api_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigateway/api:Api default {{project}}/{{api_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigateway/api:Api default {{api_id}}
/// ```
class Api extends pulumi.CustomResource {
  /// Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  late final pulumi.Output<String> apiId;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> createTime;

  /// A user-visible name for the API.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
  /// If not specified, a new Service will automatically be created in the same project as this API.
  late final pulumi.Output<String> managedService;

  /// The resource name of the API. Format `projects/{{project}}/locations/global/apis/{{apiId}}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apigateway_api_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(String name, {ApiArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:apigateway/api:Api',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiId = registerOutput<String>('apiId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    managedService = registerOutput<String>('managedService');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(String name, pulumi.Input<String> id, {ApiState? state}) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Api._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigateway/api:Api',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiId = registerOutput<String>('apiId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    managedService = registerOutput<String>('managedService');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
