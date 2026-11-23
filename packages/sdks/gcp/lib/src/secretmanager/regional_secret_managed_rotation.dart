import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_managed_rotation_args.dart';
import 'regional_secret_managed_rotation_cloud_sql_single_user_credentials.dart';
import 'regional_secret_managed_rotation_rotation.dart';
import 'regional_secret_managed_rotation_state.dart';

/// Enables managed rotation of Cloud SQL single-user credentials for a regional secret of type
/// `CLOUD_SQL_DB_CREDENTIALS`. When managed rotation is enabled, Secret Manager adds a new secret
/// version containing the credentials and updates the password of the Cloud SQL database user.
///
///
/// To get more information about RegionalSecretManagedRotation, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets)
/// * How-to Guides
/// * [Create a regional secret](https://cloud.google.com/secret-manager/regional-secrets/create-regional-secret)
///
/// &gt; **Warning:** The regional secret's principal (`policy_member[0].iam_policy_uid_principal` on
/// `gcp.secretmanager.RegionalSecret`) must be granted the Cloud SQL permissions required to
/// update the database user's password before managed rotation is enabled.
///
/// &gt; **Note:** Managed rotation can only be enabled once for a given regional secret, and it cannot be disabled.
/// Deleting this resource only removes it from the Terraform state; it does not disable managed rotation.
/// To change the Cloud SQL instance or user that a secret rotates, the regional secret must be recreated.
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `cloud_sql_single_user_credentials.password_wo`.
/// Read more about Write-only Arguments.
///
///
/// ## Example Usage
///
/// ### Regional Secret Managed Rotation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "tf-sql-instance",
///     region: "us-central1",
///     databaseVersion: "POSTGRES_15",
///     settings: {
///         tier: "db-custom-1-3840",
///         edition: "ENTERPRISE",
///     },
///     deletionProtection: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "tf-sql-user",
///     instance: instance.name,
///     password: "initial-password",
/// });
/// const secret = new gcp.secretmanager.RegionalSecret("secret", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     secretType: "CLOUD_SQL_DB_CREDENTIALS",
/// });
/// // Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// const secretCloudsqlAccess = new gcp.projects.IAMMember("secret_cloudsql_access", {
///     project: project.then(project => project.projectId),
///     role: "roles/cloudsql.admin",
///     member: secret.policyMembers[0].iamPolicyUidPrincipal,
/// });
/// const rotation = new gcp.secretmanager.RegionalSecretManagedRotation("rotation", {
///     secretId: secret.secretId,
///     location: secret.location,
///     cloudSqlSingleUserCredentials: {
///         instanceId: instance.name,
///         username: user.name,
///         password: "initial-password",
///     },
/// }, {
///     dependsOn: [secretCloudsqlAccess],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="tf-sql-instance",
///     region="us-central1",
///     database_version="POSTGRES_15",
///     settings={
///         "tier": "db-custom-1-3840",
///         "edition": "ENTERPRISE",
///     },
///     deletion_protection=False)
/// user = gcp.sql.User("user",
///     name="tf-sql-user",
///     instance=instance.name,
///     password="initial-password")
/// secret = gcp.secretmanager.RegionalSecret("secret",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     secret_type="CLOUD_SQL_DB_CREDENTIALS")
/// # Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// secret_cloudsql_access = gcp.projects.IAMMember("secret_cloudsql_access",
///     project=project.project_id,
///     role="roles/cloudsql.admin",
///     member=secret.policy_members[0].iam_policy_uid_principal)
/// rotation = gcp.secretmanager.RegionalSecretManagedRotation("rotation",
///     secret_id=secret.secret_id,
///     location=secret.location,
///     cloud_sql_single_user_credentials={
///         "instance_id": instance.name,
///         "username": user.name,
///         "password": "initial-password",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secret_cloudsql_access]))
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
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "tf-sql-instance",
///         Region = "us-central1",
///         DatabaseVersion = "POSTGRES_15",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-1-3840",
///             Edition = "ENTERPRISE",
///         },
///         DeletionProtection = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "tf-sql-user",
///         Instance = instance.Name,
///         Password = "initial-password",
///     });
///
///     var secret = new Gcp.SecretManager.RegionalSecret("secret", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         SecretType = "CLOUD_SQL_DB_CREDENTIALS",
///     });
///
///     // Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
///     var secretCloudsqlAccess = new Gcp.Projects.IAMMember("secret_cloudsql_access", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/cloudsql.admin",
///         Member = secret.PolicyMembers.Apply(policyMembers => policyMembers[0].IamPolicyUidPrincipal),
///     });
///
///     var rotation = new Gcp.SecretManager.RegionalSecretManagedRotation("rotation", new()
///     {
///         SecretId = secret.SecretId,
///         Location = secret.Location,
///         CloudSqlSingleUserCredentials = new Gcp.SecretManager.Inputs.RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs
///         {
///             InstanceId = instance.Name,
///             Username = user.Name,
///             Password = "initial-password",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secretCloudsqlAccess,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("tf-sql-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_15"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:    pulumi.String("db-custom-1-3840"),
/// 				Edition: pulumi.String("ENTERPRISE"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("tf-sql-user"),
/// 			Instance: instance.Name,
/// 			Password: pulumi.String("initial-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret, err := secretmanager.NewRegionalSecret(ctx, "secret", &secretmanager.RegionalSecretArgs{
/// 			SecretId:   pulumi.String("tf-reg-secret"),
/// 			Location:   pulumi.String("us-central1"),
/// 			SecretType: pulumi.String("CLOUD_SQL_DB_CREDENTIALS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// 		secretCloudsqlAccess, err := projects.NewIAMMember(ctx, "secret_cloudsql_access", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/cloudsql.admin"),
/// 			Member: secret.PolicyMembers.ApplyT(func(policyMembers []secretmanager.RegionalSecretPolicyMember) (*string, error) {
/// 				return policyMembers[0].IamPolicyUidPrincipal, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecretManagedRotation(ctx, "rotation", &secretmanager.RegionalSecretManagedRotationArgs{
/// 			SecretId: secret.SecretId,
/// 			Location: secret.Location,
/// 			CloudSqlSingleUserCredentials: &secretmanager.RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs{
/// 				InstanceId: instance.Name,
/// 				Username:   user.Name,
/// 				Password:   pulumi.String("initial-password"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secretCloudsqlAccess,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_sql_database_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name             = "tf-sql-instance"
///   region           = "us-central1"
///   database_version = "POSTGRES_15"
///   settings = {
///     tier    = "db-custom-1-3840"
///     edition = "ENTERPRISE"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_sql_user" "user" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "tf-sql-user"
///   instance = gcp_sql_database_instance.instance.name
///   password = "initial-password"
/// }
/// resource "gcp_secretmanager_regional_secret" "secret" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id   = "tf-reg-secret"
///   location    = "us-central1"
///   secret_type = "CLOUD_SQL_DB_CREDENTIALS"
/// }
/// # Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// resource "gcp_projects_i_a_m_member" "secret_cloudsql_access" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project = data.gcp_organizations_project.project.project_id
///   role    = "roles/cloudsql.admin"
///   member  = gcp_secretmanager_regional_secret.secret.policy_members[0].iam_policy_uid_principal
/// }
/// resource "gcp_secretmanager_regional_secret_managed_rotation" "rotation" {
///   depends_on = [gcp_projects_i_a_m_member.secret_cloudsql_access]
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id = gcp_secretmanager_regional_secret.secret.secret_id
///   location  = gcp_secretmanager_regional_secret.secret.location
///   cloud_sql_single_user_credentials = {
///     instance_id = gcp_sql_database_instance.instance.name
///     username    = gcp_sql_user.user.name
///     password    = "initial-password"
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
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecretManagedRotation;
/// import com.pulumi.gcp.secretmanager.RegionalSecretManagedRotationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("tf-sql-instance")
///             .region("us-central1")
///             .databaseVersion("POSTGRES_15")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-1-3840")
///                 .edition("ENTERPRISE")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("tf-sql-user")
///             .instance(instance.name())
///             .password("initial-password")
///             .build());
///
///         var secret = new RegionalSecret("secret", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .secretType("CLOUD_SQL_DB_CREDENTIALS")
///             .build());
///
///         // Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
///         var secretCloudsqlAccess = new IAMMember("secretCloudsqlAccess", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/cloudsql.admin")
///             .member(secret.policyMembers().applyValue(_policyMembers -> _policyMembers.get(0).iamPolicyUidPrincipal()))
///             .build());
///
///         var rotation = new RegionalSecretManagedRotation("rotation", RegionalSecretManagedRotationArgs.builder()
///             .secretId(secret.secretId())
///             .location(secret.location())
///             .cloudSqlSingleUserCredentials(RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs.builder()
///                 .instanceId(instance.name())
///                 .username(user.name())
///                 .password("initial-password")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secretCloudsqlAccess)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: tf-sql-instance
///       region: us-central1
///       databaseVersion: POSTGRES_15
///       settings:
///         tier: db-custom-1-3840
///         edition: ENTERPRISE
///       deletionProtection: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: tf-sql-user
///       instance: ${instance.name}
///       password: initial-password
///   secret:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       secretType: CLOUD_SQL_DB_CREDENTIALS
///   # Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
///   secretCloudsqlAccess:
///     type: gcp:projects:IAMMember
///     name: secret_cloudsql_access
///     properties:
///       project: ${project.projectId}
///       role: roles/cloudsql.admin
///       member: ${secret.policyMembers[0].iamPolicyUidPrincipal}
///   rotation:
///     type: gcp:secretmanager:RegionalSecretManagedRotation
///     properties:
///       secretId: ${secret.secretId}
///       location: ${secret.location}
///       cloudSqlSingleUserCredentials:
///         instanceId: ${instance.name}
///         username: ${user.name}
///         password: initial-password
///     options:
///       dependsOn:
///         - ${secretCloudsqlAccess}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Regional Secret Managed Rotation Write Only
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "tf-sql-instance",
///     region: "us-central1",
///     databaseVersion: "POSTGRES_15",
///     settings: {
///         tier: "db-custom-1-3840",
///         edition: "ENTERPRISE",
///     },
///     deletionProtection: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "tf-sql-user",
///     instance: instance.name,
///     password: "initial-password",
/// });
/// const secret = new gcp.secretmanager.RegionalSecret("secret", {
///     secretId: "tf-reg-secret",
///     location: "us-central1",
///     secretType: "CLOUD_SQL_DB_CREDENTIALS",
/// });
/// // Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// const secretCloudsqlAccess = new gcp.projects.IAMMember("secret_cloudsql_access", {
///     project: project.then(project => project.projectId),
///     role: "roles/cloudsql.admin",
///     member: secret.policyMembers[0].iamPolicyUidPrincipal,
/// });
/// const rotation = new gcp.secretmanager.RegionalSecretManagedRotation("rotation", {
///     secretId: secret.secretId,
///     location: secret.location,
///     cloudSqlSingleUserCredentials: {
///         instanceId: instance.name,
///         username: user.name,
///         passwordWo: "initial-password",
///         passwordWoVersion: "1",
///     },
/// }, {
///     dependsOn: [secretCloudsqlAccess],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="tf-sql-instance",
///     region="us-central1",
///     database_version="POSTGRES_15",
///     settings={
///         "tier": "db-custom-1-3840",
///         "edition": "ENTERPRISE",
///     },
///     deletion_protection=False)
/// user = gcp.sql.User("user",
///     name="tf-sql-user",
///     instance=instance.name,
///     password="initial-password")
/// secret = gcp.secretmanager.RegionalSecret("secret",
///     secret_id="tf-reg-secret",
///     location="us-central1",
///     secret_type="CLOUD_SQL_DB_CREDENTIALS")
/// # Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// secret_cloudsql_access = gcp.projects.IAMMember("secret_cloudsql_access",
///     project=project.project_id,
///     role="roles/cloudsql.admin",
///     member=secret.policy_members[0].iam_policy_uid_principal)
/// rotation = gcp.secretmanager.RegionalSecretManagedRotation("rotation",
///     secret_id=secret.secret_id,
///     location=secret.location,
///     cloud_sql_single_user_credentials={
///         "instance_id": instance.name,
///         "username": user.name,
///         "password_wo": "initial-password",
///         "password_wo_version": "1",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secret_cloudsql_access]))
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
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "tf-sql-instance",
///         Region = "us-central1",
///         DatabaseVersion = "POSTGRES_15",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-1-3840",
///             Edition = "ENTERPRISE",
///         },
///         DeletionProtection = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "tf-sql-user",
///         Instance = instance.Name,
///         Password = "initial-password",
///     });
///
///     var secret = new Gcp.SecretManager.RegionalSecret("secret", new()
///     {
///         SecretId = "tf-reg-secret",
///         Location = "us-central1",
///         SecretType = "CLOUD_SQL_DB_CREDENTIALS",
///     });
///
///     // Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
///     var secretCloudsqlAccess = new Gcp.Projects.IAMMember("secret_cloudsql_access", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/cloudsql.admin",
///         Member = secret.PolicyMembers.Apply(policyMembers => policyMembers[0].IamPolicyUidPrincipal),
///     });
///
///     var rotation = new Gcp.SecretManager.RegionalSecretManagedRotation("rotation", new()
///     {
///         SecretId = secret.SecretId,
///         Location = secret.Location,
///         CloudSqlSingleUserCredentials = new Gcp.SecretManager.Inputs.RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs
///         {
///             InstanceId = instance.Name,
///             Username = user.Name,
///             PasswordWo = "initial-password",
///             PasswordWoVersion = "1",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secretCloudsqlAccess,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("tf-sql-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_15"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:    pulumi.String("db-custom-1-3840"),
/// 				Edition: pulumi.String("ENTERPRISE"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("tf-sql-user"),
/// 			Instance: instance.Name,
/// 			Password: pulumi.String("initial-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret, err := secretmanager.NewRegionalSecret(ctx, "secret", &secretmanager.RegionalSecretArgs{
/// 			SecretId:   pulumi.String("tf-reg-secret"),
/// 			Location:   pulumi.String("us-central1"),
/// 			SecretType: pulumi.String("CLOUD_SQL_DB_CREDENTIALS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// 		secretCloudsqlAccess, err := projects.NewIAMMember(ctx, "secret_cloudsql_access", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/cloudsql.admin"),
/// 			Member: secret.PolicyMembers.ApplyT(func(policyMembers []secretmanager.RegionalSecretPolicyMember) (*string, error) {
/// 				return policyMembers[0].IamPolicyUidPrincipal, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecretManagedRotation(ctx, "rotation", &secretmanager.RegionalSecretManagedRotationArgs{
/// 			SecretId: secret.SecretId,
/// 			Location: secret.Location,
/// 			CloudSqlSingleUserCredentials: &secretmanager.RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs{
/// 				InstanceId:        instance.Name,
/// 				Username:          user.Name,
/// 				PasswordWo:        pulumi.String("initial-password"),
/// 				PasswordWoVersion: pulumi.String("1"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secretCloudsqlAccess,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_sql_database_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name             = "tf-sql-instance"
///   region           = "us-central1"
///   database_version = "POSTGRES_15"
///   settings = {
///     tier    = "db-custom-1-3840"
///     edition = "ENTERPRISE"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_sql_user" "user" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "tf-sql-user"
///   instance = gcp_sql_database_instance.instance.name
///   password = "initial-password"
/// }
/// resource "gcp_secretmanager_regional_secret" "secret" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id   = "tf-reg-secret"
///   location    = "us-central1"
///   secret_type = "CLOUD_SQL_DB_CREDENTIALS"
/// }
/// # Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
/// resource "gcp_projects_i_a_m_member" "secret_cloudsql_access" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project = data.gcp_organizations_project.project.project_id
///   role    = "roles/cloudsql.admin"
///   member  = gcp_secretmanager_regional_secret.secret.policy_members[0].iam_policy_uid_principal
/// }
/// resource "gcp_secretmanager_regional_secret_managed_rotation" "rotation" {
///   depends_on = [gcp_projects_i_a_m_member.secret_cloudsql_access]
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id = gcp_secretmanager_regional_secret.secret.secret_id
///   location  = gcp_secretmanager_regional_secret.secret.location
///   cloud_sql_single_user_credentials = {
///     instance_id         = gcp_sql_database_instance.instance.name
///     username            = gcp_sql_user.user.name
///     password_wo         = "initial-password"
///     password_wo_version = "1"
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
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecretManagedRotation;
/// import com.pulumi.gcp.secretmanager.RegionalSecretManagedRotationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("tf-sql-instance")
///             .region("us-central1")
///             .databaseVersion("POSTGRES_15")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-1-3840")
///                 .edition("ENTERPRISE")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("tf-sql-user")
///             .instance(instance.name())
///             .password("initial-password")
///             .build());
///
///         var secret = new RegionalSecret("secret", RegionalSecretArgs.builder()
///             .secretId("tf-reg-secret")
///             .location("us-central1")
///             .secretType("CLOUD_SQL_DB_CREDENTIALS")
///             .build());
///
///         // Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
///         var secretCloudsqlAccess = new IAMMember("secretCloudsqlAccess", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/cloudsql.admin")
///             .member(secret.policyMembers().applyValue(_policyMembers -> _policyMembers.get(0).iamPolicyUidPrincipal()))
///             .build());
///
///         var rotation = new RegionalSecretManagedRotation("rotation", RegionalSecretManagedRotationArgs.builder()
///             .secretId(secret.secretId())
///             .location(secret.location())
///             .cloudSqlSingleUserCredentials(RegionalSecretManagedRotationCloudSqlSingleUserCredentialsArgs.builder()
///                 .instanceId(instance.name())
///                 .username(user.name())
///                 .passwordWo("initial-password")
///                 .passwordWoVersion("1")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secretCloudsqlAccess)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: tf-sql-instance
///       region: us-central1
///       databaseVersion: POSTGRES_15
///       settings:
///         tier: db-custom-1-3840
///         edition: ENTERPRISE
///       deletionProtection: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: tf-sql-user
///       instance: ${instance.name}
///       password: initial-password
///   secret:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: tf-reg-secret
///       location: us-central1
///       secretType: CLOUD_SQL_DB_CREDENTIALS
///   # Grant the regional secret's principal the Cloud SQL permissions required for managed rotation.
///   secretCloudsqlAccess:
///     type: gcp:projects:IAMMember
///     name: secret_cloudsql_access
///     properties:
///       project: ${project.projectId}
///       role: roles/cloudsql.admin
///       member: ${secret.policyMembers[0].iamPolicyUidPrincipal}
///   rotation:
///     type: gcp:secretmanager:RegionalSecretManagedRotation
///     properties:
///       secretId: ${secret.secretId}
///       location: ${secret.location}
///       cloudSqlSingleUserCredentials:
///         instanceId: ${instance.name}
///         username: ${user.name}
///         passwordWo: initial-password
///         passwordWoVersion: '1'
///     options:
///       dependsOn:
///         - ${secretCloudsqlAccess}
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
/// RegionalSecretManagedRotation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}`
/// * `{{project}}/{{location}}/{{secret_id}}`
/// * `{{location}}/{{secret_id}}`
///
///
/// When using the `pulumi import` command, RegionalSecretManagedRotation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecretManagedRotation:RegionalSecretManagedRotation default projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}
/// $ pulumi import gcp:secretmanager/regionalSecretManagedRotation:RegionalSecretManagedRotation default {{project}}/{{location}}/{{secret_id}}
/// $ pulumi import gcp:secretmanager/regionalSecretManagedRotation:RegionalSecretManagedRotation default {{location}}/{{secret_id}}
/// ```
class RegionalSecretManagedRotation extends pulumi.CustomResource {
  /// The Cloud SQL single-user credentials to manage.
  /// Structure is documented below.
  late final pulumi.Output<RegionalSecretManagedRotationCloudSqlSingleUserCredentials> cloudSqlSingleUserCredentials;
  /// The location of the regional secret. eg us-central1
  late final pulumi.Output<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The rotation configuration of the regional secret.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionalSecretManagedRotationRotation>> rotations;
  /// The ID of the regional secret of type `CLOUD_SQL_DB_CREDENTIALS` to enable managed rotation for.
  late final pulumi.Output<String> secretId;

