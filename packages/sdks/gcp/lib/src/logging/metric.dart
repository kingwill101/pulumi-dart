import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_args.dart';
import 'metric_bucket_options.dart';
import 'metric_metric_descriptor.dart';
import 'metric_state.dart';

/// Logs-based metric can also be used to extract values from logs and create a a distribution
/// of the values. The distribution records the statistics of the extracted values along with
/// an optional histogram of the values as specified by the bucket options.
///
///
/// To get more information about Metric, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.metrics/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
///
/// ## Example Usage
///
/// ### Logging Metric Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingMetric = new gcp.logging.Metric("logging_metric", {
///     name: "my-(custom)/metric",
///     filter: "resource.type=gae_app AND severity>=ERROR",
///     metricDescriptor: {
///         metricKind: "DELTA",
///         valueType: "DISTRIBUTION",
///         unit: "1",
///         labels: [
///             {
///                 key: "mass",
///                 valueType: "STRING",
///                 description: "amount of matter",
///             },
///             {
///                 key: "sku",
///                 valueType: "INT64",
///                 description: "Identifying number for item",
///             },
///         ],
///         displayName: "My metric",
///     },
///     valueExtractor: "EXTRACT(jsonPayload.request)",
///     labelExtractors: {
///         mass: "EXTRACT(jsonPayload.request)",
///         sku: "EXTRACT(jsonPayload.id)",
///     },
///     bucketOptions: {
///         linearBuckets: {
///             numFiniteBuckets: 3,
///             width: 1,
///             offset: 1,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_metric = gcp.logging.Metric("logging_metric",
///     name="my-(custom)/metric",
///     filter="resource.type=gae_app AND severity>=ERROR",
///     metric_descriptor={
///         "metric_kind": "DELTA",
///         "value_type": "DISTRIBUTION",
///         "unit": "1",
///         "labels": [
///             {
///                 "key": "mass",
///                 "value_type": "STRING",
///                 "description": "amount of matter",
///             },
///             {
///                 "key": "sku",
///                 "value_type": "INT64",
///                 "description": "Identifying number for item",
///             },
///         ],
///         "display_name": "My metric",
///     },
///     value_extractor="EXTRACT(jsonPayload.request)",
///     label_extractors={
///         "mass": "EXTRACT(jsonPayload.request)",
///         "sku": "EXTRACT(jsonPayload.id)",
///     },
///     bucket_options={
///         "linear_buckets": {
///             "num_finite_buckets": 3,
///             "width": float(1),
///             "offset": float(1),
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
///     var loggingMetric = new Gcp.Logging.Metric("logging_metric", new()
///     {
///         Name = "my-(custom)/metric",
///         Filter = "resource.type=gae_app AND severity>=ERROR",
///         MetricDescriptor = new Gcp.Logging.Inputs.MetricMetricDescriptorArgs
///         {
///             MetricKind = "DELTA",
///             ValueType = "DISTRIBUTION",
///             Unit = "1",
///             Labels = new[]
///             {
///                 new Gcp.Logging.Inputs.MetricMetricDescriptorLabelArgs
///                 {
///                     Key = "mass",
///                     ValueType = "STRING",
///                     Description = "amount of matter",
///                 },
///                 new Gcp.Logging.Inputs.MetricMetricDescriptorLabelArgs
///                 {
///                     Key = "sku",
///                     ValueType = "INT64",
///                     Description = "Identifying number for item",
///                 },
///             },
///             DisplayName = "My metric",
///         },
///         ValueExtractor = "EXTRACT(jsonPayload.request)",
///         LabelExtractors =
///         {
///             { "mass", "EXTRACT(jsonPayload.request)" },
///             { "sku", "EXTRACT(jsonPayload.id)" },
///         },
///         BucketOptions = new Gcp.Logging.Inputs.MetricBucketOptionsArgs
///         {
///             LinearBuckets = new Gcp.Logging.Inputs.MetricBucketOptionsLinearBucketsArgs
///             {
///                 NumFiniteBuckets = 3,
///                 Width = 1.0,
///                 Offset = 1.0,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewMetric(ctx, "logging_metric", &logging.MetricArgs{
/// 			Name:   pulumi.String("my-(custom)/metric"),
/// 			Filter: pulumi.String("resource.type=gae_app AND severity>=ERROR"),
/// 			MetricDescriptor: &logging.MetricMetricDescriptorArgs{
/// 				MetricKind: pulumi.String("DELTA"),
/// 				ValueType:  pulumi.String("DISTRIBUTION"),
/// 				Unit:       pulumi.String("1"),
/// 				Labels: logging.MetricMetricDescriptorLabelArray{
/// 					&logging.MetricMetricDescriptorLabelArgs{
/// 						Key:         pulumi.String("mass"),
/// 						ValueType:   pulumi.String("STRING"),
/// 						Description: pulumi.String("amount of matter"),
/// 					},
/// 					&logging.MetricMetricDescriptorLabelArgs{
/// 						Key:         pulumi.String("sku"),
/// 						ValueType:   pulumi.String("INT64"),
/// 						Description: pulumi.String("Identifying number for item"),
/// 					},
/// 				},
/// 				DisplayName: pulumi.String("My metric"),
/// 			},
/// 			ValueExtractor: pulumi.String("EXTRACT(jsonPayload.request)"),
/// 			LabelExtractors: pulumi.StringMap{
/// 				"mass": pulumi.String("EXTRACT(jsonPayload.request)"),
/// 				"sku":  pulumi.String("EXTRACT(jsonPayload.id)"),
/// 			},
/// 			BucketOptions: &logging.MetricBucketOptionsArgs{
/// 				LinearBuckets: &logging.MetricBucketOptionsLinearBucketsArgs{
/// 					NumFiniteBuckets: pulumi.Int(3),
/// 					Width:            pulumi.Float64(1),
/// 					Offset:           pulumi.Float64(1),
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
/// resource "gcp_logging_metric" "logging_metric" {
///   name   = "my-(custom)/metric"
///   filter = "resource.type=gae_app AND severity>=ERROR"
///   metric_descriptor = {
///     metric_kind = "DELTA"
///     value_type  = "DISTRIBUTION"
///     unit        = "1"
///     labels = [{
///       "key"         = "mass"
///       "valueType"   = "STRING"
///       "description" = "amount of matter"
///       }, {
///       "key"         = "sku"
///       "valueType"   = "INT64"
///       "description" = "Identifying number for item"
///     }]
///     display_name = "My metric"
///   }
///   value_extractor = "EXTRACT(jsonPayload.request)"
///   label_extractors = {
///     "mass" = "EXTRACT(jsonPayload.request)"
///     "sku"  = "EXTRACT(jsonPayload.id)"
///   }
///   bucket_options = {
///     linear_buckets = {
///       num_finite_buckets = 3
///       width              = 1
///       offset             = 1
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
/// import com.pulumi.gcp.logging.Metric;
/// import com.pulumi.gcp.logging.MetricArgs;
/// import com.pulumi.gcp.logging.inputs.MetricMetricDescriptorArgs;
/// import com.pulumi.gcp.logging.inputs.MetricMetricDescriptorLabelArgs;
/// import com.pulumi.gcp.logging.inputs.MetricBucketOptionsArgs;
/// import com.pulumi.gcp.logging.inputs.MetricBucketOptionsLinearBucketsArgs;
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
///         var loggingMetric = new Metric("loggingMetric", MetricArgs.builder()
///             .name("my-(custom)/metric")
///             .filter("resource.type=gae_app AND severity>=ERROR")
///             .metricDescriptor(MetricMetricDescriptorArgs.builder()
///                 .metricKind("DELTA")
///                 .valueType("DISTRIBUTION")
///                 .unit("1")
///                 .labels(
///                     MetricMetricDescriptorLabelArgs.builder()
///                         .key("mass")
///                         .valueType("STRING")
///                         .description("amount of matter")
///                         .build(),
///                     MetricMetricDescriptorLabelArgs.builder()
///                         .key("sku")
///                         .valueType("INT64")
///                         .description("Identifying number for item")
///                         .build())
///                 .displayName("My metric")
///                 .build())
///             .valueExtractor("EXTRACT(jsonPayload.request)")
///             .labelExtractors(Map.ofEntries(
///                 Map.entry("mass", "EXTRACT(jsonPayload.request)"),
///                 Map.entry("sku", "EXTRACT(jsonPayload.id)")
///             ))
///             .bucketOptions(MetricBucketOptionsArgs.builder()
///                 .linearBuckets(MetricBucketOptionsLinearBucketsArgs.builder()
///                     .numFiniteBuckets(3)
///                     .width(1.0)
///                     .offset(1.0)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingMetric:
///     type: gcp:logging:Metric
///     name: logging_metric
///     properties:
///       name: my-(custom)/metric
///       filter: resource.type=gae_app AND severity>=ERROR
///       metricDescriptor:
///         metricKind: DELTA
///         valueType: DISTRIBUTION
///         unit: '1'
///         labels:
///           - key: mass
///             valueType: STRING
///             description: amount of matter
///           - key: sku
///             valueType: INT64
///             description: Identifying number for item
///         displayName: My metric
///       valueExtractor: EXTRACT(jsonPayload.request)
///       labelExtractors:
///         mass: EXTRACT(jsonPayload.request)
///         sku: EXTRACT(jsonPayload.id)
///       bucketOptions:
///         linearBuckets:
///           numFiniteBuckets: 3
///           width: 1
///           offset: 1
/// ```
///
/// ### Logging Metric Counter Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingMetric = new gcp.logging.Metric("logging_metric", {
///     name: "my-(custom)/metric",
///     filter: "resource.type=gae_app AND severity>=ERROR",
///     metricDescriptor: {
///         metricKind: "DELTA",
///         valueType: "INT64",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_metric = gcp.logging.Metric("logging_metric",
///     name="my-(custom)/metric",
///     filter="resource.type=gae_app AND severity>=ERROR",
///     metric_descriptor={
///         "metric_kind": "DELTA",
///         "value_type": "INT64",
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
///     var loggingMetric = new Gcp.Logging.Metric("logging_metric", new()
///     {
///         Name = "my-(custom)/metric",
///         Filter = "resource.type=gae_app AND severity>=ERROR",
///         MetricDescriptor = new Gcp.Logging.Inputs.MetricMetricDescriptorArgs
///         {
///             MetricKind = "DELTA",
///             ValueType = "INT64",
///         },
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
/// 		_, err := logging.NewMetric(ctx, "logging_metric", &logging.MetricArgs{
/// 			Name:   pulumi.String("my-(custom)/metric"),
/// 			Filter: pulumi.String("resource.type=gae_app AND severity>=ERROR"),
/// 			MetricDescriptor: &logging.MetricMetricDescriptorArgs{
/// 				MetricKind: pulumi.String("DELTA"),
/// 				ValueType:  pulumi.String("INT64"),
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
/// resource "gcp_logging_metric" "logging_metric" {
///   name   = "my-(custom)/metric"
///   filter = "resource.type=gae_app AND severity>=ERROR"
///   metric_descriptor = {
///     metric_kind = "DELTA"
///     value_type  = "INT64"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.Metric;
/// import com.pulumi.gcp.logging.MetricArgs;
/// import com.pulumi.gcp.logging.inputs.MetricMetricDescriptorArgs;
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
///         var loggingMetric = new Metric("loggingMetric", MetricArgs.builder()
///             .name("my-(custom)/metric")
///             .filter("resource.type=gae_app AND severity>=ERROR")
///             .metricDescriptor(MetricMetricDescriptorArgs.builder()
///                 .metricKind("DELTA")
///                 .valueType("INT64")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingMetric:
///     type: gcp:logging:Metric
///     name: logging_metric
///     properties:
///       name: my-(custom)/metric
///       filter: resource.type=gae_app AND severity>=ERROR
///       metricDescriptor:
///         metricKind: DELTA
///         valueType: INT64
/// ```
///
/// ### Logging Metric Counter Labels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingMetric = new gcp.logging.Metric("logging_metric", {
///     name: "my-(custom)/metric",
///     filter: "resource.type=gae_app AND severity>=ERROR",
///     metricDescriptor: {
///         metricKind: "DELTA",
///         valueType: "INT64",
///         labels: [{
///             key: "mass",
///             valueType: "STRING",
///             description: "amount of matter",
///         }],
///     },
///     labelExtractors: {
///         mass: "EXTRACT(jsonPayload.request)",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_metric = gcp.logging.Metric("logging_metric",
///     name="my-(custom)/metric",
///     filter="resource.type=gae_app AND severity>=ERROR",
///     metric_descriptor={
///         "metric_kind": "DELTA",
///         "value_type": "INT64",
///         "labels": [{
///             "key": "mass",
///             "value_type": "STRING",
///             "description": "amount of matter",
///         }],
///     },
///     label_extractors={
///         "mass": "EXTRACT(jsonPayload.request)",
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
///     var loggingMetric = new Gcp.Logging.Metric("logging_metric", new()
///     {
///         Name = "my-(custom)/metric",
///         Filter = "resource.type=gae_app AND severity>=ERROR",
///         MetricDescriptor = new Gcp.Logging.Inputs.MetricMetricDescriptorArgs
///         {
///             MetricKind = "DELTA",
///             ValueType = "INT64",
///             Labels = new[]
///             {
///                 new Gcp.Logging.Inputs.MetricMetricDescriptorLabelArgs
///                 {
///                     Key = "mass",
///                     ValueType = "STRING",
///                     Description = "amount of matter",
///                 },
///             },
///         },
///         LabelExtractors =
///         {
///             { "mass", "EXTRACT(jsonPayload.request)" },
///         },
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
/// 		_, err := logging.NewMetric(ctx, "logging_metric", &logging.MetricArgs{
/// 			Name:   pulumi.String("my-(custom)/metric"),
/// 			Filter: pulumi.String("resource.type=gae_app AND severity>=ERROR"),
/// 			MetricDescriptor: &logging.MetricMetricDescriptorArgs{
/// 				MetricKind: pulumi.String("DELTA"),
/// 				ValueType:  pulumi.String("INT64"),
/// 				Labels: logging.MetricMetricDescriptorLabelArray{
/// 					&logging.MetricMetricDescriptorLabelArgs{
/// 						Key:         pulumi.String("mass"),
/// 						ValueType:   pulumi.String("STRING"),
/// 						Description: pulumi.String("amount of matter"),
/// 					},
/// 				},
/// 			},
/// 			LabelExtractors: pulumi.StringMap{
/// 				"mass": pulumi.String("EXTRACT(jsonPayload.request)"),
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
/// resource "gcp_logging_metric" "logging_metric" {
///   name   = "my-(custom)/metric"
///   filter = "resource.type=gae_app AND severity>=ERROR"
///   metric_descriptor = {
///     metric_kind = "DELTA"
///     value_type  = "INT64"
///     labels = [{
///       "key"         = "mass"
///       "valueType"   = "STRING"
///       "description" = "amount of matter"
///     }]
///   }
///   label_extractors = {
///     "mass" = "EXTRACT(jsonPayload.request)"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.Metric;
/// import com.pulumi.gcp.logging.MetricArgs;
/// import com.pulumi.gcp.logging.inputs.MetricMetricDescriptorArgs;
/// import com.pulumi.gcp.logging.inputs.MetricMetricDescriptorLabelArgs;
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
///         var loggingMetric = new Metric("loggingMetric", MetricArgs.builder()
///             .name("my-(custom)/metric")
///             .filter("resource.type=gae_app AND severity>=ERROR")
///             .metricDescriptor(MetricMetricDescriptorArgs.builder()
///                 .metricKind("DELTA")
///                 .valueType("INT64")
///                 .labels(MetricMetricDescriptorLabelArgs.builder()
///                     .key("mass")
///                     .valueType("STRING")
///                     .description("amount of matter")
///                     .build())
///                 .build())
///             .labelExtractors(Map.of("mass", "EXTRACT(jsonPayload.request)"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingMetric:
///     type: gcp:logging:Metric
///     name: logging_metric
///     properties:
///       name: my-(custom)/metric
///       filter: resource.type=gae_app AND severity>=ERROR
///       metricDescriptor:
///         metricKind: DELTA
///         valueType: INT64
///         labels:
///           - key: mass
///             valueType: STRING
///             description: amount of matter
///       labelExtractors:
///         mass: EXTRACT(jsonPayload.request)
/// ```
///
/// ### Logging Metric Logging Bucket
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingMetric = new gcp.logging.ProjectBucketConfig("logging_metric", {
///     location: "global",
///     project: "my-project-name",
///     bucketId: "_Default",
/// });
/// const loggingMetricMetric = new gcp.logging.Metric("logging_metric", {
///     name: "my-(custom)/metric",
///     filter: "resource.type=gae_app AND severity>=ERROR",
///     bucketName: loggingMetric.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_metric = gcp.logging.ProjectBucketConfig("logging_metric",
///     location="global",
///     project="my-project-name",
///     bucket_id="_Default")
/// logging_metric_metric = gcp.logging.Metric("logging_metric",
///     name="my-(custom)/metric",
///     filter="resource.type=gae_app AND severity>=ERROR",
///     bucket_name=logging_metric.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loggingMetric = new Gcp.Logging.ProjectBucketConfig("logging_metric", new()
///     {
///         Location = "global",
///         Project = "my-project-name",
///         BucketId = "_Default",
///     });
///
///     var loggingMetricMetric = new Gcp.Logging.Metric("logging_metric", new()
///     {
///         Name = "my-(custom)/metric",
///         Filter = "resource.type=gae_app AND severity>=ERROR",
///         BucketName = loggingMetric.Name,
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
/// 		loggingMetric, err := logging.NewProjectBucketConfig(ctx, "logging_metric", &logging.ProjectBucketConfigArgs{
/// 			Location: pulumi.String("global"),
/// 			Project:  pulumi.String("my-project-name"),
/// 			BucketId: pulumi.String("_Default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewMetric(ctx, "logging_metric", &logging.MetricArgs{
/// 			Name:       pulumi.String("my-(custom)/metric"),
/// 			Filter:     pulumi.String("resource.type=gae_app AND severity>=ERROR"),
/// 			BucketName: loggingMetric.Name,
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
/// resource "gcp_logging_projectbucketconfig" "logging_metric" {
///   location  = "global"
///   project   = "my-project-name"
///   bucket_id = "_Default"
/// }
/// resource "gcp_logging_metric" "logging_metric" {
///   name        = "my-(custom)/metric"
///   filter      = "resource.type=gae_app AND severity>=ERROR"
///   bucket_name = gcp_logging_projectbucketconfig.logging_metric.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.ProjectBucketConfig;
/// import com.pulumi.gcp.logging.ProjectBucketConfigArgs;
/// import com.pulumi.gcp.logging.Metric;
/// import com.pulumi.gcp.logging.MetricArgs;
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
///         var loggingMetric = new ProjectBucketConfig("loggingMetric", ProjectBucketConfigArgs.builder()
///             .location("global")
///             .project("my-project-name")
///             .bucketId("_Default")
///             .build());
///
///         var loggingMetricMetric = new Metric("loggingMetricMetric", MetricArgs.builder()
///             .name("my-(custom)/metric")
///             .filter("resource.type=gae_app AND severity>=ERROR")
///             .bucketName(loggingMetric.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingMetric:
///     type: gcp:logging:ProjectBucketConfig
///     name: logging_metric
///     properties:
///       location: global
///       project: my-project-name
///       bucketId: _Default
///   loggingMetricMetric:
///     type: gcp:logging:Metric
///     name: logging_metric
///     properties:
///       name: my-(custom)/metric
///       filter: resource.type=gae_app AND severity>=ERROR
///       bucketName: ${loggingMetric.name}
/// ```
///
/// ### Logging Metric Disabled
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingMetric = new gcp.logging.Metric("logging_metric", {
///     name: "my-(custom)/metric",
///     filter: "resource.type=gae_app AND severity>=ERROR",
///     metricDescriptor: {
///         metricKind: "DELTA",
///         valueType: "INT64",
///     },
///     disabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_metric = gcp.logging.Metric("logging_metric",
///     name="my-(custom)/metric",
///     filter="resource.type=gae_app AND severity>=ERROR",
///     metric_descriptor={
///         "metric_kind": "DELTA",
///         "value_type": "INT64",
///     },
///     disabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loggingMetric = new Gcp.Logging.Metric("logging_metric", new()
///     {
///         Name = "my-(custom)/metric",
///         Filter = "resource.type=gae_app AND severity>=ERROR",
///         MetricDescriptor = new Gcp.Logging.Inputs.MetricMetricDescriptorArgs
///         {
///             MetricKind = "DELTA",
///             ValueType = "INT64",
///         },
///         Disabled = true,
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
/// 		_, err := logging.NewMetric(ctx, "logging_metric", &logging.MetricArgs{
/// 			Name:   pulumi.String("my-(custom)/metric"),
/// 			Filter: pulumi.String("resource.type=gae_app AND severity>=ERROR"),
/// 			MetricDescriptor: &logging.MetricMetricDescriptorArgs{
/// 				MetricKind: pulumi.String("DELTA"),
/// 				ValueType:  pulumi.String("INT64"),
/// 			},
/// 			Disabled: pulumi.Bool(true),
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
/// resource "gcp_logging_metric" "logging_metric" {
///   name   = "my-(custom)/metric"
///   filter = "resource.type=gae_app AND severity>=ERROR"
///   metric_descriptor = {
///     metric_kind = "DELTA"
///     value_type  = "INT64"
///   }
///   disabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.Metric;
/// import com.pulumi.gcp.logging.MetricArgs;
/// import com.pulumi.gcp.logging.inputs.MetricMetricDescriptorArgs;
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
///         var loggingMetric = new Metric("loggingMetric", MetricArgs.builder()
///             .name("my-(custom)/metric")
///             .filter("resource.type=gae_app AND severity>=ERROR")
///             .metricDescriptor(MetricMetricDescriptorArgs.builder()
///                 .metricKind("DELTA")
///                 .valueType("INT64")
///                 .build())
///             .disabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingMetric:
///     type: gcp:logging:Metric
///     name: logging_metric
///     properties:
///       name: my-(custom)/metric
///       filter: resource.type=gae_app AND severity>=ERROR
///       metricDescriptor:
///         metricKind: DELTA
///         valueType: INT64
///       disabled: true
/// ```
///
///
/// ## Import
///
/// Metric can be imported using any of these accepted formats:
///
/// * `{{project}} {{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Metric can be imported using one of the formats above. For example:
///
/// ```sh
/// $ terraform import google_logging_metric.default "{{project}} {{name}}"
/// $ pulumi import gcp:logging/metric:Metric default {{name}}
/// ```
class Metric extends pulumi.CustomResource {
  /// The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
  /// are supported. The bucket has to be in the same project as the metric.
  late final pulumi.Output<String?> bucketName;
  /// The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
  /// describes the bucket boundaries used to create a histogram of the extracted values.
  /// Structure is documented below.
  late final pulumi.Output<MetricBucketOptions?> bucketOptions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of this metric, which is used in documentation. The maximum length of the
  /// description is 8000 characters.
  late final pulumi.Output<String?> description;
  /// If set to True, then this metric is disabled and it does not generate any points.
  late final pulumi.Output<bool?> disabled;
  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
  /// is used to match log entries.
  late final pulumi.Output<String> filter;
  /// A map from a label key string to an extractor expression which is used to extract data from a log
  /// entry field and assign as the label value. Each label key specified in the LabelDescriptor must
  /// have an associated extractor expression in this map. The syntax of the extractor expression is
  /// the same as for the valueExtractor field.
  late final pulumi.Output<Map<String, String>?> labelExtractors;
  /// The optional metric descriptor associated with the logs-based metric.
  /// If unspecified, it uses a default metric descriptor with a DELTA metric kind,
  /// INT64 value type, with no labels and a unit of "1". Such a metric counts the
  /// number of log entries matching the filter expression.
  /// Structure is documented below.
  late final pulumi.Output<MetricMetricDescriptor> metricDescriptor;
  /// The client-assigned metric identifier. Examples - "errorCount", "nginx/requests".
  /// Metric identifiers are limited to 100 characters and can include only the following
  /// characters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash
  /// character (/) denotes a hierarchy of name pieces, and it cannot be the first character
  /// of the name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A valueExtractor is required when using a distribution logs-based metric to extract the values to
  /// record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
  /// REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
  /// the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
  /// (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
  /// log entry field. The value of the field is converted to a string before applying the regex. It is an
  /// error to specify a regex that does not include exactly one capture group.
  late final pulumi.Output<String?> valueExtractor;

  /// Creates a new [Metric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Metric]. {@macro pulumi_logging_metric_metric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Metric(
    String name, {
    MetricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/metric:Metric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketName = registerOutput<String?>('bucketName');
    bucketOptions = registerOutput<MetricBucketOptions?>('bucketOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetricBucketOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    labelExtractors = registerOutput<Map<String, String>?>('labelExtractors');
    metricDescriptor = registerOutput<MetricMetricDescriptor>('metricDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetricMetricDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    valueExtractor = registerOutput<String?>('valueExtractor');
  }

  /// Gets an existing [Metric] resource's state with the given [name] and [id].
  static Metric get(
    String name,
    pulumi.Input<String> id, {
    MetricState? state,
  }) {
    return Metric._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Metric._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/metric:Metric',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketName = registerOutput<String?>('bucketName');
    bucketOptions = registerOutput<MetricBucketOptions?>('bucketOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetricBucketOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    labelExtractors = registerOutput<Map<String, String>?>('labelExtractors');
    metricDescriptor = registerOutput<MetricMetricDescriptor>('metricDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetricMetricDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    valueExtractor = registerOutput<String?>('valueExtractor');
  }
}
