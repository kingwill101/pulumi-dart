import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_args.dart';
import 'goldengate_connection_properties.dart';
import 'goldengate_connection_state.dart';

/// GoldengateConnection is a resource that represents metadata to establish a connection to a source or target data.
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Goldengate Connection Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "asia-south1",
///     project: "my-project",
///     gcpOracleZone: "asia-south1-b-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "ORACLE",
///         oracleConnectionProperties: {
///             technologyType: "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD",
///             connectionString: "jdbc:oracle:thin:@//10.0.0.5:1521/ORCL",
///             username: "admin",
///             password: "GenerateWallet@123",
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="asia-south1",
///     project="my-project",
///     gcp_oracle_zone="asia-south1-b-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "ORACLE",
///         "oracle_connection_properties": {
///             "technology_type": "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD",
///             "connection_string": "jdbc:oracle:thin:@//10.0.0.5:1521/ORCL",
///             "username": "admin",
///             "password": "GenerateWallet@123",
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "asia-south1",
///         Project = "my-project",
///         GcpOracleZone = "asia-south1-b-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "ORACLE",
///             OracleConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesOracleConnectionPropertiesArgs
///             {
///                 TechnologyType = "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD",
///                 ConnectionString = "jdbc:oracle:thin:@//10.0.0.5:1521/ORCL",
///                 Username = "admin",
///                 Password = "GenerateWallet@123",
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("asia-south1"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("asia-south1-b-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("ORACLE"),
/// 				OracleConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesOracleConnectionPropertiesArgs{
/// 					TechnologyType:   pulumi.String("ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD"),
/// 					ConnectionString: pulumi.String("jdbc:oracle:thin:@//10.0.0.5:1521/ORCL"),
/// 					Username:         pulumi.String("admin"),
/// 					Password:         pulumi.String("GenerateWallet@123"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "asia-south1"
///   project                  = "my-project"
///   gcp_oracle_zone          = "asia-south1-b-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "ORACLE"
///     oracle_connection_properties = {
///       technology_type   = "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD"
///       connection_string = "jdbc:oracle:thin:@//10.0.0.5:1521/ORCL"
///       username          = "admin"
///       password          = "GenerateWallet@123"
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesOracleConnectionPropertiesArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("asia-south1")
///             .project("my-project")
///             .gcpOracleZone("asia-south1-b-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("ORACLE")
///                 .oracleConnectionProperties(GoldengateConnectionPropertiesOracleConnectionPropertiesArgs.builder()
///                     .technologyType("ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD")
///                     .connectionString("jdbc:oracle:thin:@//10.0.0.5:1521/ORCL")
///                     .username("admin")
///                     .password("GenerateWallet@123")
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: asia-south1
///       project: my-project
///       gcpOracleZone: asia-south1-b-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: ORACLE
///         oracleConnectionProperties:
///           technologyType: ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD
///           connectionString: jdbc:oracle:thin:@//10.0.0.5:1521/ORCL
///           username: admin
///           password: GenerateWallet@123
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "us-east4",
///     project: "my-project",
///     odbNetwork: "projects/my-project/locations/us-east4/odbNetworks/my-network",
///     odbSubnet: "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///     gcpOracleZone: "us-east4-b-r1",
///     labels: {
///         "label-one": "value-one",
///     },
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "ORACLE",
///         routingMethod: "DEDICATED_ENDPOINT",
///         oracleConnectionProperties: {
///             technologyType: "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD",
///             username: "admin",
///             password: "GenerateWallet@123",
///             sessionMode: "DIRECT",
///             gcpOracleDatabaseId: "projects/my-project/locations/us-east4/autonomousDatabases/my-autonomous-database",
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="us-east4",
///     project="my-project",
///     odb_network="projects/my-project/locations/us-east4/odbNetworks/my-network",
///     odb_subnet="projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///     gcp_oracle_zone="us-east4-b-r1",
///     labels={
///         "label-one": "value-one",
///     },
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "ORACLE",
///         "routing_method": "DEDICATED_ENDPOINT",
///         "oracle_connection_properties": {
///             "technology_type": "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD",
///             "username": "admin",
///             "password": "GenerateWallet@123",
///             "session_mode": "DIRECT",
///             "gcp_oracle_database_id": "projects/my-project/locations/us-east4/autonomousDatabases/my-autonomous-database",
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "us-east4",
///         Project = "my-project",
///         OdbNetwork = "projects/my-project/locations/us-east4/odbNetworks/my-network",
///         OdbSubnet = "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///         GcpOracleZone = "us-east4-b-r1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "ORACLE",
///             RoutingMethod = "DEDICATED_ENDPOINT",
///             OracleConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesOracleConnectionPropertiesArgs
///             {
///                 TechnologyType = "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD",
///                 Username = "admin",
///                 Password = "GenerateWallet@123",
///                 SessionMode = "DIRECT",
///                 GcpOracleDatabaseId = "projects/my-project/locations/us-east4/autonomousDatabases/my-autonomous-database",
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("us-east4"),
/// 			Project:                pulumi.String("my-project"),
/// 			OdbNetwork:             pulumi.String("projects/my-project/locations/us-east4/odbNetworks/my-network"),
/// 			OdbSubnet:              pulumi.String("projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet"),
/// 			GcpOracleZone:          pulumi.String("us-east4-b-r1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("ORACLE"),
/// 				RoutingMethod:  pulumi.String("DEDICATED_ENDPOINT"),
/// 				OracleConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesOracleConnectionPropertiesArgs{
/// 					TechnologyType:      pulumi.String("ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD"),
/// 					Username:            pulumi.String("admin"),
/// 					Password:            pulumi.String("GenerateWallet@123"),
/// 					SessionMode:         pulumi.String("DIRECT"),
/// 					GcpOracleDatabaseId: pulumi.String("projects/my-project/locations/us-east4/autonomousDatabases/my-autonomous-database"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "us-east4"
///   project                  = "my-project"
///   odb_network              = "projects/my-project/locations/us-east4/odbNetworks/my-network"
///   odb_subnet               = "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet"
///   gcp_oracle_zone          = "us-east4-b-r1"
///   labels = {
///     "label-one" = "value-one"
///   }
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "ORACLE"
///     routing_method  = "DEDICATED_ENDPOINT"
///     oracle_connection_properties = {
///       technology_type        = "ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD"
///       username               = "admin"
///       password               = "GenerateWallet@123"
///       session_mode           = "DIRECT"
///       gcp_oracle_database_id = "projects/my-project/locations/us-east4/autonomousDatabases/my-autonomous-database"
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesOracleConnectionPropertiesArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("us-east4")
///             .project("my-project")
///             .odbNetwork("projects/my-project/locations/us-east4/odbNetworks/my-network")
///             .odbSubnet("projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet")
///             .gcpOracleZone("us-east4-b-r1")
///             .labels(Map.of("label-one", "value-one"))
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("ORACLE")
///                 .routingMethod("DEDICATED_ENDPOINT")
///                 .oracleConnectionProperties(GoldengateConnectionPropertiesOracleConnectionPropertiesArgs.builder()
///                     .technologyType("ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD")
///                     .username("admin")
///                     .password("GenerateWallet@123")
///                     .sessionMode("DIRECT")
///                     .gcpOracleDatabaseId("projects/my-project/locations/us-east4/autonomousDatabases/my-autonomous-database")
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: us-east4
///       project: my-project
///       odbNetwork: projects/my-project/locations/us-east4/odbNetworks/my-network
///       odbSubnet: projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet
///       gcpOracleZone: us-east4-b-r1
///       labels:
///         label-one: value-one
///       properties:
///         displayName: my-connection display name
///         connectionType: ORACLE
///         routingMethod: DEDICATED_ENDPOINT
///         oracleConnectionProperties:
///           technologyType: ORACLE_AUTONOMOUS_DATABASE_AT_GOOGLE_CLOUD
///           username: admin
///           password: GenerateWallet@123
///           sessionMode: DIRECT
///           gcpOracleDatabaseId: projects/my-project/locations/us-east4/autonomousDatabases/my-autonomous-database
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Mysql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "northamerica-northeast1",
///     project: "my-project",
///     gcpOracleZone: "northamerica-northeast1-a-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "MYSQL",
///         mysqlConnectionProperties: {
///             technologyType: "MYSQL_SERVER",
///             username: "mysql_user",
///             password: "mysql_password",
///             host: "mysql.example.com",
///             port: 3306,
///             database: "mydb",
///             securityProtocol: "MTLS",
///             sslMode: "PREFERRED",
///             sslCertFile: "YmFzZTY0LWNsaWVudC1jZXJ0LWZpbGUtY29udGVudC1kZW1vLWdnb25u",
///             sslKeyFile: "YmFzZTY0LWNsaWVudC1rZXktZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=",
///             additionalAttributes: [{
///                 key: "attr1",
///                 value: "value1",
///             }],
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="northamerica-northeast1",
///     project="my-project",
///     gcp_oracle_zone="northamerica-northeast1-a-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "MYSQL",
///         "mysql_connection_properties": {
///             "technology_type": "MYSQL_SERVER",
///             "username": "mysql_user",
///             "password": "mysql_password",
///             "host": "mysql.example.com",
///             "port": 3306,
///             "database": "mydb",
///             "security_protocol": "MTLS",
///             "ssl_mode": "PREFERRED",
///             "ssl_cert_file": "YmFzZTY0LWNsaWVudC1jZXJ0LWZpbGUtY29udGVudC1kZW1vLWdnb25u",
///             "ssl_key_file": "YmFzZTY0LWNsaWVudC1rZXktZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=",
///             "additional_attributes": [{
///                 "key": "attr1",
///                 "value": "value1",
///             }],
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "northamerica-northeast1",
///         Project = "my-project",
///         GcpOracleZone = "northamerica-northeast1-a-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "MYSQL",
///             MysqlConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesMysqlConnectionPropertiesArgs
///             {
///                 TechnologyType = "MYSQL_SERVER",
///                 Username = "mysql_user",
///                 Password = "mysql_password",
///                 Host = "mysql.example.com",
///                 Port = 3306,
///                 Database = "mydb",
///                 SecurityProtocol = "MTLS",
///                 SslMode = "PREFERRED",
///                 SslCertFile = "YmFzZTY0LWNsaWVudC1jZXJ0LWZpbGUtY29udGVudC1kZW1vLWdnb25u",
///                 SslKeyFile = "YmFzZTY0LWNsaWVudC1rZXktZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=",
///                 AdditionalAttributes = new[]
///                 {
///                     new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributeArgs
///                     {
///                         Key = "attr1",
///                         Value = "value1",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("northamerica-northeast1"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("northamerica-northeast1-a-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("MYSQL"),
/// 				MysqlConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesMysqlConnectionPropertiesArgs{
/// 					TechnologyType:   pulumi.String("MYSQL_SERVER"),
/// 					Username:         pulumi.String("mysql_user"),
/// 					Password:         pulumi.String("mysql_password"),
/// 					Host:             pulumi.String("mysql.example.com"),
/// 					Port:             pulumi.Int(3306),
/// 					Database:         pulumi.String("mydb"),
/// 					SecurityProtocol: pulumi.String("MTLS"),
/// 					SslMode:          pulumi.String("PREFERRED"),
/// 					SslCertFile:      pulumi.String("YmFzZTY0LWNsaWVudC1jZXJ0LWZpbGUtY29udGVudC1kZW1vLWdnb25u"),
/// 					SslKeyFile:       pulumi.String("YmFzZTY0LWNsaWVudC1rZXktZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4="),
/// 					AdditionalAttributes: oracledatabase.GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributeArray{
/// 						&oracledatabase.GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributeArgs{
/// 							Key:   pulumi.String("attr1"),
/// 							Value: pulumi.String("value1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "northamerica-northeast1"
///   project                  = "my-project"
///   gcp_oracle_zone          = "northamerica-northeast1-a-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "MYSQL"
///     mysql_connection_properties = {
///       technology_type   = "MYSQL_SERVER"
///       username          = "mysql_user"
///       password          = "mysql_password"
///       host              = "mysql.example.com"
///       port              = 3306
///       database          = "mydb"
///       security_protocol = "MTLS"
///       ssl_mode          = "PREFERRED"
///       ssl_cert_file     = "YmFzZTY0LWNsaWVudC1jZXJ0LWZpbGUtY29udGVudC1kZW1vLWdnb25u"
///       ssl_key_file      = "YmFzZTY0LWNsaWVudC1rZXktZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4="
///       additional_attributes = [{
///         "key"   = "attr1"
///         "value" = "value1"
///       }]
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesMysqlConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributeArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("northamerica-northeast1")
///             .project("my-project")
///             .gcpOracleZone("northamerica-northeast1-a-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("MYSQL")
///                 .mysqlConnectionProperties(GoldengateConnectionPropertiesMysqlConnectionPropertiesArgs.builder()
///                     .technologyType("MYSQL_SERVER")
///                     .username("mysql_user")
///                     .password("mysql_password")
///                     .host("mysql.example.com")
///                     .port(3306)
///                     .database("mydb")
///                     .securityProtocol("MTLS")
///                     .sslMode("PREFERRED")
///                     .sslCertFile("YmFzZTY0LWNsaWVudC1jZXJ0LWZpbGUtY29udGVudC1kZW1vLWdnb25u")
///                     .sslKeyFile("YmFzZTY0LWNsaWVudC1rZXktZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=")
///                     .additionalAttributes(GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributeArgs.builder()
///                         .key("attr1")
///                         .value("value1")
///                         .build())
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: northamerica-northeast1
///       project: my-project
///       gcpOracleZone: northamerica-northeast1-a-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: MYSQL
///         mysqlConnectionProperties:
///           technologyType: MYSQL_SERVER
///           username: mysql_user
///           password: mysql_password
///           host: mysql.example.com
///           port: 3306
///           database: mydb
///           securityProtocol: MTLS
///           sslMode: PREFERRED
///           sslCertFile: YmFzZTY0LWNsaWVudC1jZXJ0LWZpbGUtY29udGVudC1kZW1vLWdnb25u
///           sslKeyFile: YmFzZTY0LWNsaWVudC1rZXktZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=
///           additionalAttributes:
///             - key: attr1
///               value: value1
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Postgresql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "southamerica-east1",
///     project: "my-project",
///     gcpOracleZone: "southamerica-east1-a-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "POSTGRESQL",
///         postgresqlConnectionProperties: {
///             technologyType: "POSTGRESQL_SERVER",
///             database: "postgres_app_db",
///             host: "postgres.corp.example.com",
///             port: 5432,
///             username: "pg_replicator",
///             password: "PostgresReplicationP@ssw0rd!",
///             securityProtocol: "PLAIN",
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="southamerica-east1",
///     project="my-project",
///     gcp_oracle_zone="southamerica-east1-a-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "POSTGRESQL",
///         "postgresql_connection_properties": {
///             "technology_type": "POSTGRESQL_SERVER",
///             "database": "postgres_app_db",
///             "host": "postgres.corp.example.com",
///             "port": 5432,
///             "username": "pg_replicator",
///             "password": "PostgresReplicationP@ssw0rd!",
///             "security_protocol": "PLAIN",
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "southamerica-east1",
///         Project = "my-project",
///         GcpOracleZone = "southamerica-east1-a-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "POSTGRESQL",
///             PostgresqlConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesPostgresqlConnectionPropertiesArgs
///             {
///                 TechnologyType = "POSTGRESQL_SERVER",
///                 Database = "postgres_app_db",
///                 Host = "postgres.corp.example.com",
///                 Port = 5432,
///                 Username = "pg_replicator",
///                 Password = "PostgresReplicationP@ssw0rd!",
///                 SecurityProtocol = "PLAIN",
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("southamerica-east1"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("southamerica-east1-a-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("POSTGRESQL"),
/// 				PostgresqlConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesPostgresqlConnectionPropertiesArgs{
/// 					TechnologyType:   pulumi.String("POSTGRESQL_SERVER"),
/// 					Database:         pulumi.String("postgres_app_db"),
/// 					Host:             pulumi.String("postgres.corp.example.com"),
/// 					Port:             pulumi.Int(5432),
/// 					Username:         pulumi.String("pg_replicator"),
/// 					Password:         pulumi.String("PostgresReplicationP@ssw0rd!"),
/// 					SecurityProtocol: pulumi.String("PLAIN"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "southamerica-east1"
///   project                  = "my-project"
///   gcp_oracle_zone          = "southamerica-east1-a-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "POSTGRESQL"
///     postgresql_connection_properties = {
///       technology_type   = "POSTGRESQL_SERVER"
///       database          = "postgres_app_db"
///       host              = "postgres.corp.example.com"
///       port              = 5432
///       username          = "pg_replicator"
///       password          = "PostgresReplicationP@ssw0rd!"
///       security_protocol = "PLAIN"
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesPostgresqlConnectionPropertiesArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("southamerica-east1")
///             .project("my-project")
///             .gcpOracleZone("southamerica-east1-a-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("POSTGRESQL")
///                 .postgresqlConnectionProperties(GoldengateConnectionPropertiesPostgresqlConnectionPropertiesArgs.builder()
///                     .technologyType("POSTGRESQL_SERVER")
///                     .database("postgres_app_db")
///                     .host("postgres.corp.example.com")
///                     .port(5432)
///                     .username("pg_replicator")
///                     .password("PostgresReplicationP@ssw0rd!")
///                     .securityProtocol("PLAIN")
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: southamerica-east1
///       project: my-project
///       gcpOracleZone: southamerica-east1-a-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: POSTGRESQL
///         postgresqlConnectionProperties:
///           technologyType: POSTGRESQL_SERVER
///           database: postgres_app_db
///           host: postgres.corp.example.com
///           port: 5432
///           username: pg_replicator
///           password: PostgresReplicationP@ssw0rd!
///           securityProtocol: PLAIN
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Redis
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "asia-northeast2",
///     project: "my-project",
///     gcpOracleZone: "asia-northeast2-a-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "REDIS",
///         redisConnectionProperties: {
///             technologyType: "REDIS",
///             servers: "redis-shard1.example.com:6379,redis-shard2.example.com:6379",
///             securityProtocol: "PLAIN",
///             authenticationType: "BASIC",
///             username: "redis_agent",
///             password: "RedisSecureCacheP@ssword123!",
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="asia-northeast2",
///     project="my-project",
///     gcp_oracle_zone="asia-northeast2-a-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "REDIS",
///         "redis_connection_properties": {
///             "technology_type": "REDIS",
///             "servers": "redis-shard1.example.com:6379,redis-shard2.example.com:6379",
///             "security_protocol": "PLAIN",
///             "authentication_type": "BASIC",
///             "username": "redis_agent",
///             "password": "RedisSecureCacheP@ssword123!",
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "asia-northeast2",
///         Project = "my-project",
///         GcpOracleZone = "asia-northeast2-a-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "REDIS",
///             RedisConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesRedisConnectionPropertiesArgs
///             {
///                 TechnologyType = "REDIS",
///                 Servers = "redis-shard1.example.com:6379,redis-shard2.example.com:6379",
///                 SecurityProtocol = "PLAIN",
///                 AuthenticationType = "BASIC",
///                 Username = "redis_agent",
///                 Password = "RedisSecureCacheP@ssword123!",
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("asia-northeast2"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("asia-northeast2-a-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("REDIS"),
/// 				RedisConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesRedisConnectionPropertiesArgs{
/// 					TechnologyType:     pulumi.String("REDIS"),
/// 					Servers:            pulumi.String("redis-shard1.example.com:6379,redis-shard2.example.com:6379"),
/// 					SecurityProtocol:   pulumi.String("PLAIN"),
/// 					AuthenticationType: pulumi.String("BASIC"),
/// 					Username:           pulumi.String("redis_agent"),
/// 					Password:           pulumi.String("RedisSecureCacheP@ssword123!"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "asia-northeast2"
///   project                  = "my-project"
///   gcp_oracle_zone          = "asia-northeast2-a-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "REDIS"
///     redis_connection_properties = {
///       technology_type     = "REDIS"
///       servers             = "redis-shard1.example.com:6379,redis-shard2.example.com:6379"
///       security_protocol   = "PLAIN"
///       authentication_type = "BASIC"
///       username            = "redis_agent"
///       password            = "RedisSecureCacheP@ssword123!"
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesRedisConnectionPropertiesArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("asia-northeast2")
///             .project("my-project")
///             .gcpOracleZone("asia-northeast2-a-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("REDIS")
///                 .redisConnectionProperties(GoldengateConnectionPropertiesRedisConnectionPropertiesArgs.builder()
///                     .technologyType("REDIS")
///                     .servers("redis-shard1.example.com:6379,redis-shard2.example.com:6379")
///                     .securityProtocol("PLAIN")
///                     .authenticationType("BASIC")
///                     .username("redis_agent")
///                     .password("RedisSecureCacheP@ssword123!")
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: asia-northeast2
///       project: my-project
///       gcpOracleZone: asia-northeast2-a-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: REDIS
///         redisConnectionProperties:
///           technologyType: REDIS
///           servers: redis-shard1.example.com:6379,redis-shard2.example.com:6379
///           securityProtocol: PLAIN
///           authenticationType: BASIC
///           username: redis_agent
///           password: RedisSecureCacheP@ssword123!
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Kafka
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "europe-west8",
///     project: "my-project",
///     gcpOracleZone: "europe-west8-a-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "KAFKA",
///         kafkaConnectionProperties: {
///             technologyType: "APACHE_KAFKA",
///             streamPoolId: "ocid1.streampool.oc1..example",
///             clusterId: "ocid1.kafkacluster.oc1..example",
///             bootstrapServers: [{
///                 host: "kafka.example.com",
///                 port: 9092,
///                 privateIpAddress: "10.0.0.1",
///             }],
///             securityProtocol: "SSL",
///             consumerPropertiesFile: "Y29uc3VtZXIucHJvcGVydGllcz1kZW1v",
///             producerPropertiesFile: "cHJvZHVjZXIucHJvcGVydGllcz1kZW1v",
///             useResourcePrincipal: false,
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="europe-west8",
///     project="my-project",
///     gcp_oracle_zone="europe-west8-a-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "KAFKA",
///         "kafka_connection_properties": {
///             "technology_type": "APACHE_KAFKA",
///             "stream_pool_id": "ocid1.streampool.oc1..example",
///             "cluster_id": "ocid1.kafkacluster.oc1..example",
///             "bootstrap_servers": [{
///                 "host": "kafka.example.com",
///                 "port": 9092,
///                 "private_ip_address": "10.0.0.1",
///             }],
///             "security_protocol": "SSL",
///             "consumer_properties_file": "Y29uc3VtZXIucHJvcGVydGllcz1kZW1v",
///             "producer_properties_file": "cHJvZHVjZXIucHJvcGVydGllcz1kZW1v",
///             "use_resource_principal": False,
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "europe-west8",
///         Project = "my-project",
///         GcpOracleZone = "europe-west8-a-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "KAFKA",
///             KafkaConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesKafkaConnectionPropertiesArgs
///             {
///                 TechnologyType = "APACHE_KAFKA",
///                 StreamPoolId = "ocid1.streampool.oc1..example",
///                 ClusterId = "ocid1.kafkacluster.oc1..example",
///                 BootstrapServers = new[]
///                 {
///                     new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServerArgs
///                     {
///                         Host = "kafka.example.com",
///                         Port = 9092,
///                         PrivateIpAddress = "10.0.0.1",
///                     },
///                 },
///                 SecurityProtocol = "SSL",
///                 ConsumerPropertiesFile = "Y29uc3VtZXIucHJvcGVydGllcz1kZW1v",
///                 ProducerPropertiesFile = "cHJvZHVjZXIucHJvcGVydGllcz1kZW1v",
///                 UseResourcePrincipal = false,
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("europe-west8"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("europe-west8-a-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("KAFKA"),
/// 				KafkaConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesKafkaConnectionPropertiesArgs{
/// 					TechnologyType: pulumi.String("APACHE_KAFKA"),
/// 					StreamPoolId:   pulumi.String("ocid1.streampool.oc1..example"),
/// 					ClusterId:      pulumi.String("ocid1.kafkacluster.oc1..example"),
/// 					BootstrapServers: oracledatabase.GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServerArray{
/// 						&oracledatabase.GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServerArgs{
/// 							Host:             pulumi.String("kafka.example.com"),
/// 							Port:             pulumi.Int(9092),
/// 							PrivateIpAddress: pulumi.String("10.0.0.1"),
/// 						},
/// 					},
/// 					SecurityProtocol:       pulumi.String("SSL"),
/// 					ConsumerPropertiesFile: pulumi.String("Y29uc3VtZXIucHJvcGVydGllcz1kZW1v"),
/// 					ProducerPropertiesFile: pulumi.String("cHJvZHVjZXIucHJvcGVydGllcz1kZW1v"),
/// 					UseResourcePrincipal:   pulumi.Bool(false),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "europe-west8"
///   project                  = "my-project"
///   gcp_oracle_zone          = "europe-west8-a-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "KAFKA"
///     kafka_connection_properties = {
///       technology_type = "APACHE_KAFKA"
///       stream_pool_id  = "ocid1.streampool.oc1..example"
///       cluster_id      = "ocid1.kafkacluster.oc1..example"
///       bootstrap_servers = [{
///         "host"             = "kafka.example.com"
///         "port"             = 9092
///         "privateIpAddress" = "10.0.0.1"
///       }]
///       security_protocol        = "SSL"
///       consumer_properties_file = "Y29uc3VtZXIucHJvcGVydGllcz1kZW1v"
///       producer_properties_file = "cHJvZHVjZXIucHJvcGVydGllcz1kZW1v"
///       use_resource_principal   = false
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesKafkaConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServerArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("europe-west8")
///             .project("my-project")
///             .gcpOracleZone("europe-west8-a-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("KAFKA")
///                 .kafkaConnectionProperties(GoldengateConnectionPropertiesKafkaConnectionPropertiesArgs.builder()
///                     .technologyType("APACHE_KAFKA")
///                     .streamPoolId("ocid1.streampool.oc1..example")
///                     .clusterId("ocid1.kafkacluster.oc1..example")
///                     .bootstrapServers(GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServerArgs.builder()
///                         .host("kafka.example.com")
///                         .port(9092)
///                         .privateIpAddress("10.0.0.1")
///                         .build())
///                     .securityProtocol("SSL")
///                     .consumerPropertiesFile("Y29uc3VtZXIucHJvcGVydGllcz1kZW1v")
///                     .producerPropertiesFile("cHJvZHVjZXIucHJvcGVydGllcz1kZW1v")
///                     .useResourcePrincipal(false)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: europe-west8
///       project: my-project
///       gcpOracleZone: europe-west8-a-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: KAFKA
///         kafkaConnectionProperties:
///           technologyType: APACHE_KAFKA
///           streamPoolId: ocid1.streampool.oc1..example
///           clusterId: ocid1.kafkacluster.oc1..example
///           bootstrapServers:
///             - host: kafka.example.com
///               port: 9092
///               privateIpAddress: 10.0.0.1
///           securityProtocol: SSL
///           consumerPropertiesFile: Y29uc3VtZXIucHJvcGVydGllcz1kZW1v
///           producerPropertiesFile: cHJvZHVjZXIucHJvcGVydGllcz1kZW1v
///           useResourcePrincipal: false
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Iceberg
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "australia-southeast1",
///     project: "my-project",
///     gcpOracleZone: "australia-southeast1-b-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "ICEBERG",
///         icebergConnectionProperties: {
///             technologyType: "APACHE_ICEBERG",
///             catalog: {
///                 catalogType: "GLUE",
///                 glueIcebergCatalog: {
///                     glueId: "glue_catalog_id",
///                 },
///             },
///             storage: {
///                 storageType: "AMAZON_S3",
///                 amazonS3IcebergStorage: {
///                     schemeType: "S3",
///                     accessKeyId: "AKIAIOSFODNN7EXAMPLE",
///                     secretAccessKeySecret: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
///                     region: "us-east-1",
///                     bucket: "iceberg-bucket",
///                     endpoint: "https://s3.amazonaws.com",
///                 },
///             },
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="australia-southeast1",
///     project="my-project",
///     gcp_oracle_zone="australia-southeast1-b-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "ICEBERG",
///         "iceberg_connection_properties": {
///             "technology_type": "APACHE_ICEBERG",
///             "catalog": {
///                 "catalog_type": "GLUE",
///                 "glue_iceberg_catalog": {
///                     "glue_id": "glue_catalog_id",
///                 },
///             },
///             "storage": {
///                 "storage_type": "AMAZON_S3",
///                 "amazon_s3_iceberg_storage": {
///                     "scheme_type": "S3",
///                     "access_key_id": "AKIAIOSFODNN7EXAMPLE",
///                     "secret_access_key_secret": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
///                     "region": "us-east-1",
///                     "bucket": "iceberg-bucket",
///                     "endpoint": "https://s3.amazonaws.com",
///                 },
///             },
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "australia-southeast1",
///         Project = "my-project",
///         GcpOracleZone = "australia-southeast1-b-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "ICEBERG",
///             IcebergConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesArgs
///             {
///                 TechnologyType = "APACHE_ICEBERG",
///                 Catalog = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogArgs
///                 {
///                     CatalogType = "GLUE",
///                     GlueIcebergCatalog = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalogArgs
///                     {
///                         GlueId = "glue_catalog_id",
///                     },
///                 },
///                 Storage = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageArgs
///                 {
///                     StorageType = "AMAZON_S3",
///                     AmazonS3IcebergStorage = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorageArgs
///                     {
///                         SchemeType = "S3",
///                         AccessKeyId = "AKIAIOSFODNN7EXAMPLE",
///                         SecretAccessKeySecret = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
///                         Region = "us-east-1",
///                         Bucket = "iceberg-bucket",
///                         Endpoint = "https://s3.amazonaws.com",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("australia-southeast1"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("australia-southeast1-b-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("ICEBERG"),
/// 				IcebergConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesIcebergConnectionPropertiesArgs{
/// 					TechnologyType: pulumi.String("APACHE_ICEBERG"),
/// 					Catalog: &oracledatabase.GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogArgs{
/// 						CatalogType: pulumi.String("GLUE"),
/// 						GlueIcebergCatalog: &oracledatabase.GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalogArgs{
/// 							GlueId: pulumi.String("glue_catalog_id"),
/// 						},
/// 					},
/// 					Storage: &oracledatabase.GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageArgs{
/// 						StorageType: pulumi.String("AMAZON_S3"),
/// 						AmazonS3IcebergStorage: &oracledatabase.GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorageArgs{
/// 							SchemeType:            pulumi.String("S3"),
/// 							AccessKeyId:           pulumi.String("AKIAIOSFODNN7EXAMPLE"),
/// 							SecretAccessKeySecret: pulumi.String("wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"),
/// 							Region:                pulumi.String("us-east-1"),
/// 							Bucket:                pulumi.String("iceberg-bucket"),
/// 							Endpoint:              pulumi.String("https://s3.amazonaws.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "australia-southeast1"
///   project                  = "my-project"
///   gcp_oracle_zone          = "australia-southeast1-b-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "ICEBERG"
///     iceberg_connection_properties = {
///       technology_type = "APACHE_ICEBERG"
///       catalog = {
///         catalog_type = "GLUE"
///         glue_iceberg_catalog = {
///           glue_id = "glue_catalog_id"
///         }
///       }
///       storage = {
///         storage_type = "AMAZON_S3"
///         amazon_s3_iceberg_storage = {
///           scheme_type              = "S3"
///           access_key_id            = "AKIAIOSFODNN7EXAMPLE"
///           secret_access_key_secret = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
///           region                   = "us-east-1"
///           bucket                   = "iceberg-bucket"
///           endpoint                 = "https://s3.amazonaws.com"
///         }
///       }
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalogArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorageArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("australia-southeast1")
///             .project("my-project")
///             .gcpOracleZone("australia-southeast1-b-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("ICEBERG")
///                 .icebergConnectionProperties(GoldengateConnectionPropertiesIcebergConnectionPropertiesArgs.builder()
///                     .technologyType("APACHE_ICEBERG")
///                     .catalog(GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogArgs.builder()
///                         .catalogType("GLUE")
///                         .glueIcebergCatalog(GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalogArgs.builder()
///                             .glueId("glue_catalog_id")
///                             .build())
///                         .build())
///                     .storage(GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageArgs.builder()
///                         .storageType("AMAZON_S3")
///                         .amazonS3IcebergStorage(GoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorageArgs.builder()
///                             .schemeType("S3")
///                             .accessKeyId("AKIAIOSFODNN7EXAMPLE")
///                             .secretAccessKeySecret("wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY")
///                             .region("us-east-1")
///                             .bucket("iceberg-bucket")
///                             .endpoint("https://s3.amazonaws.com")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: australia-southeast1
///       project: my-project
///       gcpOracleZone: australia-southeast1-b-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: ICEBERG
///         icebergConnectionProperties:
///           technologyType: APACHE_ICEBERG
///           catalog:
///             catalogType: GLUE
///             glueIcebergCatalog:
///               glueId: glue_catalog_id
///           storage:
///             storageType: AMAZON_S3
///             amazonS3IcebergStorage:
///               schemeType: S3
///               accessKeyId: AKIAIOSFODNN7EXAMPLE
///               secretAccessKeySecret: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
///               region: us-east-1
///               bucket: iceberg-bucket
///               endpoint: https://s3.amazonaws.com
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Snowflake
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "europe-west3",
///     project: "my-project",
///     gcpOracleZone: "europe-west3-b-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "SNOWFLAKE",
///         snowflakeConnectionProperties: {
///             technologyType: "SNOWFLAKE",
///             connectionUrl: "jdbc:snowflake://xy12345.snowflakecomputing.com/?warehouse=COMPUTE_WH&db=ANALYTICS_DB",
///             authenticationType: "BASIC",
///             username: "snowflake_sync_user",
///             password: "SnowflakeBasicP@ssword123!",
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="europe-west3",
///     project="my-project",
///     gcp_oracle_zone="europe-west3-b-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "SNOWFLAKE",
///         "snowflake_connection_properties": {
///             "technology_type": "SNOWFLAKE",
///             "connection_url": "jdbc:snowflake://xy12345.snowflakecomputing.com/?warehouse=COMPUTE_WH&db=ANALYTICS_DB",
///             "authentication_type": "BASIC",
///             "username": "snowflake_sync_user",
///             "password": "SnowflakeBasicP@ssword123!",
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "europe-west3",
///         Project = "my-project",
///         GcpOracleZone = "europe-west3-b-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "SNOWFLAKE",
///             SnowflakeConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesSnowflakeConnectionPropertiesArgs
///             {
///                 TechnologyType = "SNOWFLAKE",
///                 ConnectionUrl = "jdbc:snowflake://xy12345.snowflakecomputing.com/?warehouse=COMPUTE_WH&db=ANALYTICS_DB",
///                 AuthenticationType = "BASIC",
///                 Username = "snowflake_sync_user",
///                 Password = "SnowflakeBasicP@ssword123!",
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("europe-west3"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("europe-west3-b-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("SNOWFLAKE"),
/// 				SnowflakeConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesSnowflakeConnectionPropertiesArgs{
/// 					TechnologyType:     pulumi.String("SNOWFLAKE"),
/// 					ConnectionUrl:      pulumi.String("jdbc:snowflake://xy12345.snowflakecomputing.com/?warehouse=COMPUTE_WH&db=ANALYTICS_DB"),
/// 					AuthenticationType: pulumi.String("BASIC"),
/// 					Username:           pulumi.String("snowflake_sync_user"),
/// 					Password:           pulumi.String("SnowflakeBasicP@ssword123!"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "europe-west3"
///   project                  = "my-project"
///   gcp_oracle_zone          = "europe-west3-b-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "SNOWFLAKE"
///     snowflake_connection_properties = {
///       technology_type     = "SNOWFLAKE"
///       connection_url      = "jdbc:snowflake://xy12345.snowflakecomputing.com/?warehouse=COMPUTE_WH&db=ANALYTICS_DB"
///       authentication_type = "BASIC"
///       username            = "snowflake_sync_user"
///       password            = "SnowflakeBasicP@ssword123!"
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesSnowflakeConnectionPropertiesArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("europe-west3")
///             .project("my-project")
///             .gcpOracleZone("europe-west3-b-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("SNOWFLAKE")
///                 .snowflakeConnectionProperties(GoldengateConnectionPropertiesSnowflakeConnectionPropertiesArgs.builder()
///                     .technologyType("SNOWFLAKE")
///                     .connectionUrl("jdbc:snowflake://xy12345.snowflakecomputing.com/?warehouse=COMPUTE_WH&db=ANALYTICS_DB")
///                     .authenticationType("BASIC")
///                     .username("snowflake_sync_user")
///                     .password("SnowflakeBasicP@ssword123!")
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: europe-west3
///       project: my-project
///       gcpOracleZone: europe-west3-b-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: SNOWFLAKE
///         snowflakeConnectionProperties:
///           technologyType: SNOWFLAKE
///           connectionUrl: jdbc:snowflake://xy12345.snowflakecomputing.com/?warehouse=COMPUTE_WH&db=ANALYTICS_DB
///           authenticationType: BASIC
///           username: snowflake_sync_user
///           password: SnowflakeBasicP@ssword123!
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Goldengate Connection Jms
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.oracledatabase.GoldengateConnection("connection", {
///     goldengateConnectionId: "my-connection",
///     location: "asia-northeast1",
///     project: "my-project",
///     gcpOracleZone: "asia-northeast1-a-r1",
///     properties: {
///         displayName: "my-connection display name",
///         connectionType: "JAVA_MESSAGE_SERVICE",
///         javaMessageServiceConnectionProperties: {
///             technologyType: "ORACLE_WEBLOGIC_JMS",
///             useJndi: true,
///             jndiConnectionFactory: "ConnectionFactory",
///             jndiProviderUrl: "tcp://jms.example.com:61616?jms.prefetchPolicy.all=1000",
///             jndiInitialContextFactory: "org.apache.activemq.jndi.ActiveMQInitialContextFactory",
///             jndiSecurityPrincipal: "jms_user",
///             jndiSecurityCredentialsSecret: "jms_credentials",
///             username: "jms_user",
///             password: "jms_password",
///             securityProtocol: "MTLS",
///             authenticationType: "BASIC",
///             trustStoreFile: "YmFzZTY0LXRydXN0c3RvcmUtZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=",
///             trustStorePassword: "truststore_pass",
///             keyStoreFile: "YmFzZTY0LWtleXN0b3JlLWZpbGUtY29udGVudC1kZW1vLWdnb25u",
///             keyStorePassword: "keystore_pass",
///             sslKeyPassword: "ssl_key_pass",
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.oracledatabase.GoldengateConnection("connection",
///     goldengate_connection_id="my-connection",
///     location="asia-northeast1",
///     project="my-project",
///     gcp_oracle_zone="asia-northeast1-a-r1",
///     properties={
///         "display_name": "my-connection display name",
///         "connection_type": "JAVA_MESSAGE_SERVICE",
///         "java_message_service_connection_properties": {
///             "technology_type": "ORACLE_WEBLOGIC_JMS",
///             "use_jndi": True,
///             "jndi_connection_factory": "ConnectionFactory",
///             "jndi_provider_url": "tcp://jms.example.com:61616?jms.prefetchPolicy.all=1000",
///             "jndi_initial_context_factory": "org.apache.activemq.jndi.ActiveMQInitialContextFactory",
///             "jndi_security_principal": "jms_user",
///             "jndi_security_credentials_secret": "jms_credentials",
///             "username": "jms_user",
///             "password": "jms_password",
///             "security_protocol": "MTLS",
///             "authentication_type": "BASIC",
///             "trust_store_file": "YmFzZTY0LXRydXN0c3RvcmUtZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=",
///             "trust_store_password": "truststore_pass",
///             "key_store_file": "YmFzZTY0LWtleXN0b3JlLWZpbGUtY29udGVudC1kZW1vLWdnb25u",
///             "key_store_password": "keystore_pass",
///             "ssl_key_password": "ssl_key_pass",
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.OracleDatabase.GoldengateConnection("connection", new()
///     {
///         GoldengateConnectionId = "my-connection",
///         Location = "asia-northeast1",
///         Project = "my-project",
///         GcpOracleZone = "asia-northeast1-a-r1",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesArgs
///         {
///             DisplayName = "my-connection display name",
///             ConnectionType = "JAVA_MESSAGE_SERVICE",
///             JavaMessageServiceConnectionProperties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionPropertiesJavaMessageServiceConnectionPropertiesArgs
///             {
///                 TechnologyType = "ORACLE_WEBLOGIC_JMS",
///                 UseJndi = true,
///                 JndiConnectionFactory = "ConnectionFactory",
///                 JndiProviderUrl = "tcp://jms.example.com:61616?jms.prefetchPolicy.all=1000",
///                 JndiInitialContextFactory = "org.apache.activemq.jndi.ActiveMQInitialContextFactory",
///                 JndiSecurityPrincipal = "jms_user",
///                 JndiSecurityCredentialsSecret = "jms_credentials",
///                 Username = "jms_user",
///                 Password = "jms_password",
///                 SecurityProtocol = "MTLS",
///                 AuthenticationType = "BASIC",
///                 TrustStoreFile = "YmFzZTY0LXRydXN0c3RvcmUtZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=",
///                 TrustStorePassword = "truststore_pass",
///                 KeyStoreFile = "YmFzZTY0LWtleXN0b3JlLWZpbGUtY29udGVudC1kZW1vLWdnb25u",
///                 KeyStorePassword = "keystore_pass",
///                 SslKeyPassword = "ssl_key_pass",
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnection(ctx, "connection", &oracledatabase.GoldengateConnectionArgs{
/// 			GoldengateConnectionId: pulumi.String("my-connection"),
/// 			Location:               pulumi.String("asia-northeast1"),
/// 			Project:                pulumi.String("my-project"),
/// 			GcpOracleZone:          pulumi.String("asia-northeast1-a-r1"),
/// 			Properties: &oracledatabase.GoldengateConnectionPropertiesArgs{
/// 				DisplayName:    pulumi.String("my-connection display name"),
/// 				ConnectionType: pulumi.String("JAVA_MESSAGE_SERVICE"),
/// 				JavaMessageServiceConnectionProperties: &oracledatabase.GoldengateConnectionPropertiesJavaMessageServiceConnectionPropertiesArgs{
/// 					TechnologyType:                pulumi.String("ORACLE_WEBLOGIC_JMS"),
/// 					UseJndi:                       pulumi.Bool(true),
/// 					JndiConnectionFactory:         pulumi.String("ConnectionFactory"),
/// 					JndiProviderUrl:               pulumi.String("tcp://jms.example.com:61616?jms.prefetchPolicy.all=1000"),
/// 					JndiInitialContextFactory:     pulumi.String("org.apache.activemq.jndi.ActiveMQInitialContextFactory"),
/// 					JndiSecurityPrincipal:         pulumi.String("jms_user"),
/// 					JndiSecurityCredentialsSecret: pulumi.String("jms_credentials"),
/// 					Username:                      pulumi.String("jms_user"),
/// 					Password:                      pulumi.String("jms_password"),
/// 					SecurityProtocol:              pulumi.String("MTLS"),
/// 					AuthenticationType:            pulumi.String("BASIC"),
/// 					TrustStoreFile:                pulumi.String("YmFzZTY0LXRydXN0c3RvcmUtZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4="),
/// 					TrustStorePassword:            pulumi.String("truststore_pass"),
/// 					KeyStoreFile:                  pulumi.String("YmFzZTY0LWtleXN0b3JlLWZpbGUtY29udGVudC1kZW1vLWdnb25u"),
/// 					KeyStorePassword:              pulumi.String("keystore_pass"),
/// 					SslKeyPassword:                pulumi.String("ssl_key_pass"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnection" "connection" {
///   goldengate_connection_id = "my-connection"
///   location                 = "asia-northeast1"
///   project                  = "my-project"
///   gcp_oracle_zone          = "asia-northeast1-a-r1"
///   properties = {
///     display_name    = "my-connection display name"
///     connection_type = "JAVA_MESSAGE_SERVICE"
///     java_message_service_connection_properties = {
///       technology_type                  = "ORACLE_WEBLOGIC_JMS"
///       use_jndi                         = true
///       jndi_connection_factory          = "ConnectionFactory"
///       jndi_provider_url                = "tcp://jms.example.com:61616?jms.prefetchPolicy.all=1000"
///       jndi_initial_context_factory     = "org.apache.activemq.jndi.ActiveMQInitialContextFactory"
///       jndi_security_principal          = "jms_user"
///       jndi_security_credentials_secret = "jms_credentials"
///       username                         = "jms_user"
///       password                         = "jms_password"
///       security_protocol                = "MTLS"
///       authentication_type              = "BASIC"
///       trust_store_file                 = "YmFzZTY0LXRydXN0c3RvcmUtZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4="
///       trust_store_password             = "truststore_pass"
///       key_store_file                   = "YmFzZTY0LWtleXN0b3JlLWZpbGUtY29udGVudC1kZW1vLWdnb25u"
///       key_store_password               = "keystore_pass"
///       ssl_key_password                 = "ssl_key_pass"
///     }
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnection;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionPropertiesJavaMessageServiceConnectionPropertiesArgs;
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
///         var connection = new GoldengateConnection("connection", GoldengateConnectionArgs.builder()
///             .goldengateConnectionId("my-connection")
///             .location("asia-northeast1")
///             .project("my-project")
///             .gcpOracleZone("asia-northeast1-a-r1")
///             .properties(GoldengateConnectionPropertiesArgs.builder()
///                 .displayName("my-connection display name")
///                 .connectionType("JAVA_MESSAGE_SERVICE")
///                 .javaMessageServiceConnectionProperties(GoldengateConnectionPropertiesJavaMessageServiceConnectionPropertiesArgs.builder()
///                     .technologyType("ORACLE_WEBLOGIC_JMS")
///                     .useJndi(true)
///                     .jndiConnectionFactory("ConnectionFactory")
///                     .jndiProviderUrl("tcp://jms.example.com:61616?jms.prefetchPolicy.all=1000")
///                     .jndiInitialContextFactory("org.apache.activemq.jndi.ActiveMQInitialContextFactory")
///                     .jndiSecurityPrincipal("jms_user")
///                     .jndiSecurityCredentialsSecret("jms_credentials")
///                     .username("jms_user")
///                     .password("jms_password")
///                     .securityProtocol("MTLS")
///                     .authenticationType("BASIC")
///                     .trustStoreFile("YmFzZTY0LXRydXN0c3RvcmUtZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=")
///                     .trustStorePassword("truststore_pass")
///                     .keyStoreFile("YmFzZTY0LWtleXN0b3JlLWZpbGUtY29udGVudC1kZW1vLWdnb25u")
///                     .keyStorePassword("keystore_pass")
///                     .sslKeyPassword("ssl_key_pass")
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:oracledatabase:GoldengateConnection
///     properties:
///       goldengateConnectionId: my-connection
///       location: asia-northeast1
///       project: my-project
///       gcpOracleZone: asia-northeast1-a-r1
///       properties:
///         displayName: my-connection display name
///         connectionType: JAVA_MESSAGE_SERVICE
///         javaMessageServiceConnectionProperties:
///           technologyType: ORACLE_WEBLOGIC_JMS
///           useJndi: true
///           jndiConnectionFactory: ConnectionFactory
///           jndiProviderUrl: tcp://jms.example.com:61616?jms.prefetchPolicy.all=1000
///           jndiInitialContextFactory: org.apache.activemq.jndi.ActiveMQInitialContextFactory
///           jndiSecurityPrincipal: jms_user
///           jndiSecurityCredentialsSecret: jms_credentials
///           username: jms_user
///           password: jms_password
///           securityProtocol: MTLS
///           authenticationType: BASIC
///           trustStoreFile: YmFzZTY0LXRydXN0c3RvcmUtZmlsZS1jb250ZW50LWRlbW8tZ2dvbm4=
///           trustStorePassword: truststore_pass
///           keyStoreFile: YmFzZTY0LWtleXN0b3JlLWZpbGUtY29udGVudC1kZW1vLWdnb25u
///           keyStorePassword: keystore_pass
///           sslKeyPassword: ssl_key_pass
///       deletionProtection: 'true'
/// ```
///
///
/// ## Import
///
/// GoldengateConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/goldengateConnections/{{goldengate_connection_id}}`
/// * `{{project}}/{{location}}/{{goldengate_connection_id}}`
/// * `{{location}}/{{goldengate_connection_id}}`
///
///
/// When using the `pulumi import` command, GoldengateConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/goldengateConnection:GoldengateConnection default projects/{{project}}/locations/{{location}}/goldengateConnections/{{goldengate_connection_id}}
/// $ pulumi import gcp:oracledatabase/goldengateConnection:GoldengateConnection default {{project}}/{{location}}/{{goldengate_connection_id}}
/// $ pulumi import gcp:oracledatabase/goldengateConnection:GoldengateConnection default {{location}}/{{goldengate_connection_id}}
/// ```
class GoldengateConnection extends pulumi.CustomResource {
  /// The date and time that the GoldengateConnection was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  late final pulumi.Output<bool?> deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The ID of the subscription entitlement associated with the
  /// GoldengateConnection.
  late final pulumi.Output<String> entitlementId;
  /// The GCP Oracle zone where Oracle GoldengateConnection is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final pulumi.Output<String> gcpOracleZone;
  /// The ID of the GoldengateConnection to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  late final pulumi.Output<String> goldengateConnectionId;
  /// The labels or tags associated with the GoldengateConnection.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the GoldengateConnection resource in the following format:
  /// projects/{project}/locations/{region}/goldengateConnections/{goldengate_connection}
  late final pulumi.Output<String> name;
  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  late final pulumi.Output<String> ociUrl;
  /// The name of the OdbNetwork associated with the GoldengateConnection.
  /// The format is
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}.
  /// It is optional but if specified, this should match the parent ODBNetwork
  /// of the OdbSubnet.
  late final pulumi.Output<String?> odbNetwork;
  /// The name of the OdbSubnet associated with the GoldengateConnection for IP
  /// allocation.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final pulumi.Output<String?> odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The properties of a GoldengateConnection.
  /// Structure is documented below.
  late final pulumi.Output<GoldengateConnectionProperties> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [GoldengateConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoldengateConnection]. {@macro pulumi_oracledatabase_goldengate_connection_goldengate_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoldengateConnection(
    String name, {
    GoldengateConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/goldengateConnection:GoldengateConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    goldengateConnectionId = registerOutput<String>('goldengateConnectionId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociUrl = registerOutput<String>('ociUrl');
    odbNetwork = registerOutput<String?>('odbNetwork');
    odbSubnet = registerOutput<String?>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateConnectionProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }

  /// Gets an existing [GoldengateConnection] resource's state with the given [name] and [id].
  static GoldengateConnection get(
    String name,
    pulumi.Input<String> id, {
    GoldengateConnectionState? state,
  }) {
    return GoldengateConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GoldengateConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/goldengateConnection:GoldengateConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    goldengateConnectionId = registerOutput<String>('goldengateConnectionId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociUrl = registerOutput<String>('ociUrl');
    odbNetwork = registerOutput<String?>('odbNetwork');
    odbSubnet = registerOutput<String?>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateConnectionProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
