import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';
import 'topic_ingestion_data_source_settings.dart';
import 'topic_message_storage_policy.dart';
import 'topic_schema_settings.dart';
import 'topic_state.dart';

/// A named resource to which messages are sent by publishers.
///
///
/// To get more information about Topic, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics)
/// * How-to Guides
/// * [Managing Topics](https://cloud.google.com/pubsub/docs/admin#managing_topics)
///
/// &gt; **Note:** You can retrieve the email of the Google Managed Pub/Sub Service Account used for forwarding
/// by using the `gcp.projects.ServiceIdentity` resource.
///
/// ## Example Usage
///
/// ### Pubsub Topic Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     labels: {
///         foo: "bar",
///     },
///     messageRetentionDuration: "86600s",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     labels={
///         "foo": "bar",
///     },
///     message_retention_duration="86600s")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         MessageRetentionDuration = "86600s",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			MessageRetentionDuration: pulumi.String("86600s"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .labels(Map.of("foo", "bar"))
///             .messageRetentionDuration("86600s")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       labels:
///         foo: bar
///       messageRetentionDuration: 86600s
/// ```
///
/// ### Pubsub Topic Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "example-keyring",
///     location: "global",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "example-key",
///     keyRing: keyRing.id,
/// });
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     kmsKeyName: cryptoKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="example-keyring",
///     location="global")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="example-key",
///     key_ring=key_ring.id)
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     kms_key_name=crypto_key.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "example-keyring",
///         Location = "global",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "example-key",
///         KeyRing = keyRing.Id,
///     });
///
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         KmsKeyName = cryptoKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("example-keyring"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("example-key"),
/// 			KeyRing: keyRing.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name:       pulumi.String("example-topic"),
/// 			KmsKeyName: cryptoKey.ID(),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("example-keyring")
///             .location("global")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("example-key")
///             .keyRing(keyRing.id())
///             .build());
///
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .kmsKeyName(cryptoKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       kmsKeyName: ${cryptoKey.id}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: example-key
///       keyRing: ${keyRing.id}
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: example-keyring
///       location: global
/// ```
///
/// ### Pubsub Topic Geo Restricted
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     messageStoragePolicy: {
///         allowedPersistenceRegions: ["europe-west3"],
///         enforceInTransit: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     message_storage_policy={
///         "allowed_persistence_regions": ["europe-west3"],
///         "enforce_in_transit": True,
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         MessageStoragePolicy = new Gcp.PubSub.Inputs.TopicMessageStoragePolicyArgs
///         {
///             AllowedPersistenceRegions = new[]
///             {
///                 "europe-west3",
///             },
///             EnforceInTransit = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			MessageStoragePolicy: &pubsub.TopicMessageStoragePolicyArgs{
/// 				AllowedPersistenceRegions: pulumi.StringArray{
/// 					pulumi.String("europe-west3"),
/// 				},
/// 				EnforceInTransit: pulumi.Bool(true),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicMessageStoragePolicyArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .messageStoragePolicy(TopicMessageStoragePolicyArgs.builder()
///                 .allowedPersistenceRegions("europe-west3")
///                 .enforceInTransit(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       messageStoragePolicy:
///         allowedPersistenceRegions:
///           - europe-west3
///         enforceInTransit: true
/// ```
///
/// ### Pubsub Topic Schema Settings
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Schema("example", {
///     name: "example",
///     type: "AVRO",
///     definition: `{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// `,
/// });
/// const exampleTopic = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     schemaSettings: {
///         schema: "projects/my-project-name/schemas/example",
///         encoding: "JSON",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Schema("example",
///     name="example",
///     type="AVRO",
///     definition="""{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// """)
/// example_topic = gcp.pubsub.Topic("example",
///     name="example-topic",
///     schema_settings={
///         "schema": "projects/my-project-name/schemas/example",
///         "encoding": "JSON",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Schema("example", new()
///     {
///         Name = "example",
///         Type = "AVRO",
///         Definition = @"{
///   ""type"" : ""record"",
///   ""name"" : ""Avro"",
///   ""fields"" : [
///     {
///       ""name"" : ""StringField"",
///       ""type"" : ""string""
///     },
///     {
///       ""name"" : ""IntField"",
///       ""type"" : ""int""
///     }
///   ]
/// }
/// ",
///     });
///
///     var exampleTopic = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         SchemaSettings = new Gcp.PubSub.Inputs.TopicSchemaSettingsArgs
///         {
///             Schema = "projects/my-project-name/schemas/example",
///             Encoding = "JSON",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewSchema(ctx, "example", &pubsub.SchemaArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("AVRO"),
/// 			Definition: pulumi.String(`{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			SchemaSettings: &pubsub.TopicSchemaSettingsArgs{
/// 				Schema:   pulumi.String("projects/my-project-name/schemas/example"),
/// 				Encoding: pulumi.String("JSON"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// import com.pulumi.gcp.pubsub.Schema;
/// import com.pulumi.gcp.pubsub.SchemaArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicSchemaSettingsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Schema("example", SchemaArgs.builder()
///             .name("example")
///             .type("AVRO")
///             .definition("""
/// {
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
///             """)
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .schemaSettings(TopicSchemaSettingsArgs.builder()
///                 .schema("projects/my-project-name/schemas/example")
///                 .encoding("JSON")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Schema
///     properties:
///       name: example
///       type: AVRO
///       definition: |
///         {
///           "type" : "record",
///           "name" : "Avro",
///           "fields" : [
///             {
///               "name" : "StringField",
///               "type" : "string"
///             },
///             {
///               "name" : "IntField",
///               "type" : "int"
///             }
///           ]
///         }
///   exampleTopic:
///     type: gcp:pubsub:Topic
///     name: example
///     properties:
///       name: example-topic
///       schemaSettings:
///         schema: projects/my-project-name/schemas/example
///         encoding: JSON
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
/// ### Pubsub Topic Ingestion Kinesis
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     ingestionDataSourceSettings: {
///         awsKinesis: {
///             streamArn: "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name",
///             consumerArn: "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name/consumer/consumer-1:1111111111",
///             awsRoleArn: "arn:aws:iam::111111111111:role/fake-role-name",
///             gcpServiceAccount: "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     ingestion_data_source_settings={
///         "aws_kinesis": {
///             "stream_arn": "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name",
///             "consumer_arn": "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name/consumer/consumer-1:1111111111",
///             "aws_role_arn": "arn:aws:iam::111111111111:role/fake-role-name",
///             "gcp_service_account": "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         IngestionDataSourceSettings = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsArgs
///         {
///             AwsKinesis = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsAwsKinesisArgs
///             {
///                 StreamArn = "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name",
///                 ConsumerArn = "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name/consumer/consumer-1:1111111111",
///                 AwsRoleArn = "arn:aws:iam::111111111111:role/fake-role-name",
///                 GcpServiceAccount = "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			IngestionDataSourceSettings: &pubsub.TopicIngestionDataSourceSettingsArgs{
/// 				AwsKinesis: &pubsub.TopicIngestionDataSourceSettingsAwsKinesisArgs{
/// 					StreamArn:         pulumi.String("arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name"),
/// 					ConsumerArn:       pulumi.String("arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name/consumer/consumer-1:1111111111"),
/// 					AwsRoleArn:        pulumi.String("arn:aws:iam::111111111111:role/fake-role-name"),
/// 					GcpServiceAccount: pulumi.String("fake-service-account@fake-gcp-project.iam.gserviceaccount.com"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsAwsKinesisArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .ingestionDataSourceSettings(TopicIngestionDataSourceSettingsArgs.builder()
///                 .awsKinesis(TopicIngestionDataSourceSettingsAwsKinesisArgs.builder()
///                     .streamArn("arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name")
///                     .consumerArn("arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name/consumer/consumer-1:1111111111")
///                     .awsRoleArn("arn:aws:iam::111111111111:role/fake-role-name")
///                     .gcpServiceAccount("fake-service-account@fake-gcp-project.iam.gserviceaccount.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       ingestionDataSourceSettings:
///         awsKinesis:
///           streamArn: arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name
///           consumerArn: arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name/consumer/consumer-1:1111111111
///           awsRoleArn: arn:aws:iam::111111111111:role/fake-role-name
///           gcpServiceAccount: fake-service-account@fake-gcp-project.iam.gserviceaccount.com
/// ```
///
/// ### Pubsub Topic Ingestion Cloud Storage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     ingestionDataSourceSettings: {
///         cloudStorage: {
///             bucket: "test-bucket",
///             textFormat: {
///                 delimiter: " ",
///             },
///             minimumObjectCreateTime: "2024-01-01T00:00:00Z",
///             matchGlob: "foo/**",
///         },
///         platformLogsSettings: {
///             severity: "WARNING",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     ingestion_data_source_settings={
///         "cloud_storage": {
///             "bucket": "test-bucket",
///             "text_format": {
///                 "delimiter": " ",
///             },
///             "minimum_object_create_time": "2024-01-01T00:00:00Z",
///             "match_glob": "foo/**",
///         },
///         "platform_logs_settings": {
///             "severity": "WARNING",
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         IngestionDataSourceSettings = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsArgs
///         {
///             CloudStorage = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsCloudStorageArgs
///             {
///                 Bucket = "test-bucket",
///                 TextFormat = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsCloudStorageTextFormatArgs
///                 {
///                     Delimiter = " ",
///                 },
///                 MinimumObjectCreateTime = "2024-01-01T00:00:00Z",
///                 MatchGlob = "foo/**",
///             },
///             PlatformLogsSettings = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsPlatformLogsSettingsArgs
///             {
///                 Severity = "WARNING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			IngestionDataSourceSettings: &pubsub.TopicIngestionDataSourceSettingsArgs{
/// 				CloudStorage: &pubsub.TopicIngestionDataSourceSettingsCloudStorageArgs{
/// 					Bucket: pulumi.String("test-bucket"),
/// 					TextFormat: &pubsub.TopicIngestionDataSourceSettingsCloudStorageTextFormatArgs{
/// 						Delimiter: pulumi.String(" "),
/// 					},
/// 					MinimumObjectCreateTime: pulumi.String("2024-01-01T00:00:00Z"),
/// 					MatchGlob:               pulumi.String("foo/**"),
/// 				},
/// 				PlatformLogsSettings: &pubsub.TopicIngestionDataSourceSettingsPlatformLogsSettingsArgs{
/// 					Severity: pulumi.String("WARNING"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsCloudStorageArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsCloudStorageTextFormatArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsPlatformLogsSettingsArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .ingestionDataSourceSettings(TopicIngestionDataSourceSettingsArgs.builder()
///                 .cloudStorage(TopicIngestionDataSourceSettingsCloudStorageArgs.builder()
///                     .bucket("test-bucket")
///                     .textFormat(TopicIngestionDataSourceSettingsCloudStorageTextFormatArgs.builder()
///                         .delimiter(" ")
///                         .build())
///                     .minimumObjectCreateTime("2024-01-01T00:00:00Z")
///                     .matchGlob("foo/**")
///                     .build())
///                 .platformLogsSettings(TopicIngestionDataSourceSettingsPlatformLogsSettingsArgs.builder()
///                     .severity("WARNING")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       ingestionDataSourceSettings:
///         cloudStorage:
///           bucket: test-bucket
///           textFormat:
///             delimiter: ' '
///           minimumObjectCreateTime: 2024-01-01T00:00:00Z
///           matchGlob: foo/**
///         platformLogsSettings:
///           severity: WARNING
/// ```
///
/// ### Pubsub Topic Ingestion Azure Event Hubs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     ingestionDataSourceSettings: {
///         azureEventHubs: {
///             resourceGroup: "azure-ingestion-resource-group",
///             namespace: "azure-ingestion-namespace",
///             eventHub: "azure-ingestion-event-hub",
///             clientId: "aZZZZZZZ-YYYY-HHHH-GGGG-abcdef569123",
///             tenantId: "0XXXXXXX-YYYY-HHHH-GGGG-123456789123",
///             subscriptionId: "bXXXXXXX-YYYY-HHHH-GGGG-123456789123",
///             gcpServiceAccount: "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     ingestion_data_source_settings={
///         "azure_event_hubs": {
///             "resource_group": "azure-ingestion-resource-group",
///             "namespace": "azure-ingestion-namespace",
///             "event_hub": "azure-ingestion-event-hub",
///             "client_id": "aZZZZZZZ-YYYY-HHHH-GGGG-abcdef569123",
///             "tenant_id": "0XXXXXXX-YYYY-HHHH-GGGG-123456789123",
///             "subscription_id": "bXXXXXXX-YYYY-HHHH-GGGG-123456789123",
///             "gcp_service_account": "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         IngestionDataSourceSettings = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsArgs
///         {
///             AzureEventHubs = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsAzureEventHubsArgs
///             {
///                 ResourceGroup = "azure-ingestion-resource-group",
///                 Namespace = "azure-ingestion-namespace",
///                 EventHub = "azure-ingestion-event-hub",
///                 ClientId = "aZZZZZZZ-YYYY-HHHH-GGGG-abcdef569123",
///                 TenantId = "0XXXXXXX-YYYY-HHHH-GGGG-123456789123",
///                 SubscriptionId = "bXXXXXXX-YYYY-HHHH-GGGG-123456789123",
///                 GcpServiceAccount = "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			IngestionDataSourceSettings: &pubsub.TopicIngestionDataSourceSettingsArgs{
/// 				AzureEventHubs: &pubsub.TopicIngestionDataSourceSettingsAzureEventHubsArgs{
/// 					ResourceGroup:     pulumi.String("azure-ingestion-resource-group"),
/// 					Namespace:         pulumi.String("azure-ingestion-namespace"),
/// 					EventHub:          pulumi.String("azure-ingestion-event-hub"),
/// 					ClientId:          pulumi.String("aZZZZZZZ-YYYY-HHHH-GGGG-abcdef569123"),
/// 					TenantId:          pulumi.String("0XXXXXXX-YYYY-HHHH-GGGG-123456789123"),
/// 					SubscriptionId:    pulumi.String("bXXXXXXX-YYYY-HHHH-GGGG-123456789123"),
/// 					GcpServiceAccount: pulumi.String("fake-service-account@fake-gcp-project.iam.gserviceaccount.com"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsAzureEventHubsArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .ingestionDataSourceSettings(TopicIngestionDataSourceSettingsArgs.builder()
///                 .azureEventHubs(TopicIngestionDataSourceSettingsAzureEventHubsArgs.builder()
///                     .resourceGroup("azure-ingestion-resource-group")
///                     .namespace("azure-ingestion-namespace")
///                     .eventHub("azure-ingestion-event-hub")
///                     .clientId("aZZZZZZZ-YYYY-HHHH-GGGG-abcdef569123")
///                     .tenantId("0XXXXXXX-YYYY-HHHH-GGGG-123456789123")
///                     .subscriptionId("bXXXXXXX-YYYY-HHHH-GGGG-123456789123")
///                     .gcpServiceAccount("fake-service-account@fake-gcp-project.iam.gserviceaccount.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       ingestionDataSourceSettings:
///         azureEventHubs:
///           resourceGroup: azure-ingestion-resource-group
///           namespace: azure-ingestion-namespace
///           eventHub: azure-ingestion-event-hub
///           clientId: aZZZZZZZ-YYYY-HHHH-GGGG-abcdef569123
///           tenantId: 0XXXXXXX-YYYY-HHHH-GGGG-123456789123
///           subscriptionId: bXXXXXXX-YYYY-HHHH-GGGG-123456789123
///           gcpServiceAccount: fake-service-account@fake-gcp-project.iam.gserviceaccount.com
/// ```
///
/// ### Pubsub Topic Ingestion Aws Msk
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     ingestionDataSourceSettings: {
///         awsMsk: {
///             clusterArn: "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name",
///             topic: "test-topic",
///             awsRoleArn: "arn:aws:iam::111111111111:role/fake-role-name",
///             gcpServiceAccount: "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     ingestion_data_source_settings={
///         "aws_msk": {
///             "cluster_arn": "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name",
///             "topic": "test-topic",
///             "aws_role_arn": "arn:aws:iam::111111111111:role/fake-role-name",
///             "gcp_service_account": "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         IngestionDataSourceSettings = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsArgs
///         {
///             AwsMsk = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsAwsMskArgs
///             {
///                 ClusterArn = "arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name",
///                 Topic = "test-topic",
///                 AwsRoleArn = "arn:aws:iam::111111111111:role/fake-role-name",
///                 GcpServiceAccount = "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			IngestionDataSourceSettings: &pubsub.TopicIngestionDataSourceSettingsArgs{
/// 				AwsMsk: &pubsub.TopicIngestionDataSourceSettingsAwsMskArgs{
/// 					ClusterArn:        pulumi.String("arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name"),
/// 					Topic:             pulumi.String("test-topic"),
/// 					AwsRoleArn:        pulumi.String("arn:aws:iam::111111111111:role/fake-role-name"),
/// 					GcpServiceAccount: pulumi.String("fake-service-account@fake-gcp-project.iam.gserviceaccount.com"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsAwsMskArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .ingestionDataSourceSettings(TopicIngestionDataSourceSettingsArgs.builder()
///                 .awsMsk(TopicIngestionDataSourceSettingsAwsMskArgs.builder()
///                     .clusterArn("arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name")
///                     .topic("test-topic")
///                     .awsRoleArn("arn:aws:iam::111111111111:role/fake-role-name")
///                     .gcpServiceAccount("fake-service-account@fake-gcp-project.iam.gserviceaccount.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       ingestionDataSourceSettings:
///         awsMsk:
///           clusterArn: arn:aws:kinesis:us-west-2:111111111111:stream/fake-stream-name
///           topic: test-topic
///           awsRoleArn: arn:aws:iam::111111111111:role/fake-role-name
///           gcpServiceAccount: fake-service-account@fake-gcp-project.iam.gserviceaccount.com
/// ```
///
/// ### Pubsub Topic Ingestion Confluent Cloud
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     ingestionDataSourceSettings: {
///         confluentCloud: {
///             bootstrapServer: "test.us-west2.gcp.confluent.cloud:1111",
///             clusterId: "1234",
///             topic: "test-topic",
///             identityPoolId: "test-identity-pool-id",
///             gcpServiceAccount: "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     ingestion_data_source_settings={
///         "confluent_cloud": {
///             "bootstrap_server": "test.us-west2.gcp.confluent.cloud:1111",
///             "cluster_id": "1234",
///             "topic": "test-topic",
///             "identity_pool_id": "test-identity-pool-id",
///             "gcp_service_account": "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         IngestionDataSourceSettings = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsArgs
///         {
///             ConfluentCloud = new Gcp.PubSub.Inputs.TopicIngestionDataSourceSettingsConfluentCloudArgs
///             {
///                 BootstrapServer = "test.us-west2.gcp.confluent.cloud:1111",
///                 ClusterId = "1234",
///                 Topic = "test-topic",
///                 IdentityPoolId = "test-identity-pool-id",
///                 GcpServiceAccount = "fake-service-account@fake-gcp-project.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			IngestionDataSourceSettings: &pubsub.TopicIngestionDataSourceSettingsArgs{
/// 				ConfluentCloud: &pubsub.TopicIngestionDataSourceSettingsConfluentCloudArgs{
/// 					BootstrapServer:   pulumi.String("test.us-west2.gcp.confluent.cloud:1111"),
/// 					ClusterId:         pulumi.String("1234"),
/// 					Topic:             pulumi.String("test-topic"),
/// 					IdentityPoolId:    pulumi.String("test-identity-pool-id"),
/// 					GcpServiceAccount: pulumi.String("fake-service-account@fake-gcp-project.iam.gserviceaccount.com"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicIngestionDataSourceSettingsConfluentCloudArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .ingestionDataSourceSettings(TopicIngestionDataSourceSettingsArgs.builder()
///                 .confluentCloud(TopicIngestionDataSourceSettingsConfluentCloudArgs.builder()
///                     .bootstrapServer("test.us-west2.gcp.confluent.cloud:1111")
///                     .clusterId("1234")
///                     .topic("test-topic")
///                     .identityPoolId("test-identity-pool-id")
///                     .gcpServiceAccount("fake-service-account@fake-gcp-project.iam.gserviceaccount.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       ingestionDataSourceSettings:
///         confluentCloud:
///           bootstrapServer: test.us-west2.gcp.confluent.cloud:1111
///           clusterId: '1234'
///           topic: test-topic
///           identityPoolId: test-identity-pool-id
///           gcpServiceAccount: fake-service-account@fake-gcp-project.iam.gserviceaccount.com
/// ```
///
/// ### Pubsub Topic Single Smt
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     messageTransforms: [{
///         javascriptUdf: {
///             functionName: "isYearEven",
///             code: `function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
/// `,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     message_transforms=[{
///         "javascript_udf": {
///             "function_name": "isYearEven",
///             "code": """function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
/// """,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         MessageTransforms = new[]
///         {
///             new Gcp.PubSub.Inputs.TopicMessageTransformArgs
///             {
///                 JavascriptUdf = new Gcp.PubSub.Inputs.TopicMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "isYearEven",
///                     Code = @"function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
/// ",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			MessageTransforms: pubsub.TopicMessageTransformArray{
/// 				&pubsub.TopicMessageTransformArgs{
/// 					JavascriptUdf: &pubsub.TopicMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("isYearEven"),
/// 						Code:         pulumi.String("function isYearEven(message, metadata) {\n  const data = JSON.parse(message.data);\n  return message.year %2 === 0;\n}\n"),
/// 					},
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicMessageTransformArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicMessageTransformJavascriptUdfArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .messageTransforms(TopicMessageTransformArgs.builder()
///                 .javascriptUdf(TopicMessageTransformJavascriptUdfArgs.builder()
///                     .functionName("isYearEven")
///                     .code("""
/// function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       messageTransforms:
///         - javascriptUdf:
///             functionName: isYearEven
///             code: |
///               function isYearEven(message, metadata) {
///                 const data = JSON.parse(message.data);
///                 return message.year %2 === 0;
///               }
/// ```
///
/// ### Pubsub Topic Multiple Smts
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     messageTransforms: [
///         {
///             javascriptUdf: {
///                 functionName: "redactSSN",
///                 code: `function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// `,
///             },
///         },
///         {
///             javascriptUdf: {
///                 functionName: "otherFunc",
///                 code: `function otherFunc(message, metadata) {
///   return null;
/// }
/// `,
///             },
///         },
///         {
///             disabled: true,
///             javascriptUdf: {
///                 functionName: "someSMTWeDisabled",
///                 code: "...",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     message_transforms=[
///         {
///             "javascript_udf": {
///                 "function_name": "redactSSN",
///                 "code": """function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// """,
///             },
///         },
///         {
///             "javascript_udf": {
///                 "function_name": "otherFunc",
///                 "code": """function otherFunc(message, metadata) {
///   return null;
/// }
/// """,
///             },
///         },
///         {
///             "disabled": True,
///             "javascript_udf": {
///                 "function_name": "someSMTWeDisabled",
///                 "code": "...",
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         MessageTransforms = new[]
///         {
///             new Gcp.PubSub.Inputs.TopicMessageTransformArgs
///             {
///                 JavascriptUdf = new Gcp.PubSub.Inputs.TopicMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "redactSSN",
///                     Code = @"function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// ",
///                 },
///             },
///             new Gcp.PubSub.Inputs.TopicMessageTransformArgs
///             {
///                 JavascriptUdf = new Gcp.PubSub.Inputs.TopicMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "otherFunc",
///                     Code = @"function otherFunc(message, metadata) {
///   return null;
/// }
/// ",
///                 },
///             },
///             new Gcp.PubSub.Inputs.TopicMessageTransformArgs
///             {
///                 Disabled = true,
///                 JavascriptUdf = new Gcp.PubSub.Inputs.TopicMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "someSMTWeDisabled",
///                     Code = "...",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			MessageTransforms: pubsub.TopicMessageTransformArray{
/// 				&pubsub.TopicMessageTransformArgs{
/// 					JavascriptUdf: &pubsub.TopicMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("redactSSN"),
/// 						Code: pulumi.String(`function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// `),
/// 					},
/// 				},
/// 				&pubsub.TopicMessageTransformArgs{
/// 					JavascriptUdf: &pubsub.TopicMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("otherFunc"),
/// 						Code:         pulumi.String("function otherFunc(message, metadata) {\n  return null;\n}\n"),
/// 					},
/// 				},
/// 				&pubsub.TopicMessageTransformArgs{
/// 					Disabled: pulumi.Bool(true),
/// 					JavascriptUdf: &pubsub.TopicMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("someSMTWeDisabled"),
/// 						Code:         pulumi.String("..."),
/// 					},
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicMessageTransformArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicMessageTransformJavascriptUdfArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .messageTransforms(
///                 TopicMessageTransformArgs.builder()
///                     .javascriptUdf(TopicMessageTransformJavascriptUdfArgs.builder()
///                         .functionName("redactSSN")
///                         .code("""
/// function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
///                         """)
///                         .build())
///                     .build(),
///                 TopicMessageTransformArgs.builder()
///                     .javascriptUdf(TopicMessageTransformJavascriptUdfArgs.builder()
///                         .functionName("otherFunc")
///                         .code("""
/// function otherFunc(message, metadata) {
///   return null;
/// }
///                         """)
///                         .build())
///                     .build(),
///                 TopicMessageTransformArgs.builder()
///                     .disabled(true)
///                     .javascriptUdf(TopicMessageTransformJavascriptUdfArgs.builder()
///                         .functionName("someSMTWeDisabled")
///                         .code("...")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       messageTransforms:
///         - javascriptUdf:
///             functionName: redactSSN
///             code: |
///               function redactSSN(message, metadata) {
///                 const data = JSON.parse(message.data);
///                 delete data['ssn'];
///                 message.data = JSON.stringify(data);
///                 return message;
///               }
///         - javascriptUdf:
///             functionName: otherFunc
///             code: |
///               function otherFunc(message, metadata) {
///                 return null;
///               }
///         - disabled: true
///           javascriptUdf:
///             functionName: someSMTWeDisabled
///             code: '...'
/// ```
///
/// ### Pubsub Topic Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     project: project.then(project => project.projectId),
/// });
/// const tagKey = new gcp.tags.TagKey("tag_key", {
///     parent: project.then(project => project.id),
///     shortName: "tag_key",
/// });
/// const tagValue = new gcp.tags.TagValue("tag_value", {
///     parent: tagKey.id,
///     shortName: "tag_value",
/// });
/// const binding = new gcp.tags.TagBinding("binding", {
///     parent: pulumi.all([project, example.name]).apply(([project, name]) => `//pubsub.googleapis.com/projects/${project.number}/topics/${name}`),
///     tagValue: tagValue.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.pubsub.Topic("example",
///     name="example-topic",
///     project=project.project_id)
/// tag_key = gcp.tags.TagKey("tag_key",
///     parent=project.id,
///     short_name="tag_key")
/// tag_value = gcp.tags.TagValue("tag_value",
///     parent=tag_key.id,
///     short_name="tag_value")
/// binding = gcp.tags.TagBinding("binding",
///     parent=example.name.apply(lambda name: f"//pubsub.googleapis.com/projects/{project.number}/topics/{name}"),
///     tag_value=tag_value.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     });
///
///     var tagKey = new Gcp.Tags.TagKey("tag_key", new()
///     {
///         Parent = project.Apply(getProjectResult => getProjectResult.Id),
///         ShortName = "tag_key",
///     });
///
///     var tagValue = new Gcp.Tags.TagValue("tag_value", new()
///     {
///         Parent = tagKey.Id,
///         ShortName = "tag_value",
///     });
///
///     var binding = new Gcp.Tags.TagBinding("binding", new()
///     {
///         Parent = Output.Tuple(project, example.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"//pubsub.googleapis.com/projects/{project.Apply(getProjectResult => getProjectResult.Number)}/topics/{name}";
///         }),
///         TagValue = tagValue.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name:    pulumi.String("example-topic"),
/// 			Project: pulumi.String(project.ProjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagKey, err := tags.NewTagKey(ctx, "tag_key", &tags.TagKeyArgs{
/// 			Parent:    pulumi.String(project.Id),
/// 			ShortName: pulumi.String("tag_key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagValue, err := tags.NewTagValue(ctx, "tag_value", &tags.TagValueArgs{
/// 			Parent:    tagKey.ID(),
/// 			ShortName: pulumi.String("tag_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tags.NewTagBinding(ctx, "binding", &tags.TagBindingArgs{
/// 			Parent: example.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("//pubsub.googleapis.com/projects/%v/topics/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			TagValue: tagValue.ID(),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.tags.TagBinding;
/// import com.pulumi.gcp.tags.TagBindingArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .project(project.projectId())
///             .build());
///
///         var tagKey = new TagKey("tagKey", TagKeyArgs.builder()
///             .parent(project.id())
///             .shortName("tag_key")
///             .build());
///
///         var tagValue = new TagValue("tagValue", TagValueArgs.builder()
///             .parent(tagKey.id())
///             .shortName("tag_value")
///             .build());
///
///         var binding = new TagBinding("binding", TagBindingArgs.builder()
///             .parent(example.name().applyValue(_name -> String.format("//pubsub.googleapis.com/projects/%s/topics/%s", project.number(),_name)))
///             .tagValue(tagValue.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///       project: ${project.projectId}
///   tagKey:
///     type: gcp:tags:TagKey
///     name: tag_key
///     properties:
///       parent: ${project.id}
///       shortName: tag_key
///   tagValue:
///     type: gcp:tags:TagValue
///     name: tag_value
///     properties:
///       parent: ${tagKey.id}
///       shortName: tag_value
///   binding:
///     type: gcp:tags:TagBinding
///     properties:
///       parent: //pubsub.googleapis.com/projects/${project.number}/topics/${example.name}
///       tagValue: ${tagValue.id}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Topic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/topics/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Topic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/topic:Topic default projects/{{project}}/topics/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/topic:Topic default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/topic:Topic default {{name}}
/// ```
class Topic extends pulumi.CustomResource {
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Settings for ingestion from a data source into this topic.
  /// Structure is documented below.
  late final pulumi.Output<TopicIngestionDataSourceSettings?> ingestionDataSourceSettings;
  /// The resource name of the Cloud KMS CryptoKey to be used to protect access
  /// to messages published on this topic. Your project's PubSub service account
  /// (`service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com`) must have
  /// `roles/cloudkms.cryptoKeyEncrypterDecrypter` to use this feature.
  /// The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  late final pulumi.Output<String?> kmsKeyName;
  /// A set of key/value label pairs to assign to this Topic.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Indicates the minimum duration to retain a message after it is published
  /// to the topic. If this field is set, messages published to the topic in
  /// the last messageRetentionDuration are always available to subscribers.
  /// For instance, it allows any attached subscription to seek to a timestamp
  /// that is up to messageRetentionDuration in the past. If this field is not
  /// set, message retention is controlled by settings on individual subscriptions.
  /// The rotation period has the format of a decimal number, followed by the
  /// letter `s` (seconds). Cannot be more than 31 days or less than 10 minutes.
  late final pulumi.Output<String?> messageRetentionDuration;
  /// Policy constraining the set of Google Cloud Platform regions where
  /// messages published to the topic may be stored. If not present, then no
  /// constraints are in effect.
  /// Structure is documented below.
  late final pulumi.Output<TopicMessageStoragePolicy> messageStoragePolicy;
  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> messageTransforms;
  /// Name of the topic.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Settings for validating messages published against a schema.
  /// Structure is documented below.
  late final pulumi.Output<TopicSchemaSettings?> schemaSettings;
  /// Input only. Resource manager tags to be bound to the topic. Tag keys and
  /// values have the same definition as resource manager tags. Keys must be in
  /// the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the `gcp.tags.TagValue`
  /// resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_pubsub_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ingestionDataSourceSettings = registerOutput<TopicIngestionDataSourceSettings?>('ingestionDataSourceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicIngestionDataSourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    messageRetentionDuration = registerOutput<String?>('messageRetentionDuration');
    messageStoragePolicy = registerOutput<TopicMessageStoragePolicy>('messageStoragePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicMessageStoragePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    messageTransforms = registerOutput<List<Map<String, dynamic>>?>('messageTransforms');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    schemaSettings = registerOutput<TopicSchemaSettings?>('schemaSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicSchemaSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Topic] resource's state with the given [name] and [id].
  static Topic get(
    String name,
    pulumi.Input<String> id, {
    TopicState? state,
  }) {
    return Topic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Topic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/topic:Topic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ingestionDataSourceSettings = registerOutput<TopicIngestionDataSourceSettings?>('ingestionDataSourceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicIngestionDataSourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    messageRetentionDuration = registerOutput<String?>('messageRetentionDuration');
    messageStoragePolicy = registerOutput<TopicMessageStoragePolicy>('messageStoragePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicMessageStoragePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    messageTransforms = registerOutput<List<Map<String, dynamic>>?>('messageTransforms');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    schemaSettings = registerOutput<TopicSchemaSettings?>('schemaSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicSchemaSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
