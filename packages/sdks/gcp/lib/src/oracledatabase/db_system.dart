import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_args.dart';
import 'db_system_properties.dart';
import 'db_system_state.dart';

/// A DbSystem Resource
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Db System Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDbSystem = new gcp.oracledatabase.DbSystem("my_db_system", {
///     dbSystemId: "my-instance",
///     displayName: "my-instance displayname",
///     location: "europe-west2",
///     project: "my-project",
///     odbNetwork: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     properties: {
///         sshPublicKeys: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         computeCount: 4,
///         hostnamePrefix: "hostname1",
///         shape: "VM.Standard.x86",
///         initialDataStorageSizeGb: 256,
///         databaseEdition: "STANDARD_EDITION",
///         licenseModel: "LICENSE_INCLUDED",
///         timeZone: {
///             id: "UTC",
///         },
///         dbHome: {
///             dbVersion: "19.0.0.0",
///             database: {
///                 adminPassword: "ABcde_1#234",
///                 databaseId: "mydb",
///                 dbName: "db",
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
/// my_db_system = gcp.oracledatabase.DbSystem("my_db_system",
///     db_system_id="my-instance",
///     display_name="my-instance displayname",
///     location="europe-west2",
///     project="my-project",
///     odb_network="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     properties={
///         "ssh_public_keys": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         "compute_count": 4,
///         "hostname_prefix": "hostname1",
///         "shape": "VM.Standard.x86",
///         "initial_data_storage_size_gb": 256,
///         "database_edition": "STANDARD_EDITION",
///         "license_model": "LICENSE_INCLUDED",
///         "time_zone": {
///             "id": "UTC",
///         },
///         "db_home": {
///             "db_version": "19.0.0.0",
///             "database": {
///                 "admin_password": "ABcde_1#234",
///                 "database_id": "mydb",
///                 "db_name": "db",
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
///     var myDbSystem = new Gcp.OracleDatabase.DbSystem("my_db_system", new()
///     {
///         DbSystemId = "my-instance",
///         DisplayName = "my-instance displayname",
///         Location = "europe-west2",
///         Project = "my-project",
///         OdbNetwork = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///         OdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///         Properties = new Gcp.OracleDatabase.Inputs.DbSystemPropertiesArgs
///         {
///             SshPublicKeys = new[]
///             {
///                 "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com",
///             },
///             ComputeCount = 4,
///             HostnamePrefix = "hostname1",
///             Shape = "VM.Standard.x86",
///             InitialDataStorageSizeGb = 256,
///             DatabaseEdition = "STANDARD_EDITION",
///             LicenseModel = "LICENSE_INCLUDED",
///             TimeZone = new Gcp.OracleDatabase.Inputs.DbSystemPropertiesTimeZoneArgs
///             {
///                 Id = "UTC",
///             },
///             DbHome = new Gcp.OracleDatabase.Inputs.DbSystemPropertiesDbHomeArgs
///             {
///                 DbVersion = "19.0.0.0",
///                 Database = new Gcp.OracleDatabase.Inputs.DbSystemPropertiesDbHomeDatabaseArgs
///                 {
///                     AdminPassword = "ABcde_1#234",
///                     DatabaseId = "mydb",
///                     DbName = "db",
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
/// 		_, err := oracledatabase.NewDbSystem(ctx, "my_db_system", &oracledatabase.DbSystemArgs{
/// 			DbSystemId:  pulumi.String("my-instance"),
/// 			DisplayName: pulumi.String("my-instance displayname"),
/// 			Location:    pulumi.String("europe-west2"),
/// 			Project:     pulumi.String("my-project"),
/// 			OdbNetwork:  pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"),
/// 			OdbSubnet:   pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"),
/// 			Properties: &oracledatabase.DbSystemPropertiesArgs{
/// 				SshPublicKeys: pulumi.StringArray{
/// 					pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"),
/// 				},
/// 				ComputeCount:             pulumi.Int(4),
/// 				HostnamePrefix:           pulumi.String("hostname1"),
/// 				Shape:                    pulumi.String("VM.Standard.x86"),
/// 				InitialDataStorageSizeGb: pulumi.Int(256),
/// 				DatabaseEdition:          pulumi.String("STANDARD_EDITION"),
/// 				LicenseModel:             pulumi.String("LICENSE_INCLUDED"),
/// 				TimeZone: &oracledatabase.DbSystemPropertiesTimeZoneArgs{
/// 					Id: pulumi.String("UTC"),
/// 				},
/// 				DbHome: &oracledatabase.DbSystemPropertiesDbHomeArgs{
/// 					DbVersion: pulumi.String("19.0.0.0"),
/// 					Database: &oracledatabase.DbSystemPropertiesDbHomeDatabaseArgs{
/// 						AdminPassword: pulumi.String("ABcde_1#234"),
/// 						DatabaseId:    pulumi.String("mydb"),
/// 						DbName:        pulumi.String("db"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.DbSystem;
/// import com.pulumi.gcp.oracledatabase.DbSystemArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.DbSystemPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.DbSystemPropertiesTimeZoneArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.DbSystemPropertiesDbHomeArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.DbSystemPropertiesDbHomeDatabaseArgs;
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
///         var myDbSystem = new DbSystem("myDbSystem", DbSystemArgs.builder()
///             .dbSystemId("my-instance")
///             .displayName("my-instance displayname")
///             .location("europe-west2")
///             .project("my-project")
///             .odbNetwork("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork")
///             .odbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet")
///             .properties(DbSystemPropertiesArgs.builder()
///                 .sshPublicKeys("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com")
///                 .computeCount(4)
///                 .hostnamePrefix("hostname1")
///                 .shape("VM.Standard.x86")
///                 .initialDataStorageSizeGb(256)
///                 .databaseEdition("STANDARD_EDITION")
///                 .licenseModel("LICENSE_INCLUDED")
///                 .timeZone(DbSystemPropertiesTimeZoneArgs.builder()
///                     .id("UTC")
///                     .build())
///                 .dbHome(DbSystemPropertiesDbHomeArgs.builder()
///                     .dbVersion("19.0.0.0")
///                     .database(DbSystemPropertiesDbHomeDatabaseArgs.builder()
///                         .adminPassword("ABcde_1#234")
///                         .databaseId("mydb")
///                         .dbName("db")
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
///   myDbSystem:
///     type: gcp:oracledatabase:DbSystem
///     name: my_db_system
///     properties:
///       dbSystemId: my-instance
///       displayName: my-instance displayname
///       location: europe-west2
///       project: my-project
///       odbNetwork: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork
///       odbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet
///       properties:
///         sshPublicKeys:
///           - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com
///         computeCount: '4'
///         hostnamePrefix: hostname1
///         shape: VM.Standard.x86
///         initialDataStorageSizeGb: '256'
///         databaseEdition: STANDARD_EDITION
///         licenseModel: LICENSE_INCLUDED
///         timeZone:
///           id: UTC
///         dbHome:
///           dbVersion: 19.0.0.0
///           database:
///             adminPassword: ABcde_1#234
///             databaseId: mydb
///             dbName: db
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Db System Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDbSystem = new gcp.oracledatabase.DbSystem("my_db_system", {
///     dbSystemId: "my-instance",
///     displayName: "my-instance displayname",
///     location: "europe-west2",
///     project: "my-project",
///     odbNetwork: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     properties: {
///         sshPublicKeys: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         computeCount: 4,
///         hostnamePrefix: "hostname3",
///         computeModel: "ECPU",
///         dataStorageSizeGb: 256,
///         memorySizeGb: 8,
///         shape: "VM.Standard.x86",
///         initialDataStorageSizeGb: 256,
///         databaseEdition: "STANDARD_EDITION",
///         licenseModel: "LICENSE_INCLUDED",
///         privateIp: "10.1.2.127",
///         dbHome: {
///             dbVersion: "19.0.0.0",
///             database: {
///                 dbName: "db",
///                 dbUniqueName: "dbunique",
///                 adminPassword: "ABcde_1#2345",
///                 tdeWalletPassword: "ABcde_1#2345",
///                 databaseId: "mydb",
///             },
///             isUnifiedAuditingEnabled: true,
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_db_system = gcp.oracledatabase.DbSystem("my_db_system",
///     db_system_id="my-instance",
///     display_name="my-instance displayname",
///     location="europe-west2",
///     project="my-project",
///     odb_network="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     properties={
///         "ssh_public_keys": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         "compute_count": 4,
///         "hostname_prefix": "hostname3",
///         "compute_model": "ECPU",
///         "data_storage_size_gb": 256,
///         "memory_size_gb": 8,
///         "shape": "VM.Standard.x86",
///         "initial_data_storage_size_gb": 256,
///         "database_edition": "STANDARD_EDITION",
///         "license_model": "LICENSE_INCLUDED",
///         "private_ip": "10.1.2.127",
///         "db_home": {
///             "db_version": "19.0.0.0",
///             "database": {
///                 "db_name": "db",
///                 "db_unique_name": "dbunique",
///                 "admin_password": "ABcde_1#2345",
///                 "tde_wallet_password": "ABcde_1#2345",
///                 "database_id": "mydb",
///             },
///             "is_unified_auditing_enabled": True,
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
///     var myDbSystem = new Gcp.OracleDatabase.DbSystem("my_db_system", new()
///     {
///         DbSystemId = "my-instance",
///         DisplayName = "my-instance displayname",
///         Location = "europe-west2",
///         Project = "my-project",
///         OdbNetwork = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///         OdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///         Properties = new Gcp.OracleDatabase.Inputs.DbSystemPropertiesArgs
///         {
///             SshPublicKeys = new[]
///             {
///                 "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com",
///             },
///             ComputeCount = 4,
///             HostnamePrefix = "hostname3",
///             ComputeModel = "ECPU",
///             DataStorageSizeGb = 256,
///             MemorySizeGb = 8,
///             Shape = "VM.Standard.x86",
///             InitialDataStorageSizeGb = 256,
///             DatabaseEdition = "STANDARD_EDITION",
///             LicenseModel = "LICENSE_INCLUDED",
///             PrivateIp = "10.1.2.127",
///             DbHome = new Gcp.OracleDatabase.Inputs.DbSystemPropertiesDbHomeArgs
///             {
///                 DbVersion = "19.0.0.0",
///                 Database = new Gcp.OracleDatabase.Inputs.DbSystemPropertiesDbHomeDatabaseArgs
///                 {
///                     DbName = "db",
///                     DbUniqueName = "dbunique",
///                     AdminPassword = "ABcde_1#2345",
///                     TdeWalletPassword = "ABcde_1#2345",
///                     DatabaseId = "mydb",
///                 },
///                 IsUnifiedAuditingEnabled = true,
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
/// 		_, err := oracledatabase.NewDbSystem(ctx, "my_db_system", &oracledatabase.DbSystemArgs{
/// 			DbSystemId:  pulumi.String("my-instance"),
/// 			DisplayName: pulumi.String("my-instance displayname"),
/// 			Location:    pulumi.String("europe-west2"),
/// 			Project:     pulumi.String("my-project"),
/// 			OdbNetwork:  pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"),
/// 			OdbSubnet:   pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"),
/// 			Properties: &oracledatabase.DbSystemPropertiesArgs{
/// 				SshPublicKeys: pulumi.StringArray{
/// 					pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"),
/// 				},
/// 				ComputeCount:             pulumi.Int(4),
/// 				HostnamePrefix:           pulumi.String("hostname3"),
/// 				ComputeModel:             pulumi.String("ECPU"),
/// 				DataStorageSizeGb:        pulumi.Int(256),
/// 				MemorySizeGb:             pulumi.Int(8),
/// 				Shape:                    pulumi.String("VM.Standard.x86"),
/// 				InitialDataStorageSizeGb: pulumi.Int(256),
/// 				DatabaseEdition:          pulumi.String("STANDARD_EDITION"),
/// 				LicenseModel:             pulumi.String("LICENSE_INCLUDED"),
/// 				PrivateIp:                pulumi.String("10.1.2.127"),
/// 				DbHome: &oracledatabase.DbSystemPropertiesDbHomeArgs{
/// 					DbVersion: pulumi.String("19.0.0.0"),
/// 					Database: &oracledatabase.DbSystemPropertiesDbHomeDatabaseArgs{
/// 						DbName:            pulumi.String("db"),
/// 						DbUniqueName:      pulumi.String("dbunique"),
/// 						AdminPassword:     pulumi.String("ABcde_1#2345"),
/// 						TdeWalletPassword: pulumi.String("ABcde_1#2345"),
/// 						DatabaseId:        pulumi.String("mydb"),
/// 					},
/// 					IsUnifiedAuditingEnabled: pulumi.Bool(true),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.DbSystem;
/// import com.pulumi.gcp.oracledatabase.DbSystemArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.DbSystemPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.DbSystemPropertiesDbHomeArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.DbSystemPropertiesDbHomeDatabaseArgs;
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
///         var myDbSystem = new DbSystem("myDbSystem", DbSystemArgs.builder()
///             .dbSystemId("my-instance")
///             .displayName("my-instance displayname")
///             .location("europe-west2")
///             .project("my-project")
///             .odbNetwork("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork")
///             .odbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet")
///             .properties(DbSystemPropertiesArgs.builder()
///                 .sshPublicKeys("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com")
///                 .computeCount(4)
///                 .hostnamePrefix("hostname3")
///                 .computeModel("ECPU")
///                 .dataStorageSizeGb(256)
///                 .memorySizeGb(8)
///                 .shape("VM.Standard.x86")
///                 .initialDataStorageSizeGb(256)
///                 .databaseEdition("STANDARD_EDITION")
///                 .licenseModel("LICENSE_INCLUDED")
///                 .privateIp("10.1.2.127")
///                 .dbHome(DbSystemPropertiesDbHomeArgs.builder()
///                     .dbVersion("19.0.0.0")
///                     .database(DbSystemPropertiesDbHomeDatabaseArgs.builder()
///                         .dbName("db")
///                         .dbUniqueName("dbunique")
///                         .adminPassword("ABcde_1#2345")
///                         .tdeWalletPassword("ABcde_1#2345")
///                         .databaseId("mydb")
///                         .build())
///                     .isUnifiedAuditingEnabled(true)
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
///   myDbSystem:
///     type: gcp:oracledatabase:DbSystem
///     name: my_db_system
///     properties:
///       dbSystemId: my-instance
///       displayName: my-instance displayname
///       location: europe-west2
///       project: my-project
///       odbNetwork: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork
///       odbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet
///       properties:
///         sshPublicKeys:
///           - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com
///         computeCount: '4'
///         hostnamePrefix: hostname3
///         computeModel: ECPU
///         dataStorageSizeGb: '256'
///         memorySizeGb: '8'
///         shape: VM.Standard.x86
///         initialDataStorageSizeGb: '256'
///         databaseEdition: STANDARD_EDITION
///         licenseModel: LICENSE_INCLUDED
///         privateIp: 10.1.2.127
///         dbHome:
///           dbVersion: 19.0.0.0
///           database:
///             dbName: db
///             dbUniqueName: dbunique
///             adminPassword: ABcde_1#2345
///             tdeWalletPassword: ABcde_1#2345
///             databaseId: mydb
///           isUnifiedAuditingEnabled: 'true'
///       deletionProtection: 'true'
/// ```
///
///
/// ## Import
///
/// DbSystem can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dbSystems/{{db_system_id}}`
///
/// * `{{project}}/{{location}}/{{db_system_id}}`
///
/// * `{{location}}/{{db_system_id}}`
///
/// When using the `pulumi import` command, DbSystem can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/dbSystem:DbSystem default projects/{{project}}/locations/{{location}}/dbSystems/{{db_system_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/dbSystem:DbSystem default {{project}}/{{location}}/{{db_system_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/dbSystem:DbSystem default {{location}}/{{db_system_id}}
/// ```
class DbSystem extends pulumi.CustomResource {
  /// The date and time that the DbSystem was created.
  late final pulumi.Output<String> createTime;

  /// The ID of the DbSystem to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  late final pulumi.Output<String> dbSystemId;
  late final pulumi.Output<bool?> deletionProtection;

  /// The display name for the System db. The name does not have to
  /// be unique within your project.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The ID of the subscription entitlement associated with the DbSystem
  late final pulumi.Output<String> entitlementId;

  /// The GCP Oracle zone where Oracle DbSystem is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final pulumi.Output<String> gcpOracleZone;

  /// The labels or tags associated with the DbSystem.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The name of the DbSystem resource in the following format:
  /// projects/{project}/locations/{region}/dbSystems/{db_system}
  late final pulumi.Output<String> name;

  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  late final pulumi.Output<String> ociUrl;

  /// The name of the OdbNetwork associated with the DbSystem.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  late final pulumi.Output<String?> odbNetwork;

  /// The name of the OdbSubnet associated with the DbSystem for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final pulumi.Output<String> odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The properties of a DbSystem.
  /// Structure is documented below.
  late final pulumi.Output<DbSystemProperties?> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [DbSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbSystem]. {@macro pulumi_oracledatabase_db_system_db_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbSystem(
    String name, {
    DbSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:oracledatabase/dbSystem:DbSystem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dbSystemId = registerOutput<String>('dbSystemId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociUrl = registerOutput<String>('ociUrl');
    odbNetwork = registerOutput<String?>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<DbSystemProperties?>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DbSystemProperties.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }

  /// Gets an existing [DbSystem] resource's state with the given [name] and [id].
  static DbSystem get(
    String name,
    pulumi.Input<String> id, {
    DbSystemState? state,
  }) {
    return DbSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DbSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:oracledatabase/dbSystem:DbSystem',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dbSystemId = registerOutput<String>('dbSystemId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociUrl = registerOutput<String>('ociUrl');
    odbNetwork = registerOutput<String?>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<DbSystemProperties?>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DbSystemProperties.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