  /// Creates a new [RegionalSecretManagedRotation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalSecretManagedRotation]. {@macro pulumi_secretmanager_regional_secret_managed_rotation_regional_secret_managed_rotation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalSecretManagedRotation(
    String name, {
    RegionalSecretManagedRotationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecretManagedRotation:RegionalSecretManagedRotation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    cloudSqlSingleUserCredentials = registerOutput<RegionalSecretManagedRotationCloudSqlSingleUserCredentials>('cloudSqlSingleUserCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretManagedRotationCloudSqlSingleUserCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    rotations = registerOutput<List<RegionalSecretManagedRotationRotation>>('rotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalSecretManagedRotationRotation>(guardedValue, (value) => RegionalSecretManagedRotationRotation.fromMap((value as Map).cast<String, dynamic>())); });
    secretId = registerOutput<String>('secretId');
  }

  /// Gets an existing [RegionalSecretManagedRotation] resource's state with the given [name] and [id].
  static RegionalSecretManagedRotation get(
    String name,
    pulumi.Input<String> id, {
    RegionalSecretManagedRotationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionalSecretManagedRotation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionalSecretManagedRotation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecretManagedRotation:RegionalSecretManagedRotation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudSqlSingleUserCredentials = registerOutput<RegionalSecretManagedRotationCloudSqlSingleUserCredentials>('cloudSqlSingleUserCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretManagedRotationCloudSqlSingleUserCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    rotations = registerOutput<List<RegionalSecretManagedRotationRotation>>('rotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalSecretManagedRotationRotation>(guardedValue, (value) => RegionalSecretManagedRotationRotation.fromMap((value as Map).cast<String, dynamic>())); });
    secretId = registerOutput<String>('secretId');
  }

  /// Creates a typed reference to an existing [RegionalSecretManagedRotation] resource.
  RegionalSecretManagedRotation.reference(String urn)
    : super(
        'gcp:secretmanager/regionalSecretManagedRotation:RegionalSecretManagedRotation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cloudSqlSingleUserCredentials = registerOutput<RegionalSecretManagedRotationCloudSqlSingleUserCredentials>('cloudSqlSingleUserCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionalSecretManagedRotationCloudSqlSingleUserCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    rotations = registerOutput<List<RegionalSecretManagedRotationRotation>>('rotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalSecretManagedRotationRotation>(guardedValue, (value) => RegionalSecretManagedRotationRotation.fromMap((value as Map).cast<String, dynamic>())); });
    secretId = registerOutput<String>('secretId');
  }
}
