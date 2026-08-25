import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_args.dart';
import 'backup_vault_encryption_config.dart';
import 'backup_vault_state.dart';

/// Container to store and organize immutable and indelible backups.
///
///
///
/// ## Example Usage
///
/// ### Backup Dr Backup Vault Simple
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const backup_vault_test = new gcp.backupdisasterrecovery.BackupVault("backup-vault-test", {
///     location: "us-central1",
///     backupVaultId: "backup-vault-test",
///     description: "This is a second backup vault built by Terraform.",
///     backupMinimumEnforcedRetentionDuration: "100000s",
///     annotations: {
///         annotations1: "bar1",
///         annotations2: "baz1",
///     },
///     labels: {
///         foo: "bar1",
///         bar: "baz1",
///     },
///     forceUpdate: true,
///     accessRestriction: "WITHIN_ORGANIZATION",
///     backupRetentionInheritance: "INHERIT_VAULT_RETENTION",
///     ignoreInactiveDatasources: true,
///     ignoreBackupPlanReferences: true,
///     allowMissing: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// backup_vault_test = gcp.backupdisasterrecovery.BackupVault("backup-vault-test",
///     location="us-central1",
///     backup_vault_id="backup-vault-test",
///     description="This is a second backup vault built by Terraform.",
///     backup_minimum_enforced_retention_duration="100000s",
///     annotations={
///         "annotations1": "bar1",
///         "annotations2": "baz1",
///     },
///     labels={
///         "foo": "bar1",
///         "bar": "baz1",
///     },
///     force_update=True,
///     access_restriction="WITHIN_ORGANIZATION",
///     backup_retention_inheritance="INHERIT_VAULT_RETENTION",
///     ignore_inactive_datasources=True,
///     ignore_backup_plan_references=True,
///     allow_missing=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backup_vault_test = new Gcp.BackupDisasterRecovery.BackupVault("backup-vault-test", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "backup-vault-test",
///         Description = "This is a second backup vault built by Terraform.",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///         Annotations =
///         {
///             { "annotations1", "bar1" },
///             { "annotations2", "baz1" },
///         },
///         Labels =
///         {
///             { "foo", "bar1" },
///             { "bar", "baz1" },
///         },
///         ForceUpdate = true,
///         AccessRestriction = "WITHIN_ORGANIZATION",
///         BackupRetentionInheritance = "INHERIT_VAULT_RETENTION",
///         IgnoreInactiveDatasources = true,
///         IgnoreBackupPlanReferences = true,
///         AllowMissing = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.NewBackupVault(ctx, "backup-vault-test", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("backup-vault-test"),
/// 			Description:                            pulumi.String("This is a second backup vault built by Terraform."),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 			Annotations: pulumi.StringMap{
/// 				"annotations1": pulumi.String("bar1"),
/// 				"annotations2": pulumi.String("baz1"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar1"),
/// 				"bar": pulumi.String("baz1"),
/// 			},
/// 			ForceUpdate:                pulumi.Bool(true),
/// 			AccessRestriction:          pulumi.String("WITHIN_ORGANIZATION"),
/// 			BackupRetentionInheritance: pulumi.String("INHERIT_VAULT_RETENTION"),
/// 			IgnoreInactiveDatasources:  pulumi.Bool(true),
/// 			IgnoreBackupPlanReferences: pulumi.Bool(true),
/// 			AllowMissing:               pulumi.Bool(true),
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
/// resource "gcp_backupdisasterrecovery_backupvault" "backup-vault-test" {
///   location                                   = "us-central1"
///   backup_vault_id                            = "backup-vault-test"
///   description                                = "This is a second backup vault built by Terraform."
///   backup_minimum_enforced_retention_duration = "100000s"
///   annotations = {
///     "annotations1" = "bar1"
///     "annotations2" = "baz1"
///   }
///   labels = {
///     "foo" = "bar1"
///     "bar" = "baz1"
///   }
///   force_update                  = "true"
///   access_restriction            = "WITHIN_ORGANIZATION"
///   backup_retention_inheritance  = "INHERIT_VAULT_RETENTION"
///   ignore_inactive_datasources   = "true"
///   ignore_backup_plan_references = "true"
///   allow_missing                 = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
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
///         var backup_vault_test = new BackupVault("backup-vault-test", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault-test")
///             .description("This is a second backup vault built by Terraform.")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .annotations(Map.ofEntries(
///                 Map.entry("annotations1", "bar1"),
///                 Map.entry("annotations2", "baz1")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("foo", "bar1"),
///                 Map.entry("bar", "baz1")
///             ))
///             .forceUpdate(true)
///             .accessRestriction("WITHIN_ORGANIZATION")
///             .backupRetentionInheritance("INHERIT_VAULT_RETENTION")
///             .ignoreInactiveDatasources(true)
///             .ignoreBackupPlanReferences(true)
///             .allowMissing(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   backup-vault-test:
///     type: gcp:backupdisasterrecovery:BackupVault
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault-test
///       description: This is a second backup vault built by Terraform.
///       backupMinimumEnforcedRetentionDuration: 100000s
///       annotations:
///         annotations1: bar1
///         annotations2: baz1
///       labels:
///         foo: bar1
///         bar: baz1
///       forceUpdate: 'true'
///       accessRestriction: WITHIN_ORGANIZATION
///       backupRetentionInheritance: INHERIT_VAULT_RETENTION
///       ignoreInactiveDatasources: 'true'
///       ignoreBackupPlanReferences: 'true'
///       allowMissing: 'true'
/// ```
///
/// ### Backup Dr Backup Vault Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testProject = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const backup_vault_cmek = new gcp.backupdisasterrecovery.BackupVault("backup-vault-cmek", {
///     location: "us-central1",
///     backupVaultId: "backup-vault-cmek",
///     description: "This is a second backup vault built by Terraform.",
///     backupMinimumEnforcedRetentionDuration: "100000s",
///     annotations: {
///         annotations1: "bar1",
///         annotations2: "baz1",
///     },
///     labels: {
///         foo: "bar1",
///         bar: "baz1",
///     },
///     encryptionConfig: {
///         kmsKeyName: "bkpvault-key",
///     },
///     forceUpdate: true,
///     accessRestriction: "WITHIN_ORGANIZATION",
///     backupRetentionInheritance: "INHERIT_VAULT_RETENTION",
///     ignoreInactiveDatasources: true,
///     ignoreBackupPlanReferences: true,
///     allowMissing: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_project = gcp.organizations.get_project(project_id="my-project-name")
/// backup_vault_cmek = gcp.backupdisasterrecovery.BackupVault("backup-vault-cmek",
///     location="us-central1",
///     backup_vault_id="backup-vault-cmek",
///     description="This is a second backup vault built by Terraform.",
///     backup_minimum_enforced_retention_duration="100000s",
///     annotations={
///         "annotations1": "bar1",
///         "annotations2": "baz1",
///     },
///     labels={
///         "foo": "bar1",
///         "bar": "baz1",
///     },
///     encryption_config={
///         "kms_key_name": "bkpvault-key",
///     },
///     force_update=True,
///     access_restriction="WITHIN_ORGANIZATION",
///     backup_retention_inheritance="INHERIT_VAULT_RETENTION",
///     ignore_inactive_datasources=True,
///     ignore_backup_plan_references=True,
///     allow_missing=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testProject = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var backup_vault_cmek = new Gcp.BackupDisasterRecovery.BackupVault("backup-vault-cmek", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "backup-vault-cmek",
///         Description = "This is a second backup vault built by Terraform.",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///         Annotations =
///         {
///             { "annotations1", "bar1" },
///             { "annotations2", "baz1" },
///         },
///         Labels =
///         {
///             { "foo", "bar1" },
///             { "bar", "baz1" },
///         },
///         EncryptionConfig = new Gcp.BackupDisasterRecovery.Inputs.BackupVaultEncryptionConfigArgs
///         {
///             KmsKeyName = "bkpvault-key",
///         },
///         ForceUpdate = true,
///         AccessRestriction = "WITHIN_ORGANIZATION",
///         BackupRetentionInheritance = "INHERIT_VAULT_RETENTION",
///         IgnoreInactiveDatasources = true,
///         IgnoreBackupPlanReferences = true,
///         AllowMissing = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewBackupVault(ctx, "backup-vault-cmek", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("backup-vault-cmek"),
/// 			Description:                            pulumi.String("This is a second backup vault built by Terraform."),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 			Annotations: pulumi.StringMap{
/// 				"annotations1": pulumi.String("bar1"),
/// 				"annotations2": pulumi.String("baz1"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar1"),
/// 				"bar": pulumi.String("baz1"),
/// 			},
/// 			EncryptionConfig: &backupdisasterrecovery.BackupVaultEncryptionConfigArgs{
/// 				KmsKeyName: pulumi.String("bkpvault-key"),
/// 			},
/// 			ForceUpdate:                pulumi.Bool(true),
/// 			AccessRestriction:          pulumi.String("WITHIN_ORGANIZATION"),
/// 			BackupRetentionInheritance: pulumi.String("INHERIT_VAULT_RETENTION"),
/// 			IgnoreInactiveDatasources:  pulumi.Bool(true),
/// 			IgnoreBackupPlanReferences: pulumi.Bool(true),
/// 			AllowMissing:               pulumi.Bool(true),
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
/// data "gcp_organizations_getproject" "testProject" {
///   project_id = "my-project-name"
/// }
///
/// resource "gcp_backupdisasterrecovery_backupvault" "backup-vault-cmek" {
///   location                                   = "us-central1"
///   backup_vault_id                            = "backup-vault-cmek"
///   description                                = "This is a second backup vault built by Terraform."
///   backup_minimum_enforced_retention_duration = "100000s"
///   annotations = {
///     "annotations1" = "bar1"
///     "annotations2" = "baz1"
///   }
///   labels = {
///     "foo" = "bar1"
///     "bar" = "baz1"
///   }
///   encryption_config = {
///     kms_key_name = "bkpvault-key"
///   }
///   force_update                  = "true"
///   access_restriction            = "WITHIN_ORGANIZATION"
///   backup_retention_inheritance  = "INHERIT_VAULT_RETENTION"
///   ignore_inactive_datasources   = "true"
///   ignore_backup_plan_references = "true"
///   allow_missing                 = "true"
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
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupVaultEncryptionConfigArgs;
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
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var backup_vault_cmek = new BackupVault("backup-vault-cmek", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault-cmek")
///             .description("This is a second backup vault built by Terraform.")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .annotations(Map.ofEntries(
///                 Map.entry("annotations1", "bar1"),
///                 Map.entry("annotations2", "baz1")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("foo", "bar1"),
///                 Map.entry("bar", "baz1")
///             ))
///             .encryptionConfig(BackupVaultEncryptionConfigArgs.builder()
///                 .kmsKeyName("bkpvault-key")
///                 .build())
///             .forceUpdate(true)
///             .accessRestriction("WITHIN_ORGANIZATION")
///             .backupRetentionInheritance("INHERIT_VAULT_RETENTION")
///             .ignoreInactiveDatasources(true)
///             .ignoreBackupPlanReferences(true)
///             .allowMissing(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   backup-vault-cmek:
///     type: gcp:backupdisasterrecovery:BackupVault
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault-cmek
///       description: This is a second backup vault built by Terraform.
///       backupMinimumEnforcedRetentionDuration: 100000s
///       annotations:
///         annotations1: bar1
///         annotations2: baz1
///       labels:
///         foo: bar1
///         bar: baz1
///       encryptionConfig:
///         kmsKeyName: bkpvault-key
///       forceUpdate: 'true'
///       accessRestriction: WITHIN_ORGANIZATION
///       backupRetentionInheritance: INHERIT_VAULT_RETENTION
///       ignoreInactiveDatasources: 'true'
///       ignoreBackupPlanReferences: 'true'
///       allowMissing: 'true'
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
///
/// ## Import
///
/// BackupVault can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupVaults/{{backup_vault_id}}`
/// * `{{project}}/{{location}}/{{backup_vault_id}}`
/// * `{{location}}/{{backup_vault_id}}`
///
///
/// When using the `pulumi import` command, BackupVault can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupVault:BackupVault default projects/{{project}}/locations/{{location}}/backupVaults/{{backup_vault_id}}
/// $ pulumi import gcp:backupdisasterrecovery/backupVault:BackupVault default {{project}}/{{location}}/{{backup_vault_id}}
/// $ pulumi import gcp:backupdisasterrecovery/backupVault:BackupVault default {{location}}/{{backup_vault_id}}
/// ```
class BackupVault extends pulumi.CustomResource {
  /// Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// Default value is `WITHIN_ORGANIZATION`.
  /// Possible values are: `ACCESS_RESTRICTION_UNSPECIFIED`, `WITHIN_PROJECT`, `WITHIN_ORGANIZATION`, `UNRESTRICTED`, `WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA`.
  late final pulumi.Output<String?> accessRestriction;
  /// Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  late final pulumi.Output<bool?> allowMissing;
  /// Optional. User annotations. See https://google.aip.dev/128#annotations
  /// Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Output only. The number of backups in this backup vault.
  late final pulumi.Output<String> backupCount;
  /// Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  late final pulumi.Output<String> backupMinimumEnforcedRetentionDuration;
  /// How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// Possible values are: `BACKUP_RETENTION_INHERITANCE_UNSPECIFIED`, `INHERIT_VAULT_RETENTION`, `MATCH_BACKUP_EXPIRE_TIME`.
  late final pulumi.Output<String?> backupRetentionInheritance;
  /// Required. ID of the requesting object.
  late final pulumi.Output<String> backupVaultId;
  /// Output only. The time when the instance was created.
  late final pulumi.Output<String> createTime;
  /// Output only. Set to true when there are no backups nested under this resource.
  late final pulumi.Output<bool> deletable;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. The description of the BackupVault instance (2048 characters or less).
  late final pulumi.Output<String?> description;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Time after which the BackupVault resource is locked.
  late final pulumi.Output<String?> effectiveTime;
  /// Encryption configuration for the backup vault.
  /// Structure is documented below.
  late final pulumi.Output<BackupVaultEncryptionConfig?> encryptionConfig;
  /// Optional. Server specified ETag for the backup vault resource to prevent simultaneous updates from overwiting each other.
  late final pulumi.Output<String> etag;
  /// (Optional, Deprecated)
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  ///
  /// &gt; **Warning:** `forceDelete` is deprecated and will be removed in a future major release. Use `ignoreInactiveDatasources` instead.
  late final pulumi.Output<bool?> forceDelete;
  /// If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// the restriction against conflicting retention periods. This conflict may occur when the
  /// expiration schedule defined by the associated backup plan is shorter than the minimum
  /// retention set by the backup vault.
  late final pulumi.Output<bool?> forceUpdate;
  /// If set to true, we will force update access restriction even if some non compliant data sources are present.
  late final pulumi.Output<bool?> forceUpdateAccessRestriction;
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  late final pulumi.Output<bool?> ignoreBackupPlanReferences;
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  late final pulumi.Output<bool?> ignoreInactiveDatasources;
  /// Optional. Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The GCP location for the backup vault.
  late final pulumi.Output<String> location;
  /// Output only. Identifier. The resource name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. Service account used by the BackupVault Service for this BackupVault.  The user should grant this account permissions in their workload project to enable the service to run backups and restores there.
  late final pulumi.Output<String> serviceAccount;
  /// Output only. The BackupVault resource instance state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// ERROR
  /// UPDATING
  late final pulumi.Output<String> state;
  /// Output only. Total size of the storage used by all backup resources.
  late final pulumi.Output<String> totalStoredBytes;
  /// Output only. Output only Immutable after resource creation until resource deletion.
  late final pulumi.Output<String> uid;
  /// Output only. The time when the instance was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BackupVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupVault]. {@macro pulumi_backupdisasterrecovery_backup_vault_backup_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupVault(
    String name, {
    BackupVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupVault:BackupVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accessRestriction = registerOutput<String?>('accessRestriction');
    allowMissing = registerOutput<bool?>('allowMissing');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backupCount = registerOutput<String>('backupCount');
    backupMinimumEnforcedRetentionDuration = registerOutput<String>('backupMinimumEnforcedRetentionDuration');
    backupRetentionInheritance = registerOutput<String?>('backupRetentionInheritance');
    backupVaultId = registerOutput<String>('backupVaultId');
    createTime = registerOutput<String>('createTime');
    deletable = registerOutput<bool>('deletable');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    effectiveTime = registerOutput<String?>('effectiveTime');
    encryptionConfig = registerOutput<BackupVaultEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupVaultEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    forceDelete = registerOutput<bool?>('forceDelete');
    forceUpdate = registerOutput<bool?>('forceUpdate');
    forceUpdateAccessRestriction = registerOutput<bool?>('forceUpdateAccessRestriction');
    ignoreBackupPlanReferences = registerOutput<bool?>('ignoreBackupPlanReferences');
    ignoreInactiveDatasources = registerOutput<bool?>('ignoreInactiveDatasources');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    state = registerOutput<String>('state');
    totalStoredBytes = registerOutput<String>('totalStoredBytes');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BackupVault] resource's state with the given [name] and [id].
  static BackupVault get(
    String name,
    pulumi.Input<String> id, {
    BackupVaultState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BackupVault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BackupVault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupVault:BackupVault',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRestriction = registerOutput<String?>('accessRestriction');
    allowMissing = registerOutput<bool?>('allowMissing');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backupCount = registerOutput<String>('backupCount');
    backupMinimumEnforcedRetentionDuration = registerOutput<String>('backupMinimumEnforcedRetentionDuration');
    backupRetentionInheritance = registerOutput<String?>('backupRetentionInheritance');
    backupVaultId = registerOutput<String>('backupVaultId');
    createTime = registerOutput<String>('createTime');
    deletable = registerOutput<bool>('deletable');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    effectiveTime = registerOutput<String?>('effectiveTime');
    encryptionConfig = registerOutput<BackupVaultEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupVaultEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    forceDelete = registerOutput<bool?>('forceDelete');
    forceUpdate = registerOutput<bool?>('forceUpdate');
    forceUpdateAccessRestriction = registerOutput<bool?>('forceUpdateAccessRestriction');
    ignoreBackupPlanReferences = registerOutput<bool?>('ignoreBackupPlanReferences');
    ignoreInactiveDatasources = registerOutput<bool?>('ignoreInactiveDatasources');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    totalStoredBytes = registerOutput<String>('totalStoredBytes');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [BackupVault] resource.
  BackupVault.reference(String urn)
    : super(
        'gcp:backupdisasterrecovery/backupVault:BackupVault',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accessRestriction = registerOutput<String?>('accessRestriction');
    allowMissing = registerOutput<bool?>('allowMissing');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backupCount = registerOutput<String>('backupCount');
    backupMinimumEnforcedRetentionDuration = registerOutput<String>('backupMinimumEnforcedRetentionDuration');
    backupRetentionInheritance = registerOutput<String?>('backupRetentionInheritance');
    backupVaultId = registerOutput<String>('backupVaultId');
    createTime = registerOutput<String>('createTime');
    deletable = registerOutput<bool>('deletable');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    effectiveTime = registerOutput<String?>('effectiveTime');
    encryptionConfig = registerOutput<BackupVaultEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupVaultEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    forceDelete = registerOutput<bool?>('forceDelete');
    forceUpdate = registerOutput<bool?>('forceUpdate');
    forceUpdateAccessRestriction = registerOutput<bool?>('forceUpdateAccessRestriction');
    ignoreBackupPlanReferences = registerOutput<bool?>('ignoreBackupPlanReferences');
    ignoreInactiveDatasources = registerOutput<bool?>('ignoreInactiveDatasources');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    state = registerOutput<String>('state');
    totalStoredBytes = registerOutput<String>('totalStoredBytes');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
