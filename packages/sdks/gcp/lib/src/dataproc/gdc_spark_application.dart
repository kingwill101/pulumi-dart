import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_spark_application_args.dart';
import 'gdc_spark_application_pyspark_application_config.dart';
import 'gdc_spark_application_spark_application_config.dart';
import 'gdc_spark_application_spark_rapplication_config.dart';
import 'gdc_spark_application_spark_sql_application_config.dart';
import 'gdc_spark_application_state.dart';

/// A Spark application is a single Spark workload run on a GDC cluster.
///
///
/// To get more information about SparkApplication, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-gdc/docs/reference/rest/v1/projects.locations.serviceInstances.sparkApplications)
/// * How-to Guides
/// * [Dataproc Intro](https://cloud.google.com/dataproc/)
///
/// ## Example Usage
///
/// ### Dataprocgdc Sparkapplication Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const spark_application = new gcp.dataproc.GdcSparkApplication("spark-application", {
///     sparkApplicationId: "tf-e2e-spark-app-basic",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
///     sparkApplicationConfig: {
///         mainClass: "org.apache.spark.examples.SparkPi",
///         jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         args: ["10000"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// spark_application = gcp.dataproc.GdcSparkApplication("spark-application",
///     spark_application_id="tf-e2e-spark-app-basic",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default",
///     spark_application_config={
///         "main_class": "org.apache.spark.examples.SparkPi",
///         "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         "args": ["10000"],
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
///     var spark_application = new Gcp.Dataproc.GdcSparkApplication("spark-application", new()
///     {
///         SparkApplicationId = "tf-e2e-spark-app-basic",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///         SparkApplicationConfig = new Gcp.Dataproc.Inputs.GdcSparkApplicationSparkApplicationConfigArgs
///         {
///             MainClass = "org.apache.spark.examples.SparkPi",
///             JarFileUris = new[]
///             {
///                 "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///             },
///             Args = new[]
///             {
///                 "10000",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewGdcSparkApplication(ctx, "spark-application", &dataproc.GdcSparkApplicationArgs{
/// 			SparkApplicationId: pulumi.String("tf-e2e-spark-app-basic"),
/// 			Serviceinstance:    pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:            pulumi.String("my-project"),
/// 			Location:           pulumi.String("us-west2"),
/// 			Namespace:          pulumi.String("default"),
/// 			SparkApplicationConfig: &dataproc.GdcSparkApplicationSparkApplicationConfigArgs{
/// 				MainClass: pulumi.String("org.apache.spark.examples.SparkPi"),
/// 				JarFileUris: pulumi.StringArray{
/// 					pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// 				},
/// 				Args: pulumi.StringArray{
/// 					pulumi.String("10000"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.GdcSparkApplication;
/// import com.pulumi.gcp.dataproc.GdcSparkApplicationArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcSparkApplicationSparkApplicationConfigArgs;
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
///         var spark_application = new GdcSparkApplication("spark-application", GdcSparkApplicationArgs.builder()
///             .sparkApplicationId("tf-e2e-spark-app-basic")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .sparkApplicationConfig(GdcSparkApplicationSparkApplicationConfigArgs.builder()
///                 .mainClass("org.apache.spark.examples.SparkPi")
///                 .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .args("10000")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   spark-application:
///     type: gcp:dataproc:GdcSparkApplication
///     properties:
///       sparkApplicationId: tf-e2e-spark-app-basic
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///       sparkApplicationConfig:
///         mainClass: org.apache.spark.examples.SparkPi
///         jarFileUris:
///           - file:///usr/lib/spark/examples/jars/spark-examples.jar
///         args:
///           - '10000'
/// ```
///
/// ### Dataprocgdc Sparkapplication
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appEnv = new gcp.dataproc.GdcApplicationEnvironment("app_env", {
///     applicationEnvironmentId: "tf-e2e-spark-app-env",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
/// });
/// const spark_application = new gcp.dataproc.GdcSparkApplication("spark-application", {
///     sparkApplicationId: "tf-e2e-spark-app",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
///     labels: {
///         "test-label": "label-value",
///     },
///     annotations: {
///         an_annotation: "annotation_value",
///     },
///     properties: {
///         "spark.executor.instances": "2",
///     },
///     applicationEnvironment: appEnv.name,
///     version: "1.2",
///     sparkApplicationConfig: {
///         mainJarFileUri: "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///         jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         archiveUris: ["file://usr/lib/spark/examples/spark-examples.jar"],
///         fileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app_env = gcp.dataproc.GdcApplicationEnvironment("app_env",
///     application_environment_id="tf-e2e-spark-app-env",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default")
/// spark_application = gcp.dataproc.GdcSparkApplication("spark-application",
///     spark_application_id="tf-e2e-spark-app",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default",
///     labels={
///         "test-label": "label-value",
///     },
///     annotations={
///         "an_annotation": "annotation_value",
///     },
///     properties={
///         "spark.executor.instances": "2",
///     },
///     application_environment=app_env.name,
///     version="1.2",
///     spark_application_config={
///         "main_jar_file_uri": "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///         "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         "archive_uris": ["file://usr/lib/spark/examples/spark-examples.jar"],
///         "file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
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
///     var appEnv = new Gcp.Dataproc.GdcApplicationEnvironment("app_env", new()
///     {
///         ApplicationEnvironmentId = "tf-e2e-spark-app-env",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///     });
///
///     var spark_application = new Gcp.Dataproc.GdcSparkApplication("spark-application", new()
///     {
///         SparkApplicationId = "tf-e2e-spark-app",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///         Labels =
///         {
///             { "test-label", "label-value" },
///         },
///         Annotations =
///         {
///             { "an_annotation", "annotation_value" },
///         },
///         Properties =
///         {
///             { "spark.executor.instances", "2" },
///         },
///         ApplicationEnvironment = appEnv.Name,
///         Version = "1.2",
///         SparkApplicationConfig = new Gcp.Dataproc.Inputs.GdcSparkApplicationSparkApplicationConfigArgs
///         {
///             MainJarFileUri = "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///             JarFileUris = new[]
///             {
///                 "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///             },
///             ArchiveUris = new[]
///             {
///                 "file://usr/lib/spark/examples/spark-examples.jar",
///             },
///             FileUris = new[]
///             {
///                 "file:///usr/lib/spark/examples/jars/spark-examples.jar",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		appEnv, err := dataproc.NewGdcApplicationEnvironment(ctx, "app_env", &dataproc.GdcApplicationEnvironmentArgs{
/// 			ApplicationEnvironmentId: pulumi.String("tf-e2e-spark-app-env"),
/// 			Serviceinstance:          pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:                  pulumi.String("my-project"),
/// 			Location:                 pulumi.String("us-west2"),
/// 			Namespace:                pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataproc.NewGdcSparkApplication(ctx, "spark-application", &dataproc.GdcSparkApplicationArgs{
/// 			SparkApplicationId: pulumi.String("tf-e2e-spark-app"),
/// 			Serviceinstance:    pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:            pulumi.String("my-project"),
/// 			Location:           pulumi.String("us-west2"),
/// 			Namespace:          pulumi.String("default"),
/// 			Labels: pulumi.StringMap{
/// 				"test-label": pulumi.String("label-value"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"an_annotation": pulumi.String("annotation_value"),
/// 			},
/// 			Properties: pulumi.StringMap{
/// 				"spark.executor.instances": pulumi.String("2"),
/// 			},
/// 			ApplicationEnvironment: appEnv.Name,
/// 			Version:                pulumi.String("1.2"),
/// 			SparkApplicationConfig: &dataproc.GdcSparkApplicationSparkApplicationConfigArgs{
/// 				MainJarFileUri: pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// 				JarFileUris: pulumi.StringArray{
/// 					pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// 				},
/// 				ArchiveUris: pulumi.StringArray{
/// 					pulumi.String("file://usr/lib/spark/examples/spark-examples.jar"),
/// 				},
/// 				FileUris: pulumi.StringArray{
/// 					pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.GdcApplicationEnvironment;
/// import com.pulumi.gcp.dataproc.GdcApplicationEnvironmentArgs;
/// import com.pulumi.gcp.dataproc.GdcSparkApplication;
/// import com.pulumi.gcp.dataproc.GdcSparkApplicationArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcSparkApplicationSparkApplicationConfigArgs;
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
///         var appEnv = new GdcApplicationEnvironment("appEnv", GdcApplicationEnvironmentArgs.builder()
///             .applicationEnvironmentId("tf-e2e-spark-app-env")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .build());
///
///         var spark_application = new GdcSparkApplication("spark-application", GdcSparkApplicationArgs.builder()
///             .sparkApplicationId("tf-e2e-spark-app")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .labels(Map.of("test-label", "label-value"))
///             .annotations(Map.of("an_annotation", "annotation_value"))
///             .properties(Map.of("spark.executor.instances", "2"))
///             .applicationEnvironment(appEnv.name())
///             .version("1.2")
///             .sparkApplicationConfig(GdcSparkApplicationSparkApplicationConfigArgs.builder()
///                 .mainJarFileUri("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .archiveUris("file://usr/lib/spark/examples/spark-examples.jar")
///                 .fileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appEnv:
///     type: gcp:dataproc:GdcApplicationEnvironment
///     name: app_env
///     properties:
///       applicationEnvironmentId: tf-e2e-spark-app-env
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///   spark-application:
///     type: gcp:dataproc:GdcSparkApplication
///     properties:
///       sparkApplicationId: tf-e2e-spark-app
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///       labels:
///         test-label: label-value
///       annotations:
///         an_annotation: annotation_value
///       properties:
///         spark.executor.instances: '2'
///       applicationEnvironment: ${appEnv.name}
///       version: '1.2'
///       sparkApplicationConfig:
///         mainJarFileUri: file:///usr/lib/spark/examples/jars/spark-examples.jar
///         jarFileUris:
///           - file:///usr/lib/spark/examples/jars/spark-examples.jar
///         archiveUris:
///           - file://usr/lib/spark/examples/spark-examples.jar
///         fileUris:
///           - file:///usr/lib/spark/examples/jars/spark-examples.jar
/// ```
///
/// ### Dataprocgdc Sparkapplication Pyspark
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const spark_application = new gcp.dataproc.GdcSparkApplication("spark-application", {
///     sparkApplicationId: "tf-e2e-pyspark-app",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
///     displayName: "A Pyspark application for a Terraform create test",
///     dependencyImages: ["gcr.io/some/image"],
///     pysparkApplicationConfig: {
///         mainPythonFileUri: "gs://goog-dataproc-initialization-actions-us-west2/conda/test_conda.py",
///         jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         pythonFileUris: ["gs://goog-dataproc-initialization-actions-us-west2/conda/get-sys-exec.py"],
///         fileUris: ["file://usr/lib/spark/examples/spark-examples.jar"],
///         archiveUris: ["file://usr/lib/spark/examples/spark-examples.jar"],
///         args: ["10"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// spark_application = gcp.dataproc.GdcSparkApplication("spark-application",
///     spark_application_id="tf-e2e-pyspark-app",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default",
///     display_name="A Pyspark application for a Terraform create test",
///     dependency_images=["gcr.io/some/image"],
///     pyspark_application_config={
///         "main_python_file_uri": "gs://goog-dataproc-initialization-actions-us-west2/conda/test_conda.py",
///         "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         "python_file_uris": ["gs://goog-dataproc-initialization-actions-us-west2/conda/get-sys-exec.py"],
///         "file_uris": ["file://usr/lib/spark/examples/spark-examples.jar"],
///         "archive_uris": ["file://usr/lib/spark/examples/spark-examples.jar"],
///         "args": ["10"],
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
///     var spark_application = new Gcp.Dataproc.GdcSparkApplication("spark-application", new()
///     {
///         SparkApplicationId = "tf-e2e-pyspark-app",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///         DisplayName = "A Pyspark application for a Terraform create test",
///         DependencyImages = new[]
///         {
///             "gcr.io/some/image",
///         },
///         PysparkApplicationConfig = new Gcp.Dataproc.Inputs.GdcSparkApplicationPysparkApplicationConfigArgs
///         {
///             MainPythonFileUri = "gs://goog-dataproc-initialization-actions-us-west2/conda/test_conda.py",
///             JarFileUris = new[]
///             {
///                 "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///             },
///             PythonFileUris = new[]
///             {
///                 "gs://goog-dataproc-initialization-actions-us-west2/conda/get-sys-exec.py",
///             },
///             FileUris = new[]
///             {
///                 "file://usr/lib/spark/examples/spark-examples.jar",
///             },
///             ArchiveUris = new[]
///             {
///                 "file://usr/lib/spark/examples/spark-examples.jar",
///             },
///             Args = new[]
///             {
///                 "10",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewGdcSparkApplication(ctx, "spark-application", &dataproc.GdcSparkApplicationArgs{
/// 			SparkApplicationId: pulumi.String("tf-e2e-pyspark-app"),
/// 			Serviceinstance:    pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:            pulumi.String("my-project"),
/// 			Location:           pulumi.String("us-west2"),
/// 			Namespace:          pulumi.String("default"),
/// 			DisplayName:        pulumi.String("A Pyspark application for a Terraform create test"),
/// 			DependencyImages: pulumi.StringArray{
/// 				pulumi.String("gcr.io/some/image"),
/// 			},
/// 			PysparkApplicationConfig: &dataproc.GdcSparkApplicationPysparkApplicationConfigArgs{
/// 				MainPythonFileUri: pulumi.String("gs://goog-dataproc-initialization-actions-us-west2/conda/test_conda.py"),
/// 				JarFileUris: pulumi.StringArray{
/// 					pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// 				},
/// 				PythonFileUris: pulumi.StringArray{
/// 					pulumi.String("gs://goog-dataproc-initialization-actions-us-west2/conda/get-sys-exec.py"),
/// 				},
/// 				FileUris: pulumi.StringArray{
/// 					pulumi.String("file://usr/lib/spark/examples/spark-examples.jar"),
/// 				},
/// 				ArchiveUris: pulumi.StringArray{
/// 					pulumi.String("file://usr/lib/spark/examples/spark-examples.jar"),
/// 				},
/// 				Args: pulumi.StringArray{
/// 					pulumi.String("10"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.GdcSparkApplication;
/// import com.pulumi.gcp.dataproc.GdcSparkApplicationArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcSparkApplicationPysparkApplicationConfigArgs;
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
///         var spark_application = new GdcSparkApplication("spark-application", GdcSparkApplicationArgs.builder()
///             .sparkApplicationId("tf-e2e-pyspark-app")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .displayName("A Pyspark application for a Terraform create test")
///             .dependencyImages("gcr.io/some/image")
///             .pysparkApplicationConfig(GdcSparkApplicationPysparkApplicationConfigArgs.builder()
///                 .mainPythonFileUri("gs://goog-dataproc-initialization-actions-us-west2/conda/test_conda.py")
///                 .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .pythonFileUris("gs://goog-dataproc-initialization-actions-us-west2/conda/get-sys-exec.py")
///                 .fileUris("file://usr/lib/spark/examples/spark-examples.jar")
///                 .archiveUris("file://usr/lib/spark/examples/spark-examples.jar")
///                 .args("10")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   spark-application:
///     type: gcp:dataproc:GdcSparkApplication
///     properties:
///       sparkApplicationId: tf-e2e-pyspark-app
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///       displayName: A Pyspark application for a Terraform create test
///       dependencyImages:
///         - gcr.io/some/image
///       pysparkApplicationConfig:
///         mainPythonFileUri: gs://goog-dataproc-initialization-actions-us-west2/conda/test_conda.py
///         jarFileUris:
///           - file:///usr/lib/spark/examples/jars/spark-examples.jar
///         pythonFileUris:
///           - gs://goog-dataproc-initialization-actions-us-west2/conda/get-sys-exec.py
///         fileUris:
///           - file://usr/lib/spark/examples/spark-examples.jar
///         archiveUris:
///           - file://usr/lib/spark/examples/spark-examples.jar
///         args:
///           - '10'
/// ```
///
/// ### Dataprocgdc Sparkapplication Sparkr
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const spark_application = new gcp.dataproc.GdcSparkApplication("spark-application", {
///     sparkApplicationId: "tf-e2e-sparkr-app",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
///     displayName: "A SparkR application for a Terraform create test",
///     sparkRApplicationConfig: {
///         mainRFileUri: "gs://some-bucket/something.R",
///         fileUris: ["file://usr/lib/spark/examples/spark-examples.jar"],
///         archiveUris: ["file://usr/lib/spark/examples/spark-examples.jar"],
///         args: ["10"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// spark_application = gcp.dataproc.GdcSparkApplication("spark-application",
///     spark_application_id="tf-e2e-sparkr-app",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default",
///     display_name="A SparkR application for a Terraform create test",
///     spark_r_application_config={
///         "main_r_file_uri": "gs://some-bucket/something.R",
///         "file_uris": ["file://usr/lib/spark/examples/spark-examples.jar"],
///         "archive_uris": ["file://usr/lib/spark/examples/spark-examples.jar"],
///         "args": ["10"],
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
///     var spark_application = new Gcp.Dataproc.GdcSparkApplication("spark-application", new()
///     {
///         SparkApplicationId = "tf-e2e-sparkr-app",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///         DisplayName = "A SparkR application for a Terraform create test",
///         SparkRApplicationConfig = new Gcp.Dataproc.Inputs.GdcSparkApplicationSparkRApplicationConfigArgs
///         {
///             MainRFileUri = "gs://some-bucket/something.R",
///             FileUris = new[]
///             {
///                 "file://usr/lib/spark/examples/spark-examples.jar",
///             },
///             ArchiveUris = new[]
///             {
///                 "file://usr/lib/spark/examples/spark-examples.jar",
///             },
///             Args = new[]
///             {
///                 "10",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewGdcSparkApplication(ctx, "spark-application", &dataproc.GdcSparkApplicationArgs{
/// 			SparkApplicationId: pulumi.String("tf-e2e-sparkr-app"),
/// 			Serviceinstance:    pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:            pulumi.String("my-project"),
/// 			Location:           pulumi.String("us-west2"),
/// 			Namespace:          pulumi.String("default"),
/// 			DisplayName:        pulumi.String("A SparkR application for a Terraform create test"),
/// 			SparkRApplicationConfig: &dataproc.GdcSparkApplicationSparkRApplicationConfigArgs{
/// 				MainRFileUri: pulumi.String("gs://some-bucket/something.R"),
/// 				FileUris: pulumi.StringArray{
/// 					pulumi.String("file://usr/lib/spark/examples/spark-examples.jar"),
/// 				},
/// 				ArchiveUris: pulumi.StringArray{
/// 					pulumi.String("file://usr/lib/spark/examples/spark-examples.jar"),
/// 				},
/// 				Args: pulumi.StringArray{
/// 					pulumi.String("10"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.GdcSparkApplication;
/// import com.pulumi.gcp.dataproc.GdcSparkApplicationArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcSparkApplicationSparkRApplicationConfigArgs;
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
///         var spark_application = new GdcSparkApplication("spark-application", GdcSparkApplicationArgs.builder()
///             .sparkApplicationId("tf-e2e-sparkr-app")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .displayName("A SparkR application for a Terraform create test")
///             .sparkRApplicationConfig(GdcSparkApplicationSparkRApplicationConfigArgs.builder()
///                 .mainRFileUri("gs://some-bucket/something.R")
///                 .fileUris("file://usr/lib/spark/examples/spark-examples.jar")
///                 .archiveUris("file://usr/lib/spark/examples/spark-examples.jar")
///                 .args("10")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   spark-application:
///     type: gcp:dataproc:GdcSparkApplication
///     properties:
///       sparkApplicationId: tf-e2e-sparkr-app
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///       displayName: A SparkR application for a Terraform create test
///       sparkRApplicationConfig:
///         mainRFileUri: gs://some-bucket/something.R
///         fileUris:
///           - file://usr/lib/spark/examples/spark-examples.jar
///         archiveUris:
///           - file://usr/lib/spark/examples/spark-examples.jar
///         args:
///           - '10'
/// ```
///
/// ### Dataprocgdc Sparkapplication Sparksql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const spark_application = new gcp.dataproc.GdcSparkApplication("spark-application", {
///     sparkApplicationId: "tf-e2e-sparksql-app",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
///     displayName: "A SparkSql application for a Terraform create test",
///     sparkSqlApplicationConfig: {
///         jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         queryList: {
///             queries: ["show tables;"],
///         },
///         scriptVariables: {
///             MY_VAR: "1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// spark_application = gcp.dataproc.GdcSparkApplication("spark-application",
///     spark_application_id="tf-e2e-sparksql-app",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default",
///     display_name="A SparkSql application for a Terraform create test",
///     spark_sql_application_config={
///         "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         "query_list": {
///             "queries": ["show tables;"],
///         },
///         "script_variables": {
///             "MY_VAR": "1",
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
///     var spark_application = new Gcp.Dataproc.GdcSparkApplication("spark-application", new()
///     {
///         SparkApplicationId = "tf-e2e-sparksql-app",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///         DisplayName = "A SparkSql application for a Terraform create test",
///         SparkSqlApplicationConfig = new Gcp.Dataproc.Inputs.GdcSparkApplicationSparkSqlApplicationConfigArgs
///         {
///             JarFileUris = new[]
///             {
///                 "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///             },
///             QueryList = new Gcp.Dataproc.Inputs.GdcSparkApplicationSparkSqlApplicationConfigQueryListArgs
///             {
///                 Queries = new[]
///                 {
///                     "show tables;",
///                 },
///             },
///             ScriptVariables =
///             {
///                 { "MY_VAR", "1" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewGdcSparkApplication(ctx, "spark-application", &dataproc.GdcSparkApplicationArgs{
/// 			SparkApplicationId: pulumi.String("tf-e2e-sparksql-app"),
/// 			Serviceinstance:    pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:            pulumi.String("my-project"),
/// 			Location:           pulumi.String("us-west2"),
/// 			Namespace:          pulumi.String("default"),
/// 			DisplayName:        pulumi.String("A SparkSql application for a Terraform create test"),
/// 			SparkSqlApplicationConfig: &dataproc.GdcSparkApplicationSparkSqlApplicationConfigArgs{
/// 				JarFileUris: pulumi.StringArray{
/// 					pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// 				},
/// 				QueryList: &dataproc.GdcSparkApplicationSparkSqlApplicationConfigQueryListArgs{
/// 					Queries: pulumi.StringArray{
/// 						pulumi.String("show tables;"),
/// 					},
/// 				},
/// 				ScriptVariables: pulumi.StringMap{
/// 					"MY_VAR": pulumi.String("1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.GdcSparkApplication;
/// import com.pulumi.gcp.dataproc.GdcSparkApplicationArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcSparkApplicationSparkSqlApplicationConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcSparkApplicationSparkSqlApplicationConfigQueryListArgs;
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
///         var spark_application = new GdcSparkApplication("spark-application", GdcSparkApplicationArgs.builder()
///             .sparkApplicationId("tf-e2e-sparksql-app")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .displayName("A SparkSql application for a Terraform create test")
///             .sparkSqlApplicationConfig(GdcSparkApplicationSparkSqlApplicationConfigArgs.builder()
///                 .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .queryList(GdcSparkApplicationSparkSqlApplicationConfigQueryListArgs.builder()
///                     .queries("show tables;")
///                     .build())
///                 .scriptVariables(Map.of("MY_VAR", "1"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   spark-application:
///     type: gcp:dataproc:GdcSparkApplication
///     properties:
///       sparkApplicationId: tf-e2e-sparksql-app
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///       displayName: A SparkSql application for a Terraform create test
///       sparkSqlApplicationConfig:
///         jarFileUris:
///           - file:///usr/lib/spark/examples/jars/spark-examples.jar
///         queryList:
///           queries:
///             - show tables;
///         scriptVariables:
///           MY_VAR: '1'
/// ```
///
/// ### Dataprocgdc Sparkapplication Sparksql Query File
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const spark_application = new gcp.dataproc.GdcSparkApplication("spark-application", {
///     sparkApplicationId: "tf-e2e-sparksql-app",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
///     displayName: "A SparkSql application for a Terraform create test",
///     sparkSqlApplicationConfig: {
///         jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         queryFileUri: "gs://some-bucket/something.sql",
///         scriptVariables: {
///             MY_VAR: "1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// spark_application = gcp.dataproc.GdcSparkApplication("spark-application",
///     spark_application_id="tf-e2e-sparksql-app",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default",
///     display_name="A SparkSql application for a Terraform create test",
///     spark_sql_application_config={
///         "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         "query_file_uri": "gs://some-bucket/something.sql",
///         "script_variables": {
///             "MY_VAR": "1",
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
///     var spark_application = new Gcp.Dataproc.GdcSparkApplication("spark-application", new()
///     {
///         SparkApplicationId = "tf-e2e-sparksql-app",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///         DisplayName = "A SparkSql application for a Terraform create test",
///         SparkSqlApplicationConfig = new Gcp.Dataproc.Inputs.GdcSparkApplicationSparkSqlApplicationConfigArgs
///         {
///             JarFileUris = new[]
///             {
///                 "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///             },
///             QueryFileUri = "gs://some-bucket/something.sql",
///             ScriptVariables =
///             {
///                 { "MY_VAR", "1" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewGdcSparkApplication(ctx, "spark-application", &dataproc.GdcSparkApplicationArgs{
/// 			SparkApplicationId: pulumi.String("tf-e2e-sparksql-app"),
/// 			Serviceinstance:    pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:            pulumi.String("my-project"),
/// 			Location:           pulumi.String("us-west2"),
/// 			Namespace:          pulumi.String("default"),
/// 			DisplayName:        pulumi.String("A SparkSql application for a Terraform create test"),
/// 			SparkSqlApplicationConfig: &dataproc.GdcSparkApplicationSparkSqlApplicationConfigArgs{
/// 				JarFileUris: pulumi.StringArray{
/// 					pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// 				},
/// 				QueryFileUri: pulumi.String("gs://some-bucket/something.sql"),
/// 				ScriptVariables: pulumi.StringMap{
/// 					"MY_VAR": pulumi.String("1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.GdcSparkApplication;
/// import com.pulumi.gcp.dataproc.GdcSparkApplicationArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcSparkApplicationSparkSqlApplicationConfigArgs;
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
///         var spark_application = new GdcSparkApplication("spark-application", GdcSparkApplicationArgs.builder()
///             .sparkApplicationId("tf-e2e-sparksql-app")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .displayName("A SparkSql application for a Terraform create test")
///             .sparkSqlApplicationConfig(GdcSparkApplicationSparkSqlApplicationConfigArgs.builder()
///                 .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .queryFileUri("gs://some-bucket/something.sql")
///                 .scriptVariables(Map.of("MY_VAR", "1"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   spark-application:
///     type: gcp:dataproc:GdcSparkApplication
///     properties:
///       sparkApplicationId: tf-e2e-sparksql-app
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///       displayName: A SparkSql application for a Terraform create test
///       sparkSqlApplicationConfig:
///         jarFileUris:
///           - file:///usr/lib/spark/examples/jars/spark-examples.jar
///         queryFileUri: gs://some-bucket/something.sql
///         scriptVariables:
///           MY_VAR: '1'
/// ```
///
///
/// ## Import
///
/// SparkApplication can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/sparkApplications/{{spark_application_id}}`
///
/// * `{{project}}/{{location}}/{{serviceinstance}}/{{spark_application_id}}`
///
/// * `{{location}}/{{serviceinstance}}/{{spark_application_id}}`
///
/// When using the `pulumi import` command, SparkApplication can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcSparkApplication:GdcSparkApplication default projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/sparkApplications/{{spark_application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcSparkApplication:GdcSparkApplication default {{project}}/{{location}}/{{serviceinstance}}/{{spark_application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcSparkApplication:GdcSparkApplication default {{location}}/{{serviceinstance}}/{{spark_application_id}}
/// ```
class GdcSparkApplication extends pulumi.CustomResource {
  /// The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// An ApplicationEnvironment from which to inherit configuration properties.
  late final pulumi.Output<String?> applicationEnvironment;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  late final pulumi.Output<List<String>?> dependencyImages;
  /// User-provided human-readable name to be used in user interfaces.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the spark application.
  late final pulumi.Output<String> location;
  /// URL for a monitoring UI for this application (for eventual Spark PHS/UI support) Out of scope for private GA
  late final pulumi.Output<String> monitoringEndpoint;
  /// Identifier. The name of the application. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/sparkApplications/{application}
  late final pulumi.Output<String> name;
  /// The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  late final pulumi.Output<String?> namespace;
  /// An HCFS URI pointing to the location of stdout and stdout of the application Mainly useful for Pantheon and gcloud Not in scope for private GA
  late final pulumi.Output<String> outputUri;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// application-specific properties.
  late final pulumi.Output<Map<String, String>?> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Represents the PySparkApplicationConfig.
  /// Structure is documented below.
  late final pulumi.Output<GdcSparkApplicationPysparkApplicationConfig?> pysparkApplicationConfig;
  /// Whether the application is currently reconciling. True if the current state of the resource does not match the intended state, and the system is working to reconcile them, whether or not the change was user initiated.
  late final pulumi.Output<bool> reconciling;
  /// The id of the service instance to which this spark application belongs.
  late final pulumi.Output<String> serviceinstance;
  /// Represents the SparkApplicationConfig.
  /// Structure is documented below.
  late final pulumi.Output<GdcSparkApplicationSparkApplicationConfig?> sparkApplicationConfig;
  /// The id of the application
  late final pulumi.Output<String> sparkApplicationId;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  late final pulumi.Output<GdcSparkApplicationSparkRApplicationConfig?> sparkRApplicationConfig;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  late final pulumi.Output<GdcSparkApplicationSparkSqlApplicationConfig?> sparkSqlApplicationConfig;
  /// The current state.
  /// Possible values:
  /// * `STATE_UNSPECIFIED`
  /// * `PENDING`
  /// * `RUNNING`
  /// * `CANCELLING`
  /// * `CANCELLED`
  /// * `SUCCEEDED`
  /// * `FAILED`
  late final pulumi.Output<String> state;
  /// A message explaining the current state.
  late final pulumi.Output<String> stateMessage;
  /// System generated unique identifier for this application, formatted as UUID4.
  late final pulumi.Output<String> uid;
  /// The timestamp when the resource was most recently updated.
  late final pulumi.Output<String> updateTime;
  /// The Dataproc version of this application.
  late final pulumi.Output<String?> version;

  /// Creates a new [GdcSparkApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GdcSparkApplication]. {@macro pulumi_dataproc_gdc_spark_application_gdc_spark_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GdcSparkApplication(
    String name, {
    GdcSparkApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/gdcSparkApplication:GdcSparkApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.applicationEnvironment = registerOutput<String?>('applicationEnvironment');
    this.createTime = registerOutput<String>('createTime');
    this.dependencyImages = registerOutput<List<String>?>('dependencyImages');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.monitoringEndpoint = registerOutput<String>('monitoringEndpoint');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String?>('namespace');
    this.outputUri = registerOutput<String>('outputUri');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<Map<String, String>?>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pysparkApplicationConfig = registerOutput<GdcSparkApplicationPysparkApplicationConfig?>('pysparkApplicationConfig');
    this.reconciling = registerOutput<bool>('reconciling');
    this.serviceinstance = registerOutput<String>('serviceinstance');
    this.sparkApplicationConfig = registerOutput<GdcSparkApplicationSparkApplicationConfig?>('sparkApplicationConfig');
    this.sparkApplicationId = registerOutput<String>('sparkApplicationId');
    this.sparkRApplicationConfig = registerOutput<GdcSparkApplicationSparkRApplicationConfig?>('sparkRApplicationConfig');
    this.sparkSqlApplicationConfig = registerOutput<GdcSparkApplicationSparkSqlApplicationConfig?>('sparkSqlApplicationConfig');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String?>('version');
  }

  /// Gets an existing [GdcSparkApplication] resource's state with the given [name] and [id].
  static GdcSparkApplication get(
    String name,
    pulumi.Input<String> id, {
    GdcSparkApplicationState? state,
  }) {
    return GdcSparkApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GdcSparkApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/gdcSparkApplication:GdcSparkApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.applicationEnvironment = registerOutput<String?>('applicationEnvironment');
    this.createTime = registerOutput<String>('createTime');
    this.dependencyImages = registerOutput<List<String>?>('dependencyImages');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.monitoringEndpoint = registerOutput<String>('monitoringEndpoint');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String?>('namespace');
    this.outputUri = registerOutput<String>('outputUri');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<Map<String, String>?>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pysparkApplicationConfig = registerOutput<GdcSparkApplicationPysparkApplicationConfig?>('pysparkApplicationConfig');
    this.reconciling = registerOutput<bool>('reconciling');
    this.serviceinstance = registerOutput<String>('serviceinstance');
    this.sparkApplicationConfig = registerOutput<GdcSparkApplicationSparkApplicationConfig?>('sparkApplicationConfig');
    this.sparkApplicationId = registerOutput<String>('sparkApplicationId');
    this.sparkRApplicationConfig = registerOutput<GdcSparkApplicationSparkRApplicationConfig?>('sparkRApplicationConfig');
    this.sparkSqlApplicationConfig = registerOutput<GdcSparkApplicationSparkSqlApplicationConfig?>('sparkSqlApplicationConfig');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String?>('version');
  }
}
