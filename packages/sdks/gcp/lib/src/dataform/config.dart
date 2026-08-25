import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_args.dart';
import 'config_state.dart';

/// Config is a singleton resource used to configure the default Dataform settings for a specified location.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about Config, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/)
///
/// ## Example Usage
///
/// ### Dataform Config With Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     name: "project-1",
///     projectId: "project-1",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable Cloud Key KMS API
/// const cloudkmsApi = new gcp.projects.Service("cloudkms_api", {
///     project: project.projectId,
///     service: "cloudkms.googleapis.com",
///     disableOnDestroy: false,
/// });
/// // Enable Dataform API
/// const dataformApi = new gcp.projects.Service("dataform_api", {
///     project: project.projectId,
///     service: "dataform.googleapis.com",
///     disableOnDestroy: false,
/// }, {
///     dependsOn: [cloudkmsApi],
/// });
/// // Add a sleep to wait for IAM propagation after API enablement
/// const waitForDataformApi = new time.Sleep("wait_for_dataform_api", {createDuration: "30s"}, {
///     dependsOn: [dataformApi],
/// });
/// // Retrieve the Dataform service identity
/// const dataformSa = new gcp.projects.ServiceIdentity("dataform_sa", {
///     project: project.projectId,
///     service: "dataform.googleapis.com",
/// }, {
///     dependsOn: [waitForDataformApi],
/// });
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     project: project.projectId,
///     name: "example-key-ring",
///     location: "us-central1",
/// }, {
///     dependsOn: [waitForDataformApi],
/// });
/// const exampleKey = new gcp.kms.CryptoKey("example_key", {
///     name: "example-crypto-key-name",
///     keyRing: keyring.id,
/// });
/// // Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// const cryptoKeyBinding = new gcp.kms.CryptoKeyIAMMember("crypto_key_binding", {
///     cryptoKeyId: exampleKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: dataformSa.member,
/// });
/// // Config with KMS key provided
/// const config = new gcp.dataform.Config("config", {
///     region: "us-central1",
///     defaultKmsKeyName: exampleKey.id,
///     project: project.projectId,
/// }, {
///     dependsOn: [cryptoKeyBinding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     name="project-1",
///     project_id="project-1",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable Cloud Key KMS API
/// cloudkms_api = gcp.projects.Service("cloudkms_api",
///     project=project.project_id,
///     service="cloudkms.googleapis.com",
///     disable_on_destroy=False)
/// # Enable Dataform API
/// dataform_api = gcp.projects.Service("dataform_api",
///     project=project.project_id,
///     service="dataform.googleapis.com",
///     disable_on_destroy=False,
///     opts = pulumi.ResourceOptions(depends_on=[cloudkms_api]))
/// # Add a sleep to wait for IAM propagation after API enablement
/// wait_for_dataform_api = time.Sleep("wait_for_dataform_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[dataform_api]))
/// # Retrieve the Dataform service identity
/// dataform_sa = gcp.projects.ServiceIdentity("dataform_sa",
///     project=project.project_id,
///     service="dataform.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_dataform_api]))
/// keyring = gcp.kms.KeyRing("keyring",
///     project=project.project_id,
///     name="example-key-ring",
///     location="us-central1",
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_dataform_api]))
/// example_key = gcp.kms.CryptoKey("example_key",
///     name="example-crypto-key-name",
///     key_ring=keyring.id)
/// # Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// crypto_key_binding = gcp.kms.CryptoKeyIAMMember("crypto_key_binding",
///     crypto_key_id=example_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=dataform_sa.member)
/// # Config with KMS key provided
/// config = gcp.dataform.Config("config",
///     region="us-central1",
///     default_kms_key_name=example_key.id,
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key_binding]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         Name = "project-1",
///         ProjectId = "project-1",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable Cloud Key KMS API
///     var cloudkmsApi = new Gcp.Projects.Service("cloudkms_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "cloudkms.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     // Enable Dataform API
///     var dataformApi = new Gcp.Projects.Service("dataform_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "dataform.googleapis.com",
///         DisableOnDestroy = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cloudkmsApi,
///         },
///     });
///
///     // Add a sleep to wait for IAM propagation after API enablement
///     var waitForDataformApi = new Time.Sleep("wait_for_dataform_api", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dataformApi,
///         },
///     });
///
///     // Retrieve the Dataform service identity
///     var dataformSa = new Gcp.Projects.ServiceIdentity("dataform_sa", new()
///     {
///         Project = project.ProjectId,
///         Service = "dataform.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForDataformApi,
///         },
///     });
///
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Project = project.ProjectId,
///         Name = "example-key-ring",
///         Location = "us-central1",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForDataformApi,
///         },
///     });
///
///     var exampleKey = new Gcp.Kms.CryptoKey("example_key", new()
///     {
///         Name = "example-crypto-key-name",
///         KeyRing = keyring.Id,
///     });
///
///     // Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
///     var cryptoKeyBinding = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_binding", new()
///     {
///         CryptoKeyId = exampleKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = dataformSa.Member,
///     });
///
///     // Config with KMS key provided
///     var config = new Gcp.Dataform.Config("config", new()
///     {
///         Region = "us-central1",
///         DefaultKmsKeyName = exampleKey.Id,
///         Project = project.ProjectId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("project-1"),
/// 			ProjectId:      pulumi.String("project-1"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable Cloud Key KMS API
/// 		cloudkmsApi, err := projects.NewService(ctx, "cloudkms_api", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("cloudkms.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable Dataform API
/// 		dataformApi, err := projects.NewService(ctx, "dataform_api", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("dataform.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cloudkmsApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add a sleep to wait for IAM propagation after API enablement
/// 		waitForDataformApi, err := time.NewSleep(ctx, "wait_for_dataform_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dataformApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Retrieve the Dataform service identity
/// 		dataformSa, err := projects.NewServiceIdentity(ctx, "dataform_sa", &projects.ServiceIdentityArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("dataform.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForDataformApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Project:  project.ProjectId,
/// 			Name:     pulumi.String("example-key-ring"),
/// 			Location: pulumi.String("us-central1"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForDataformApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewCryptoKey(ctx, "example_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("example-crypto-key-name"),
/// 			KeyRing: keyring.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// 		cryptoKeyBinding, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_binding", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: exampleKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      dataformSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Config with KMS key provided
/// 		_, err = dataform.NewConfig(ctx, "config", &dataform.ConfigArgs{
/// 			Region:            pulumi.String("us-central1"),
/// 			DefaultKmsKeyName: exampleKey.ID().ToIDOutput().ToStringOutput(),
/// 			Project:           project.ProjectId,
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "project" {
///   name            = "project-1"
///   project_id      = "project-1"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// # Enable Cloud Key KMS API
/// resource "gcp_projects_service" "cloudkms_api" {
///   project            = gcp_organizations_project.project.project_id
///   service            = "cloudkms.googleapis.com"
///   disable_on_destroy = false
/// }
/// # Enable Dataform API
/// resource "gcp_projects_service" "dataform_api" {
///   depends_on         = [gcp_projects_service.cloudkms_api]
///   project            = gcp_organizations_project.project.project_id
///   service            = "dataform.googleapis.com"
///   disable_on_destroy = false
/// }
/// # Add a sleep to wait for IAM propagation after API enablement
/// resource "time_sleep" "wait_for_dataform_api" {
///   depends_on      = [gcp_projects_service.dataform_api]
///   create_duration = "30s"
/// }
/// # Retrieve the Dataform service identity
/// resource "gcp_projects_serviceidentity" "dataform_sa" {
///   depends_on = [time_sleep.wait_for_dataform_api]
///   project    = gcp_organizations_project.project.project_id
///   service    = "dataform.googleapis.com"
/// }
/// resource "gcp_kms_keyring" "keyring" {
///   depends_on = [time_sleep.wait_for_dataform_api]
///   project    = gcp_organizations_project.project.project_id
///   name       = "example-key-ring"
///   location   = "us-central1"
/// }
/// resource "gcp_kms_cryptokey" "example_key" {
///   name     = "example-crypto-key-name"
///   key_ring = gcp_kms_keyring.keyring.id
/// }
/// # Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// resource "gcp_kms_cryptokeyiammember" "crypto_key_binding" {
///   crypto_key_id = gcp_kms_cryptokey.example_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        = gcp_projects_serviceidentity.dataform_sa.member
/// }
/// # Config with KMS key provided
/// resource "gcp_dataform_config" "config" {
///   depends_on           = [gcp_kms_cryptokeyiammember.crypto_key_binding]
///   region               = "us-central1"
///   default_kms_key_name = gcp_kms_cryptokey.example_key.id
///   project              = gcp_organizations_project.project.project_id
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
/// import com.pulumi.gcp.dataform.Config;
/// import com.pulumi.gcp.dataform.ConfigArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .name("project-1")
///             .projectId("project-1")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable Cloud Key KMS API
///         var cloudkmsApi = new Service("cloudkmsApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("cloudkms.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         // Enable Dataform API
///         var dataformApi = new Service("dataformApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("dataform.googleapis.com")
///             .disableOnDestroy(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cloudkmsApi)
///                 .build());
///
///         // Add a sleep to wait for IAM propagation after API enablement
///         var waitForDataformApi = new Sleep("waitForDataformApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(dataformApi)
///                 .build());
///
///         // Retrieve the Dataform service identity
///         var dataformSa = new ServiceIdentity("dataformSa", ServiceIdentityArgs.builder()
///             .project(project.projectId())
///             .service("dataform.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForDataformApi)
///                 .build());
///
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .project(project.projectId())
///             .name("example-key-ring")
///             .location("us-central1")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForDataformApi)
///                 .build());
///
///         var exampleKey = new CryptoKey("exampleKey", CryptoKeyArgs.builder()
///             .name("example-crypto-key-name")
///             .keyRing(keyring.id())
///             .build());
///
///         // Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
///         var cryptoKeyBinding = new CryptoKeyIAMMember("cryptoKeyBinding", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(exampleKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(dataformSa.member())
///             .build());
///
///         // Config with KMS key provided
///         var config = new Config("config", ConfigArgs.builder()
///             .region("us-central1")
///             .defaultKmsKeyName(exampleKey.id())
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyBinding)
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
///       name: project-1
///       projectId: project-1
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable Cloud Key KMS API
///   cloudkmsApi:
///     type: gcp:projects:Service
///     name: cloudkms_api
///     properties:
///       project: ${project.projectId}
///       service: cloudkms.googleapis.com
///       disableOnDestroy: false
///   # Enable Dataform API
///   dataformApi:
///     type: gcp:projects:Service
///     name: dataform_api
///     properties:
///       project: ${project.projectId}
///       service: dataform.googleapis.com
///       disableOnDestroy: false
///     options:
///       dependsOn:
///         - ${cloudkmsApi}
///   # Add a sleep to wait for IAM propagation after API enablement
///   waitForDataformApi:
///     type: time:Sleep
///     name: wait_for_dataform_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${dataformApi}
///   # Retrieve the Dataform service identity
///   dataformSa:
///     type: gcp:projects:ServiceIdentity
///     name: dataform_sa
///     properties:
///       project: ${project.projectId}
///       service: dataform.googleapis.com
///     options:
///       dependsOn:
///         - ${waitForDataformApi}
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       project: ${project.projectId}
///       name: example-key-ring
///       location: us-central1
///     options:
///       dependsOn:
///         - ${waitForDataformApi}
///   exampleKey:
///     type: gcp:kms:CryptoKey
///     name: example_key
///     properties:
///       name: example-crypto-key-name
///       keyRing: ${keyring.id}
///   # Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
///   cryptoKeyBinding:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key_binding
///     properties:
///       cryptoKeyId: ${exampleKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${dataformSa.member}
///   # Config with KMS key provided
///   config:
///     type: gcp:dataform:Config
///     properties:
///       region: us-central1
///       defaultKmsKeyName: ${exampleKey.id}
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${cryptoKeyBinding}
/// ```
///
/// ### Dataform Config Without Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     name: "project-1",
///     projectId: "project-1",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable Dataform API
/// const dataformApi = new gcp.projects.Service("dataform_api", {
///     project: project.projectId,
///     service: "dataform.googleapis.com",
///     disableOnDestroy: false,
/// });
/// // Add a sleep to wait for IAM propagation after API enablement
/// const waitForDataformApi = new time.Sleep("wait_for_dataform_api", {createDuration: "30s"}, {
///     dependsOn: [dataformApi],
/// });
/// // Config without KMS key provided
/// const config = new gcp.dataform.Config("config", {
///     region: "us-central1",
///     project: project.projectId,
/// }, {
///     dependsOn: [waitForDataformApi],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     name="project-1",
///     project_id="project-1",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable Dataform API
/// dataform_api = gcp.projects.Service("dataform_api",
///     project=project.project_id,
///     service="dataform.googleapis.com",
///     disable_on_destroy=False)
/// # Add a sleep to wait for IAM propagation after API enablement
/// wait_for_dataform_api = time.Sleep("wait_for_dataform_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[dataform_api]))
/// # Config without KMS key provided
/// config = gcp.dataform.Config("config",
///     region="us-central1",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_dataform_api]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         Name = "project-1",
///         ProjectId = "project-1",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable Dataform API
///     var dataformApi = new Gcp.Projects.Service("dataform_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "dataform.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     // Add a sleep to wait for IAM propagation after API enablement
///     var waitForDataformApi = new Time.Sleep("wait_for_dataform_api", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dataformApi,
///         },
///     });
///
///     // Config without KMS key provided
///     var config = new Gcp.Dataform.Config("config", new()
///     {
///         Region = "us-central1",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForDataformApi,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("project-1"),
/// 			ProjectId:      pulumi.String("project-1"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable Dataform API
/// 		dataformApi, err := projects.NewService(ctx, "dataform_api", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("dataform.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add a sleep to wait for IAM propagation after API enablement
/// 		waitForDataformApi, err := time.NewSleep(ctx, "wait_for_dataform_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dataformApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Config without KMS key provided
/// 		_, err = dataform.NewConfig(ctx, "config", &dataform.ConfigArgs{
/// 			Region:  pulumi.String("us-central1"),
/// 			Project: project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForDataformApi,
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "project" {
///   name            = "project-1"
///   project_id      = "project-1"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// # Enable Dataform API
/// resource "gcp_projects_service" "dataform_api" {
///   project            = gcp_organizations_project.project.project_id
///   service            = "dataform.googleapis.com"
///   disable_on_destroy = false
/// }
/// # Add a sleep to wait for IAM propagation after API enablement
/// resource "time_sleep" "wait_for_dataform_api" {
///   depends_on      = [gcp_projects_service.dataform_api]
///   create_duration = "30s"
/// }
/// # Config without KMS key provided
/// resource "gcp_dataform_config" "config" {
///   depends_on = [time_sleep.wait_for_dataform_api]
///   region     = "us-central1"
///   project    = gcp_organizations_project.project.project_id
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
/// import com.pulumi.gcp.dataform.Config;
/// import com.pulumi.gcp.dataform.ConfigArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .name("project-1")
///             .projectId("project-1")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable Dataform API
///         var dataformApi = new Service("dataformApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("dataform.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         // Add a sleep to wait for IAM propagation after API enablement
///         var waitForDataformApi = new Sleep("waitForDataformApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(dataformApi)
///                 .build());
///
///         // Config without KMS key provided
///         var config = new Config("config", ConfigArgs.builder()
///             .region("us-central1")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForDataformApi)
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
///       name: project-1
///       projectId: project-1
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable Dataform API
///   dataformApi:
///     type: gcp:projects:Service
///     name: dataform_api
///     properties:
///       project: ${project.projectId}
///       service: dataform.googleapis.com
///       disableOnDestroy: false
///   # Add a sleep to wait for IAM propagation after API enablement
///   waitForDataformApi:
///     type: time:Sleep
///     name: wait_for_dataform_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${dataformApi}
///   # Config without KMS key provided
///   config:
///     type: gcp:dataform:Config
///     properties:
///       region: us-central1
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${waitForDataformApi}
/// ```
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/config`
/// * `{{project}}/{{region}}`
/// * `{{region}}`
///
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/config:Config default projects/{{project}}/locations/{{region}}/config
/// $ pulumi import gcp:dataform/config:Config default {{project}}/{{region}}
/// $ pulumi import gcp:dataform/config:Config default {{region}}
/// ```
class Config extends pulumi.CustomResource {
  /// Optional. A reference to the customer-managed encryption key (CMEK) that will be used by default to encrypt user data.
  late final pulumi.Output<String?> defaultKmsKeyName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the region
  late final pulumi.Output<String> region;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_dataform_config_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/config:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    defaultKmsKeyName = registerOutput<String?>('defaultKmsKeyName');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Config] resource's state with the given [name] and [id].
  static Config get(
    String name,
    pulumi.Input<String> id, {
    ConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Config._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Config._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/config:Config',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultKmsKeyName = registerOutput<String?>('defaultKmsKeyName');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Config] resource.
  Config.reference(String urn)
    : super(
        'gcp:dataform/config:Config',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultKmsKeyName = registerOutput<String?>('defaultKmsKeyName');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
