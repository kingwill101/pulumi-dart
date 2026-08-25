import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_model_args.dart';
import 'engine_model_default_version.dart';
import 'engine_model_state.dart';

/// &gt; **Warning:** This resource is deprecated at the API level and will be removed in a future version of Terraform.
///
/// Represents a machine learning solution.
///
/// A model can have multiple versions, each of which is a deployed, trained model
/// ready to receive prediction requests. The model itself is just a container.
///
///
/// To get more information about Model, see:
///
/// * [API documentation](https://cloud.google.com/ai-platform/prediction/docs/reference/rest/v1/projects.models)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/ai-platform/prediction/docs/deploying-models)
///
/// ## Example Usage
///
/// ### Ml Model Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.ml.EngineModel("default", {
///     name: "default",
///     description: "My model",
///     regions: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.ml.EngineModel("default",
///     name="default",
///     description="My model",
///     regions="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ML.EngineModel("default", new()
///     {
///         Name = "default",
///         Description = "My model",
///         Regions = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ml"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ml.NewEngineModel(ctx, "default", &ml.EngineModelArgs{
/// 			Name:        pulumi.String("default"),
/// 			Description: pulumi.String("My model"),
/// 			Regions:     pulumi.String("us-central1"),
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
/// resource "gcp_ml_enginemodel" "default" {
///   name        = "default"
///   description = "My model"
///   regions     = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ml.EngineModel;
/// import com.pulumi.gcp.ml.EngineModelArgs;
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
///         var default_ = new EngineModel("default", EngineModelArgs.builder()
///             .name("default")
///             .description("My model")
///             .regions("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:ml:EngineModel
///     properties:
///       name: default
///       description: My model
///       regions: us-central1
/// ```
///
/// ### Ml Model Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.ml.EngineModel("default", {
///     name: "default",
///     description: "My model",
///     regions: "us-central1",
///     labels: {
///         my_model: "foo",
///     },
///     onlinePredictionLogging: true,
///     onlinePredictionConsoleLogging: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.ml.EngineModel("default",
///     name="default",
///     description="My model",
///     regions="us-central1",
///     labels={
///         "my_model": "foo",
///     },
///     online_prediction_logging=True,
///     online_prediction_console_logging=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ML.EngineModel("default", new()
///     {
///         Name = "default",
///         Description = "My model",
///         Regions = "us-central1",
///         Labels =
///         {
///             { "my_model", "foo" },
///         },
///         OnlinePredictionLogging = true,
///         OnlinePredictionConsoleLogging = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ml"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ml.NewEngineModel(ctx, "default", &ml.EngineModelArgs{
/// 			Name:        pulumi.String("default"),
/// 			Description: pulumi.String("My model"),
/// 			Regions:     pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"my_model": pulumi.String("foo"),
/// 			},
/// 			OnlinePredictionLogging:        pulumi.Bool(true),
/// 			OnlinePredictionConsoleLogging: pulumi.Bool(true),
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
/// resource "gcp_ml_enginemodel" "default" {
///   name        = "default"
///   description = "My model"
///   regions     = "us-central1"
///   labels = {
///     "my_model" = "foo"
///   }
///   online_prediction_logging         = true
///   online_prediction_console_logging = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ml.EngineModel;
/// import com.pulumi.gcp.ml.EngineModelArgs;
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
///         var default_ = new EngineModel("default", EngineModelArgs.builder()
///             .name("default")
///             .description("My model")
///             .regions("us-central1")
///             .labels(Map.of("my_model", "foo"))
///             .onlinePredictionLogging(true)
///             .onlinePredictionConsoleLogging(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:ml:EngineModel
///     properties:
///       name: default
///       description: My model
///       regions: us-central1
///       labels:
///         my_model: foo
///       onlinePredictionLogging: true
///       onlinePredictionConsoleLogging: true
/// ```
///
///
/// ## Import
///
/// Model can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/models/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Model can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ml/engineModel:EngineModel default projects/{{project}}/models/{{name}}
/// $ pulumi import gcp:ml/engineModel:EngineModel default {{project}}/{{name}}
/// $ pulumi import gcp:ml/engineModel:EngineModel default {{name}}
/// ```
class EngineModel extends pulumi.CustomResource {
  /// The default version of the model. This version will be used to handle
  /// prediction requests that do not specify a version.
  /// Structure is documented below.
  late final pulumi.Output<EngineModelDefaultVersion?> defaultVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description specified for the model when it was created.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// One or more labels that you can add, to organize your models.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name specified for the model.
  late final pulumi.Output<String> name;
  /// If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  late final pulumi.Output<bool?> onlinePredictionConsoleLogging;
  /// If true, online prediction access logs are sent to StackDriver Logging.
  late final pulumi.Output<bool?> onlinePredictionLogging;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The list of regions where the model is going to be deployed.
  /// Currently only one region per model is supported
  late final pulumi.Output<String?> regions;

  /// Creates a new [EngineModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EngineModel]. {@macro pulumi_ml_engine_model_engine_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EngineModel(
    String name, {
    EngineModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ml/engineModel:EngineModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    defaultVersion = registerOutput<EngineModelDefaultVersion?>('defaultVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EngineModelDefaultVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    onlinePredictionConsoleLogging = registerOutput<bool?>('onlinePredictionConsoleLogging');
    onlinePredictionLogging = registerOutput<bool?>('onlinePredictionLogging');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    regions = registerOutput<String?>('regions');
  }

  /// Gets an existing [EngineModel] resource's state with the given [name] and [id].
  static EngineModel get(
    String name,
    pulumi.Input<String> id, {
    EngineModelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EngineModel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EngineModel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ml/engineModel:EngineModel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultVersion = registerOutput<EngineModelDefaultVersion?>('defaultVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EngineModelDefaultVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    onlinePredictionConsoleLogging = registerOutput<bool?>('onlinePredictionConsoleLogging');
    onlinePredictionLogging = registerOutput<bool?>('onlinePredictionLogging');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    regions = registerOutput<String?>('regions');
  }

  /// Creates a typed reference to an existing [EngineModel] resource.
  EngineModel.reference(String urn)
    : super(
        'gcp:ml/engineModel:EngineModel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    defaultVersion = registerOutput<EngineModelDefaultVersion?>('defaultVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EngineModelDefaultVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    onlinePredictionConsoleLogging = registerOutput<bool?>('onlinePredictionConsoleLogging');
    onlinePredictionLogging = registerOutput<bool?>('onlinePredictionLogging');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    regions = registerOutput<String?>('regions');
  }
}
