import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_args.dart';
import 'ai_feature_store_entity_type_monitoring_config.dart';
import 'ai_feature_store_entity_type_state.dart';

/// An entity type is a type of object in a system that needs to be modeled and have stored information about. For example, driver is an entity type, and driver0 is an instance of an entity type driver.
///
///
/// To get more information about FeaturestoreEntitytype, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featurestore Entitytype
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featurestore = new gcp.vertex.AiFeatureStore("featurestore", {
///     name: "terraform",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     onlineServingConfig: {
///         fixedNodeCount: 2,
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
/// });
/// const entity = new gcp.vertex.AiFeatureStoreEntityType("entity", {
///     name: "terraform",
///     labels: {
///         foo: "bar",
///     },
///     description: "test description",
///     featurestore: featurestore.id,
///     monitoringConfig: {
///         snapshotAnalysis: {
///             disabled: false,
///             monitoringIntervalDays: 1,
///             stalenessDays: 21,
///         },
///         numericalThresholdConfig: {
///             value: 0.8,
///         },
///         categoricalThresholdConfig: {
///             value: 10,
///         },
///         importFeaturesAnalysis: {
///             state: "ENABLED",
///             anomalyDetectionBaseline: "PREVIOUS_IMPORT_FEATURES_STATS",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featurestore = gcp.vertex.AiFeatureStore("featurestore",
///     name="terraform",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     online_serving_config={
///         "fixed_node_count": 2,
///     },
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     })
/// entity = gcp.vertex.AiFeatureStoreEntityType("entity",
///     name="terraform",
///     labels={
///         "foo": "bar",
///     },
///     description="test description",
///     featurestore=featurestore.id,
///     monitoring_config={
///         "snapshot_analysis": {
///             "disabled": False,
///             "monitoring_interval_days": 1,
///             "staleness_days": 21,
///         },
///         "numerical_threshold_config": {
///             "value": 0.8,
///         },
///         "categorical_threshold_config": {
///             "value": float(10),
///         },
///         "import_features_analysis": {
///             "state": "ENABLED",
///             "anomaly_detection_baseline": "PREVIOUS_IMPORT_FEATURES_STATS",
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
///     var featurestore = new Gcp.Vertex.AiFeatureStore("featurestore", new()
///     {
///         Name = "terraform",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         OnlineServingConfig = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigArgs
///         {
///             FixedNodeCount = 2,
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiFeatureStoreEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///     });
///
///     var entity = new Gcp.Vertex.AiFeatureStoreEntityType("entity", new()
///     {
///         Name = "terraform",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "test description",
///         Featurestore = featurestore.Id,
///         MonitoringConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigArgs
///         {
///             SnapshotAnalysis = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs
///             {
///                 Disabled = false,
///                 MonitoringIntervalDays = 1,
///                 StalenessDays = 21,
///             },
///             NumericalThresholdConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs
///             {
///                 Value = 0.8,
///             },
///             CategoricalThresholdConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs
///             {
///                 Value = 10.0,
///             },
///             ImportFeaturesAnalysis = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysisArgs
///             {
///                 State = "ENABLED",
///                 AnomalyDetectionBaseline = "PREVIOUS_IMPORT_FEATURES_STATS",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		featurestore, err := vertex.NewAiFeatureStore(ctx, "featurestore", &vertex.AiFeatureStoreArgs{
/// 			Name: pulumi.String("terraform"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			OnlineServingConfig: &vertex.AiFeatureStoreOnlineServingConfigArgs{
/// 				FixedNodeCount: pulumi.Int(2),
/// 			},
/// 			EncryptionSpec: &vertex.AiFeatureStoreEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureStoreEntityType(ctx, "entity", &vertex.AiFeatureStoreEntityTypeArgs{
/// 			Name: pulumi.String("terraform"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description:  pulumi.String("test description"),
/// 			Featurestore: featurestore.ID().ToIDOutput().ToStringOutput(),
/// 			MonitoringConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigArgs{
/// 				SnapshotAnalysis: &vertex.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs{
/// 					Disabled:               pulumi.Bool(false),
/// 					MonitoringIntervalDays: pulumi.Int(1),
/// 					StalenessDays:          pulumi.Int(21),
/// 				},
/// 				NumericalThresholdConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs{
/// 					Value: pulumi.Float64(0.8),
/// 				},
/// 				CategoricalThresholdConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs{
/// 					Value: pulumi.Float64(10),
/// 				},
/// 				ImportFeaturesAnalysis: &vertex.AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysisArgs{
/// 					State:                    pulumi.String("ENABLED"),
/// 					AnomalyDetectionBaseline: pulumi.String("PREVIOUS_IMPORT_FEATURES_STATS"),
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
/// resource "gcp_vertex_aifeaturestore" "featurestore" {
///   name = "terraform"
///   labels = {
///     "foo" = "bar"
///   }
///   region = "us-central1"
///   online_serving_config = {
///     fixed_node_count = 2
///   }
///   encryption_spec = {
///     kms_key_name = "kms-name"
///   }
/// }
/// resource "gcp_vertex_aifeaturestoreentitytype" "entity" {
///   name = "terraform"
///   labels = {
///     "foo" = "bar"
///   }
///   description  = "test description"
///   featurestore = gcp_vertex_aifeaturestore.featurestore.id
///   monitoring_config = {
///     snapshot_analysis = {
///       disabled                 = false
///       monitoring_interval_days = 1
///       staleness_days           = 21
///     }
///     numerical_threshold_config = {
///       value = 0.8
///     }
///     categorical_threshold_config = {
///       value = 10
///     }
///     import_features_analysis = {
///       state                      = "ENABLED"
///       anomaly_detection_baseline = "PREVIOUS_IMPORT_FEATURES_STATS"
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
/// import com.pulumi.gcp.vertex.AiFeatureStore;
/// import com.pulumi.gcp.vertex.AiFeatureStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityType;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysisArgs;
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
///         var featurestore = new AiFeatureStore("featurestore", AiFeatureStoreArgs.builder()
///             .name("terraform")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .onlineServingConfig(AiFeatureStoreOnlineServingConfigArgs.builder()
///                 .fixedNodeCount(2)
///                 .build())
///             .encryptionSpec(AiFeatureStoreEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .build());
///
///         var entity = new AiFeatureStoreEntityType("entity", AiFeatureStoreEntityTypeArgs.builder()
///             .name("terraform")
///             .labels(Map.of("foo", "bar"))
///             .description("test description")
///             .featurestore(featurestore.id())
///             .monitoringConfig(AiFeatureStoreEntityTypeMonitoringConfigArgs.builder()
///                 .snapshotAnalysis(AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs.builder()
///                     .disabled(false)
///                     .monitoringIntervalDays(1)
///                     .stalenessDays(21)
///                     .build())
///                 .numericalThresholdConfig(AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs.builder()
///                     .value(0.8)
///                     .build())
///                 .categoricalThresholdConfig(AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs.builder()
///                     .value(10.0)
///                     .build())
///                 .importFeaturesAnalysis(AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysisArgs.builder()
///                     .state("ENABLED")
///                     .anomalyDetectionBaseline("PREVIOUS_IMPORT_FEATURES_STATS")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featurestore:
///     type: gcp:vertex:AiFeatureStore
///     properties:
///       name: terraform
///       labels:
///         foo: bar
///       region: us-central1
///       onlineServingConfig:
///         fixedNodeCount: 2
///       encryptionSpec:
///         kmsKeyName: kms-name
///   entity:
///     type: gcp:vertex:AiFeatureStoreEntityType
///     properties:
///       name: terraform
///       labels:
///         foo: bar
///       description: test description
///       featurestore: ${featurestore.id}
///       monitoringConfig:
///         snapshotAnalysis:
///           disabled: false
///           monitoringIntervalDays: 1
///           stalenessDays: 21
///         numericalThresholdConfig:
///           value: 0.8
///         categoricalThresholdConfig:
///           value: 10
///         importFeaturesAnalysis:
///           state: ENABLED
///           anomalyDetectionBaseline: PREVIOUS_IMPORT_FEATURES_STATS
/// ```
///
/// ### Vertex Ai Featurestore Entitytype With Beta Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featurestore = new gcp.vertex.AiFeatureStore("featurestore", {
///     name: "terraform2",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     onlineServingConfig: {
///         fixedNodeCount: 2,
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
/// });
/// const entity = new gcp.vertex.AiFeatureStoreEntityType("entity", {
///     name: "terraform2",
///     labels: {
///         foo: "bar",
///     },
///     featurestore: featurestore.id,
///     monitoringConfig: {
///         snapshotAnalysis: {
///             disabled: false,
///             monitoringInterval: "86400s",
///         },
///         categoricalThresholdConfig: {
///             value: 0.3,
///         },
///         numericalThresholdConfig: {
///             value: 0.3,
///         },
///     },
///     offlineStorageTtlDays: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featurestore = gcp.vertex.AiFeatureStore("featurestore",
///     name="terraform2",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     online_serving_config={
///         "fixed_node_count": 2,
///     },
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     })
/// entity = gcp.vertex.AiFeatureStoreEntityType("entity",
///     name="terraform2",
///     labels={
///         "foo": "bar",
///     },
///     featurestore=featurestore.id,
///     monitoring_config={
///         "snapshot_analysis": {
///             "disabled": False,
///             "monitoring_interval": "86400s",
///         },
///         "categorical_threshold_config": {
///             "value": 0.3,
///         },
///         "numerical_threshold_config": {
///             "value": 0.3,
///         },
///     },
///     offline_storage_ttl_days=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featurestore = new Gcp.Vertex.AiFeatureStore("featurestore", new()
///     {
///         Name = "terraform2",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         OnlineServingConfig = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigArgs
///         {
///             FixedNodeCount = 2,
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiFeatureStoreEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///     });
///
///     var entity = new Gcp.Vertex.AiFeatureStoreEntityType("entity", new()
///     {
///         Name = "terraform2",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Featurestore = featurestore.Id,
///         MonitoringConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigArgs
///         {
///             SnapshotAnalysis = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs
///             {
///                 Disabled = false,
///                 MonitoringInterval = "86400s",
///             },
///             CategoricalThresholdConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs
///             {
///                 Value = 0.3,
///             },
///             NumericalThresholdConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs
///             {
///                 Value = 0.3,
///             },
///         },
///         OfflineStorageTtlDays = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		featurestore, err := vertex.NewAiFeatureStore(ctx, "featurestore", &vertex.AiFeatureStoreArgs{
/// 			Name: pulumi.String("terraform2"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			OnlineServingConfig: &vertex.AiFeatureStoreOnlineServingConfigArgs{
/// 				FixedNodeCount: pulumi.Int(2),
/// 			},
/// 			EncryptionSpec: &vertex.AiFeatureStoreEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureStoreEntityType(ctx, "entity", &vertex.AiFeatureStoreEntityTypeArgs{
/// 			Name: pulumi.String("terraform2"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Featurestore: featurestore.ID().ToIDOutput().ToStringOutput(),
/// 			MonitoringConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigArgs{
/// 				SnapshotAnalysis: &vertex.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs{
/// 					Disabled:           pulumi.Bool(false),
/// 					MonitoringInterval: pulumi.String("86400s"),
/// 				},
/// 				CategoricalThresholdConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs{
/// 					Value: pulumi.Float64(0.3),
/// 				},
/// 				NumericalThresholdConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs{
/// 					Value: pulumi.Float64(0.3),
/// 				},
/// 			},
/// 			OfflineStorageTtlDays: pulumi.Int(30),
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
/// resource "gcp_vertex_aifeaturestore" "featurestore" {
///   name = "terraform2"
///   labels = {
///     "foo" = "bar"
///   }
///   region = "us-central1"
///   online_serving_config = {
///     fixed_node_count = 2
///   }
///   encryption_spec = {
///     kms_key_name = "kms-name"
///   }
/// }
/// resource "gcp_vertex_aifeaturestoreentitytype" "entity" {
///   name = "terraform2"
///   labels = {
///     "foo" = "bar"
///   }
///   featurestore = gcp_vertex_aifeaturestore.featurestore.id
///   monitoring_config = {
///     snapshot_analysis = {
///       disabled            = false
///       monitoring_interval = "86400s"
///     }
///     categorical_threshold_config = {
///       value = 0.3
///     }
///     numerical_threshold_config = {
///       value = 0.3
///     }
///   }
///   offline_storage_ttl_days = 30
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStore;
/// import com.pulumi.gcp.vertex.AiFeatureStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityType;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs;
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
///         var featurestore = new AiFeatureStore("featurestore", AiFeatureStoreArgs.builder()
///             .name("terraform2")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .onlineServingConfig(AiFeatureStoreOnlineServingConfigArgs.builder()
///                 .fixedNodeCount(2)
///                 .build())
///             .encryptionSpec(AiFeatureStoreEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .build());
///
///         var entity = new AiFeatureStoreEntityType("entity", AiFeatureStoreEntityTypeArgs.builder()
///             .name("terraform2")
///             .labels(Map.of("foo", "bar"))
///             .featurestore(featurestore.id())
///             .monitoringConfig(AiFeatureStoreEntityTypeMonitoringConfigArgs.builder()
///                 .snapshotAnalysis(AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs.builder()
///                     .disabled(false)
///                     .monitoringInterval("86400s")
///                     .build())
///                 .categoricalThresholdConfig(AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs.builder()
///                     .value(0.3)
///                     .build())
///                 .numericalThresholdConfig(AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs.builder()
///                     .value(0.3)
///                     .build())
///                 .build())
///             .offlineStorageTtlDays(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featurestore:
///     type: gcp:vertex:AiFeatureStore
///     properties:
///       name: terraform2
///       labels:
///         foo: bar
///       region: us-central1
///       onlineServingConfig:
///         fixedNodeCount: 2
///       encryptionSpec:
///         kmsKeyName: kms-name
///   entity:
///     type: gcp:vertex:AiFeatureStoreEntityType
///     properties:
///       name: terraform2
///       labels:
///         foo: bar
///       featurestore: ${featurestore.id}
///       monitoringConfig:
///         snapshotAnalysis:
///           disabled: false
///           monitoringInterval: 86400s
///         categoricalThresholdConfig:
///           value: 0.3
///         numericalThresholdConfig:
///           value: 0.3
///       offlineStorageTtlDays: 30
/// ```
///
///
/// ## Import
///
/// FeaturestoreEntitytype can be imported using any of these accepted formats:
///
/// * `{{featurestore}}/entityTypes/{{name}}`
///
///
/// When using the `pulumi import` command, FeaturestoreEntitytype can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityType:AiFeatureStoreEntityType default {{featurestore}}/entityTypes/{{name}}
/// ```
class AiFeatureStoreEntityType extends pulumi.CustomResource {
  /// The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Description of the EntityType.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  late final pulumi.Output<String> featurestore;
  /// A set of key/value label pairs to assign to this EntityType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The default monitoring configuration for all Features under this EntityType.
  /// If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureStoreEntityTypeMonitoringConfig?> monitoringConfig;
  /// The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final pulumi.Output<String> name;
  /// (Optional, Beta)
  /// Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than offlineStorageTtlDays since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  late final pulumi.Output<int?> offlineStorageTtlDays;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the EntityType.
  late final pulumi.Output<String> region;
  /// The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiFeatureStoreEntityType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureStoreEntityType]. {@macro pulumi_vertex_ai_feature_store_entity_type_ai_feature_store_entity_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureStoreEntityType(
    String name, {
    AiFeatureStoreEntityTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityType:AiFeatureStoreEntityType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    featurestore = registerOutput<String>('featurestore');
    labels = registerOutput<Map<String, String>?>('labels');
    monitoringConfig = registerOutput<AiFeatureStoreEntityTypeMonitoringConfig?>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreEntityTypeMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    offlineStorageTtlDays = registerOutput<int?>('offlineStorageTtlDays');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiFeatureStoreEntityType] resource's state with the given [name] and [id].
  static AiFeatureStoreEntityType get(
    String name,
    pulumi.Input<String> id, {
    AiFeatureStoreEntityTypeState? state,
  }) {
    return AiFeatureStoreEntityType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiFeatureStoreEntityType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityType:AiFeatureStoreEntityType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    featurestore = registerOutput<String>('featurestore');
    labels = registerOutput<Map<String, String>?>('labels');
    monitoringConfig = registerOutput<AiFeatureStoreEntityTypeMonitoringConfig?>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreEntityTypeMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    offlineStorageTtlDays = registerOutput<int?>('offlineStorageTtlDays');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
  }
}
