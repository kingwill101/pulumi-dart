import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_args.dart';
import 'regional_secret_customer_managed_encryption.dart';
import 'regional_secret_rotation.dart';
import 'regional_secret_state.dart';
import 'regional_secret_topic.dart';

/// A Regional Secret is a logical secret whose value and versions can be created and accessed within a region only.
///
///
/// To get more information about RegionalSecret, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets)
/// * How-to Guides
/// * [Create and deploy a Regional Secret](https://cloud.google.com/secret-manager/regional-secrets/create-regional-secret)
///
/// ## Example Usage
///
/// ### Regional Secret Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_secret_basic = new gcp.secretmanager.RegionalSecret("regional-secret-basic", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     labels: {
///         label: "my-label",
///     },
///     annotations: {
///         key1: "value1",
///         key2: "value2",
///         key3: "value3",
///     },
///     deletionProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_secret_basic = gcp.secretmanager.RegionalSecret("regional-secret-basic",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     labels={
///         "label": "my-label",
///     },
///     annotations={
///         "key1": "value1",
///         "key2": "value2",
///         "key3": "value3",
///     },
///     deletion_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_secret_basic = new Gcp.SecretManager.RegionalSecret("regional-secret-basic", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Annotations =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///             { "key3", "value3" },
///         },
///         DeletionProtection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.NewRegionalSecret(ctx, "regional-secret-basic", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("tf-reg-secret"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 				"key3": pulumi.String("value3"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
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
/// resource "gcp_secretmanager_regionalsecret" "regional-secret-basic" {
///   secret_id = "tf-reg-secret"
///   location  = "us-central1"
///   labels = {
///     "label" = "my-label"
///   }
///   annotations = {
///     "key1" = "value1"
///     "key2" = "value2"
///     "key3" = "value3"
///   }
///   deletion_protection = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
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
///         var regional_secret_basic = new RegionalSecret("regional-secret-basic", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .labels(Map.of("label", "my-label"))
///             .annotations(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2"),
///                 Map.entry("key3", "value3")
///             ))
///             .deletionProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-secret-basic:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       labels:
///         label: my-label
///       annotations:
///         key1: value1
///         key2: value2
///         key3: value3
///       deletionProtection: false
/// ```
///
/// ### Regional Secret With Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const kms_secret_binding = new gcp.kms.CryptoKeyIAMMember("kms-secret-binding", {
///     cryptoKeyId: "kms-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com`),
/// });
/// const regional_secret_with_cmek = new gcp.secretmanager.RegionalSecret("regional-secret-with-cmek", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     customerManagedEncryption: {
///         kmsKeyName: "kms-key",
///     },
/// }, {
///     dependsOn: [kms_secret_binding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// kms_secret_binding = gcp.kms.CryptoKeyIAMMember("kms-secret-binding",
///     crypto_key_id="kms-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com")
/// regional_secret_with_cmek = gcp.secretmanager.RegionalSecret("regional-secret-with-cmek",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     customer_managed_encryption={
///         "kms_key_name": "kms-key",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[kms_secret_binding]))
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
///     var kms_secret_binding = new Gcp.Kms.CryptoKeyIAMMember("kms-secret-binding", new()
///     {
///         CryptoKeyId = "kms-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-secretmanager.iam.gserviceaccount.com",
///     });
///
///     var regional_secret_with_cmek = new Gcp.SecretManager.RegionalSecret("regional-secret-with-cmek", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         CustomerManagedEncryption = new Gcp.SecretManager.Inputs.RegionalSecretCustomerManagedEncryptionArgs
///         {
///             KmsKeyName = "kms-key",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kms_secret_binding,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kms_secret_binding, err := kms.NewCryptoKeyIAMMember(ctx, "kms-secret-binding", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-secretmanager.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecret(ctx, "regional-secret-with-cmek", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("tf-reg-secret"),
/// 			Location: pulumi.String("us-central1"),
/// 			CustomerManagedEncryption: &secretmanager.RegionalSecretCustomerManagedEncryptionArgs{
/// 				KmsKeyName: pulumi.String("kms-key"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kms_secret_binding,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_kms_cryptokeyiammember" "kms-secret-binding" {
///   crypto_key_id = "kms-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com"
/// }
/// resource "gcp_secretmanager_regionalsecret" "regional-secret-with-cmek" {
///   depends_on = [gcp_kms_cryptokeyiammember.kms-secret-binding]
///   secret_id  = "tf-reg-secret"
///   location   = "us-central1"
///   customer_managed_encryption = {
///     kms_key_name = "kms-key"
///   }
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretCustomerManagedEncryptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var kms_secret_binding = new CryptoKeyIAMMember("kms-secret-binding", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-secretmanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var regional_secret_with_cmek = new RegionalSecret("regional-secret-with-cmek", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .customerManagedEncryption(RegionalSecretCustomerManagedEncryptionArgs.builder()
///                 .kmsKeyName("kms-key")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kms_secret_binding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kms-secret-binding:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: kms-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com
///   regional-secret-with-cmek:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       customerManagedEncryption:
///         kmsKeyName: kms-key
///     options:
///       dependsOn:
///         - ${["kms-secret-binding"]}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Regional Secret With Rotation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const topic = new gcp.pubsub.Topic("topic", {name: "tf-topic"});
/// const secretsManagerAccess = new gcp.pubsub.TopicIAMMember("secrets_manager_access", {
///     topic: topic.name,
///     role: "roles/pubsub.publisher",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com`),
/// });
/// const regional_secret_with_rotation = new gcp.secretmanager.RegionalSecret("regional-secret-with-rotation", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     topics: [{
///         name: topic.id,
///     }],
///     rotation: {
///         rotationPeriod: "3600s",
///         nextRotationTime: "2045-11-30T00:00:00Z",
///     },
/// }, {
///     dependsOn: [secretsManagerAccess],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// topic = gcp.pubsub.Topic("topic", name="tf-topic")
/// secrets_manager_access = gcp.pubsub.TopicIAMMember("secrets_manager_access",
///     topic=topic.name,
///     role="roles/pubsub.publisher",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com")
/// regional_secret_with_rotation = gcp.secretmanager.RegionalSecret("regional-secret-with-rotation",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     topics=[{
///         "name": topic.id,
///     }],
///     rotation={
///         "rotation_period": "3600s",
///         "next_rotation_time": "2045-11-30T00:00:00Z",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secrets_manager_access]))
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
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "tf-topic",
///     });
///
///     var secretsManagerAccess = new Gcp.PubSub.TopicIAMMember("secrets_manager_access", new()
///     {
///         Topic = topic.Name,
///         Role = "roles/pubsub.publisher",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-secretmanager.iam.gserviceaccount.com",
///     });
///
///     var regional_secret_with_rotation = new Gcp.SecretManager.RegionalSecret("regional-secret-with-rotation", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         Topics = new[]
///         {
///             new Gcp.SecretManager.Inputs.RegionalSecretTopicArgs
///             {
///                 Name = topic.Id,
///             },
///         },
///         Rotation = new Gcp.SecretManager.Inputs.RegionalSecretRotationArgs
///         {
///             RotationPeriod = "3600s",
///             NextRotationTime = "2045-11-30T00:00:00Z",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secretsManagerAccess,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("tf-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretsManagerAccess, err := pubsub.NewTopicIAMMember(ctx, "secrets_manager_access", &pubsub.TopicIAMMemberArgs{
/// 			Topic:  topic.Name,
/// 			Role:   pulumi.String("roles/pubsub.publisher"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-secretmanager.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecret(ctx, "regional-secret-with-rotation", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("tf-reg-secret"),
/// 			Location: pulumi.String("us-central1"),
/// 			Topics: secretmanager.RegionalSecretTopicArray{
/// 				&secretmanager.RegionalSecretTopicArgs{
/// 					Name: topic.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Rotation: &secretmanager.RegionalSecretRotationArgs{
/// 				RotationPeriod:   pulumi.String("3600s"),
/// 				NextRotationTime: pulumi.String("2045-11-30T00:00:00Z"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secretsManagerAccess,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_pubsub_topic" "topic" {
///   name = "tf-topic"
/// }
/// resource "gcp_pubsub_topiciammember" "secrets_manager_access" {
///   topic  = gcp_pubsub_topic.topic.name
///   role   = "roles/pubsub.publisher"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com"
/// }
/// resource "gcp_secretmanager_regionalsecret" "regional-secret-with-rotation" {
///   depends_on = [gcp_pubsub_topiciammember.secrets_manager_access]
///   secret_id  = "tf-reg-secret"
///   location   = "us-central1"
///   topics {
///     name = gcp_pubsub_topic.topic.id
///   }
///   rotation = {
///     rotation_period    = "3600s"
///     next_rotation_time = "2045-11-30T00:00:00Z"
///   }
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
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretTopicArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretRotationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("tf-topic")
///             .build());
///
///         var secretsManagerAccess = new TopicIAMMember("secretsManagerAccess", TopicIAMMemberArgs.builder()
///             .topic(topic.name())
///             .role("roles/pubsub.publisher")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-secretmanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var regional_secret_with_rotation = new RegionalSecret("regional-secret-with-rotation", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .topics(RegionalSecretTopicArgs.builder()
///                 .name(topic.id())
///                 .build())
///             .rotation(RegionalSecretRotationArgs.builder()
///                 .rotationPeriod("3600s")
///                 .nextRotationTime("2045-11-30T00:00:00Z")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secretsManagerAccess)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: tf-topic
///   secretsManagerAccess:
///     type: gcp:pubsub:TopicIAMMember
///     name: secrets_manager_access
///     properties:
///       topic: ${topic.name}
///       role: roles/pubsub.publisher
///       member: serviceAccount:service-${project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com
///   regional-secret-with-rotation:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       topics:
///         - name: ${topic.id}
///       rotation:
///         rotationPeriod: 3600s
///         nextRotationTime: 2045-11-30T00:00:00Z
///     options:
///       dependsOn:
///         - ${secretsManagerAccess}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Regional Secret With Ttl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_secret_with_ttl = new gcp.secretmanager.RegionalSecret("regional-secret-with-ttl", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     labels: {
///         label: "my-label",
///     },
///     annotations: {
///         key1: "value1",
///         key2: "value2",
///         key3: "value3",
///     },
///     ttl: "36000s",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_secret_with_ttl = gcp.secretmanager.RegionalSecret("regional-secret-with-ttl",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     labels={
///         "label": "my-label",
///     },
///     annotations={
///         "key1": "value1",
///         "key2": "value2",
///         "key3": "value3",
///     },
///     ttl="36000s")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_secret_with_ttl = new Gcp.SecretManager.RegionalSecret("regional-secret-with-ttl", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Annotations =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///             { "key3", "value3" },
///         },
///         Ttl = "36000s",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.NewRegionalSecret(ctx, "regional-secret-with-ttl", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("tf-reg-secret"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 				"key3": pulumi.String("value3"),
/// 			},
/// 			Ttl: pulumi.String("36000s"),
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
/// resource "gcp_secretmanager_regionalsecret" "regional-secret-with-ttl" {
///   secret_id = "tf-reg-secret"
///   location  = "us-central1"
///   labels = {
///     "label" = "my-label"
///   }
///   annotations = {
///     "key1" = "value1"
///     "key2" = "value2"
///     "key3" = "value3"
///   }
///   ttl = "36000s"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
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
///         var regional_secret_with_ttl = new RegionalSecret("regional-secret-with-ttl", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .labels(Map.of("label", "my-label"))
///             .annotations(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2"),
///                 Map.entry("key3", "value3")
///             ))
///             .ttl("36000s")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-secret-with-ttl:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       labels:
///         label: my-label
///       annotations:
///         key1: value1
///         key2: value2
///         key3: value3
///       ttl: 36000s
/// ```
///
/// ### Regional Secret With Expire Time
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_secret_with_expire_time = new gcp.secretmanager.RegionalSecret("regional-secret-with-expire-time", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     labels: {
///         label: "my-label",
///     },
///     annotations: {
///         key1: "value1",
///         key2: "value2",
///         key3: "value3",
///     },
///     expireTime: "2055-11-30T00:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_secret_with_expire_time = gcp.secretmanager.RegionalSecret("regional-secret-with-expire-time",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     labels={
///         "label": "my-label",
///     },
///     annotations={
///         "key1": "value1",
///         "key2": "value2",
///         "key3": "value3",
///     },
///     expire_time="2055-11-30T00:00:00Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_secret_with_expire_time = new Gcp.SecretManager.RegionalSecret("regional-secret-with-expire-time", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Annotations =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///             { "key3", "value3" },
///         },
///         ExpireTime = "2055-11-30T00:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.NewRegionalSecret(ctx, "regional-secret-with-expire-time", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("tf-reg-secret"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 				"key3": pulumi.String("value3"),
/// 			},
/// 			ExpireTime: pulumi.String("2055-11-30T00:00:00Z"),
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
/// resource "gcp_secretmanager_regionalsecret" "regional-secret-with-expire-time" {
///   secret_id = "tf-reg-secret"
///   location  = "us-central1"
///   labels = {
///     "label" = "my-label"
///   }
///   annotations = {
///     "key1" = "value1"
///     "key2" = "value2"
///     "key3" = "value3"
///   }
///   expire_time = "2055-11-30T00:00:00Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
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
///         var regional_secret_with_expire_time = new RegionalSecret("regional-secret-with-expire-time", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .labels(Map.of("label", "my-label"))
///             .annotations(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2"),
///                 Map.entry("key3", "value3")
///             ))
///             .expireTime("2055-11-30T00:00:00Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-secret-with-expire-time:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       labels:
///         label: my-label
///       annotations:
///         key1: value1
///         key2: value2
///         key3: value3
///       expireTime: 2055-11-30T00:00:00Z
/// ```
///
/// ### Regional Secret With Version Destroy Ttl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_secret_with_version_destroy_ttl = new gcp.secretmanager.RegionalSecret("regional-secret-with-version-destroy-ttl", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     labels: {
///         label: "my-label",
///     },
///     annotations: {
///         key1: "value1",
///         key2: "value2",
///         key3: "value3",
///     },
///     versionDestroyTtl: "86400s",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_secret_with_version_destroy_ttl = gcp.secretmanager.RegionalSecret("regional-secret-with-version-destroy-ttl",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     labels={
///         "label": "my-label",
///     },
///     annotations={
///         "key1": "value1",
///         "key2": "value2",
///         "key3": "value3",
///     },
///     version_destroy_ttl="86400s")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_secret_with_version_destroy_ttl = new Gcp.SecretManager.RegionalSecret("regional-secret-with-version-destroy-ttl", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Annotations =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///             { "key3", "value3" },
///         },
///         VersionDestroyTtl = "86400s",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.NewRegionalSecret(ctx, "regional-secret-with-version-destroy-ttl", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("tf-reg-secret"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 				"key3": pulumi.String("value3"),
/// 			},
/// 			VersionDestroyTtl: pulumi.String("86400s"),
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
/// resource "gcp_secretmanager_regionalsecret" "regional-secret-with-version-destroy-ttl" {
///   secret_id = "tf-reg-secret"
///   location  = "us-central1"
///   labels = {
///     "label" = "my-label"
///   }
///   annotations = {
///     "key1" = "value1"
///     "key2" = "value2"
///     "key3" = "value3"
///   }
///   version_destroy_ttl = "86400s"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
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
///         var regional_secret_with_version_destroy_ttl = new RegionalSecret("regional-secret-with-version-destroy-ttl", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .labels(Map.of("label", "my-label"))
///             .annotations(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2"),
///                 Map.entry("key3", "value3")
///             ))
///             .versionDestroyTtl("86400s")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-secret-with-version-destroy-ttl:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       labels:
///         label: my-label
///       annotations:
///         key1: value1
///         key2: value2
///         key3: value3
///       versionDestroyTtl: 86400s
/// ```
///
///
/// ## Import
///
/// RegionalSecret can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}`
/// * `{{project}}/{{location}}/{{secret_id}}`
/// * `{{location}}/{{secret_id}}`
///
///
/// When using the `pulumi import` command, RegionalSecret can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecret:RegionalSecret default projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}
/// $ pulumi import gcp:secretmanager/regionalSecret:RegionalSecret default {{project}}/{{location}}/{{secret_id}}
/// $ pulumi import gcp:secretmanager/regionalSecret:RegionalSecret default {{location}}/{{secret_id}}
/// ```
class RegionalSecret extends pulumi.CustomResource {
  /// Custom metadata about the regional secret.
  /// Annotations are distinct from various forms of labels. Annotations exist to allow
  /// client tools to store their own state information without requiring a database.
  /// Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
  /// may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
  /// symbols.
  /// The total size of annotation keys and values must be less than 16KiB.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The time at which the regional secret was created.
  late final pulumi.Output<String> createTime;
  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  late final pulumi.Output<RegionalSecretCustomerManagedEncryption?> customerManagedEncryption;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether Terraform will be prevented from destroying the regional secret. Defaults to false.
  /// When the field is set to true in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the federation will fail.
  late final pulumi.Output<bool?> deletionProtection;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Timestamp in UTC when the regional secret is scheduled to expire. This is always provided on
  /// output, regardless of what was sent on input. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z". Only one of `expireTime` or `ttl` can be provided.
  late final pulumi.Output<String> expireTime;
  /// The labels assigned to this regional secret.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the regional secret. eg us-central1
  late final pulumi.Output<String> location;
  /// The resource name of the regional secret. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The rotation time and period for a regional secret. At `nextRotationTime`, Secret Manager
  /// will send a Pub/Sub notification to the topics configured on the Secret. `topics` must be
  /// set to configure rotation.
  /// Structure is documented below.
  late final pulumi.Output<RegionalSecretRotation?> rotation;
  /// This must be unique within the project.
  late final pulumi.Output<String> secretId;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane
  /// operations are called on the regional secret or its versions.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionalSecretTopic>?> topics;
  /// The TTL for the regional secret. A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s". Only one of `ttl` or `expireTime` can be provided.
  late final pulumi.Output<String?> ttl;
  /// Mapping from version alias to version name.
  /// A version alias is a string with a maximum length of 63 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (-) and underscore ('_')
  /// characters. An alias string must start with a letter and cannot be the string
  /// 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  late final pulumi.Output<Map<String, String>?> versionAliases;
  /// Secret Version TTL after destruction request.
  /// This is a part of the delayed delete feature on Secret Version.
  /// For secret with versionDestroyTtl&gt;0, version destruction doesn't happen immediately
  /// on calling destroy instead the version goes to a disabled state and
  /// the actual destruction happens after this TTL expires. It must be atleast 24h.
  late final pulumi.Output<String?> versionDestroyTtl;

  /// Creates a new [RegionalSecret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalSecret]. {@macro pulumi_secretmanager_regional_secret_regional_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalSecret(
    String name, {
    RegionalSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecret:RegionalSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    customerManagedEncryption = registerOutput<RegionalSecretCustomerManagedEncryption?>('customerManagedEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretCustomerManagedEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rotation = registerOutput<RegionalSecretRotation?>('rotation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretRotation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretId = registerOutput<String>('secretId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<RegionalSecretTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalSecretTopic>(guardedValue, (value) => RegionalSecretTopic.fromMap((value as Map).cast<String, dynamic>())); });
    ttl = registerOutput<String?>('ttl');
    versionAliases = registerOutput<Map<String, String>?>('versionAliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionDestroyTtl = registerOutput<String?>('versionDestroyTtl');
  }

  /// Gets an existing [RegionalSecret] resource's state with the given [name] and [id].
  static RegionalSecret get(
    String name,
    pulumi.Input<String> id, {
    RegionalSecretState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionalSecret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionalSecret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecret:RegionalSecret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    customerManagedEncryption = registerOutput<RegionalSecretCustomerManagedEncryption?>('customerManagedEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretCustomerManagedEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rotation = registerOutput<RegionalSecretRotation?>('rotation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretRotation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretId = registerOutput<String>('secretId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<RegionalSecretTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalSecretTopic>(guardedValue, (value) => RegionalSecretTopic.fromMap((value as Map).cast<String, dynamic>())); });
    ttl = registerOutput<String?>('ttl');
    versionAliases = registerOutput<Map<String, String>?>('versionAliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionDestroyTtl = registerOutput<String?>('versionDestroyTtl');
  }

  /// Creates a typed reference to an existing [RegionalSecret] resource.
  RegionalSecret.reference(String urn)
    : super(
        'gcp:secretmanager/regionalSecret:RegionalSecret',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    customerManagedEncryption = registerOutput<RegionalSecretCustomerManagedEncryption?>('customerManagedEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretCustomerManagedEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rotation = registerOutput<RegionalSecretRotation?>('rotation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretRotation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretId = registerOutput<String>('secretId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<RegionalSecretTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalSecretTopic>(guardedValue, (value) => RegionalSecretTopic.fromMap((value as Map).cast<String, dynamic>())); });
    ttl = registerOutput<String?>('ttl');
    versionAliases = registerOutput<Map<String, String>?>('versionAliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionDestroyTtl = registerOutput<String?>('versionDestroyTtl');
  }
}
