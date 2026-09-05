import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_bucket_config_args.dart';
import 'project_bucket_config_cmek_settings.dart';
import 'project_bucket_config_index_config.dart';
import 'project_bucket_config_state.dart';

/// Manages a project-level logging bucket config. For more information see
/// [the official logging documentation](https://cloud.google.com/logging/docs/) and
/// [Storing Logs](https://cloud.google.com/logging/docs/storage).
///
/// &gt; **Note:** Logging buckets are automatically created for a given folder, project, organization, billingAccount and cannot be deleted. Creating a resource of this type will acquire and update the resource that already exists at the desired location. These buckets cannot be removed so deleting this resource will remove the bucket config from your state but will leave the logging bucket unchanged. The buckets that are currently automatically created are "_Default" and "_Required".
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.organizations.Project("default", {
///     projectId: "your-project-id",
///     name: "your-project-id",
///     orgId: "123456789",
/// });
/// const basic = new gcp.logging.ProjectBucketConfig("basic", {
///     project: _default.projectId,
///     location: "global",
///     retentionDays: 30,
///     bucketId: "_Default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.organizations.Project("default",
///     project_id="your-project-id",
///     name="your-project-id",
///     org_id="123456789")
/// basic = gcp.logging.ProjectBucketConfig("basic",
///     project=default.project_id,
///     location="global",
///     retention_days=30,
///     bucket_id="_Default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Organizations.Project("default", new()
///     {
///         ProjectId = "your-project-id",
///         Name = "your-project-id",
///         OrgId = "123456789",
///     });
///
///     var basic = new Gcp.Logging.ProjectBucketConfig("basic", new()
///     {
///         Project = @default.ProjectId,
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "_Default",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.NewProject(ctx, "default", &organizations.ProjectArgs{
/// 			ProjectId: pulumi.String("your-project-id"),
/// 			Name:      pulumi.String("your-project-id"),
/// 			OrgId:     pulumi.String("123456789"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewProjectBucketConfig(ctx, "basic", &logging.ProjectBucketConfigArgs{
/// 			Project:       _default.ProjectId,
/// 			Location:      pulumi.String("global"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("_Default"),
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
/// resource "gcp_organizations_project" "default" {
///   project_id = "your-project-id"
///   name       = "your-project-id"
///   org_id     = "123456789"
/// }
/// resource "gcp_logging_projectbucketconfig" "basic" {
///   project        = gcp_organizations_project.default.project_id
///   location       = "global"
///   retention_days = 30
///   bucket_id      = "_Default"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.logging.ProjectBucketConfig;
/// import com.pulumi.gcp.logging.ProjectBucketConfigArgs;
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
///         var default_ = new Project("default", ProjectArgs.builder()
///             .projectId("your-project-id")
///             .name("your-project-id")
///             .orgId("123456789")
///             .build());
///
///         var basic = new ProjectBucketConfig("basic", ProjectBucketConfigArgs.builder()
///             .project(default_.projectId())
///             .location("global")
///             .retentionDays(30)
///             .bucketId("_Default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:organizations:Project
///     properties:
///       projectId: your-project-id
///       name: your-project-id
///       orgId: '123456789'
///   basic:
///     type: gcp:logging:ProjectBucketConfig
///     properties:
///       project: ${default.projectId}
///       location: global
///       retentionDays: 30
///       bucketId: _Default
/// ```
///
///
/// Create logging bucket with customId
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.logging.ProjectBucketConfig("basic", {
///     project: "project_id",
///     location: "global",
///     retentionDays: 30,
///     bucketId: "custom-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.logging.ProjectBucketConfig("basic",
///     project="project_id",
///     location="global",
///     retention_days=30,
///     bucket_id="custom-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Logging.ProjectBucketConfig("basic", new()
///     {
///         Project = "project_id",
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "custom-bucket",
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
/// 		_, err := logging.NewProjectBucketConfig(ctx, "basic", &logging.ProjectBucketConfigArgs{
/// 			Project:       pulumi.String("project_id"),
/// 			Location:      pulumi.String("global"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("custom-bucket"),
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
/// resource "gcp_logging_projectbucketconfig" "basic" {
///   project        = "project_id"
///   location       = "global"
///   retention_days = 30
///   bucket_id      = "custom-bucket"
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
///         var basic = new ProjectBucketConfig("basic", ProjectBucketConfigArgs.builder()
///             .project("project_id")
///             .location("global")
///             .retentionDays(30)
///             .bucketId("custom-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:logging:ProjectBucketConfig
///     properties:
///       project: project_id
///       location: global
///       retentionDays: 30
///       bucketId: custom-bucket
/// ```
///
///
/// Create logging bucket with Log Analytics enabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const analytics_enabled_bucket = new gcp.logging.ProjectBucketConfig("analytics-enabled-bucket", {
///     project: "project_id",
///     location: "global",
///     retentionDays: 30,
///     enableAnalytics: true,
///     bucketId: "custom-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// analytics_enabled_bucket = gcp.logging.ProjectBucketConfig("analytics-enabled-bucket",
///     project="project_id",
///     location="global",
///     retention_days=30,
///     enable_analytics=True,
///     bucket_id="custom-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var analytics_enabled_bucket = new Gcp.Logging.ProjectBucketConfig("analytics-enabled-bucket", new()
///     {
///         Project = "project_id",
///         Location = "global",
///         RetentionDays = 30,
///         EnableAnalytics = true,
///         BucketId = "custom-bucket",
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
/// 		_, err := logging.NewProjectBucketConfig(ctx, "analytics-enabled-bucket", &logging.ProjectBucketConfigArgs{
/// 			Project:         pulumi.String("project_id"),
/// 			Location:        pulumi.String("global"),
/// 			RetentionDays:   pulumi.Int(30),
/// 			EnableAnalytics: pulumi.Bool(true),
/// 			BucketId:        pulumi.String("custom-bucket"),
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
/// resource "gcp_logging_projectbucketconfig" "analytics-enabled-bucket" {
///   project          = "project_id"
///   location         = "global"
///   retention_days   = 30
///   enable_analytics = true
///   bucket_id        = "custom-bucket"
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
///         var analytics_enabled_bucket = new ProjectBucketConfig("analytics-enabled-bucket", ProjectBucketConfigArgs.builder()
///             .project("project_id")
///             .location("global")
///             .retentionDays(30)
///             .enableAnalytics(true)
///             .bucketId("custom-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   analytics-enabled-bucket:
///     type: gcp:logging:ProjectBucketConfig
///     properties:
///       project: project_id
///       location: global
///       retentionDays: 30
///       enableAnalytics: true
///       bucketId: custom-bucket
/// ```
///
///
/// Create logging bucket with customId and cmekSettings
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cmekSettings = gcp.logging.getProjectCmekSettings({
///     project: "project_id",
/// });
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "keyring-example",
///     location: "us-central1",
/// });
/// const key = new gcp.kms.CryptoKey("key", {
///     name: "crypto-key-example",
///     keyRing: keyring.id,
///     rotationPeriod: "7776000s",
/// });
/// const cryptoKeyBinding = new gcp.kms.CryptoKeyIAMBinding("crypto_key_binding", {
///     cryptoKeyId: key.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members: [cmekSettings.then(cmekSettings => `serviceAccount:${cmekSettings.serviceAccountId}`)],
/// });
/// const example_project_bucket_cmek_settings = new gcp.logging.ProjectBucketConfig("example-project-bucket-cmek-settings", {
///     project: "project_id",
///     location: "us-central1",
///     retentionDays: 30,
///     bucketId: "custom-bucket",
///     cmekSettings: {
///         kmsKeyName: key.id,
///     },
/// }, {
///     dependsOn: [cryptoKeyBinding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cmek_settings = gcp.logging.get_project_cmek_settings(project="project_id")
/// keyring = gcp.kms.KeyRing("keyring",
///     name="keyring-example",
///     location="us-central1")
/// key = gcp.kms.CryptoKey("key",
///     name="crypto-key-example",
///     key_ring=keyring.id,
///     rotation_period="7776000s")
/// crypto_key_binding = gcp.kms.CryptoKeyIAMBinding("crypto_key_binding",
///     crypto_key_id=key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members=[f"serviceAccount:{cmek_settings.service_account_id}"])
/// example_project_bucket_cmek_settings = gcp.logging.ProjectBucketConfig("example-project-bucket-cmek-settings",
///     project="project_id",
///     location="us-central1",
///     retention_days=30,
///     bucket_id="custom-bucket",
///     cmek_settings={
///         "kms_key_name": key.id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key_binding]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cmekSettings = Gcp.Logging.GetProjectCmekSettings.Invoke(new()
///     {
///         Project = "project_id",
///     });
///
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "keyring-example",
///         Location = "us-central1",
///     });
///
///     var key = new Gcp.Kms.CryptoKey("key", new()
///     {
///         Name = "crypto-key-example",
///         KeyRing = keyring.Id,
///         RotationPeriod = "7776000s",
///     });
///
///     var cryptoKeyBinding = new Gcp.Kms.CryptoKeyIAMBinding("crypto_key_binding", new()
///     {
///         CryptoKeyId = key.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Members = new[]
///         {
///             $"serviceAccount:{cmekSettings.Apply(getProjectCmekSettingsResult => getProjectCmekSettingsResult.ServiceAccountId)}",
///         },
///     });
///
///     var example_project_bucket_cmek_settings = new Gcp.Logging.ProjectBucketConfig("example-project-bucket-cmek-settings", new()
///     {
///         Project = "project_id",
///         Location = "us-central1",
///         RetentionDays = 30,
///         BucketId = "custom-bucket",
///         CmekSettings = new Gcp.Logging.Inputs.ProjectBucketConfigCmekSettingsArgs
///         {
///             KmsKeyName = key.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKeyBinding,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cmekSettings, err := logging.GetProjectCmekSettings(ctx, &logging.GetProjectCmekSettingsArgs{
/// 			Project: "project_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring-example"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := kms.NewCryptoKey(ctx, "key", &kms.CryptoKeyArgs{
/// 			Name:           pulumi.String("crypto-key-example"),
/// 			KeyRing:        keyring.ID().ToIDOutput().ToStringOutput(),
/// 			RotationPeriod: pulumi.String("7776000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyBinding, err := kms.NewCryptoKeyIAMBinding(ctx, "crypto_key_binding", &kms.CryptoKeyIAMBindingArgs{
/// 			CryptoKeyId: key.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:%v", cmekSettings.ServiceAccountId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewProjectBucketConfig(ctx, "example-project-bucket-cmek-settings", &logging.ProjectBucketConfigArgs{
/// 			Project:       pulumi.String("project_id"),
/// 			Location:      pulumi.String("us-central1"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("custom-bucket"),
/// 			CmekSettings: &logging.ProjectBucketConfigCmekSettingsArgs{
/// 				KmsKeyName: key.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKeyBinding,
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
/// data "gcp_logging_getprojectcmeksettings" "cmekSettings" {
///   project = "project_id"
/// }
///
/// resource "gcp_kms_keyring" "keyring" {
///   name     = "keyring-example"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokey" "key" {
///   name            = "crypto-key-example"
///   key_ring        = gcp_kms_keyring.keyring.id
///   rotation_period = "7776000s"
/// }
/// resource "gcp_kms_cryptokeyiambinding" "crypto_key_binding" {
///   crypto_key_id = gcp_kms_cryptokey.key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   members       = ["serviceAccount:${data.gcp_logging_getprojectcmeksettings.cmekSettings.service_account_id}"]
/// }
/// resource "gcp_logging_projectbucketconfig" "example-project-bucket-cmek-settings" {
///   depends_on     = [gcp_kms_cryptokeyiambinding.crypto_key_binding]
///   project        = "project_id"
///   location       = "us-central1"
///   retention_days = 30
///   bucket_id      = "custom-bucket"
///   cmek_settings = {
///     kms_key_name = gcp_kms_cryptokey.key.id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetProjectCmekSettingsArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.logging.ProjectBucketConfig;
/// import com.pulumi.gcp.logging.ProjectBucketConfigArgs;
/// import com.pulumi.gcp.logging.inputs.ProjectBucketConfigCmekSettingsArgs;
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
///         final var cmekSettings = LoggingFunctions.getProjectCmekSettings(GetProjectCmekSettingsArgs.builder()
///             .project("project_id")
///             .build());
///
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("us-central1")
///             .build());
///
///         var key = new CryptoKey("key", CryptoKeyArgs.builder()
///             .name("crypto-key-example")
///             .keyRing(keyring.id())
///             .rotationPeriod("7776000s")
///             .build());
///
///         var cryptoKeyBinding = new CryptoKeyIAMBinding("cryptoKeyBinding", CryptoKeyIAMBindingArgs.builder()
///             .cryptoKeyId(key.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .members(String.format("serviceAccount:%s", cmekSettings.serviceAccountId()))
///             .build());
///
///         var example_project_bucket_cmek_settings = new ProjectBucketConfig("example-project-bucket-cmek-settings", ProjectBucketConfigArgs.builder()
///             .project("project_id")
///             .location("us-central1")
///             .retentionDays(30)
///             .bucketId("custom-bucket")
///             .cmekSettings(ProjectBucketConfigCmekSettingsArgs.builder()
///                 .kmsKeyName(key.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyBinding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: keyring-example
///       location: us-central1
///   key:
///     type: gcp:kms:CryptoKey
///     properties:
///       name: crypto-key-example
///       keyRing: ${keyring.id}
///       rotationPeriod: 7776000s
///   cryptoKeyBinding:
///     type: gcp:kms:CryptoKeyIAMBinding
///     name: crypto_key_binding
///     properties:
///       cryptoKeyId: ${key.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       members:
///         - serviceAccount:${cmekSettings.serviceAccountId}
///   example-project-bucket-cmek-settings:
///     type: gcp:logging:ProjectBucketConfig
///     properties:
///       project: project_id
///       location: us-central1
///       retentionDays: 30
///       bucketId: custom-bucket
///       cmekSettings:
///         kmsKeyName: ${key.id}
///     options:
///       dependsOn:
///         - ${cryptoKeyBinding}
/// variables:
///   cmekSettings:
///     fn::invoke:
///       function: gcp:logging:getProjectCmekSettings
///       arguments:
///         project: project_id
/// ```
///
///
/// Create logging bucket with index configs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_project_bucket_index_configs = new gcp.logging.ProjectBucketConfig("example-project-bucket-index-configs", {
///     project: "project_id",
///     location: "global",
///     retentionDays: 30,
///     bucketId: "custom-bucket",
///     indexConfigs: [{
///         fieldPath: "jsonPayload.request.status",
///         type: "INDEX_TYPE_STRING",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_project_bucket_index_configs = gcp.logging.ProjectBucketConfig("example-project-bucket-index-configs",
///     project="project_id",
///     location="global",
///     retention_days=30,
///     bucket_id="custom-bucket",
///     index_configs=[{
///         "field_path": "jsonPayload.request.status",
///         "type": "INDEX_TYPE_STRING",
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
///     var example_project_bucket_index_configs = new Gcp.Logging.ProjectBucketConfig("example-project-bucket-index-configs", new()
///     {
///         Project = "project_id",
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "custom-bucket",
///         IndexConfigs = new[]
///         {
///             new Gcp.Logging.Inputs.ProjectBucketConfigIndexConfigArgs
///             {
///                 FieldPath = "jsonPayload.request.status",
///                 Type = "INDEX_TYPE_STRING",
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
/// 		_, err := logging.NewProjectBucketConfig(ctx, "example-project-bucket-index-configs", &logging.ProjectBucketConfigArgs{
/// 			Project:       pulumi.String("project_id"),
/// 			Location:      pulumi.String("global"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("custom-bucket"),
/// 			IndexConfigs: logging.ProjectBucketConfigIndexConfigArray{
/// 				&logging.ProjectBucketConfigIndexConfigArgs{
/// 					FieldPath: pulumi.String("jsonPayload.request.status"),
/// 					Type:      pulumi.String("INDEX_TYPE_STRING"),
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
/// resource "gcp_logging_projectbucketconfig" "example-project-bucket-index-configs" {
///   project        = "project_id"
///   location       = "global"
///   retention_days = 30
///   bucket_id      = "custom-bucket"
///   index_configs {
///     field_path = "jsonPayload.request.status"
///     type       = "INDEX_TYPE_STRING"
///   }
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
/// import com.pulumi.gcp.logging.inputs.ProjectBucketConfigIndexConfigArgs;
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
///         var example_project_bucket_index_configs = new ProjectBucketConfig("example-project-bucket-index-configs", ProjectBucketConfigArgs.builder()
///             .project("project_id")
///             .location("global")
///             .retentionDays(30)
///             .bucketId("custom-bucket")
///             .indexConfigs(ProjectBucketConfigIndexConfigArgs.builder()
///                 .fieldPath("jsonPayload.request.status")
///                 .type("INDEX_TYPE_STRING")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-project-bucket-index-configs:
///     type: gcp:logging:ProjectBucketConfig
///     properties:
///       project: project_id
///       location: global
///       retentionDays: 30
///       bucketId: custom-bucket
///       indexConfigs:
///         - fieldPath: jsonPayload.request.status
///           type: INDEX_TYPE_STRING
/// ```
///
///
/// ## Import
///
/// This resource can be imported using the following format:
///
/// * `projects/{{project}}/locations/{{location}}/buckets/{{bucket_id}}`
///
///
/// When using the `pulumi import` command, this resource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/projectBucketConfig:ProjectBucketConfig default projects/{{project}}/locations/{{location}}/buckets/{{bucket_id}}
/// ```
class ProjectBucketConfig extends pulumi.CustomResource {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  late final pulumi.Output<String> bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. Structure is documented below.
  late final pulumi.Output<ProjectBucketConfigCmekSettings?> cmekSettings;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Describes this bucket.
  late final pulumi.Output<String> description;
  /// Whether or not Log Analytics is enabled. Logs for buckets with Log Analytics enabled can be queried in the **Log Analytics** page using SQL queries. Cannot be disabled once enabled.
  late final pulumi.Output<bool?> enableAnalytics;
  /// A list of indexed fields and related configuration data. Structure is documented below.
  late final pulumi.Output<List<ProjectBucketConfigIndexConfig>?> indexConfigs;
  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  late final pulumi.Output<String> lifecycleState;
  /// The location of the bucket.
  late final pulumi.Output<String> location;
  /// Whether the bucket is locked. The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  late final pulumi.Output<bool?> locked;
  /// The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
  late final pulumi.Output<String> name;
  /// The parent resource that contains the logging bucket.
  late final pulumi.Output<String> project;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  late final pulumi.Output<int?> retentionDays;

  /// Creates a new [ProjectBucketConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectBucketConfig]. {@macro pulumi_logging_project_bucket_config_project_bucket_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectBucketConfig(
    String name, {
    ProjectBucketConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectBucketConfig:ProjectBucketConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<ProjectBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    enableAnalytics = registerOutput<bool?>('enableAnalytics');
    indexConfigs = registerOutput<List<ProjectBucketConfigIndexConfig>?>('indexConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectBucketConfigIndexConfig>(guardedValue, (value) => ProjectBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionDays = registerOutput<int?>('retentionDays');
  }

  /// Gets an existing [ProjectBucketConfig] resource's state with the given [name] and [id].
  static ProjectBucketConfig get(
    String name,
    pulumi.Input<String> id, {
    ProjectBucketConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectBucketConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectBucketConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectBucketConfig:ProjectBucketConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<ProjectBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    enableAnalytics = registerOutput<bool?>('enableAnalytics');
    indexConfigs = registerOutput<List<ProjectBucketConfigIndexConfig>?>('indexConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectBucketConfigIndexConfig>(guardedValue, (value) => ProjectBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionDays = registerOutput<int?>('retentionDays');
  }

  /// Creates a typed reference to an existing [ProjectBucketConfig] resource.
  ProjectBucketConfig.reference(String urn)
    : super(
        'gcp:logging/projectBucketConfig:ProjectBucketConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<ProjectBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    enableAnalytics = registerOutput<bool?>('enableAnalytics');
    indexConfigs = registerOutput<List<ProjectBucketConfigIndexConfig>?>('indexConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectBucketConfigIndexConfig>(guardedValue, (value) => ProjectBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionDays = registerOutput<int?>('retentionDays');
  }
}
