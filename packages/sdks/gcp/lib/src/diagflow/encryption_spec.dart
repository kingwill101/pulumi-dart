import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_spec_args.dart';
import 'encryption_spec_encryption_spec.dart';
import 'encryption_spec_state.dart';

/// Initializes a location-level encryption key specification.
///
///
/// To get more information about EncryptionSpec, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.locations.encryptionSpec)
/// * How-to Guides
/// * [Official CX Documentation](https://cloud.google.com/dialogflow/cx/docs)
/// * [Official ES Documentation](https://cloud.google.com/dialogflow/es/docs)
///
/// ## Example Usage
///
/// ### Dialogflow Encryption Spec Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-proj",
///     name: "my-proj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const cloudkms = new gcp.projects.Service("cloudkms", {
///     project: project.projectId,
///     service: "cloudkms.googleapis.com",
/// });
/// const dialogflow = new gcp.projects.Service("dialogflow", {
///     project: project.projectId,
///     service: "dialogflow.googleapis.com",
/// });
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
///     dependsOn: [
///         cloudkms,
///         dialogflow,
///     ],
/// });
/// const gcpSa = new gcp.projects.ServiceIdentity("gcp_sa", {
///     service: "dialogflow.googleapis.com",
///     project: project.projectId,
/// }, {
///     dependsOn: [waitEnableServiceApi],
/// });
/// const waitCreateSa = new time.Sleep("wait_create_sa", {createDuration: "30s"}, {
///     dependsOn: [gcpSa],
/// });
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "my-keyring",
///     location: "us-central1",
///     project: project.projectId,
/// }, {
///     dependsOn: [waitEnableServiceApi],
/// });
/// const key = new gcp.kms.CryptoKey("key", {
///     name: "my-key",
///     keyRing: keyring.id,
///     purpose: "ENCRYPT_DECRYPT",
/// });
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: key.id,
///     member: std.replaceOutput({
///         text: gcpSa.member,
///         search: "@gcp-sa-dialogflow.iam",
///         replace: "@gcp-sa-ccai-cmek.iam",
///     }).apply(invoke => invoke.result),
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// }, {
///     dependsOn: [waitCreateSa],
/// });
/// const my_encryption_spec = new gcp.diagflow.EncryptionSpec("my-encryption-spec", {
///     project: project.projectId,
///     location: "us-central1",
///     encryptionSpec: {
///         kmsKey: key.id,
///     },
/// }, {
///     dependsOn: [cryptoKey],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="my-proj",
///     name="my-proj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// cloudkms = gcp.projects.Service("cloudkms",
///     project=project.project_id,
///     service="cloudkms.googleapis.com")
/// dialogflow = gcp.projects.Service("dialogflow",
///     project=project.project_id,
///     service="dialogflow.googleapis.com")
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         cloudkms,
///         dialogflow,
///     ]))
/// gcp_sa = gcp.projects.ServiceIdentity("gcp_sa",
///     service="dialogflow.googleapis.com",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
/// wait_create_sa = time.Sleep("wait_create_sa", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[gcp_sa]))
/// keyring = gcp.kms.KeyRing("keyring",
///     name="my-keyring",
///     location="us-central1",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
/// key = gcp.kms.CryptoKey("key",
///     name="my-key",
///     key_ring=keyring.id,
///     purpose="ENCRYPT_DECRYPT")
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id=key.id,
///     member=std.replace_output(text=gcp_sa.member,
///         search="@gcp-sa-dialogflow.iam",
///         replace="@gcp-sa-ccai-cmek.iam").apply(lambda invoke: invoke.result),
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     opts = pulumi.ResourceOptions(depends_on=[wait_create_sa]))
/// my_encryption_spec = gcp.diagflow.EncryptionSpec("my-encryption-spec",
///     project=project.project_id,
///     location="us-central1",
///     encryption_spec={
///         "kms_key": key.id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "my-proj",
///         Name = "my-proj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var cloudkms = new Gcp.Projects.Service("cloudkms", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "cloudkms.googleapis.com",
///     });
///
///     var dialogflow = new Gcp.Projects.Service("dialogflow", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "dialogflow.googleapis.com",
///     });
///
///     var waitEnableServiceApi = new Time.Sleep("wait_enable_service_api", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cloudkms,
///             dialogflow,
///         },
///     });
///
///     var gcpSa = new Gcp.Projects.ServiceIdentity("gcp_sa", new()
///     {
///         Service = "dialogflow.googleapis.com",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitEnableServiceApi,
///         },
///     });
///
///     var waitCreateSa = new Time.Sleep("wait_create_sa", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gcpSa,
///         },
///     });
///
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "my-keyring",
///         Location = "us-central1",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitEnableServiceApi,
///         },
///     });
///
///     var key = new Gcp.Kms.CryptoKey("key", new()
///     {
///         Name = "my-key",
///         KeyRing = keyring.Id,
///         Purpose = "ENCRYPT_DECRYPT",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = key.Id,
///         Member = Std.Replace.Invoke(new()
///         {
///             Text = gcpSa.Member,
///             Search = "@gcp-sa-dialogflow.iam",
///             Replace = "@gcp-sa-ccai-cmek.iam",
///         }).Apply(invoke => invoke.Result),
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitCreateSa,
///         },
///     });
///
///     var my_encryption_spec = new Gcp.Diagflow.EncryptionSpec("my-encryption-spec", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         EncryptionSpecName = new Gcp.Diagflow.Inputs.EncryptionSpecEncryptionSpecArgs
///         {
///             KmsKey = key.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKey,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-proj"),
/// 			Name:           pulumi.String("my-proj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudkms, err := projects.NewService(ctx, "cloudkms", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("cloudkms.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dialogflow, err := projects.NewService(ctx, "dialogflow", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("dialogflow.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitEnableServiceApi, err := time.NewSleep(ctx, "wait_enable_service_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cloudkms,
/// 			dialogflow,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gcpSa, err := projects.NewServiceIdentity(ctx, "gcp_sa", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("dialogflow.googleapis.com"),
/// 			Project: project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitEnableServiceApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitCreateSa, err := time.NewSleep(ctx, "wait_create_sa", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gcpSa,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("my-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 			Project:  project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitEnableServiceApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := kms.NewCryptoKey(ctx, "key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("my-key"),
/// 			KeyRing: keyring.ID(),
/// 			Purpose: pulumi.String("ENCRYPT_DECRYPT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: key.ID(),
/// 			Member: pulumi.String(std.ReplaceOutput(ctx, std.ReplaceOutputArgs{
/// 				Text:    gcpSa.Member,
/// 				Search:  pulumi.String("@gcp-sa-dialogflow.iam"),
/// 				Replace: pulumi.String("@gcp-sa-ccai-cmek.iam"),
/// 			}, nil).ApplyT(func(invoke std.ReplaceResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Role: pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitCreateSa,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewEncryptionSpec(ctx, "my-encryption-spec", &diagflow.EncryptionSpecArgs{
/// 			Project:  project.ProjectId,
/// 			Location: pulumi.String("us-central1"),
/// 			EncryptionSpec: &diagflow.EncryptionSpecEncryptionSpecArgs{
/// 				KmsKey: key.ID(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKey,
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.gcp.diagflow.EncryptionSpec;
/// import com.pulumi.gcp.diagflow.EncryptionSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.EncryptionSpecEncryptionSpecArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("my-proj")
///             .name("my-proj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var cloudkms = new Service("cloudkms", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("cloudkms.googleapis.com")
///             .build());
///
///         var dialogflow = new Service("dialogflow", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("dialogflow.googleapis.com")
///             .build());
///
///         var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     cloudkms,
///                     dialogflow)
///                 .build());
///
///         var gcpSa = new ServiceIdentity("gcpSa", ServiceIdentityArgs.builder()
///             .service("dialogflow.googleapis.com")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitEnableServiceApi)
///                 .build());
///
///         var waitCreateSa = new Sleep("waitCreateSa", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gcpSa)
///                 .build());
///
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("my-keyring")
///             .location("us-central1")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitEnableServiceApi)
///                 .build());
///
///         var key = new CryptoKey("key", CryptoKeyArgs.builder()
///             .name("my-key")
///             .keyRing(keyring.id())
///             .purpose("ENCRYPT_DECRYPT")
///             .build());
///
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(key.id())
///             .member(StdFunctions.replace(ReplaceArgs.builder()
///                 .text(gcpSa.member())
///                 .search("@gcp-sa-dialogflow.iam")
///                 .replace("@gcp-sa-ccai-cmek.iam")
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitCreateSa)
///                 .build());
///
///         var my_encryption_spec = new EncryptionSpec("my-encryption-spec", EncryptionSpecArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .encryptionSpec(EncryptionSpecEncryptionSpecArgs.builder()
///                 .kmsKey(key.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKey)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-proj
///       name: my-proj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   cloudkms:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: cloudkms.googleapis.com
///   dialogflow:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: dialogflow.googleapis.com
///   waitEnableServiceApi:
///     type: time:Sleep
///     name: wait_enable_service_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${cloudkms}
///         - ${dialogflow}
///   gcpSa:
///     type: gcp:projects:ServiceIdentity
///     name: gcp_sa
///     properties:
///       service: dialogflow.googleapis.com
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
///   waitCreateSa:
///     type: time:Sleep
///     name: wait_create_sa
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${gcpSa}
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: my-keyring
///       location: us-central1
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
///   key:
///     type: gcp:kms:CryptoKey
///     properties:
///       name: my-key
///       keyRing: ${keyring.id}
///       purpose: ENCRYPT_DECRYPT
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: ${key.id}
///       member:
///         fn::invoke:
///           function: std:replace
///           arguments:
///             text: ${gcpSa.member}
///             search: '@gcp-sa-dialogflow.iam'
///             replace: '@gcp-sa-ccai-cmek.iam'
///           return: result
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///     options:
///       dependsOn:
///         - ${waitCreateSa}
///   my-encryption-spec:
///     type: gcp:diagflow:EncryptionSpec
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       encryptionSpec:
///         kmsKey: ${key.id}
///     options:
///       dependsOn:
///         - ${cryptoKey}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class EncryptionSpec extends pulumi.CustomResource {
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<EncryptionSpecEncryptionSpec> encryptionSpec;

  /// The location in which the encryptionSpec is to be initialized.
  late final pulumi.Output<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [EncryptionSpec].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EncryptionSpec]. {@macro pulumi_diagflow_encryption_spec_encryption_spec_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EncryptionSpec(
    String name, {
    EncryptionSpecArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:diagflow/encryptionSpec:EncryptionSpec',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    encryptionSpec = registerOutput<EncryptionSpecEncryptionSpec>(
      'encryptionSpec',
    );
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [EncryptionSpec] resource's state with the given [name] and [id].
  static EncryptionSpec get(
    String name,
    pulumi.Input<String> id, {
    EncryptionSpecState? state,
  }) {
    return EncryptionSpec._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EncryptionSpec._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:diagflow/encryptionSpec:EncryptionSpec',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    encryptionSpec = registerOutput<EncryptionSpecEncryptionSpec>(
      'encryptionSpec',
    );
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
  }
}
