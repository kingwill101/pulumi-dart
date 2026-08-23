import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_alloydb.dart';
import 'connection_profile_args.dart';
import 'connection_profile_cloudsql.dart';
import 'connection_profile_mysql.dart';
import 'connection_profile_oracle.dart';
import 'connection_profile_postgresql.dart';
import 'connection_profile_state.dart';

/// A connection profile definition.
///
///
/// To get more information about ConnectionProfile, see:
///
/// * [API documentation](https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles/create)
/// * How-to Guides
/// * [Database Migration](https://cloud.google.com/database-migration/docs/)
///
///
///
/// ## Example Usage
///
/// ### Database Migration Service Connection Profile Cloudsql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cloudsqldb = new gcp.sql.DatabaseInstance("cloudsqldb", {
///     name: "my-database",
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-n1-standard-1",
///         deletionProtectionEnabled: false,
///     },
///     deletionProtection: false,
/// });
/// const sqlClientCert = new gcp.sql.SslCert("sql_client_cert", {
///     commonName: "my-cert",
///     instance: cloudsqldb.name,
/// }, {
///     dependsOn: [cloudsqldb],
/// });
/// const sqldbUser = new gcp.sql.User("sqldb_user", {
///     name: "my-username",
///     instance: cloudsqldb.name,
///     password: "my-password",
/// }, {
///     dependsOn: [sqlClientCert],
/// });
/// const cloudsqlprofile = new gcp.databasemigrationservice.ConnectionProfile("cloudsqlprofile", {
///     location: "us-central1",
///     connectionProfileId: "my-fromprofileid",
///     displayName: "my-fromprofileid_display",
///     labels: {
///         foo: "bar",
///     },
///     mysql: {
///         host: cloudsqldb.ipAddresses[0].ipAddress,
///         port: 3306,
///         username: sqldbUser.name,
///         password: sqldbUser.password,
///         ssl: {
///             clientKey: sqlClientCert.privateKey,
///             clientCertificate: sqlClientCert.cert,
///             caCertificate: sqlClientCert.serverCaCert,
///             type: "SERVER_CLIENT",
///         },
///         cloudSqlId: "my-database",
///     },
/// }, {
///     dependsOn: [sqldbUser],
/// });
/// const cloudsqlprofileDestination = new gcp.databasemigrationservice.ConnectionProfile("cloudsqlprofile_destination", {
///     location: "us-central1",
///     connectionProfileId: "my-toprofileid",
///     displayName: "my-toprofileid_displayname",
///     labels: {
///         foo: "bar",
///     },
///     cloudsql: {
///         settings: {
///             databaseVersion: "MYSQL_5_7",
///             userLabels: {
///                 cloudfoo: "cloudbar",
///             },
///             tier: "db-n1-standard-1",
///             edition: "ENTERPRISE",
///             storageAutoResizeLimit: "0",
///             activationPolicy: "ALWAYS",
///             ipConfig: {
///                 enableIpv4: true,
///                 requireSsl: true,
///             },
///             autoStorageIncrease: true,
///             dataDiskType: "PD_HDD",
///             dataDiskSizeGb: "11",
///             zone: "us-central1-b",
///             sourceId: project.then(project => `projects/${project.projectId}/locations/us-central1/connectionProfiles/my-fromprofileid`),
///             rootPassword: "testpasscloudsql",
///         },
///     },
/// }, {
///     dependsOn: [cloudsqlprofile],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// cloudsqldb = gcp.sql.DatabaseInstance("cloudsqldb",
///     name="my-database",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-n1-standard-1",
///         "deletion_protection_enabled": False,
///     },
///     deletion_protection=False)
/// sql_client_cert = gcp.sql.SslCert("sql_client_cert",
///     common_name="my-cert",
///     instance=cloudsqldb.name,
///     opts = pulumi.ResourceOptions(depends_on=[cloudsqldb]))
/// sqldb_user = gcp.sql.User("sqldb_user",
///     name="my-username",
///     instance=cloudsqldb.name,
///     password="my-password",
///     opts = pulumi.ResourceOptions(depends_on=[sql_client_cert]))
/// cloudsqlprofile = gcp.databasemigrationservice.ConnectionProfile("cloudsqlprofile",
///     location="us-central1",
///     connection_profile_id="my-fromprofileid",
///     display_name="my-fromprofileid_display",
///     labels={
///         "foo": "bar",
///     },
///     mysql={
///         "host": cloudsqldb.ip_addresses[0].ip_address,
///         "port": 3306,
///         "username": sqldb_user.name,
///         "password": sqldb_user.password,
///         "ssl": {
///             "client_key": sql_client_cert.private_key,
///             "client_certificate": sql_client_cert.cert,
///             "ca_certificate": sql_client_cert.server_ca_cert,
///             "type": "SERVER_CLIENT",
///         },
///         "cloud_sql_id": "my-database",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[sqldb_user]))
/// cloudsqlprofile_destination = gcp.databasemigrationservice.ConnectionProfile("cloudsqlprofile_destination",
///     location="us-central1",
///     connection_profile_id="my-toprofileid",
///     display_name="my-toprofileid_displayname",
///     labels={
///         "foo": "bar",
///     },
///     cloudsql={
///         "settings": {
///             "database_version": "MYSQL_5_7",
///             "user_labels": {
///                 "cloudfoo": "cloudbar",
///             },
///             "tier": "db-n1-standard-1",
///             "edition": "ENTERPRISE",
///             "storage_auto_resize_limit": "0",
///             "activation_policy": "ALWAYS",
///             "ip_config": {
///                 "enable_ipv4": True,
///                 "require_ssl": True,
///             },
///             "auto_storage_increase": True,
///             "data_disk_type": "PD_HDD",
///             "data_disk_size_gb": "11",
///             "zone": "us-central1-b",
///             "source_id": f"projects/{project.project_id}/locations/us-central1/connectionProfiles/my-fromprofileid",
///             "root_password": "testpasscloudsql",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[cloudsqlprofile]))
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
///     var cloudsqldb = new Gcp.Sql.DatabaseInstance("cloudsqldb", new()
///     {
///         Name = "my-database",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-n1-standard-1",
///             DeletionProtectionEnabled = false,
///         },
///         DeletionProtection = false,
///     });
///
///     var sqlClientCert = new Gcp.Sql.SslCert("sql_client_cert", new()
///     {
///         CommonName = "my-cert",
///         Instance = cloudsqldb.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cloudsqldb,
///         },
///     });
///
///     var sqldbUser = new Gcp.Sql.User("sqldb_user", new()
///     {
///         Name = "my-username",
///         Instance = cloudsqldb.Name,
///         Password = "my-password",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqlClientCert,
///         },
///     });
///
///     var cloudsqlprofile = new Gcp.DatabaseMigrationService.ConnectionProfile("cloudsqlprofile", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "my-fromprofileid",
///         DisplayName = "my-fromprofileid_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Mysql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileMysqlArgs
///         {
///             Host = cloudsqldb.IpAddresses.Apply(ipAddresses => ipAddresses[0].IpAddress),
///             Port = 3306,
///             Username = sqldbUser.Name,
///             Password = sqldbUser.Password,
///             Ssl = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileMysqlSslArgs
///             {
///                 ClientKey = sqlClientCert.PrivateKey,
///                 ClientCertificate = sqlClientCert.Cert,
///                 CaCertificate = sqlClientCert.ServerCaCert,
///                 Type = "SERVER_CLIENT",
///             },
///             CloudSqlId = "my-database",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqldbUser,
///         },
///     });
///
///     var cloudsqlprofileDestination = new Gcp.DatabaseMigrationService.ConnectionProfile("cloudsqlprofile_destination", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "my-toprofileid",
///         DisplayName = "my-toprofileid_displayname",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Cloudsql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileCloudsqlArgs
///         {
///             Settings = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileCloudsqlSettingsArgs
///             {
///                 DatabaseVersion = "MYSQL_5_7",
///                 UserLabels =
///                 {
///                     { "cloudfoo", "cloudbar" },
///                 },
///                 Tier = "db-n1-standard-1",
///                 Edition = "ENTERPRISE",
///                 StorageAutoResizeLimit = "0",
///                 ActivationPolicy = "ALWAYS",
///                 IpConfig = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileCloudsqlSettingsIpConfigArgs
///                 {
///                     EnableIpv4 = true,
///                     RequireSsl = true,
///                 },
///                 AutoStorageIncrease = true,
///                 DataDiskType = "PD_HDD",
///                 DataDiskSizeGb = "11",
///                 Zone = "us-central1-b",
///                 SourceId = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/connectionProfiles/my-fromprofileid",
///                 RootPassword = "testpasscloudsql",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cloudsqlprofile,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudsqldb, err := sql.NewDatabaseInstance(ctx, "cloudsqldb", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database"),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:                      pulumi.String("db-n1-standard-1"),
/// 				DeletionProtectionEnabled: pulumi.Bool(false),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqlClientCert, err := sql.NewSslCert(ctx, "sql_client_cert", &sql.SslCertArgs{
/// 			CommonName: pulumi.String("my-cert"),
/// 			Instance:   cloudsqldb.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cloudsqldb,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqldbUser, err := sql.NewUser(ctx, "sqldb_user", &sql.UserArgs{
/// 			Name:     pulumi.String("my-username"),
/// 			Instance: cloudsqldb.Name,
/// 			Password: pulumi.String("my-password"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqlClientCert,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudsqlprofile, err := databasemigrationservice.NewConnectionProfile(ctx, "cloudsqlprofile", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("my-fromprofileid"),
/// 			DisplayName:         pulumi.String("my-fromprofileid_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Mysql: &databasemigrationservice.ConnectionProfileMysqlArgs{
/// 				Host: cloudsqldb.IpAddresses.ApplyT(func(ipAddresses []sql.DatabaseInstanceIpAddress) (*string, error) {
/// 					return ipAddresses[0].IpAddress, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				Port:     pulumi.Int(3306),
/// 				Username: sqldbUser.Name,
/// 				Password: sqldbUser.Password,
/// 				Ssl: &databasemigrationservice.ConnectionProfileMysqlSslArgs{
/// 					ClientKey:         sqlClientCert.PrivateKey,
/// 					ClientCertificate: sqlClientCert.Cert,
/// 					CaCertificate:     sqlClientCert.ServerCaCert,
/// 					Type:              pulumi.String("SERVER_CLIENT"),
/// 				},
/// 				CloudSqlId: pulumi.String("my-database"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqldbUser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "cloudsqlprofile_destination", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("my-toprofileid"),
/// 			DisplayName:         pulumi.String("my-toprofileid_displayname"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Cloudsql: &databasemigrationservice.ConnectionProfileCloudsqlArgs{
/// 				Settings: &databasemigrationservice.ConnectionProfileCloudsqlSettingsArgs{
/// 					DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 					UserLabels: pulumi.StringMap{
/// 						"cloudfoo": pulumi.String("cloudbar"),
/// 					},
/// 					Tier:                   pulumi.String("db-n1-standard-1"),
/// 					Edition:                pulumi.String("ENTERPRISE"),
/// 					StorageAutoResizeLimit: pulumi.String("0"),
/// 					ActivationPolicy:       pulumi.String("ALWAYS"),
/// 					IpConfig: &databasemigrationservice.ConnectionProfileCloudsqlSettingsIpConfigArgs{
/// 						EnableIpv4: pulumi.Bool(true),
/// 						RequireSsl: pulumi.Bool(true),
/// 					},
/// 					AutoStorageIncrease: pulumi.Bool(true),
/// 					DataDiskType:        pulumi.String("PD_HDD"),
/// 					DataDiskSizeGb:      pulumi.String("11"),
/// 					Zone:                pulumi.String("us-central1-b"),
/// 					SourceId:            pulumi.Sprintf("projects/%v/locations/us-central1/connectionProfiles/my-fromprofileid", project.ProjectId),
/// 					RootPassword:        pulumi.String("testpasscloudsql"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cloudsqlprofile,
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
/// resource "gcp_sql_databaseinstance" "cloudsqldb" {
///   name             = "my-database"
///   database_version = "MYSQL_5_7"
///   settings = {
///     tier                        = "db-n1-standard-1"
///     deletion_protection_enabled = false
///   }
///   deletion_protection = false
/// }
/// resource "gcp_sql_sslcert" "sql_client_cert" {
///   depends_on  = [gcp_sql_databaseinstance.cloudsqldb]
///   common_name = "my-cert"
///   instance    = gcp_sql_databaseinstance.cloudsqldb.name
/// }
/// resource "gcp_sql_user" "sqldb_user" {
///   depends_on = [gcp_sql_sslcert.sql_client_cert]
///   name       = "my-username"
///   instance   = gcp_sql_databaseinstance.cloudsqldb.name
///   password   = "my-password"
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "cloudsqlprofile" {
///   depends_on            = [gcp_sql_user.sqldb_user]
///   location              = "us-central1"
///   connection_profile_id = "my-fromprofileid"
///   display_name          = "my-fromprofileid_display"
///   labels = {
///     "foo" = "bar"
///   }
///   mysql = {
///     host     = gcp_sql_databaseinstance.cloudsqldb.ip_addresses[0].ip_address
///     port     = 3306
///     username = gcp_sql_user.sqldb_user.name
///     password = gcp_sql_user.sqldb_user.password
///     ssl = {
///       client_key         = gcp_sql_sslcert.sql_client_cert.private_key
///       client_certificate = gcp_sql_sslcert.sql_client_cert.cert
///       ca_certificate     = gcp_sql_sslcert.sql_client_cert.server_ca_cert
///       type               = "SERVER_CLIENT"
///     }
///     cloud_sql_id = "my-database"
///   }
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "cloudsqlprofile_destination" {
///   depends_on            = [gcp_databasemigrationservice_connectionprofile.cloudsqlprofile]
///   location              = "us-central1"
///   connection_profile_id = "my-toprofileid"
///   display_name          = "my-toprofileid_displayname"
///   labels = {
///     "foo" = "bar"
///   }
///   cloudsql = {
///     settings = {
///       database_version = "MYSQL_5_7"
///       user_labels = {
///         "cloudfoo" = "cloudbar"
///       }
///       tier                      = "db-n1-standard-1"
///       edition                   = "ENTERPRISE"
///       storage_auto_resize_limit = "0"
///       activation_policy         = "ALWAYS"
///       ip_config = {
///         enable_ipv4 = true
///         require_ssl = true
///       }
///       auto_storage_increase = true
///       data_disk_type        = "PD_HDD"
///       data_disk_size_gb     = "11"
///       zone                  = "us-central1-b"
///       source_id             ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1/connectionProfiles/my-fromprofileid"
///       root_password         = "testpasscloudsql"
///     }
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
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileMysqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileMysqlSslArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileCloudsqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileCloudsqlSettingsArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileCloudsqlSettingsIpConfigArgs;
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
///         var cloudsqldb = new DatabaseInstance("cloudsqldb", DatabaseInstanceArgs.builder()
///             .name("my-database")
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-n1-standard-1")
///                 .deletionProtectionEnabled(false)
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var sqlClientCert = new SslCert("sqlClientCert", SslCertArgs.builder()
///             .commonName("my-cert")
///             .instance(cloudsqldb.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cloudsqldb)
///                 .build());
///
///         var sqldbUser = new User("sqldbUser", UserArgs.builder()
///             .name("my-username")
///             .instance(cloudsqldb.name())
///             .password("my-password")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqlClientCert)
///                 .build());
///
///         var cloudsqlprofile = new ConnectionProfile("cloudsqlprofile", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("my-fromprofileid")
///             .displayName("my-fromprofileid_display")
///             .labels(Map.of("foo", "bar"))
///             .mysql(ConnectionProfileMysqlArgs.builder()
///                 .host(cloudsqldb.ipAddresses().applyValue(_ipAddresses -> _ipAddresses.get(0).ipAddress()))
///                 .port(3306)
///                 .username(sqldbUser.name())
///                 .password(sqldbUser.password())
///                 .ssl(ConnectionProfileMysqlSslArgs.builder()
///                     .clientKey(sqlClientCert.privateKey())
///                     .clientCertificate(sqlClientCert.cert())
///                     .caCertificate(sqlClientCert.serverCaCert())
///                     .type("SERVER_CLIENT")
///                     .build())
///                 .cloudSqlId("my-database")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqldbUser)
///                 .build());
///
///         var cloudsqlprofileDestination = new ConnectionProfile("cloudsqlprofileDestination", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("my-toprofileid")
///             .displayName("my-toprofileid_displayname")
///             .labels(Map.of("foo", "bar"))
///             .cloudsql(ConnectionProfileCloudsqlArgs.builder()
///                 .settings(ConnectionProfileCloudsqlSettingsArgs.builder()
///                     .databaseVersion("MYSQL_5_7")
///                     .userLabels(Map.of("cloudfoo", "cloudbar"))
///                     .tier("db-n1-standard-1")
///                     .edition("ENTERPRISE")
///                     .storageAutoResizeLimit("0")
///                     .activationPolicy("ALWAYS")
///                     .ipConfig(ConnectionProfileCloudsqlSettingsIpConfigArgs.builder()
///                         .enableIpv4(true)
///                         .requireSsl(true)
///                         .build())
///                     .autoStorageIncrease(true)
///                     .dataDiskType("PD_HDD")
///                     .dataDiskSizeGb("11")
///                     .zone("us-central1-b")
///                     .sourceId(String.format("projects/%s/locations/us-central1/connectionProfiles/my-fromprofileid", project.projectId()))
///                     .rootPassword("testpasscloudsql")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cloudsqlprofile)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloudsqldb:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-n1-standard-1
///         deletionProtectionEnabled: false
///       deletionProtection: false
///   sqlClientCert:
///     type: gcp:sql:SslCert
///     name: sql_client_cert
///     properties:
///       commonName: my-cert
///       instance: ${cloudsqldb.name}
///     options:
///       dependsOn:
///         - ${cloudsqldb}
///   sqldbUser:
///     type: gcp:sql:User
///     name: sqldb_user
///     properties:
///       name: my-username
///       instance: ${cloudsqldb.name}
///       password: my-password
///     options:
///       dependsOn:
///         - ${sqlClientCert}
///   cloudsqlprofile:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: my-fromprofileid
///       displayName: my-fromprofileid_display
///       labels:
///         foo: bar
///       mysql:
///         host: ${cloudsqldb.ipAddresses[0].ipAddress}
///         port: 3306
///         username: ${sqldbUser.name}
///         password: ${sqldbUser.password}
///         ssl:
///           clientKey: ${sqlClientCert.privateKey}
///           clientCertificate: ${sqlClientCert.cert}
///           caCertificate: ${sqlClientCert.serverCaCert}
///           type: SERVER_CLIENT
///         cloudSqlId: my-database
///     options:
///       dependsOn:
///         - ${sqldbUser}
///   cloudsqlprofileDestination:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     name: cloudsqlprofile_destination
///     properties:
///       location: us-central1
///       connectionProfileId: my-toprofileid
///       displayName: my-toprofileid_displayname
///       labels:
///         foo: bar
///       cloudsql:
///         settings:
///           databaseVersion: MYSQL_5_7
///           userLabels:
///             cloudfoo: cloudbar
///           tier: db-n1-standard-1
///           edition: ENTERPRISE
///           storageAutoResizeLimit: '0'
///           activationPolicy: ALWAYS
///           ipConfig:
///             enableIpv4: true
///             requireSsl: true
///           autoStorageIncrease: true
///           dataDiskType: PD_HDD
///           dataDiskSizeGb: '11'
///           zone: us-central1-b
///           sourceId: projects/${project.projectId}/locations/us-central1/connectionProfiles/my-fromprofileid
///           rootPassword: testpasscloudsql
///     options:
///       dependsOn:
///         - ${cloudsqlprofile}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Database Migration Service Connection Profile Postgres
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const postgresqldb = new gcp.sql.DatabaseInstance("postgresqldb", {
///     name: "my-database",
///     databaseVersion: "POSTGRES_12",
///     settings: {
///         tier: "db-custom-2-13312",
///     },
///     deletionProtection: false,
/// });
/// const sqlClientCert = new gcp.sql.SslCert("sql_client_cert", {
///     commonName: "my-cert",
///     instance: postgresqldb.name,
/// }, {
///     dependsOn: [postgresqldb],
/// });
/// const sqldbUser = new gcp.sql.User("sqldb_user", {
///     name: "my-username",
///     instance: postgresqldb.name,
///     password: "my-password",
/// }, {
///     dependsOn: [sqlClientCert],
/// });
/// const postgresprofile = new gcp.databasemigrationservice.ConnectionProfile("postgresprofile", {
///     location: "us-central1",
///     connectionProfileId: "my-profileid",
///     displayName: "my-profileid_display",
///     labels: {
///         foo: "bar",
///     },
///     postgresql: {
///         host: postgresqldb.ipAddresses[0].ipAddress,
///         port: 5432,
///         username: sqldbUser.name,
///         password: sqldbUser.password,
///         ssl: {
///             clientKey: sqlClientCert.privateKey,
///             clientCertificate: sqlClientCert.cert,
///             caCertificate: sqlClientCert.serverCaCert,
///             type: "SERVER_CLIENT",
///         },
///         cloudSqlId: "my-database",
///     },
/// }, {
///     dependsOn: [sqldbUser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// postgresqldb = gcp.sql.DatabaseInstance("postgresqldb",
///     name="my-database",
///     database_version="POSTGRES_12",
///     settings={
///         "tier": "db-custom-2-13312",
///     },
///     deletion_protection=False)
/// sql_client_cert = gcp.sql.SslCert("sql_client_cert",
///     common_name="my-cert",
///     instance=postgresqldb.name,
///     opts = pulumi.ResourceOptions(depends_on=[postgresqldb]))
/// sqldb_user = gcp.sql.User("sqldb_user",
///     name="my-username",
///     instance=postgresqldb.name,
///     password="my-password",
///     opts = pulumi.ResourceOptions(depends_on=[sql_client_cert]))
/// postgresprofile = gcp.databasemigrationservice.ConnectionProfile("postgresprofile",
///     location="us-central1",
///     connection_profile_id="my-profileid",
///     display_name="my-profileid_display",
///     labels={
///         "foo": "bar",
///     },
///     postgresql={
///         "host": postgresqldb.ip_addresses[0].ip_address,
///         "port": 5432,
///         "username": sqldb_user.name,
///         "password": sqldb_user.password,
///         "ssl": {
///             "client_key": sql_client_cert.private_key,
///             "client_certificate": sql_client_cert.cert,
///             "ca_certificate": sql_client_cert.server_ca_cert,
///             "type": "SERVER_CLIENT",
///         },
///         "cloud_sql_id": "my-database",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[sqldb_user]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgresqldb = new Gcp.Sql.DatabaseInstance("postgresqldb", new()
///     {
///         Name = "my-database",
///         DatabaseVersion = "POSTGRES_12",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-2-13312",
///         },
///         DeletionProtection = false,
///     });
///
///     var sqlClientCert = new Gcp.Sql.SslCert("sql_client_cert", new()
///     {
///         CommonName = "my-cert",
///         Instance = postgresqldb.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             postgresqldb,
///         },
///     });
///
///     var sqldbUser = new Gcp.Sql.User("sqldb_user", new()
///     {
///         Name = "my-username",
///         Instance = postgresqldb.Name,
///         Password = "my-password",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqlClientCert,
///         },
///     });
///
///     var postgresprofile = new Gcp.DatabaseMigrationService.ConnectionProfile("postgresprofile", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "my-profileid",
///         DisplayName = "my-profileid_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
///         {
///             Host = postgresqldb.IpAddresses.Apply(ipAddresses => ipAddresses[0].IpAddress),
///             Port = 5432,
///             Username = sqldbUser.Name,
///             Password = sqldbUser.Password,
///             Ssl = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlSslArgs
///             {
///                 ClientKey = sqlClientCert.PrivateKey,
///                 ClientCertificate = sqlClientCert.Cert,
///                 CaCertificate = sqlClientCert.ServerCaCert,
///                 Type = "SERVER_CLIENT",
///             },
///             CloudSqlId = "my-database",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqldbUser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgresqldb, err := sql.NewDatabaseInstance(ctx, "postgresqldb", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_12"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-custom-2-13312"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqlClientCert, err := sql.NewSslCert(ctx, "sql_client_cert", &sql.SslCertArgs{
/// 			CommonName: pulumi.String("my-cert"),
/// 			Instance:   postgresqldb.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			postgresqldb,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqldbUser, err := sql.NewUser(ctx, "sqldb_user", &sql.UserArgs{
/// 			Name:     pulumi.String("my-username"),
/// 			Instance: postgresqldb.Name,
/// 			Password: pulumi.String("my-password"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqlClientCert,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "postgresprofile", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("my-profileid"),
/// 			DisplayName:         pulumi.String("my-profileid_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// 				Host: postgresqldb.IpAddresses.ApplyT(func(ipAddresses []sql.DatabaseInstanceIpAddress) (*string, error) {
/// 					return ipAddresses[0].IpAddress, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				Port:     pulumi.Int(5432),
/// 				Username: sqldbUser.Name,
/// 				Password: sqldbUser.Password,
/// 				Ssl: &databasemigrationservice.ConnectionProfilePostgresqlSslArgs{
/// 					ClientKey:         sqlClientCert.PrivateKey,
/// 					ClientCertificate: sqlClientCert.Cert,
/// 					CaCertificate:     sqlClientCert.ServerCaCert,
/// 					Type:              pulumi.String("SERVER_CLIENT"),
/// 				},
/// 				CloudSqlId: pulumi.String("my-database"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqldbUser,
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
/// resource "gcp_sql_databaseinstance" "postgresqldb" {
///   name             = "my-database"
///   database_version = "POSTGRES_12"
///   settings = {
///     tier = "db-custom-2-13312"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_sql_sslcert" "sql_client_cert" {
///   depends_on  = [gcp_sql_databaseinstance.postgresqldb]
///   common_name = "my-cert"
///   instance    = gcp_sql_databaseinstance.postgresqldb.name
/// }
/// resource "gcp_sql_user" "sqldb_user" {
///   depends_on = [gcp_sql_sslcert.sql_client_cert]
///   name       = "my-username"
///   instance   = gcp_sql_databaseinstance.postgresqldb.name
///   password   = "my-password"
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "postgresprofile" {
///   depends_on            = [gcp_sql_user.sqldb_user]
///   location              = "us-central1"
///   connection_profile_id = "my-profileid"
///   display_name          = "my-profileid_display"
///   labels = {
///     "foo" = "bar"
///   }
///   postgresql = {
///     host     = gcp_sql_databaseinstance.postgresqldb.ip_addresses[0].ip_address
///     port     = 5432
///     username = gcp_sql_user.sqldb_user.name
///     password = gcp_sql_user.sqldb_user.password
///     ssl = {
///       client_key         = gcp_sql_sslcert.sql_client_cert.private_key
///       client_certificate = gcp_sql_sslcert.sql_client_cert.cert
///       ca_certificate     = gcp_sql_sslcert.sql_client_cert.server_ca_cert
///       type               = "SERVER_CLIENT"
///     }
///     cloud_sql_id = "my-database"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlSslArgs;
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
///         var postgresqldb = new DatabaseInstance("postgresqldb", DatabaseInstanceArgs.builder()
///             .name("my-database")
///             .databaseVersion("POSTGRES_12")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-2-13312")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var sqlClientCert = new SslCert("sqlClientCert", SslCertArgs.builder()
///             .commonName("my-cert")
///             .instance(postgresqldb.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(postgresqldb)
///                 .build());
///
///         var sqldbUser = new User("sqldbUser", UserArgs.builder()
///             .name("my-username")
///             .instance(postgresqldb.name())
///             .password("my-password")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqlClientCert)
///                 .build());
///
///         var postgresprofile = new ConnectionProfile("postgresprofile", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("my-profileid")
///             .displayName("my-profileid_display")
///             .labels(Map.of("foo", "bar"))
///             .postgresql(ConnectionProfilePostgresqlArgs.builder()
///                 .host(postgresqldb.ipAddresses().applyValue(_ipAddresses -> _ipAddresses.get(0).ipAddress()))
///                 .port(5432)
///                 .username(sqldbUser.name())
///                 .password(sqldbUser.password())
///                 .ssl(ConnectionProfilePostgresqlSslArgs.builder()
///                     .clientKey(sqlClientCert.privateKey())
///                     .clientCertificate(sqlClientCert.cert())
///                     .caCertificate(sqlClientCert.serverCaCert())
///                     .type("SERVER_CLIENT")
///                     .build())
///                 .cloudSqlId("my-database")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqldbUser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   postgresqldb:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database
///       databaseVersion: POSTGRES_12
///       settings:
///         tier: db-custom-2-13312
///       deletionProtection: false
///   sqlClientCert:
///     type: gcp:sql:SslCert
///     name: sql_client_cert
///     properties:
///       commonName: my-cert
///       instance: ${postgresqldb.name}
///     options:
///       dependsOn:
///         - ${postgresqldb}
///   sqldbUser:
///     type: gcp:sql:User
///     name: sqldb_user
///     properties:
///       name: my-username
///       instance: ${postgresqldb.name}
///       password: my-password
///     options:
///       dependsOn:
///         - ${sqlClientCert}
///   postgresprofile:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: my-profileid
///       displayName: my-profileid_display
///       labels:
///         foo: bar
///       postgresql:
///         host: ${postgresqldb.ipAddresses[0].ipAddress}
///         port: 5432
///         username: ${sqldbUser.name}
///         password: ${sqldbUser.password}
///         ssl:
///           clientKey: ${sqlClientCert.privateKey}
///           clientCertificate: ${sqlClientCert.cert}
///           caCertificate: ${sqlClientCert.serverCaCert}
///           type: SERVER_CLIENT
///         cloudSqlId: my-database
///     options:
///       dependsOn:
///         - ${sqldbUser}
/// ```
///
/// ### Database Migration Service Connection Profile Postgres No Ssl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const postgresqldb = new gcp.sql.DatabaseInstance("postgresqldb", {
///     name: "my-database",
///     databaseVersion: "POSTGRES_12",
///     settings: {
///         tier: "db-custom-2-13312",
///     },
///     deletionProtection: false,
/// });
/// const sqlClientCert = new gcp.sql.SslCert("sql_client_cert", {
///     commonName: "my-cert",
///     instance: postgresqldb.name,
/// }, {
///     dependsOn: [postgresqldb],
/// });
/// const sqldbUser = new gcp.sql.User("sqldb_user", {
///     name: "my-username",
///     instance: postgresqldb.name,
///     password: "my-password",
/// }, {
///     dependsOn: [sqlClientCert],
/// });
/// const postgresprofile = new gcp.databasemigrationservice.ConnectionProfile("postgresprofile", {
///     location: "us-central1",
///     connectionProfileId: "my-profileid",
///     displayName: "my-profileid_display",
///     labels: {
///         foo: "bar",
///     },
///     postgresql: {
///         host: postgresqldb.ipAddresses[0].ipAddress,
///         port: 5432,
///         username: sqldbUser.name,
///         password: sqldbUser.password,
///         ssl: {
///             type: "NONE",
///         },
///         cloudSqlId: "my-database",
///     },
/// }, {
///     dependsOn: [sqldbUser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// postgresqldb = gcp.sql.DatabaseInstance("postgresqldb",
///     name="my-database",
///     database_version="POSTGRES_12",
///     settings={
///         "tier": "db-custom-2-13312",
///     },
///     deletion_protection=False)
/// sql_client_cert = gcp.sql.SslCert("sql_client_cert",
///     common_name="my-cert",
///     instance=postgresqldb.name,
///     opts = pulumi.ResourceOptions(depends_on=[postgresqldb]))
/// sqldb_user = gcp.sql.User("sqldb_user",
///     name="my-username",
///     instance=postgresqldb.name,
///     password="my-password",
///     opts = pulumi.ResourceOptions(depends_on=[sql_client_cert]))
/// postgresprofile = gcp.databasemigrationservice.ConnectionProfile("postgresprofile",
///     location="us-central1",
///     connection_profile_id="my-profileid",
///     display_name="my-profileid_display",
///     labels={
///         "foo": "bar",
///     },
///     postgresql={
///         "host": postgresqldb.ip_addresses[0].ip_address,
///         "port": 5432,
///         "username": sqldb_user.name,
///         "password": sqldb_user.password,
///         "ssl": {
///             "type": "NONE",
///         },
///         "cloud_sql_id": "my-database",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[sqldb_user]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgresqldb = new Gcp.Sql.DatabaseInstance("postgresqldb", new()
///     {
///         Name = "my-database",
///         DatabaseVersion = "POSTGRES_12",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-2-13312",
///         },
///         DeletionProtection = false,
///     });
///
///     var sqlClientCert = new Gcp.Sql.SslCert("sql_client_cert", new()
///     {
///         CommonName = "my-cert",
///         Instance = postgresqldb.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             postgresqldb,
///         },
///     });
///
///     var sqldbUser = new Gcp.Sql.User("sqldb_user", new()
///     {
///         Name = "my-username",
///         Instance = postgresqldb.Name,
///         Password = "my-password",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqlClientCert,
///         },
///     });
///
///     var postgresprofile = new Gcp.DatabaseMigrationService.ConnectionProfile("postgresprofile", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "my-profileid",
///         DisplayName = "my-profileid_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
///         {
///             Host = postgresqldb.IpAddresses.Apply(ipAddresses => ipAddresses[0].IpAddress),
///             Port = 5432,
///             Username = sqldbUser.Name,
///             Password = sqldbUser.Password,
///             Ssl = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlSslArgs
///             {
///                 Type = "NONE",
///             },
///             CloudSqlId = "my-database",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqldbUser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgresqldb, err := sql.NewDatabaseInstance(ctx, "postgresqldb", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_12"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-custom-2-13312"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqlClientCert, err := sql.NewSslCert(ctx, "sql_client_cert", &sql.SslCertArgs{
/// 			CommonName: pulumi.String("my-cert"),
/// 			Instance:   postgresqldb.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			postgresqldb,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqldbUser, err := sql.NewUser(ctx, "sqldb_user", &sql.UserArgs{
/// 			Name:     pulumi.String("my-username"),
/// 			Instance: postgresqldb.Name,
/// 			Password: pulumi.String("my-password"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqlClientCert,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "postgresprofile", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("my-profileid"),
/// 			DisplayName:         pulumi.String("my-profileid_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// 				Host: postgresqldb.IpAddresses.ApplyT(func(ipAddresses []sql.DatabaseInstanceIpAddress) (*string, error) {
/// 					return ipAddresses[0].IpAddress, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				Port:     pulumi.Int(5432),
/// 				Username: sqldbUser.Name,
/// 				Password: sqldbUser.Password,
/// 				Ssl: &databasemigrationservice.ConnectionProfilePostgresqlSslArgs{
/// 					Type: pulumi.String("NONE"),
/// 				},
/// 				CloudSqlId: pulumi.String("my-database"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqldbUser,
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
/// resource "gcp_sql_databaseinstance" "postgresqldb" {
///   name             = "my-database"
///   database_version = "POSTGRES_12"
///   settings = {
///     tier = "db-custom-2-13312"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_sql_sslcert" "sql_client_cert" {
///   depends_on  = [gcp_sql_databaseinstance.postgresqldb]
///   common_name = "my-cert"
///   instance    = gcp_sql_databaseinstance.postgresqldb.name
/// }
/// resource "gcp_sql_user" "sqldb_user" {
///   depends_on = [gcp_sql_sslcert.sql_client_cert]
///   name       = "my-username"
///   instance   = gcp_sql_databaseinstance.postgresqldb.name
///   password   = "my-password"
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "postgresprofile" {
///   depends_on            = [gcp_sql_user.sqldb_user]
///   location              = "us-central1"
///   connection_profile_id = "my-profileid"
///   display_name          = "my-profileid_display"
///   labels = {
///     "foo" = "bar"
///   }
///   postgresql = {
///     host     = gcp_sql_databaseinstance.postgresqldb.ip_addresses[0].ip_address
///     port     = 5432
///     username = gcp_sql_user.sqldb_user.name
///     password = gcp_sql_user.sqldb_user.password
///     ssl = {
///       type = "NONE"
///     }
///     cloud_sql_id = "my-database"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlSslArgs;
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
///         var postgresqldb = new DatabaseInstance("postgresqldb", DatabaseInstanceArgs.builder()
///             .name("my-database")
///             .databaseVersion("POSTGRES_12")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-2-13312")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var sqlClientCert = new SslCert("sqlClientCert", SslCertArgs.builder()
///             .commonName("my-cert")
///             .instance(postgresqldb.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(postgresqldb)
///                 .build());
///
///         var sqldbUser = new User("sqldbUser", UserArgs.builder()
///             .name("my-username")
///             .instance(postgresqldb.name())
///             .password("my-password")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqlClientCert)
///                 .build());
///
///         var postgresprofile = new ConnectionProfile("postgresprofile", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("my-profileid")
///             .displayName("my-profileid_display")
///             .labels(Map.of("foo", "bar"))
///             .postgresql(ConnectionProfilePostgresqlArgs.builder()
///                 .host(postgresqldb.ipAddresses().applyValue(_ipAddresses -> _ipAddresses.get(0).ipAddress()))
///                 .port(5432)
///                 .username(sqldbUser.name())
///                 .password(sqldbUser.password())
///                 .ssl(ConnectionProfilePostgresqlSslArgs.builder()
///                     .type("NONE")
///                     .build())
///                 .cloudSqlId("my-database")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqldbUser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   postgresqldb:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database
///       databaseVersion: POSTGRES_12
///       settings:
///         tier: db-custom-2-13312
///       deletionProtection: false
///   sqlClientCert:
///     type: gcp:sql:SslCert
///     name: sql_client_cert
///     properties:
///       commonName: my-cert
///       instance: ${postgresqldb.name}
///     options:
///       dependsOn:
///         - ${postgresqldb}
///   sqldbUser:
///     type: gcp:sql:User
///     name: sqldb_user
///     properties:
///       name: my-username
///       instance: ${postgresqldb.name}
///       password: my-password
///     options:
///       dependsOn:
///         - ${sqlClientCert}
///   postgresprofile:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: my-profileid
///       displayName: my-profileid_display
///       labels:
///         foo: bar
///       postgresql:
///         host: ${postgresqldb.ipAddresses[0].ipAddress}
///         port: 5432
///         username: ${sqldbUser.name}
///         password: ${sqldbUser.password}
///         ssl:
///           type: NONE
///         cloudSqlId: my-database
///     options:
///       dependsOn:
///         - ${sqldbUser}
/// ```
///
/// ### Database Migration Service Connection Profile Postgres Required Ssl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const postgresqldb = new gcp.sql.DatabaseInstance("postgresqldb", {
///     name: "my-database",
///     databaseVersion: "POSTGRES_12",
///     settings: {
///         tier: "db-custom-2-13312",
///     },
///     deletionProtection: false,
/// });
/// const sqlClientCert = new gcp.sql.SslCert("sql_client_cert", {
///     commonName: "my-cert",
///     instance: postgresqldb.name,
/// }, {
///     dependsOn: [postgresqldb],
/// });
/// const sqldbUser = new gcp.sql.User("sqldb_user", {
///     name: "my-username",
///     instance: postgresqldb.name,
///     password: "my-password",
/// }, {
///     dependsOn: [sqlClientCert],
/// });
/// const postgresprofile = new gcp.databasemigrationservice.ConnectionProfile("postgresprofile", {
///     location: "us-central1",
///     connectionProfileId: "my-profileid",
///     displayName: "my-profileid_display",
///     labels: {
///         foo: "bar",
///     },
///     postgresql: {
///         host: postgresqldb.ipAddresses[0].ipAddress,
///         port: 5432,
///         username: sqldbUser.name,
///         password: sqldbUser.password,
///         ssl: {
///             type: "REQUIRED",
///         },
///         cloudSqlId: "my-database",
///     },
/// }, {
///     dependsOn: [sqldbUser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// postgresqldb = gcp.sql.DatabaseInstance("postgresqldb",
///     name="my-database",
///     database_version="POSTGRES_12",
///     settings={
///         "tier": "db-custom-2-13312",
///     },
///     deletion_protection=False)
/// sql_client_cert = gcp.sql.SslCert("sql_client_cert",
///     common_name="my-cert",
///     instance=postgresqldb.name,
///     opts = pulumi.ResourceOptions(depends_on=[postgresqldb]))
/// sqldb_user = gcp.sql.User("sqldb_user",
///     name="my-username",
///     instance=postgresqldb.name,
///     password="my-password",
///     opts = pulumi.ResourceOptions(depends_on=[sql_client_cert]))
/// postgresprofile = gcp.databasemigrationservice.ConnectionProfile("postgresprofile",
///     location="us-central1",
///     connection_profile_id="my-profileid",
///     display_name="my-profileid_display",
///     labels={
///         "foo": "bar",
///     },
///     postgresql={
///         "host": postgresqldb.ip_addresses[0].ip_address,
///         "port": 5432,
///         "username": sqldb_user.name,
///         "password": sqldb_user.password,
///         "ssl": {
///             "type": "REQUIRED",
///         },
///         "cloud_sql_id": "my-database",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[sqldb_user]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgresqldb = new Gcp.Sql.DatabaseInstance("postgresqldb", new()
///     {
///         Name = "my-database",
///         DatabaseVersion = "POSTGRES_12",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-2-13312",
///         },
///         DeletionProtection = false,
///     });
///
///     var sqlClientCert = new Gcp.Sql.SslCert("sql_client_cert", new()
///     {
///         CommonName = "my-cert",
///         Instance = postgresqldb.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             postgresqldb,
///         },
///     });
///
///     var sqldbUser = new Gcp.Sql.User("sqldb_user", new()
///     {
///         Name = "my-username",
///         Instance = postgresqldb.Name,
///         Password = "my-password",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqlClientCert,
///         },
///     });
///
///     var postgresprofile = new Gcp.DatabaseMigrationService.ConnectionProfile("postgresprofile", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "my-profileid",
///         DisplayName = "my-profileid_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
///         {
///             Host = postgresqldb.IpAddresses.Apply(ipAddresses => ipAddresses[0].IpAddress),
///             Port = 5432,
///             Username = sqldbUser.Name,
///             Password = sqldbUser.Password,
///             Ssl = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlSslArgs
///             {
///                 Type = "REQUIRED",
///             },
///             CloudSqlId = "my-database",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sqldbUser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgresqldb, err := sql.NewDatabaseInstance(ctx, "postgresqldb", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_12"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-custom-2-13312"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqlClientCert, err := sql.NewSslCert(ctx, "sql_client_cert", &sql.SslCertArgs{
/// 			CommonName: pulumi.String("my-cert"),
/// 			Instance:   postgresqldb.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			postgresqldb,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqldbUser, err := sql.NewUser(ctx, "sqldb_user", &sql.UserArgs{
/// 			Name:     pulumi.String("my-username"),
/// 			Instance: postgresqldb.Name,
/// 			Password: pulumi.String("my-password"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqlClientCert,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "postgresprofile", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("my-profileid"),
/// 			DisplayName:         pulumi.String("my-profileid_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// 				Host: postgresqldb.IpAddresses.ApplyT(func(ipAddresses []sql.DatabaseInstanceIpAddress) (*string, error) {
/// 					return ipAddresses[0].IpAddress, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				Port:     pulumi.Int(5432),
/// 				Username: sqldbUser.Name,
/// 				Password: sqldbUser.Password,
/// 				Ssl: &databasemigrationservice.ConnectionProfilePostgresqlSslArgs{
/// 					Type: pulumi.String("REQUIRED"),
/// 				},
/// 				CloudSqlId: pulumi.String("my-database"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sqldbUser,
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
/// resource "gcp_sql_databaseinstance" "postgresqldb" {
///   name             = "my-database"
///   database_version = "POSTGRES_12"
///   settings = {
///     tier = "db-custom-2-13312"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_sql_sslcert" "sql_client_cert" {
///   depends_on  = [gcp_sql_databaseinstance.postgresqldb]
///   common_name = "my-cert"
///   instance    = gcp_sql_databaseinstance.postgresqldb.name
/// }
/// resource "gcp_sql_user" "sqldb_user" {
///   depends_on = [gcp_sql_sslcert.sql_client_cert]
///   name       = "my-username"
///   instance   = gcp_sql_databaseinstance.postgresqldb.name
///   password   = "my-password"
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "postgresprofile" {
///   depends_on            = [gcp_sql_user.sqldb_user]
///   location              = "us-central1"
///   connection_profile_id = "my-profileid"
///   display_name          = "my-profileid_display"
///   labels = {
///     "foo" = "bar"
///   }
///   postgresql = {
///     host     = gcp_sql_databaseinstance.postgresqldb.ip_addresses[0].ip_address
///     port     = 5432
///     username = gcp_sql_user.sqldb_user.name
///     password = gcp_sql_user.sqldb_user.password
///     ssl = {
///       type = "REQUIRED"
///     }
///     cloud_sql_id = "my-database"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlSslArgs;
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
///         var postgresqldb = new DatabaseInstance("postgresqldb", DatabaseInstanceArgs.builder()
///             .name("my-database")
///             .databaseVersion("POSTGRES_12")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-2-13312")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var sqlClientCert = new SslCert("sqlClientCert", SslCertArgs.builder()
///             .commonName("my-cert")
///             .instance(postgresqldb.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(postgresqldb)
///                 .build());
///
///         var sqldbUser = new User("sqldbUser", UserArgs.builder()
///             .name("my-username")
///             .instance(postgresqldb.name())
///             .password("my-password")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqlClientCert)
///                 .build());
///
///         var postgresprofile = new ConnectionProfile("postgresprofile", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("my-profileid")
///             .displayName("my-profileid_display")
///             .labels(Map.of("foo", "bar"))
///             .postgresql(ConnectionProfilePostgresqlArgs.builder()
///                 .host(postgresqldb.ipAddresses().applyValue(_ipAddresses -> _ipAddresses.get(0).ipAddress()))
///                 .port(5432)
///                 .username(sqldbUser.name())
///                 .password(sqldbUser.password())
///                 .ssl(ConnectionProfilePostgresqlSslArgs.builder()
///                     .type("REQUIRED")
///                     .build())
///                 .cloudSqlId("my-database")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sqldbUser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   postgresqldb:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database
///       databaseVersion: POSTGRES_12
///       settings:
///         tier: db-custom-2-13312
///       deletionProtection: false
///   sqlClientCert:
///     type: gcp:sql:SslCert
///     name: sql_client_cert
///     properties:
///       commonName: my-cert
///       instance: ${postgresqldb.name}
///     options:
///       dependsOn:
///         - ${postgresqldb}
///   sqldbUser:
///     type: gcp:sql:User
///     name: sqldb_user
///     properties:
///       name: my-username
///       instance: ${postgresqldb.name}
///       password: my-password
///     options:
///       dependsOn:
///         - ${sqlClientCert}
///   postgresprofile:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: my-profileid
///       displayName: my-profileid_display
///       labels:
///         foo: bar
///       postgresql:
///         host: ${postgresqldb.ipAddresses[0].ipAddress}
///         port: 5432
///         username: ${sqldbUser.name}
///         password: ${sqldbUser.password}
///         ssl:
///           type: REQUIRED
///         cloudSqlId: my-database
///     options:
///       dependsOn:
///         - ${sqldbUser}
/// ```
///
/// ### Database Migration Service Connection Profile Oracle
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oracleprofile = new gcp.databasemigrationservice.ConnectionProfile("oracleprofile", {
///     location: "us-central1",
///     connectionProfileId: "my-profileid",
///     displayName: "my-profileid_display",
///     labels: {
///         foo: "bar",
///     },
///     oracle: {
///         host: "host",
///         port: 1521,
///         username: "username",
///         password: "password",
///         databaseService: "dbprovider",
///         staticServiceIpConnectivity: {},
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// oracleprofile = gcp.databasemigrationservice.ConnectionProfile("oracleprofile",
///     location="us-central1",
///     connection_profile_id="my-profileid",
///     display_name="my-profileid_display",
///     labels={
///         "foo": "bar",
///     },
///     oracle={
///         "host": "host",
///         "port": 1521,
///         "username": "username",
///         "password": "password",
///         "database_service": "dbprovider",
///         "static_service_ip_connectivity": {},
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
///     var oracleprofile = new Gcp.DatabaseMigrationService.ConnectionProfile("oracleprofile", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "my-profileid",
///         DisplayName = "my-profileid_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Oracle = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileOracleArgs
///         {
///             Host = "host",
///             Port = 1521,
///             Username = "username",
///             Password = "password",
///             DatabaseService = "dbprovider",
///             StaticServiceIpConnectivity = null,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databasemigrationservice.NewConnectionProfile(ctx, "oracleprofile", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("my-profileid"),
/// 			DisplayName:         pulumi.String("my-profileid_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Oracle: &databasemigrationservice.ConnectionProfileOracleArgs{
/// 				Host:                        pulumi.String("host"),
/// 				Port:                        pulumi.Int(1521),
/// 				Username:                    pulumi.String("username"),
/// 				Password:                    pulumi.String("password"),
/// 				DatabaseService:             pulumi.String("dbprovider"),
/// 				StaticServiceIpConnectivity: &databasemigrationservice.ConnectionProfileOracleStaticServiceIpConnectivityArgs{},
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
/// resource "gcp_databasemigrationservice_connectionprofile" "oracleprofile" {
///   location              = "us-central1"
///   connection_profile_id = "my-profileid"
///   display_name          = "my-profileid_display"
///   labels = {
///     "foo" = "bar"
///   }
///   oracle = {
///     host                           = "host"
///     port                           = 1521
///     username                       = "username"
///     password                       = "password"
///     database_service               = "dbprovider"
///     static_service_ip_connectivity = {}
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileOracleArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileOracleStaticServiceIpConnectivityArgs;
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
///         var oracleprofile = new ConnectionProfile("oracleprofile", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("my-profileid")
///             .displayName("my-profileid_display")
///             .labels(Map.of("foo", "bar"))
///             .oracle(ConnectionProfileOracleArgs.builder()
///                 .host("host")
///                 .port(1521)
///                 .username("username")
///                 .password("password")
///                 .databaseService("dbprovider")
///                 .staticServiceIpConnectivity(ConnectionProfileOracleStaticServiceIpConnectivityArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   oracleprofile:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: my-profileid
///       displayName: my-profileid_display
///       labels:
///         foo: bar
///       oracle:
///         host: host
///         port: 1521
///         username: username
///         password: password
///         databaseService: dbprovider
///         staticServiceIpConnectivity: {}
/// ```
///
/// ### Database Migration Service Connection Profile Alloydb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.compute.Network("default", {name: "vpc-network"});
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "private-ip-alloc",
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 16,
///     network: _default.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
///     network: _default.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const alloydbprofile = new gcp.databasemigrationservice.ConnectionProfile("alloydbprofile", {
///     location: "us-central1",
///     connectionProfileId: "my-profileid",
///     displayName: "my-profileid_display",
///     labels: {
///         foo: "bar",
///     },
///     alloydb: {
///         clusterId: "tf-test-dbmsalloycluster_69391",
///         settings: {
///             initialUser: {
///                 user: "alloyuser_8270",
///                 password: "alloypass_41150",
///             },
///             vpcNetwork: _default.id,
///             labels: {
///                 alloyfoo: "alloybar",
///             },
///             primaryInstanceSettings: {
///                 id: "priminstid",
///                 machineConfig: {
///                     cpuCount: 2,
///                 },
///                 databaseFlags: {},
///                 labels: {
///                     alloysinstfoo: "allowinstbar",
///                 },
///             },
///         },
///     },
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.compute.Network("default", name="vpc-network")
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="private-ip-alloc",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=16,
///     network=default.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
///     network=default.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name])
/// alloydbprofile = gcp.databasemigrationservice.ConnectionProfile("alloydbprofile",
///     location="us-central1",
///     connection_profile_id="my-profileid",
///     display_name="my-profileid_display",
///     labels={
///         "foo": "bar",
///     },
///     alloydb={
///         "cluster_id": "tf-test-dbmsalloycluster_69391",
///         "settings": {
///             "initial_user": {
///                 "user": "alloyuser_8270",
///                 "password": "alloypass_41150",
///             },
///             "vpc_network": default.id,
///             "labels": {
///                 "alloyfoo": "alloybar",
///             },
///             "primary_instance_settings": {
///                 "id": "priminstid",
///                 "machine_config": {
///                     "cpu_count": 2,
///                 },
///                 "database_flags": {},
///                 "labels": {
///                     "alloysinstfoo": "allowinstbar",
///                 },
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "vpc-network",
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "private-ip-alloc",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 16,
///         Network = @default.Id,
///     });
///
///     var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
///     {
///         Network = @default.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     });
///
///     var alloydbprofile = new Gcp.DatabaseMigrationService.ConnectionProfile("alloydbprofile", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "my-profileid",
///         DisplayName = "my-profileid_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Alloydb = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileAlloydbArgs
///         {
///             ClusterId = "tf-test-dbmsalloycluster_69391",
///             Settings = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileAlloydbSettingsArgs
///             {
///                 InitialUser = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileAlloydbSettingsInitialUserArgs
///                 {
///                     User = "alloyuser_8270",
///                     Password = "alloypass_41150",
///                 },
///                 VpcNetwork = @default.Id,
///                 Labels =
///                 {
///                     { "alloyfoo", "alloybar" },
///                 },
///                 PrimaryInstanceSettings = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsArgs
///                 {
///                     Id = "priminstid",
///                     MachineConfig = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfigArgs
///                     {
///                         CpuCount = 2,
///                     },
///                     DatabaseFlags = null,
///                     Labels =
///                     {
///                         { "alloysinstfoo", "allowinstbar" },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("vpc-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("private-ip-alloc"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "alloydbprofile", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("my-profileid"),
/// 			DisplayName:         pulumi.String("my-profileid_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Alloydb: &databasemigrationservice.ConnectionProfileAlloydbArgs{
/// 				ClusterId: pulumi.String("tf-test-dbmsalloycluster_69391"),
/// 				Settings: &databasemigrationservice.ConnectionProfileAlloydbSettingsArgs{
/// 					InitialUser: &databasemigrationservice.ConnectionProfileAlloydbSettingsInitialUserArgs{
/// 						User:     pulumi.String("alloyuser_8270"),
/// 						Password: pulumi.String("alloypass_41150"),
/// 					},
/// 					VpcNetwork: _default.ID().ToIDOutput().ToStringOutput(),
/// 					Labels: pulumi.StringMap{
/// 						"alloyfoo": pulumi.String("alloybar"),
/// 					},
/// 					PrimaryInstanceSettings: &databasemigrationservice.ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsArgs{
/// 						Id: pulumi.String("priminstid"),
/// 						MachineConfig: &databasemigrationservice.ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfigArgs{
/// 							CpuCount: pulumi.Int(2),
/// 						},
/// 						DatabaseFlags: pulumi.StringMap{},
/// 						Labels: pulumi.StringMap{
/// 							"alloysinstfoo": pulumi.String("allowinstbar"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
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
/// resource "gcp_compute_network" "default" {
///   name = "vpc-network"
/// }
/// resource "gcp_compute_globaladdress" "private_ip_alloc" {
///   name          = "private-ip-alloc"
///   address_type  = "INTERNAL"
///   purpose       = "VPC_PEERING"
///   prefix_length = 16
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_servicenetworking_connection" "vpc_connection" {
///   network                 = gcp_compute_network.default.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.private_ip_alloc.name]
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "alloydbprofile" {
///   depends_on            = [gcp_servicenetworking_connection.vpc_connection]
///   location              = "us-central1"
///   connection_profile_id = "my-profileid"
///   display_name          = "my-profileid_display"
///   labels = {
///     "foo" = "bar"
///   }
///   alloydb = {
///     cluster_id = "tf-test-dbmsalloycluster_69391"
///     settings = {
///       initial_user = {
///         user     = "alloyuser_8270"
///         password = "alloypass_41150"
///       }
///       vpc_network = gcp_compute_network.default.id
///       labels = {
///         "alloyfoo" = "alloybar"
///       }
///       primary_instance_settings = {
///         id = "priminstid"
///         machine_config = {
///           cpu_count = 2
///         }
///         database_flags = {}
///         labels = {
///           "alloysinstfoo" = "allowinstbar"
///         }
///       }
///     }
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileAlloydbArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileAlloydbSettingsArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileAlloydbSettingsInitialUserArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfigArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("vpc-network")
///             .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("private-ip-alloc")
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(16)
///             .network(default_.id())
///             .build());
///
///         var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
///             .network(default_.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build());
///
///         var alloydbprofile = new ConnectionProfile("alloydbprofile", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("my-profileid")
///             .displayName("my-profileid_display")
///             .labels(Map.of("foo", "bar"))
///             .alloydb(ConnectionProfileAlloydbArgs.builder()
///                 .clusterId("tf-test-dbmsalloycluster_69391")
///                 .settings(ConnectionProfileAlloydbSettingsArgs.builder()
///                     .initialUser(ConnectionProfileAlloydbSettingsInitialUserArgs.builder()
///                         .user("alloyuser_8270")
///                         .password("alloypass_41150")
///                         .build())
///                     .vpcNetwork(default_.id())
///                     .labels(Map.of("alloyfoo", "alloybar"))
///                     .primaryInstanceSettings(ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsArgs.builder()
///                         .id("priminstid")
///                         .machineConfig(ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfigArgs.builder()
///                             .cpuCount(2)
///                             .build())
///                         .databaseFlags(Map.ofEntries(
///                         ))
///                         .labels(Map.of("alloysinstfoo", "allowinstbar"))
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: vpc-network
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: private-ip-alloc
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 16
///       network: ${default.id}
///   vpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vpc_connection
///     properties:
///       network: ${default.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
///   alloydbprofile:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: my-profileid
///       displayName: my-profileid_display
///       labels:
///         foo: bar
///       alloydb:
///         clusterId: tf-test-dbmsalloycluster_69391
///         settings:
///           initialUser:
///             user: alloyuser_8270
///             password: alloypass_41150
///           vpcNetwork: ${default.id}
///           labels:
///             alloyfoo: alloybar
///           primaryInstanceSettings:
///             id: priminstid
///             machineConfig:
///               cpuCount: 2
///             databaseFlags: {}
///             labels:
///               alloysinstfoo: allowinstbar
///     options:
///       dependsOn:
///         - ${vpcConnection}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Database Migration Service Connection Profile Existing Mysql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const destinationCsql = new gcp.sql.DatabaseInstance("destination_csql", {
///     name: "destination-csql",
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-n1-standard-1",
///         deletionProtectionEnabled: false,
///     },
///     deletionProtection: false,
/// });
/// const existing_mysql = new gcp.databasemigrationservice.ConnectionProfile("existing-mysql", {
///     location: "us-central1",
///     connectionProfileId: "destination-cp",
///     displayName: "destination-cp_display",
///     labels: {
///         foo: "bar",
///     },
///     mysql: {
///         cloudSqlId: "destination-csql",
///     },
/// }, {
///     dependsOn: [destinationCsql],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// destination_csql = gcp.sql.DatabaseInstance("destination_csql",
///     name="destination-csql",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-n1-standard-1",
///         "deletion_protection_enabled": False,
///     },
///     deletion_protection=False)
/// existing_mysql = gcp.databasemigrationservice.ConnectionProfile("existing-mysql",
///     location="us-central1",
///     connection_profile_id="destination-cp",
///     display_name="destination-cp_display",
///     labels={
///         "foo": "bar",
///     },
///     mysql={
///         "cloud_sql_id": "destination-csql",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[destination_csql]))
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
///     var destinationCsql = new Gcp.Sql.DatabaseInstance("destination_csql", new()
///     {
///         Name = "destination-csql",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-n1-standard-1",
///             DeletionProtectionEnabled = false,
///         },
///         DeletionProtection = false,
///     });
///
///     var existing_mysql = new Gcp.DatabaseMigrationService.ConnectionProfile("existing-mysql", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "destination-cp",
///         DisplayName = "destination-cp_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Mysql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileMysqlArgs
///         {
///             CloudSqlId = "destination-csql",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             destinationCsql,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationCsql, err := sql.NewDatabaseInstance(ctx, "destination_csql", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("destination-csql"),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:                      pulumi.String("db-n1-standard-1"),
/// 				DeletionProtectionEnabled: pulumi.Bool(false),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "existing-mysql", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-cp"),
/// 			DisplayName:         pulumi.String("destination-cp_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Mysql: &databasemigrationservice.ConnectionProfileMysqlArgs{
/// 				CloudSqlId: pulumi.String("destination-csql"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			destinationCsql,
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
/// resource "gcp_sql_databaseinstance" "destination_csql" {
///   name             = "destination-csql"
///   database_version = "MYSQL_5_7"
///   settings = {
///     tier                        = "db-n1-standard-1"
///     deletion_protection_enabled = false
///   }
///   deletion_protection = false
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "existing-mysql" {
///   depends_on            = [gcp_sql_databaseinstance.destination_csql]
///   location              = "us-central1"
///   connection_profile_id = "destination-cp"
///   display_name          = "destination-cp_display"
///   labels = {
///     "foo" = "bar"
///   }
///   mysql = {
///     cloud_sql_id = "destination-csql"
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
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileMysqlArgs;
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
///         var destinationCsql = new DatabaseInstance("destinationCsql", DatabaseInstanceArgs.builder()
///             .name("destination-csql")
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-n1-standard-1")
///                 .deletionProtectionEnabled(false)
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var existing_mysql = new ConnectionProfile("existing-mysql", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("destination-cp")
///             .displayName("destination-cp_display")
///             .labels(Map.of("foo", "bar"))
///             .mysql(ConnectionProfileMysqlArgs.builder()
///                 .cloudSqlId("destination-csql")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(destinationCsql)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   destinationCsql:
///     type: gcp:sql:DatabaseInstance
///     name: destination_csql
///     properties:
///       name: destination-csql
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-n1-standard-1
///         deletionProtectionEnabled: false
///       deletionProtection: false
///   existing-mysql:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: destination-cp
///       displayName: destination-cp_display
///       labels:
///         foo: bar
///       mysql:
///         cloudSqlId: destination-csql
///     options:
///       dependsOn:
///         - ${destinationCsql}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Database Migration Service Connection Profile Existing Postgres
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const destinationCsql = new gcp.sql.DatabaseInstance("destination_csql", {
///     name: "destination-csql",
///     databaseVersion: "POSTGRES_15",
///     settings: {
///         tier: "db-custom-2-13312",
///         deletionProtectionEnabled: false,
///     },
///     deletionProtection: false,
/// });
/// const existing_psql = new gcp.databasemigrationservice.ConnectionProfile("existing-psql", {
///     location: "us-central1",
///     connectionProfileId: "destination-cp",
///     displayName: "destination-cp_display",
///     labels: {
///         foo: "bar",
///     },
///     postgresql: {
///         cloudSqlId: "destination-csql",
///     },
/// }, {
///     dependsOn: [destinationCsql],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// destination_csql = gcp.sql.DatabaseInstance("destination_csql",
///     name="destination-csql",
///     database_version="POSTGRES_15",
///     settings={
///         "tier": "db-custom-2-13312",
///         "deletion_protection_enabled": False,
///     },
///     deletion_protection=False)
/// existing_psql = gcp.databasemigrationservice.ConnectionProfile("existing-psql",
///     location="us-central1",
///     connection_profile_id="destination-cp",
///     display_name="destination-cp_display",
///     labels={
///         "foo": "bar",
///     },
///     postgresql={
///         "cloud_sql_id": "destination-csql",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[destination_csql]))
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
///     var destinationCsql = new Gcp.Sql.DatabaseInstance("destination_csql", new()
///     {
///         Name = "destination-csql",
///         DatabaseVersion = "POSTGRES_15",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-custom-2-13312",
///             DeletionProtectionEnabled = false,
///         },
///         DeletionProtection = false,
///     });
///
///     var existing_psql = new Gcp.DatabaseMigrationService.ConnectionProfile("existing-psql", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "destination-cp",
///         DisplayName = "destination-cp_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
///         {
///             CloudSqlId = "destination-csql",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             destinationCsql,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationCsql, err := sql.NewDatabaseInstance(ctx, "destination_csql", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("destination-csql"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_15"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:                      pulumi.String("db-custom-2-13312"),
/// 				DeletionProtectionEnabled: pulumi.Bool(false),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "existing-psql", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-cp"),
/// 			DisplayName:         pulumi.String("destination-cp_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// 				CloudSqlId: pulumi.String("destination-csql"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			destinationCsql,
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
/// resource "gcp_sql_databaseinstance" "destination_csql" {
///   name             = "destination-csql"
///   database_version = "POSTGRES_15"
///   settings = {
///     tier                        = "db-custom-2-13312"
///     deletion_protection_enabled = false
///   }
///   deletion_protection = false
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "existing-psql" {
///   depends_on            = [gcp_sql_databaseinstance.destination_csql]
///   location              = "us-central1"
///   connection_profile_id = "destination-cp"
///   display_name          = "destination-cp_display"
///   labels = {
///     "foo" = "bar"
///   }
///   postgresql = {
///     cloud_sql_id = "destination-csql"
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
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlArgs;
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
///         var destinationCsql = new DatabaseInstance("destinationCsql", DatabaseInstanceArgs.builder()
///             .name("destination-csql")
///             .databaseVersion("POSTGRES_15")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-custom-2-13312")
///                 .deletionProtectionEnabled(false)
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var existing_psql = new ConnectionProfile("existing-psql", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("destination-cp")
///             .displayName("destination-cp_display")
///             .labels(Map.of("foo", "bar"))
///             .postgresql(ConnectionProfilePostgresqlArgs.builder()
///                 .cloudSqlId("destination-csql")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(destinationCsql)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   destinationCsql:
///     type: gcp:sql:DatabaseInstance
///     name: destination_csql
///     properties:
///       name: destination-csql
///       databaseVersion: POSTGRES_15
///       settings:
///         tier: db-custom-2-13312
///         deletionProtectionEnabled: false
///       deletionProtection: false
///   existing-psql:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: destination-cp
///       displayName: destination-cp_display
///       labels:
///         foo: bar
///       postgresql:
///         cloudSqlId: destination-csql
///     options:
///       dependsOn:
///         - ${destinationCsql}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Database Migration Service Connection Profile Existing Alloydb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.compute.Network("default", {name: "destination-alloydb"});
/// const destinationAlloydb = new gcp.alloydb.Cluster("destination_alloydb", {
///     clusterId: "destination-alloydb",
///     location: "us-central1",
///     networkConfig: {
///         network: _default.id,
///     },
///     databaseVersion: "POSTGRES_15",
///     initialUser: {
///         user: "destination-alloydb",
///         password: "destination-alloydb",
///     },
///     deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "destination-alloydb",
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 16,
///     network: _default.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
///     network: _default.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const destinationAlloydbPrimary = new gcp.alloydb.Instance("destination_alloydb_primary", {
///     cluster: destinationAlloydb.name,
///     instanceId: "destination-alloydb-primary",
///     instanceType: "PRIMARY",
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const existing_alloydb = new gcp.databasemigrationservice.ConnectionProfile("existing-alloydb", {
///     location: "us-central1",
///     connectionProfileId: "destination-cp",
///     displayName: "destination-cp_display",
///     labels: {
///         foo: "bar",
///     },
///     postgresql: {
///         alloydbClusterId: "destination-alloydb",
///     },
/// }, {
///     dependsOn: [
///         destinationAlloydb,
///         destinationAlloydbPrimary,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.compute.Network("default", name="destination-alloydb")
/// destination_alloydb = gcp.alloydb.Cluster("destination_alloydb",
///     cluster_id="destination-alloydb",
///     location="us-central1",
///     network_config={
///         "network": default.id,
///     },
///     database_version="POSTGRES_15",
///     initial_user={
///         "user": "destination-alloydb",
///         "password": "destination-alloydb",
///     },
///     deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="destination-alloydb",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=16,
///     network=default.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
///     network=default.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name])
/// destination_alloydb_primary = gcp.alloydb.Instance("destination_alloydb_primary",
///     cluster=destination_alloydb.name,
///     instance_id="destination-alloydb-primary",
///     instance_type="PRIMARY",
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// existing_alloydb = gcp.databasemigrationservice.ConnectionProfile("existing-alloydb",
///     location="us-central1",
///     connection_profile_id="destination-cp",
///     display_name="destination-cp_display",
///     labels={
///         "foo": "bar",
///     },
///     postgresql={
///         "alloydb_cluster_id": "destination-alloydb",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             destination_alloydb,
///             destination_alloydb_primary,
///         ]))
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "destination-alloydb",
///     });
///
///     var destinationAlloydb = new Gcp.Alloydb.Cluster("destination_alloydb", new()
///     {
///         ClusterId = "destination-alloydb",
///         Location = "us-central1",
///         NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
///         {
///             Network = @default.Id,
///         },
///         DatabaseVersion = "POSTGRES_15",
///         InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
///         {
///             User = "destination-alloydb",
///             Password = "destination-alloydb",
///         },
///         DeletionProtection = false,
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "destination-alloydb",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 16,
///         Network = @default.Id,
///     });
///
///     var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
///     {
///         Network = @default.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     });
///
///     var destinationAlloydbPrimary = new Gcp.Alloydb.Instance("destination_alloydb_primary", new()
///     {
///         Cluster = destinationAlloydb.Name,
///         InstanceId = "destination-alloydb-primary",
///         InstanceType = "PRIMARY",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
///     var existing_alloydb = new Gcp.DatabaseMigrationService.ConnectionProfile("existing-alloydb", new()
///     {
///         Location = "us-central1",
///         ConnectionProfileId = "destination-cp",
///         DisplayName = "destination-cp_display",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
///         {
///             AlloydbClusterId = "destination-alloydb",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             destinationAlloydb,
///             destinationAlloydbPrimary,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("destination-alloydb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationAlloydb, err := alloydb.NewCluster(ctx, "destination_alloydb", &alloydb.ClusterArgs{
/// 			ClusterId: pulumi.String("destination-alloydb"),
/// 			Location:  pulumi.String("us-central1"),
/// 			NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// 				Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			DatabaseVersion: pulumi.String("POSTGRES_15"),
/// 			InitialUser: &alloydb.ClusterInitialUserArgs{
/// 				User:     pulumi.String("destination-alloydb"),
/// 				Password: pulumi.String("destination-alloydb"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("destination-alloydb"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationAlloydbPrimary, err := alloydb.NewInstance(ctx, "destination_alloydb_primary", &alloydb.InstanceArgs{
/// 			Cluster:      destinationAlloydb.Name,
/// 			InstanceId:   pulumi.String("destination-alloydb-primary"),
/// 			InstanceType: pulumi.String("PRIMARY"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigrationservice.NewConnectionProfile(ctx, "existing-alloydb", &databasemigrationservice.ConnectionProfileArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			ConnectionProfileId: pulumi.String("destination-cp"),
/// 			DisplayName:         pulumi.String("destination-cp_display"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// 				AlloydbClusterId: pulumi.String("destination-alloydb"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			destinationAlloydb,
/// 			destinationAlloydbPrimary,
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
/// resource "gcp_alloydb_cluster" "destination_alloydb" {
///   cluster_id = "destination-alloydb"
///   location   = "us-central1"
///   network_config = {
///     network = gcp_compute_network.default.id
///   }
///   database_version = "POSTGRES_15"
///   initial_user = {
///     user     = "destination-alloydb"
///     password = "destination-alloydb"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_alloydb_instance" "destination_alloydb_primary" {
///   depends_on    = [gcp_servicenetworking_connection.vpc_connection]
///   cluster       = gcp_alloydb_cluster.destination_alloydb.name
///   instance_id   = "destination-alloydb-primary"
///   instance_type = "PRIMARY"
/// }
/// resource "gcp_compute_globaladdress" "private_ip_alloc" {
///   name          = "destination-alloydb"
///   address_type  = "INTERNAL"
///   purpose       = "VPC_PEERING"
///   prefix_length = 16
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_servicenetworking_connection" "vpc_connection" {
///   network                 = gcp_compute_network.default.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.private_ip_alloc.name]
/// }
/// resource "gcp_compute_network" "default" {
///   name = "destination-alloydb"
/// }
/// resource "gcp_databasemigrationservice_connectionprofile" "existing-alloydb" {
///   depends_on            = [gcp_alloydb_cluster.destination_alloydb, gcp_alloydb_instance.destination_alloydb_primary]
///   location              = "us-central1"
///   connection_profile_id = "destination-cp"
///   display_name          = "destination-cp_display"
///   labels = {
///     "foo" = "bar"
///   }
///   postgresql = {
///     alloydb_cluster_id = "destination-alloydb"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("destination-alloydb")
///             .build());
///
///         var destinationAlloydb = new Cluster("destinationAlloydb", ClusterArgs.builder()
///             .clusterId("destination-alloydb")
///             .location("us-central1")
///             .networkConfig(ClusterNetworkConfigArgs.builder()
///                 .network(default_.id())
///                 .build())
///             .databaseVersion("POSTGRES_15")
///             .initialUser(ClusterInitialUserArgs.builder()
///                 .user("destination-alloydb")
///                 .password("destination-alloydb")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("destination-alloydb")
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(16)
///             .network(default_.id())
///             .build());
///
///         var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
///             .network(default_.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build());
///
///         var destinationAlloydbPrimary = new Instance("destinationAlloydbPrimary", InstanceArgs.builder()
///             .cluster(destinationAlloydb.name())
///             .instanceId("destination-alloydb-primary")
///             .instanceType("PRIMARY")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         var existing_alloydb = new ConnectionProfile("existing-alloydb", ConnectionProfileArgs.builder()
///             .location("us-central1")
///             .connectionProfileId("destination-cp")
///             .displayName("destination-cp_display")
///             .labels(Map.of("foo", "bar"))
///             .postgresql(ConnectionProfilePostgresqlArgs.builder()
///                 .alloydbClusterId("destination-alloydb")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     destinationAlloydb,
///                     destinationAlloydbPrimary)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   destinationAlloydb:
///     type: gcp:alloydb:Cluster
///     name: destination_alloydb
///     properties:
///       clusterId: destination-alloydb
///       location: us-central1
///       networkConfig:
///         network: ${default.id}
///       databaseVersion: POSTGRES_15
///       initialUser:
///         user: destination-alloydb
///         password: destination-alloydb
///       deletionProtection: false
///   destinationAlloydbPrimary:
///     type: gcp:alloydb:Instance
///     name: destination_alloydb_primary
///     properties:
///       cluster: ${destinationAlloydb.name}
///       instanceId: destination-alloydb-primary
///       instanceType: PRIMARY
///     options:
///       dependsOn:
///         - ${vpcConnection}
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: destination-alloydb
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 16
///       network: ${default.id}
///   vpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vpc_connection
///     properties:
///       network: ${default.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: destination-alloydb
///   existing-alloydb:
///     type: gcp:databasemigrationservice:ConnectionProfile
///     properties:
///       location: us-central1
///       connectionProfileId: destination-cp
///       displayName: destination-cp_display
///       labels:
///         foo: bar
///       postgresql:
///         alloydbClusterId: destination-alloydb
///     options:
///       dependsOn:
///         - ${destinationAlloydb}
///         - ${destinationAlloydbPrimary}
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
/// ConnectionProfile can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connectionProfiles/{{connection_profile_id}}`
/// * `{{project}}/{{location}}/{{connection_profile_id}}`
/// * `{{location}}/{{connection_profile_id}}`
///
///
/// When using the `pulumi import` command, ConnectionProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/connectionProfile:ConnectionProfile default projects/{{project}}/locations/{{location}}/connectionProfiles/{{connection_profile_id}}
/// $ pulumi import gcp:databasemigrationservice/connectionProfile:ConnectionProfile default {{project}}/{{location}}/{{connection_profile_id}}
/// $ pulumi import gcp:databasemigrationservice/connectionProfile:ConnectionProfile default {{location}}/{{connection_profile_id}}
/// ```
class ConnectionProfile extends pulumi.CustomResource {
  /// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionProfileAlloydb?> alloydb;
  /// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionProfileCloudsql?> cloudsql;
  /// The ID of the connection profile.
  late final pulumi.Output<String> connectionProfileId;
  /// Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  late final pulumi.Output<String> createTime;
  /// The database provider.
  late final pulumi.Output<String> dbprovider;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The connection profile display name.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Output only. The error details in case of state FAILED.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the connection profile should reside.
  late final pulumi.Output<String?> location;
  /// Specifies connection parameters required specifically for MySQL databases.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionProfileMysql?> mysql;
  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  late final pulumi.Output<String> name;
  /// Specifies connection parameters required specifically for Oracle databases.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionProfileOracle?> oracle;
  /// Specifies connection parameters required specifically for PostgreSQL databases.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionProfilePostgresql?> postgresql;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The connection profile role.
  /// Possible values are: `SOURCE`, `DESTINATION`.
  late final pulumi.Output<String> role;
  /// The current connection profile state.
  late final pulumi.Output<String> state;

  /// Creates a new [ConnectionProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionProfile]. {@macro pulumi_databasemigrationservice_connection_profile_connection_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionProfile(
    String name, {
    ConnectionProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/connectionProfile:ConnectionProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alloydb = registerOutput<ConnectionProfileAlloydb?>('alloydb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileAlloydb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudsql = registerOutput<ConnectionProfileCloudsql?>('cloudsql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileCloudsql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionProfileId = registerOutput<String>('connectionProfileId');
    createTime = registerOutput<String>('createTime');
    dbprovider = registerOutput<String>('dbprovider');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    mysql = registerOutput<ConnectionProfileMysql?>('mysql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileMysql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oracle = registerOutput<ConnectionProfileOracle?>('oracle', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileOracle.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    postgresql = registerOutput<ConnectionProfilePostgresql?>('postgresql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfilePostgresql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    role = registerOutput<String>('role');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [ConnectionProfile] resource's state with the given [name] and [id].
  static ConnectionProfile get(
    String name,
    pulumi.Input<String> id, {
    ConnectionProfileState? state,
  }) {
    return ConnectionProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConnectionProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/connectionProfile:ConnectionProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alloydb = registerOutput<ConnectionProfileAlloydb?>('alloydb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileAlloydb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudsql = registerOutput<ConnectionProfileCloudsql?>('cloudsql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileCloudsql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionProfileId = registerOutput<String>('connectionProfileId');
    createTime = registerOutput<String>('createTime');
    dbprovider = registerOutput<String>('dbprovider');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    mysql = registerOutput<ConnectionProfileMysql?>('mysql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileMysql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oracle = registerOutput<ConnectionProfileOracle?>('oracle', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfileOracle.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    postgresql = registerOutput<ConnectionProfilePostgresql?>('postgresql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionProfilePostgresql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    role = registerOutput<String>('role');
    this.state = registerOutput<String>('state');
  }
}
