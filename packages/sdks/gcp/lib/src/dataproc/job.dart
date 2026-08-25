import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_hadoop_config.dart';
import 'job_hive_config.dart';
import 'job_pig_config.dart';
import 'job_placement.dart';
import 'job_presto_config.dart';
import 'job_pyspark_config.dart';
import 'job_reference.dart';
import 'job_scheduling.dart';
import 'job_spark_config.dart';
import 'job_sparksql_config.dart';
import 'job_state.dart';
import 'job_status.dart';

/// Manages a job resource within a Dataproc cluster within GCE. For more information see
/// [the official dataproc documentation](https://cloud.google.com/dataproc/).
///
/// &gt; **Note:** This resource does not support 'update' and changing any attributes will cause the resource to be recreated.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mycluster = new gcp.dataproc.Cluster("mycluster", {
///     name: "dproc-cluster-unique-name",
///     region: "us-central1",
/// });
/// // Submit an example spark job to a dataproc cluster
/// const spark = new gcp.dataproc.Job("spark", {
///     region: mycluster.region,
///     forceDelete: true,
///     placement: {
///         clusterName: mycluster.name,
///     },
///     sparkConfig: {
///         mainClass: "org.apache.spark.examples.SparkPi",
///         jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         args: ["1000"],
///         properties: {
///             "spark.logConf": "true",
///         },
///         loggingConfig: {
///             driverLogLevels: {
///                 root: "INFO",
///             },
///         },
///     },
/// });
/// // Submit an example pyspark job to a dataproc cluster
/// const pyspark = new gcp.dataproc.Job("pyspark", {
///     region: mycluster.region,
///     forceDelete: true,
///     placement: {
///         clusterName: mycluster.name,
///     },
///     pysparkConfig: {
///         mainPythonFileUri: "gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py",
///         properties: {
///             "spark.logConf": "true",
///         },
///     },
/// });
/// export const sparkStatus = spark.statuses[0].state;
/// export const pysparkStatus = pyspark.statuses[0].state;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// mycluster = gcp.dataproc.Cluster("mycluster",
///     name="dproc-cluster-unique-name",
///     region="us-central1")
/// # Submit an example spark job to a dataproc cluster
/// spark = gcp.dataproc.Job("spark",
///     region=mycluster.region,
///     force_delete=True,
///     placement={
///         "cluster_name": mycluster.name,
///     },
///     spark_config={
///         "main_class": "org.apache.spark.examples.SparkPi",
///         "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
///         "args": ["1000"],
///         "properties": {
///             "spark.logConf": "true",
///         },
///         "logging_config": {
///             "driver_log_levels": {
///                 "root": "INFO",
///             },
///         },
///     })
/// # Submit an example pyspark job to a dataproc cluster
/// pyspark = gcp.dataproc.Job("pyspark",
///     region=mycluster.region,
///     force_delete=True,
///     placement={
///         "cluster_name": mycluster.name,
///     },
///     pyspark_config={
///         "main_python_file_uri": "gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py",
///         "properties": {
///             "spark.logConf": "true",
///         },
///     })
/// pulumi.export("sparkStatus", spark.statuses[0].state)
/// pulumi.export("pysparkStatus", pyspark.statuses[0].state)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mycluster = new Gcp.Dataproc.Cluster("mycluster", new()
///     {
///         Name = "dproc-cluster-unique-name",
///         Region = "us-central1",
///     });
///
///     // Submit an example spark job to a dataproc cluster
///     var spark = new Gcp.Dataproc.Job("spark", new()
///     {
///         Region = mycluster.Region,
///         ForceDelete = true,
///         Placement = new Gcp.Dataproc.Inputs.JobPlacementArgs
///         {
///             ClusterName = mycluster.Name,
///         },
///         SparkConfig = new Gcp.Dataproc.Inputs.JobSparkConfigArgs
///         {
///             MainClass = "org.apache.spark.examples.SparkPi",
///             JarFileUris = new[]
///             {
///                 "file:///usr/lib/spark/examples/jars/spark-examples.jar",
///             },
///             Args = new[]
///             {
///                 "1000",
///             },
///             Properties =
///             {
///                 { "spark.logConf", "true" },
///             },
///             LoggingConfig = new Gcp.Dataproc.Inputs.JobSparkConfigLoggingConfigArgs
///             {
///                 DriverLogLevels =
///                 {
///                     { "root", "INFO" },
///                 },
///             },
///         },
///     });
///
///     // Submit an example pyspark job to a dataproc cluster
///     var pyspark = new Gcp.Dataproc.Job("pyspark", new()
///     {
///         Region = mycluster.Region,
///         ForceDelete = true,
///         Placement = new Gcp.Dataproc.Inputs.JobPlacementArgs
///         {
///             ClusterName = mycluster.Name,
///         },
///         PysparkConfig = new Gcp.Dataproc.Inputs.JobPysparkConfigArgs
///         {
///             MainPythonFileUri = "gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py",
///             Properties =
///             {
///                 { "spark.logConf", "true" },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["sparkStatus"] = spark.Statuses.Apply(statuses => statuses[0].State),
///         ["pysparkStatus"] = pyspark.Statuses.Apply(statuses => statuses[0].State),
///     };
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
/// 		mycluster, err := dataproc.NewCluster(ctx, "mycluster", &dataproc.ClusterArgs{
/// 			Name:   pulumi.String("dproc-cluster-unique-name"),
/// 			Region: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Submit an example spark job to a dataproc cluster
/// 		spark, err := dataproc.NewJob(ctx, "spark", &dataproc.JobArgs{
/// 			Region:      mycluster.Region,
/// 			ForceDelete: pulumi.Bool(true),
/// 			Placement: &dataproc.JobPlacementArgs{
/// 				ClusterName: mycluster.Name,
/// 			},
/// 			SparkConfig: &dataproc.JobSparkConfigArgs{
/// 				MainClass: pulumi.String("org.apache.spark.examples.SparkPi"),
/// 				JarFileUris: pulumi.StringArray{
/// 					pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// 				},
/// 				Args: pulumi.StringArray{
/// 					pulumi.String("1000"),
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"spark.logConf": pulumi.String("true"),
/// 				},
/// 				LoggingConfig: &dataproc.JobSparkConfigLoggingConfigArgs{
/// 					DriverLogLevels: pulumi.StringMap{
/// 						"root": pulumi.String("INFO"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Submit an example pyspark job to a dataproc cluster
/// 		pyspark, err := dataproc.NewJob(ctx, "pyspark", &dataproc.JobArgs{
/// 			Region:      mycluster.Region,
/// 			ForceDelete: pulumi.Bool(true),
/// 			Placement: &dataproc.JobPlacementArgs{
/// 				ClusterName: mycluster.Name,
/// 			},
/// 			PysparkConfig: &dataproc.JobPysparkConfigArgs{
/// 				MainPythonFileUri: pulumi.String("gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py"),
/// 				Properties: pulumi.StringMap{
/// 					"spark.logConf": pulumi.String("true"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("sparkStatus", spark.Statuses.ApplyT(func(statuses []dataproc.JobStatus) (*string, error) {
/// 			return statuses[0].State, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		ctx.Export("pysparkStatus", pyspark.Statuses.ApplyT(func(statuses []dataproc.JobStatus) (*string, error) {
/// 			return statuses[0].State, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// resource "gcp_dataproc_cluster" "mycluster" {
///   name   = "dproc-cluster-unique-name"
///   region = "us-central1"
/// }
/// # Submit an example spark job to a dataproc cluster
/// resource "gcp_dataproc_job" "spark" {
///   region       = gcp_dataproc_cluster.mycluster.region
///   force_delete = true
///   placement = {
///     cluster_name = gcp_dataproc_cluster.mycluster.name
///   }
///   spark_config = {
///     main_class    = "org.apache.spark.examples.SparkPi"
///     jar_file_uris = ["file:///usr/lib/spark/examples/jars/spark-examples.jar"]
///     args          = ["1000"]
///     properties = {
///       "spark.logConf" = "true"
///     }
///     logging_config = {
///       driver_log_levels = {
///         "root" = "INFO"
///       }
///     }
///   }
/// }
/// # Submit an example pyspark job to a dataproc cluster
/// resource "gcp_dataproc_job" "pyspark" {
///   region       = gcp_dataproc_cluster.mycluster.region
///   force_delete = true
///   placement = {
///     cluster_name = gcp_dataproc_cluster.mycluster.name
///   }
///   pyspark_config = {
///     main_python_file_uri = "gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py"
///     properties = {
///       "spark.logConf" = "true"
///     }
///   }
/// }
/// # Check out current state of the jobs
/// output "sparkStatus" {
///   value = gcp_dataproc_job.spark.statuses[0].state
/// }
/// output "pysparkStatus" {
///   value = gcp_dataproc_job.pyspark.statuses[0].state
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.Job;
/// import com.pulumi.gcp.dataproc.JobArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobPlacementArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobSparkConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobSparkConfigLoggingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobPysparkConfigArgs;
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
///         var mycluster = new Cluster("mycluster", ClusterArgs.builder()
///             .name("dproc-cluster-unique-name")
///             .region("us-central1")
///             .build());
///
///         // Submit an example spark job to a dataproc cluster
///         var spark = new Job("spark", JobArgs.builder()
///             .region(mycluster.region())
///             .forceDelete(true)
///             .placement(JobPlacementArgs.builder()
///                 .clusterName(mycluster.name())
///                 .build())
///             .sparkConfig(JobSparkConfigArgs.builder()
///                 .mainClass("org.apache.spark.examples.SparkPi")
///                 .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
///                 .args("1000")
///                 .properties(Map.of("spark.logConf", "true"))
///                 .loggingConfig(JobSparkConfigLoggingConfigArgs.builder()
///                     .driverLogLevels(Map.of("root", "INFO"))
///                     .build())
///                 .build())
///             .build());
///
///         // Submit an example pyspark job to a dataproc cluster
///         var pyspark = new Job("pyspark", JobArgs.builder()
///             .region(mycluster.region())
///             .forceDelete(true)
///             .placement(JobPlacementArgs.builder()
///                 .clusterName(mycluster.name())
///                 .build())
///             .pysparkConfig(JobPysparkConfigArgs.builder()
///                 .mainPythonFileUri("gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py")
///                 .properties(Map.of("spark.logConf", "true"))
///                 .build())
///             .build());
///
///         ctx.export("sparkStatus", spark.statuses().applyValue(_statuses -> _statuses.get(0).state()));
///         ctx.export("pysparkStatus", pyspark.statuses().applyValue(_statuses -> _statuses.get(0).state()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mycluster:
///     type: gcp:dataproc:Cluster
///     properties:
///       name: dproc-cluster-unique-name
///       region: us-central1
///   # Submit an example spark job to a dataproc cluster
///   spark:
///     type: gcp:dataproc:Job
///     properties:
///       region: ${mycluster.region}
///       forceDelete: true
///       placement:
///         clusterName: ${mycluster.name}
///       sparkConfig:
///         mainClass: org.apache.spark.examples.SparkPi
///         jarFileUris:
///           - file:///usr/lib/spark/examples/jars/spark-examples.jar
///         args:
///           - '1000'
///         properties:
///           spark.logConf: 'true'
///         loggingConfig:
///           driverLogLevels:
///             root: INFO
///   # Submit an example pyspark job to a dataproc cluster
///   pyspark:
///     type: gcp:dataproc:Job
///     properties:
///       region: ${mycluster.region}
///       forceDelete: true
///       placement:
///         clusterName: ${mycluster.name}
///       pysparkConfig:
///         mainPythonFileUri: gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py
///         properties:
///           spark.logConf: 'true'
/// outputs:
///   # Check out current state of the jobs
///   sparkStatus: ${spark.statuses[0].state}
///   pysparkStatus: ${pyspark.statuses[0].state}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class Job extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  late final pulumi.Output<String> driverControlsFilesUri;
  /// A URI pointing to the location of the stdout of the job's driver program.
  late final pulumi.Output<String> driverOutputResourceUri;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  ///
  /// * `scheduling.max_failures_per_hour` - (Required) Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  ///
  /// * `scheduling.max_failures_total` - (Required) Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// By default, you can only delete inactive jobs within
  /// Dataproc. Setting this to true, and calling destroy, will ensure that the
  /// job is first cancelled before issuing the delete.
  late final pulumi.Output<bool?> forceDelete;
  /// The config of Hadoop job
  late final pulumi.Output<JobHadoopConfig?> hadoopConfig;
  /// The config of hive job
  late final pulumi.Output<JobHiveConfig?> hiveConfig;
  /// The list of labels (key/value pairs) to add to the job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The config of pag job.
  late final pulumi.Output<JobPigConfig?> pigConfig;
  /// The config of job placement.
  late final pulumi.Output<JobPlacement> placement;
  /// The config of presto job
  late final pulumi.Output<JobPrestoConfig?> prestoConfig;
  /// The project in which the `cluster` can be found and jobs
  /// subsequently run against. If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The config of pySpark job.
  late final pulumi.Output<JobPysparkConfig?> pysparkConfig;
  /// The reference of the job
  late final pulumi.Output<JobReference> reference;
  /// The Cloud Dataproc region. This essentially determines which clusters are available
  /// for this job to be submitted to. If not specified, defaults to `global`.
  late final pulumi.Output<String?> region;
  /// Optional. Job scheduling configuration.
  late final pulumi.Output<JobScheduling?> scheduling;
  /// The config of the Spark job.
  late final pulumi.Output<JobSparkConfig?> sparkConfig;
  /// The config of SparkSql job
  late final pulumi.Output<JobSparksqlConfig?> sparksqlConfig;
  /// The status of the job.
  late final pulumi.Output<List<JobStatus>> statuses;
  /// If set to true, Terraform will wait for the job to reach a terminal state (`DONE`, `ERROR`, `CANCELLED`, `ATTEMPT_FAILURE`). Otherwise, Terraform will consider the job 'created' once it is in the `RUNNING` state.
  late final pulumi.Output<bool?> waitForCompletion;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_dataproc_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    driverControlsFilesUri = registerOutput<String>('driverControlsFilesUri');
    driverOutputResourceUri = registerOutput<String>('driverOutputResourceUri');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDelete = registerOutput<bool?>('forceDelete');
    hadoopConfig = registerOutput<JobHadoopConfig?>('hadoopConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobHadoopConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hiveConfig = registerOutput<JobHiveConfig?>('hiveConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobHiveConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    pigConfig = registerOutput<JobPigConfig?>('pigConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placement = registerOutput<JobPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prestoConfig = registerOutput<JobPrestoConfig?>('prestoConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPrestoConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    pysparkConfig = registerOutput<JobPysparkConfig?>('pysparkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPysparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reference = registerOutput<JobReference>('reference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String?>('region');
    scheduling = registerOutput<JobScheduling?>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparkConfig = registerOutput<JobSparkConfig?>('sparkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparksqlConfig = registerOutput<JobSparksqlConfig?>('sparksqlConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSparksqlConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<JobStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobStatus>(guardedValue, (value) => JobStatus.fromMap((value as Map).cast<String, dynamic>())); });
    waitForCompletion = registerOutput<bool?>('waitForCompletion');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(
    String name,
    pulumi.Input<String> id, {
    JobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/job:Job',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    driverControlsFilesUri = registerOutput<String>('driverControlsFilesUri');
    driverOutputResourceUri = registerOutput<String>('driverOutputResourceUri');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDelete = registerOutput<bool?>('forceDelete');
    hadoopConfig = registerOutput<JobHadoopConfig?>('hadoopConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobHadoopConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hiveConfig = registerOutput<JobHiveConfig?>('hiveConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobHiveConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    pigConfig = registerOutput<JobPigConfig?>('pigConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placement = registerOutput<JobPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prestoConfig = registerOutput<JobPrestoConfig?>('prestoConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPrestoConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    pysparkConfig = registerOutput<JobPysparkConfig?>('pysparkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPysparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reference = registerOutput<JobReference>('reference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String?>('region');
    scheduling = registerOutput<JobScheduling?>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparkConfig = registerOutput<JobSparkConfig?>('sparkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparksqlConfig = registerOutput<JobSparksqlConfig?>('sparksqlConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSparksqlConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<JobStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobStatus>(guardedValue, (value) => JobStatus.fromMap((value as Map).cast<String, dynamic>())); });
    waitForCompletion = registerOutput<bool?>('waitForCompletion');
  }

  /// Creates a typed reference to an existing [Job] resource.
  Job.reference(String urn)
    : super(
        'gcp:dataproc/job:Job',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    driverControlsFilesUri = registerOutput<String>('driverControlsFilesUri');
    driverOutputResourceUri = registerOutput<String>('driverOutputResourceUri');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDelete = registerOutput<bool?>('forceDelete');
    hadoopConfig = registerOutput<JobHadoopConfig?>('hadoopConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobHadoopConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hiveConfig = registerOutput<JobHiveConfig?>('hiveConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobHiveConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    pigConfig = registerOutput<JobPigConfig?>('pigConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placement = registerOutput<JobPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prestoConfig = registerOutput<JobPrestoConfig?>('prestoConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPrestoConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    pysparkConfig = registerOutput<JobPysparkConfig?>('pysparkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPysparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reference = registerOutput<JobReference>('reference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String?>('region');
    scheduling = registerOutput<JobScheduling?>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparkConfig = registerOutput<JobSparkConfig?>('sparkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparksqlConfig = registerOutput<JobSparksqlConfig?>('sparksqlConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSparksqlConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<JobStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobStatus>(guardedValue, (value) => JobStatus.fromMap((value as Map).cast<String, dynamic>())); });
    waitForCompletion = registerOutput<bool?>('waitForCompletion');
  }
}
