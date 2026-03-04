import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_kafka_schema_registry_args.dart';
import 'database_kafka_schema_registry_state.dart';

/// Provides a DigitalOcean Kafka schema registry for Kafka clusters.
///
/// ## Example Usage
///
/// ### Create a new Kafka Schema Registry
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const kafka_example = new digitalocean.DatabaseCluster("kafka-example", {
///     name: "example-kafka-cluster",
///     engine: "kafka",
///     version: "3.5",
///     size: "gd-2vcpu-8gb",
///     region: digitalocean.Region.BLR1,
///     nodeCount: 3,
///     tags: ["production"],
/// });
/// const schema_01 = new digitalocean.DatabaseKafkaSchemaRegistry("schema-01", {
///     clusterId: kafka_example.id,
///     subjectName: "test-schema",
///     schemaType: "avro",
///     schema: `{
///   \\"type\\": \\"record\\",
///   \\"namespace\\": \\"example\\",
///   \\"name\\": \\"TestRecord\\",
///   \\"fields\\": [
///     {\\"name\\": \\"id\\", \\"type\\": \\"string\\"},
///     {\\"name\\": \\"name\\", \\"type\\": \\"string\\"},
///     {\\"name\\": \\"value\\", \\"type\\": \\"int\\"}
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// kafka_example = digitalocean.DatabaseCluster("kafka-example",
///     name="example-kafka-cluster",
///     engine="kafka",
///     version="3.5",
///     size="gd-2vcpu-8gb",
///     region=digitalocean.Region.BLR1,
///     node_count=3,
///     tags=["production"])
/// schema_01 = digitalocean.DatabaseKafkaSchemaRegistry("schema-01",
///     cluster_id=kafka_example.id,
///     subject_name="test-schema",
///     schema_type="avro",
///     schema="""{
///   \"type\": \"record\",
///   \"namespace\": \"example\",
///   \"name\": \"TestRecord\",
///   \"fields\": [
///     {\"name\": \"id\", \"type\": \"string\"},
///     {\"name\": \"name\", \"type\": \"string\"},
///     {\"name\": \"value\", \"type\": \"int\"}
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kafka_example = new DigitalOcean.DatabaseCluster("kafka-example", new()
///     {
///         Name = "example-kafka-cluster",
///         Engine = "kafka",
///         Version = "3.5",
///         Size = "gd-2vcpu-8gb",
///         Region = DigitalOcean.Region.BLR1,
///         NodeCount = 3,
///         Tags = new[]
///         {
///             "production",
///         },
///     });
///
///     var schema_01 = new DigitalOcean.DatabaseKafkaSchemaRegistry("schema-01", new()
///     {
///         ClusterId = kafka_example.Id,
///         SubjectName = "test-schema",
///         SchemaType = "avro",
///         Schema = @"{
///   \""type\"": \""record\"",
///   \""namespace\"": \""example\"",
///   \""name\"": \""TestRecord\"",
///   \""fields\"": [
///     {\""name\"": \""id\"", \""type\"": \""string\""},
///     {\""name\"": \""name\"", \""type\"": \""string\""},
///     {\""name\"": \""value\"", \""type\"": \""int\""}
///   ]
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		kafka_example, err := digitalocean.NewDatabaseCluster(ctx, "kafka-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-kafka-cluster"),
/// 			Engine:    pulumi.String("kafka"),
/// 			Version:   pulumi.String("3.5"),
/// 			Size:      pulumi.String("gd-2vcpu-8gb"),
/// 			Region:    pulumi.String(digitalocean.RegionBLR1),
/// 			NodeCount: pulumi.Int(3),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseKafkaSchemaRegistry(ctx, "schema-01", &digitalocean.DatabaseKafkaSchemaRegistryArgs{
/// 			ClusterId:   kafka_example.ID(),
/// 			SubjectName: pulumi.String("test-schema"),
/// 			SchemaType:  pulumi.String("avro"),
/// 			Schema: pulumi.String(`{
///   \"type\": \"record\",
///   \"namespace\": \"example\",
///   \"name\": \"TestRecord\",
///   \"fields\": [
///     {\"name\": \"id\", \"type\": \"string\"},
///     {\"name\": \"name\", \"type\": \"string\"},
///     {\"name\": \"value\", \"type\": \"int\"}
///   ]
/// }
/// `),
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
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseKafkaSchemaRegistry;
/// import com.pulumi.digitalocean.DatabaseKafkaSchemaRegistryArgs;
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
///         var kafka_example = new DatabaseCluster("kafka-example", DatabaseClusterArgs.builder()
///             .name("example-kafka-cluster")
///             .engine("kafka")
///             .version("3.5")
///             .size("gd-2vcpu-8gb")
///             .region("blr1")
///             .nodeCount(3)
///             .tags("production")
///             .build());
///
///         var schema_01 = new DatabaseKafkaSchemaRegistry("schema-01", DatabaseKafkaSchemaRegistryArgs.builder()
///             .clusterId(kafka_example.id())
///             .subjectName("test-schema")
///             .schemaType("avro")
///             .schema("""
/// {
///   \"type\": \"record\",
///   \"namespace\": \"example\",
///   \"name\": \"TestRecord\",
///   \"fields\": [
///     {\"name\": \"id\", \"type\": \"string\"},
///     {\"name\": \"name\", \"type\": \"string\"},
///     {\"name\": \"value\", \"type\": \"int\"}
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   schema-01:
///     type: digitalocean:DatabaseKafkaSchemaRegistry
///     properties:
///       clusterId: ${["kafka-example"].id}
///       subjectName: test-schema
///       schemaType: avro
///       schema: |
///         {
///           \"type\": \"record\",
///           \"namespace\": \"example\",
///           \"name\": \"TestRecord\",
///           \"fields\": [
///             {\"name\": \"id\", \"type\": \"string\"},
///             {\"name\": \"name\", \"type\": \"string\"},
///             {\"name\": \"value\", \"type\": \"int\"}
///           ]
///         }
///   kafka-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-kafka-cluster
///       engine: kafka
///       version: '3.5'
///       size: gd-2vcpu-8gb
///       region: blr1
///       nodeCount: 3
///       tags:
///         - production
/// ```
class DatabaseKafkaSchemaRegistry extends pulumi.CustomResource {
  /// The ID of the target Kafka cluster.
  late final pulumi.Output<String> clusterId;

  /// The schema definition as a string.
  late final pulumi.Output<String> schema;

  /// The schema type. Available values are: avro, json, or protobuf.
  late final pulumi.Output<String> schemaType;

  /// The name of the schema subject.
  late final pulumi.Output<String> subjectName;

  /// Creates a new [DatabaseKafkaSchemaRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseKafkaSchemaRegistry]. {@macro pulumi_index_database_kafka_schema_registry_database_kafka_schema_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseKafkaSchemaRegistry(
    String name, {
    DatabaseKafkaSchemaRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseKafkaSchemaRegistry:DatabaseKafkaSchemaRegistry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    schema = registerOutput<String>('schema');
    schemaType = registerOutput<String>('schemaType');
    subjectName = registerOutput<String>('subjectName');
  }

  /// Gets an existing [DatabaseKafkaSchemaRegistry] resource's state with the given [name] and [id].
  static DatabaseKafkaSchemaRegistry get(
    String name,
    pulumi.Input<String> id, {
    DatabaseKafkaSchemaRegistryState? state,
  }) {
    return DatabaseKafkaSchemaRegistry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseKafkaSchemaRegistry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseKafkaSchemaRegistry:DatabaseKafkaSchemaRegistry',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    schema = registerOutput<String>('schema');
    schemaType = registerOutput<String>('schemaType');
    subjectName = registerOutput<String>('subjectName');
  }
}
