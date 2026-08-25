import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_metric_args.dart';
import 'ai_evaluation_metric_encryption_spec.dart';
import 'ai_evaluation_metric_state.dart';

/// A reusable metric configuration for Vertex AI evaluation. EvaluationMetrics
/// define how model outputs are scored, supporting predefined metrics,
/// LLM-based metrics, pointwise and pairwise comparisons, and custom code
/// execution metrics.
///
///
/// To get more information about EvaluationMetric, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.evaluationMetrics)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/evaluation/overview)
///
/// ## Example Usage
///
/// ### Vertex Ai Evaluation Metric
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.vertex.AiEvaluationMetric("example", {
///     evaluationMetricId: "example-metric",
///     region: "us-central1",
///     displayName: "Test Evaluation Metric",
///     description: "An evaluation metric for Terraform acceptance testing",
///     metric: JSON.stringify({
///         llmBasedMetricSpec: {
///             metricPromptTemplate: "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// example = gcp.vertex.AiEvaluationMetric("example",
///     evaluation_metric_id="example-metric",
///     region="us-central1",
///     display_name="Test Evaluation Metric",
///     description="An evaluation metric for Terraform acceptance testing",
///     metric=json.dumps({
///         "llmBasedMetricSpec": {
///             "metricPromptTemplate": "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///         },
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Vertex.AiEvaluationMetric("example", new()
///     {
///         EvaluationMetricId = "example-metric",
///         Region = "us-central1",
///         DisplayName = "Test Evaluation Metric",
///         Description = "An evaluation metric for Terraform acceptance testing",
///         Metric = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["llmBasedMetricSpec"] = new Dictionary<string, object?>
///             {
///                 ["metricPromptTemplate"] = "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]string{
/// 			"llmBasedMetricSpec": map[string]string{
/// 				"metricPromptTemplate": "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiEvaluationMetric(ctx, "example", &vertex.AiEvaluationMetricArgs{
/// 			EvaluationMetricId: pulumi.String("example-metric"),
/// 			Region:             pulumi.String("us-central1"),
/// 			DisplayName:        pulumi.String("Test Evaluation Metric"),
/// 			Description:        pulumi.String("An evaluation metric for Terraform acceptance testing"),
/// 			Metric:             pulumi.String(json0),
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
/// resource "gcp_vertex_aievaluationmetric" "example" {
///   evaluation_metric_id = "example-metric"
///   region               = "us-central1"
///   display_name         = "Test Evaluation Metric"
///   description          = "An evaluation metric for Terraform acceptance testing"
///   metric = jsonencode({
///     "llmBasedMetricSpec" = {
///       "metricPromptTemplate" = "Rate the quality of the following response on a scale of 1 to 5. Response: {response}"
///     }
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiEvaluationMetric;
/// import com.pulumi.gcp.vertex.AiEvaluationMetricArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new AiEvaluationMetric("example", AiEvaluationMetricArgs.builder()
///             .evaluationMetricId("example-metric")
///             .region("us-central1")
///             .displayName("Test Evaluation Metric")
///             .description("An evaluation metric for Terraform acceptance testing")
///             .metric(serializeJson(
///                 jsonObject(
///                     jsonProperty("llmBasedMetricSpec", jsonObject(
///                         jsonProperty("metricPromptTemplate", "Rate the quality of the following response on a scale of 1 to 5. Response: {response}")
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiEvaluationMetric
///     properties:
///       evaluationMetricId: example-metric
///       region: us-central1
///       displayName: Test Evaluation Metric
///       description: An evaluation metric for Terraform acceptance testing
///       metric:
///         fn::toJSON:
///           llmBasedMetricSpec:
///             metricPromptTemplate: 'Rate the quality of the following response on a scale of 1 to 5. Response: {response}'
/// ```
///
/// ### Vertex Ai Evaluation Metric Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.vertex.AiEvaluationMetric("example", {
///     evaluationMetricId: "example-metric-full",
///     region: "us-central1",
///     displayName: "Full Test Evaluation Metric",
///     description: "An evaluation metric with all fields for Terraform acceptance testing",
///     metric: JSON.stringify({
///         llmBasedMetricSpec: {
///             metricPromptTemplate: "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///         },
///     }),
///     labels: {
///         env: "test",
///         team: "evaluation",
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-key",
///     },
///     gcsUri: "gs://eval-metric-test-bucket/metric-spec.json",
/// });
/// const metricBucket = new gcp.storage.Bucket("metric_bucket", {
///     name: "eval-metric-test-bucket",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// example = gcp.vertex.AiEvaluationMetric("example",
///     evaluation_metric_id="example-metric-full",
///     region="us-central1",
///     display_name="Full Test Evaluation Metric",
///     description="An evaluation metric with all fields for Terraform acceptance testing",
///     metric=json.dumps({
///         "llmBasedMetricSpec": {
///             "metricPromptTemplate": "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///         },
///     }),
///     labels={
///         "env": "test",
///         "team": "evaluation",
///     },
///     encryption_spec={
///         "kms_key_name": "kms-key",
///     },
///     gcs_uri="gs://eval-metric-test-bucket/metric-spec.json")
/// metric_bucket = gcp.storage.Bucket("metric_bucket",
///     name="eval-metric-test-bucket",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Vertex.AiEvaluationMetric("example", new()
///     {
///         EvaluationMetricId = "example-metric-full",
///         Region = "us-central1",
///         DisplayName = "Full Test Evaluation Metric",
///         Description = "An evaluation metric with all fields for Terraform acceptance testing",
///         Metric = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["llmBasedMetricSpec"] = new Dictionary<string, object?>
///             {
///                 ["metricPromptTemplate"] = "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///             },
///         }),
///         Labels =
///         {
///             { "env", "test" },
///             { "team", "evaluation" },
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiEvaluationMetricEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-key",
///         },
///         GcsUri = "gs://eval-metric-test-bucket/metric-spec.json",
///     });
///
///     var metricBucket = new Gcp.Storage.Bucket("metric_bucket", new()
///     {
///         Name = "eval-metric-test-bucket",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]string{
/// 			"llmBasedMetricSpec": map[string]string{
/// 				"metricPromptTemplate": "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiEvaluationMetric(ctx, "example", &vertex.AiEvaluationMetricArgs{
/// 			EvaluationMetricId: pulumi.String("example-metric-full"),
/// 			Region:             pulumi.String("us-central1"),
/// 			DisplayName:        pulumi.String("Full Test Evaluation Metric"),
/// 			Description:        pulumi.String("An evaluation metric with all fields for Terraform acceptance testing"),
/// 			Metric:             pulumi.String(json0),
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("test"),
/// 				"team": pulumi.String("evaluation"),
/// 			},
/// 			EncryptionSpec: &vertex.AiEvaluationMetricEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-key"),
/// 			},
/// 			GcsUri: pulumi.String("gs://eval-metric-test-bucket/metric-spec.json"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucket(ctx, "metric_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("eval-metric-test-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
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
/// resource "gcp_vertex_aievaluationmetric" "example" {
///   evaluation_metric_id = "example-metric-full"
///   region               = "us-central1"
///   display_name         = "Full Test Evaluation Metric"
///   description          = "An evaluation metric with all fields for Terraform acceptance testing"
///   metric = jsonencode({
///     "llmBasedMetricSpec" = {
///       "metricPromptTemplate" = "Rate the quality of the following response on a scale of 1 to 5. Response: {response}"
///     }
///   })
///   labels = {
///     "env"  = "test"
///     "team" = "evaluation"
///   }
///   encryption_spec = {
///     kms_key_name = "kms-key"
///   }
///   gcs_uri = "gs://eval-metric-test-bucket/metric-spec.json"
/// }
/// resource "gcp_storage_bucket" "metric_bucket" {
///   name                        = "eval-metric-test-bucket"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiEvaluationMetric;
/// import com.pulumi.gcp.vertex.AiEvaluationMetricArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationMetricEncryptionSpecArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new AiEvaluationMetric("example", AiEvaluationMetricArgs.builder()
///             .evaluationMetricId("example-metric-full")
///             .region("us-central1")
///             .displayName("Full Test Evaluation Metric")
///             .description("An evaluation metric with all fields for Terraform acceptance testing")
///             .metric(serializeJson(
///                 jsonObject(
///                     jsonProperty("llmBasedMetricSpec", jsonObject(
///                         jsonProperty("metricPromptTemplate", "Rate the quality of the following response on a scale of 1 to 5. Response: {response}")
///                     ))
///                 )))
///             .labels(Map.ofEntries(
///                 Map.entry("env", "test"),
///                 Map.entry("team", "evaluation")
///             ))
///             .encryptionSpec(AiEvaluationMetricEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-key")
///                 .build())
///             .gcsUri("gs://eval-metric-test-bucket/metric-spec.json")
///             .build());
///
///         var metricBucket = new Bucket("metricBucket", BucketArgs.builder()
///             .name("eval-metric-test-bucket")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiEvaluationMetric
///     properties:
///       evaluationMetricId: example-metric-full
///       region: us-central1
///       displayName: Full Test Evaluation Metric
///       description: An evaluation metric with all fields for Terraform acceptance testing
///       metric:
///         fn::toJSON:
///           llmBasedMetricSpec:
///             metricPromptTemplate: 'Rate the quality of the following response on a scale of 1 to 5. Response: {response}'
///       labels:
///         env: test
///         team: evaluation
///       encryptionSpec:
///         kmsKeyName: kms-key
///       gcsUri: gs://eval-metric-test-bucket/metric-spec.json
///   metricBucket:
///     type: gcp:storage:Bucket
///     name: metric_bucket
///     properties:
///       name: eval-metric-test-bucket
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
/// ```
///
///
/// ## Import
///
/// EvaluationMetric can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/evaluationMetrics/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, EvaluationMetric can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEvaluationMetric:AiEvaluationMetric default projects/{{project}}/locations/{{region}}/evaluationMetrics/{{name}}
/// $ pulumi import gcp:vertex/aiEvaluationMetric:AiEvaluationMetric default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiEvaluationMetric:AiEvaluationMetric default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiEvaluationMetric:AiEvaluationMetric default {{name}}
/// ```
class AiEvaluationMetric extends pulumi.CustomResource {
  /// The timestamp of when the EvaluationMetric was created in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the EvaluationMetric.
  late final pulumi.Output<String?> description;
  /// The user-friendly display name for the EvaluationMetric.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key spec for this EvaluationMetric. If set,
  /// this EvaluationMetric will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiEvaluationMetricEncryptionSpec?> encryptionSpec;
  /// The ID to use for the EvaluationMetric, which will become the final
  /// component of the resource name. This value should be 1-63 characters,
  /// and valid characters are /[a-z][0-9]-/. The first character must be
  /// a lowercase letter, and the last character must be a lowercase letter
  /// or number. If not provided, the server will generate a unique ID.
  late final pulumi.Output<String> evaluationMetricId;
  /// The Google Cloud Storage URI that stores the metric specification.
  late final pulumi.Output<String?> gcsUri;
  /// Labels for the EvaluationMetric.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The metric configuration as a JSON string. Uses camelCase field names
  /// to match the API format. Supports LLM-based metrics and custom code
  /// execution metrics.
  /// See the [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/Metric)
  /// for the full schema.
  late final pulumi.Output<String?> metric;
  /// The short name of the EvaluationMetric (the final component of the resource name).
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the EvaluationMetric. eg us-central1
  late final pulumi.Output<String> region;
  /// The timestamp of when the EvaluationMetric was last updated in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiEvaluationMetric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEvaluationMetric]. {@macro pulumi_vertex_ai_evaluation_metric_ai_evaluation_metric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEvaluationMetric(
    String name, {
    AiEvaluationMetricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEvaluationMetric:AiEvaluationMetric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiEvaluationMetricEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEvaluationMetricEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluationMetricId = registerOutput<String>('evaluationMetricId');
    gcsUri = registerOutput<String?>('gcsUri');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metric = registerOutput<String?>('metric');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiEvaluationMetric] resource's state with the given [name] and [id].
  static AiEvaluationMetric get(
    String name,
    pulumi.Input<String> id, {
    AiEvaluationMetricState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiEvaluationMetric._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiEvaluationMetric._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEvaluationMetric:AiEvaluationMetric',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiEvaluationMetricEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEvaluationMetricEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluationMetricId = registerOutput<String>('evaluationMetricId');
    gcsUri = registerOutput<String?>('gcsUri');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metric = registerOutput<String?>('metric');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiEvaluationMetric] resource.
  AiEvaluationMetric.reference(String urn)
    : super(
        'gcp:vertex/aiEvaluationMetric:AiEvaluationMetric',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiEvaluationMetricEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEvaluationMetricEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluationMetricId = registerOutput<String>('evaluationMetricId');
    gcsUri = registerOutput<String?>('gcsUri');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metric = registerOutput<String?>('metric');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
  }
}
