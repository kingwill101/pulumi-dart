import 'package:pulumi/pulumi.dart' as pulumi;
import 'exadb_vm_cluster_args.dart';
import 'exadb_vm_cluster_identity_connector.dart';
import 'exadb_vm_cluster_properties.dart';
import 'exadb_vm_cluster_state.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Exadb Vm Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exascaleDbStorageVaults = new gcp.oracledatabase.ExascaleDbStorageVault("exascaleDbStorageVaults", {
///     exascaleDbStorageVaultId: "my-storage-vault",
///     displayName: "my-storage-vault displayname",
///     location: "europe-west2",
///     project: "my-project",
///     properties: {
///         exascaleDbStorageDetails: {
///             totalSizeGbs: 512,
///         },
///     },
///     deletionProtection: true,
/// });
/// const myExadbVmCluster = new gcp.oracledatabase.ExadbVmCluster("my_exadb_vm_cluster", {
///     exadbVmClusterId: "my-instance",
///     displayName: "my-instance displayname",
///     location: "europe-west2",
///     project: "my-project",
///     odbNetwork: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     backupOdbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
///     labels: {
///         "label-one": "value-one",
///     },
///     properties: {
///         sshPublicKeys: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         timeZone: {
///             id: "UTC",
///         },
///         gridImageId: "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq",
///         nodeCount: 1,
///         enabledEcpuCountPerNode: 8,
///         vmFileSystemStorage: {
///             sizeInGbsPerNode: 220,
///         },
///         exascaleDbStorageVault: exascaleDbStorageVaults.id,
///         hostnamePrefix: "hostname6",
///         shapeAttribute: "SMART_STORAGE",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// exascale_db_storage_vaults = gcp.oracledatabase.ExascaleDbStorageVault("exascaleDbStorageVaults",
///     exascale_db_storage_vault_id="my-storage-vault",
///     display_name="my-storage-vault displayname",
///     location="europe-west2",
///     project="my-project",
///     properties={
///         "exascale_db_storage_details": {
///             "total_size_gbs": 512,
///         },
///     },
///     deletion_protection=True)
/// my_exadb_vm_cluster = gcp.oracledatabase.ExadbVmCluster("my_exadb_vm_cluster",
///     exadb_vm_cluster_id="my-instance",
///     display_name="my-instance displayname",
///     location="europe-west2",
///     project="my-project",
///     odb_network="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     backup_odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
///     labels={
///         "label-one": "value-one",
///     },
///     properties={
///         "ssh_public_keys": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         "time_zone": {
///             "id": "UTC",
///         },
///         "grid_image_id": "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq",
///         "node_count": 1,
///         "enabled_ecpu_count_per_node": 8,
///         "vm_file_system_storage": {
///             "size_in_gbs_per_node": 220,
///         },
///         "exascale_db_storage_vault": exascale_db_storage_vaults.id,
///         "hostname_prefix": "hostname6",
///         "shape_attribute": "SMART_STORAGE",
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
///     var exascaleDbStorageVaults = new Gcp.OracleDatabase.ExascaleDbStorageVault("exascaleDbStorageVaults", new()
///     {
///         ExascaleDbStorageVaultId = "my-storage-vault",
///         DisplayName = "my-storage-vault displayname",
///         Location = "europe-west2",
///         Project = "my-project",
///         Properties = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesArgs
///         {
///             ExascaleDbStorageDetails = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs
///             {
///                 TotalSizeGbs = 512,
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var myExadbVmCluster = new Gcp.OracleDatabase.ExadbVmCluster("my_exadb_vm_cluster", new()
///     {
///         ExadbVmClusterId = "my-instance",
///         DisplayName = "my-instance displayname",
///         Location = "europe-west2",
///         Project = "my-project",
///         OdbNetwork = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///         OdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///         BackupOdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Properties = new Gcp.OracleDatabase.Inputs.ExadbVmClusterPropertiesArgs
///         {
///             SshPublicKeys = new[]
///             {
///                 "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com",
///             },
///             TimeZone = new Gcp.OracleDatabase.Inputs.ExadbVmClusterPropertiesTimeZoneArgs
///             {
///                 Id = "UTC",
///             },
///             GridImageId = "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq",
///             NodeCount = 1,
///             EnabledEcpuCountPerNode = 8,
///             VmFileSystemStorage = new Gcp.OracleDatabase.Inputs.ExadbVmClusterPropertiesVmFileSystemStorageArgs
///             {
///                 SizeInGbsPerNode = 220,
///             },
///             ExascaleDbStorageVault = exascaleDbStorageVaults.Id,
///             HostnamePrefix = "hostname6",
///             ShapeAttribute = "SMART_STORAGE",
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
/// 		exascaleDbStorageVaults, err := oracledatabase.NewExascaleDbStorageVault(ctx, "exascaleDbStorageVaults", &oracledatabase.ExascaleDbStorageVaultArgs{
/// 			ExascaleDbStorageVaultId: pulumi.String("my-storage-vault"),
/// 			DisplayName:              pulumi.String("my-storage-vault displayname"),
/// 			Location:                 pulumi.String("europe-west2"),
/// 			Project:                  pulumi.String("my-project"),
/// 			Properties: &oracledatabase.ExascaleDbStorageVaultPropertiesArgs{
/// 				ExascaleDbStorageDetails: &oracledatabase.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs{
/// 					TotalSizeGbs: pulumi.Int(512),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracledatabase.NewExadbVmCluster(ctx, "my_exadb_vm_cluster", &oracledatabase.ExadbVmClusterArgs{
/// 			ExadbVmClusterId: pulumi.String("my-instance"),
/// 			DisplayName:      pulumi.String("my-instance displayname"),
/// 			Location:         pulumi.String("europe-west2"),
/// 			Project:          pulumi.String("my-project"),
/// 			OdbNetwork:       pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"),
/// 			OdbSubnet:        pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"),
/// 			BackupOdbSubnet:  pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Properties: &oracledatabase.ExadbVmClusterPropertiesArgs{
/// 				SshPublicKeys: pulumi.StringArray{
/// 					pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"),
/// 				},
/// 				TimeZone: &oracledatabase.ExadbVmClusterPropertiesTimeZoneArgs{
/// 					Id: pulumi.String("UTC"),
/// 				},
/// 				GridImageId:             pulumi.String("ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq"),
/// 				NodeCount:               pulumi.Int(1),
/// 				EnabledEcpuCountPerNode: pulumi.Int(8),
/// 				VmFileSystemStorage: &oracledatabase.ExadbVmClusterPropertiesVmFileSystemStorageArgs{
/// 					SizeInGbsPerNode: pulumi.Int(220),
/// 				},
/// 				ExascaleDbStorageVault: exascaleDbStorageVaults.ID().ToIDOutput().ToStringOutput(),
/// 				HostnamePrefix:         pulumi.String("hostname6"),
/// 				ShapeAttribute:         pulumi.String("SMART_STORAGE"),
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
/// resource "gcp_oracledatabase_exadbvmcluster" "my_exadb_vm_cluster" {
///   exadb_vm_cluster_id = "my-instance"
///   display_name        = "my-instance displayname"
///   location            = "europe-west2"
///   project             = "my-project"
///   odb_network         = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"
///   odb_subnet          = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"
///   backup_odb_subnet   = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet"
///   labels = {
///     "label-one" = "value-one"
///   }
///   properties = {
///     ssh_public_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"]
///     time_zone = {
///       id = "UTC"
///     }
///     grid_image_id               = "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq"
///     node_count                  = 1
///     enabled_ecpu_count_per_node = 8
///     vm_file_system_storage = {
///       size_in_gbs_per_node = 220
///     }
///     exascale_db_storage_vault = gcp_oracledatabase_exascaledbstoragevault.exascaleDbStorageVaults.id
///     hostname_prefix           = "hostname6"
///     shape_attribute           = "SMART_STORAGE"
///   }
///   deletion_protection = "true"
/// }
/// resource "gcp_oracledatabase_exascaledbstoragevault" "exascaleDbStorageVaults" {
///   exascale_db_storage_vault_id = "my-storage-vault"
///   display_name                 = "my-storage-vault displayname"
///   location                     = "europe-west2"
///   project                      = "my-project"
///   properties = {
///     exascale_db_storage_details = {
///       total_size_gbs = 512
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
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVault;
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVaultArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs;
/// import com.pulumi.gcp.oracledatabase.ExadbVmCluster;
/// import com.pulumi.gcp.oracledatabase.ExadbVmClusterArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExadbVmClusterPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExadbVmClusterPropertiesTimeZoneArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExadbVmClusterPropertiesVmFileSystemStorageArgs;
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
///         var exascaleDbStorageVaults = new ExascaleDbStorageVault("exascaleDbStorageVaults", ExascaleDbStorageVaultArgs.builder()
///             .exascaleDbStorageVaultId("my-storage-vault")
///             .displayName("my-storage-vault displayname")
///             .location("europe-west2")
///             .project("my-project")
///             .properties(ExascaleDbStorageVaultPropertiesArgs.builder()
///                 .exascaleDbStorageDetails(ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs.builder()
///                     .totalSizeGbs(512)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var myExadbVmCluster = new ExadbVmCluster("myExadbVmCluster", ExadbVmClusterArgs.builder()
///             .exadbVmClusterId("my-instance")
///             .displayName("my-instance displayname")
///             .location("europe-west2")
///             .project("my-project")
///             .odbNetwork("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork")
///             .odbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet")
///             .backupOdbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet")
///             .labels(Map.of("label-one", "value-one"))
///             .properties(ExadbVmClusterPropertiesArgs.builder()
///                 .sshPublicKeys("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com")
///                 .timeZone(ExadbVmClusterPropertiesTimeZoneArgs.builder()
///                     .id("UTC")
///                     .build())
///                 .gridImageId("ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq")
///                 .nodeCount(1)
///                 .enabledEcpuCountPerNode(8)
///                 .vmFileSystemStorage(ExadbVmClusterPropertiesVmFileSystemStorageArgs.builder()
///                     .sizeInGbsPerNode(220)
///                     .build())
///                 .exascaleDbStorageVault(exascaleDbStorageVaults.id())
///                 .hostnamePrefix("hostname6")
///                 .shapeAttribute("SMART_STORAGE")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myExadbVmCluster:
///     type: gcp:oracledatabase:ExadbVmCluster
///     name: my_exadb_vm_cluster
///     properties:
///       exadbVmClusterId: my-instance
///       displayName: my-instance displayname
///       location: europe-west2
///       project: my-project
///       odbNetwork: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork
///       odbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet
///       backupOdbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet
///       labels:
///         label-one: value-one
///       properties:
///         sshPublicKeys:
///           - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com
///         timeZone:
///           id: UTC
///         gridImageId: ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq
///         nodeCount: 1
///         enabledEcpuCountPerNode: 8
///         vmFileSystemStorage:
///           sizeInGbsPerNode: 220
///         exascaleDbStorageVault: ${exascaleDbStorageVaults.id}
///         hostnamePrefix: hostname6
///         shapeAttribute: SMART_STORAGE
///       deletionProtection: 'true'
///   exascaleDbStorageVaults:
///     type: gcp:oracledatabase:ExascaleDbStorageVault
///     properties:
///       exascaleDbStorageVaultId: my-storage-vault
///       displayName: my-storage-vault displayname
///       location: europe-west2
///       project: my-project
///       properties:
///         exascaleDbStorageDetails:
///           totalSizeGbs: 512
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Exadb Vm Cluster Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exascaleDbStorageVaults = new gcp.oracledatabase.ExascaleDbStorageVault("exascaleDbStorageVaults", {
///     exascaleDbStorageVaultId: "my-storage-vault",
///     displayName: "my-storage-vault displayname",
///     location: "europe-west2",
///     project: "my-project",
///     properties: {
///         exascaleDbStorageDetails: {
///             totalSizeGbs: 512,
///         },
///     },
///     deletionProtection: true,
/// });
/// const myExadbVmCluster = new gcp.oracledatabase.ExadbVmCluster("my_exadb_vm_cluster", {
///     exadbVmClusterId: "my-instance",
///     displayName: "my-instance displayname",
///     location: "europe-west2",
///     project: "my-project",
///     odbNetwork: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     backupOdbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
///     labels: {
///         "label-one": "value-one",
///     },
///     properties: {
///         sshPublicKeys: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         timeZone: {
///             id: "UTC",
///         },
///         gridImageId: "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq",
///         nodeCount: 1,
///         enabledEcpuCountPerNode: 8,
///         vmFileSystemStorage: {
///             sizeInGbsPerNode: 220,
///         },
///         exascaleDbStorageVault: exascaleDbStorageVaults.id,
///         hostnamePrefix: "hostname8",
///         shapeAttribute: "SMART_STORAGE",
///         dataCollectionOptions: {
///             isDiagnosticsEventsEnabled: true,
///             isHealthMonitoringEnabled: true,
///             isIncidentLogsEnabled: true,
///         },
///         licenseModel: "LICENSE_INCLUDED",
///         scanListenerPortTcp: 1521,
///         additionalEcpuCountPerNode: 8,
///         clusterName: "example",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// exascale_db_storage_vaults = gcp.oracledatabase.ExascaleDbStorageVault("exascaleDbStorageVaults",
///     exascale_db_storage_vault_id="my-storage-vault",
///     display_name="my-storage-vault displayname",
///     location="europe-west2",
///     project="my-project",
///     properties={
///         "exascale_db_storage_details": {
///             "total_size_gbs": 512,
///         },
///     },
///     deletion_protection=True)
/// my_exadb_vm_cluster = gcp.oracledatabase.ExadbVmCluster("my_exadb_vm_cluster",
///     exadb_vm_cluster_id="my-instance",
///     display_name="my-instance displayname",
///     location="europe-west2",
///     project="my-project",
///     odb_network="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     backup_odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
///     labels={
///         "label-one": "value-one",
///     },
///     properties={
///         "ssh_public_keys": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
///         "time_zone": {
///             "id": "UTC",
///         },
///         "grid_image_id": "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq",
///         "node_count": 1,
///         "enabled_ecpu_count_per_node": 8,
///         "vm_file_system_storage": {
///             "size_in_gbs_per_node": 220,
///         },
///         "exascale_db_storage_vault": exascale_db_storage_vaults.id,
///         "hostname_prefix": "hostname8",
///         "shape_attribute": "SMART_STORAGE",
///         "data_collection_options": {
///             "is_diagnostics_events_enabled": True,
///             "is_health_monitoring_enabled": True,
///             "is_incident_logs_enabled": True,
///         },
///         "license_model": "LICENSE_INCLUDED",
///         "scan_listener_port_tcp": 1521,
///         "additional_ecpu_count_per_node": 8,
///         "cluster_name": "example",
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
///     var exascaleDbStorageVaults = new Gcp.OracleDatabase.ExascaleDbStorageVault("exascaleDbStorageVaults", new()
///     {
///         ExascaleDbStorageVaultId = "my-storage-vault",
///         DisplayName = "my-storage-vault displayname",
///         Location = "europe-west2",
///         Project = "my-project",
///         Properties = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesArgs
///         {
///             ExascaleDbStorageDetails = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs
///             {
///                 TotalSizeGbs = 512,
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var myExadbVmCluster = new Gcp.OracleDatabase.ExadbVmCluster("my_exadb_vm_cluster", new()
///     {
///         ExadbVmClusterId = "my-instance",
///         DisplayName = "my-instance displayname",
///         Location = "europe-west2",
///         Project = "my-project",
///         OdbNetwork = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///         OdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///         BackupOdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Properties = new Gcp.OracleDatabase.Inputs.ExadbVmClusterPropertiesArgs
///         {
///             SshPublicKeys = new[]
///             {
///                 "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com",
///             },
///             TimeZone = new Gcp.OracleDatabase.Inputs.ExadbVmClusterPropertiesTimeZoneArgs
///             {
///                 Id = "UTC",
///             },
///             GridImageId = "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq",
///             NodeCount = 1,
///             EnabledEcpuCountPerNode = 8,
///             VmFileSystemStorage = new Gcp.OracleDatabase.Inputs.ExadbVmClusterPropertiesVmFileSystemStorageArgs
///             {
///                 SizeInGbsPerNode = 220,
///             },
///             ExascaleDbStorageVault = exascaleDbStorageVaults.Id,
///             HostnamePrefix = "hostname8",
///             ShapeAttribute = "SMART_STORAGE",
///             DataCollectionOptions = new Gcp.OracleDatabase.Inputs.ExadbVmClusterPropertiesDataCollectionOptionsArgs
///             {
///                 IsDiagnosticsEventsEnabled = true,
///                 IsHealthMonitoringEnabled = true,
///                 IsIncidentLogsEnabled = true,
///             },
///             LicenseModel = "LICENSE_INCLUDED",
///             ScanListenerPortTcp = 1521,
///             AdditionalEcpuCountPerNode = 8,
///             ClusterName = "example",
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
/// 		exascaleDbStorageVaults, err := oracledatabase.NewExascaleDbStorageVault(ctx, "exascaleDbStorageVaults", &oracledatabase.ExascaleDbStorageVaultArgs{
/// 			ExascaleDbStorageVaultId: pulumi.String("my-storage-vault"),
/// 			DisplayName:              pulumi.String("my-storage-vault displayname"),
/// 			Location:                 pulumi.String("europe-west2"),
/// 			Project:                  pulumi.String("my-project"),
/// 			Properties: &oracledatabase.ExascaleDbStorageVaultPropertiesArgs{
/// 				ExascaleDbStorageDetails: &oracledatabase.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs{
/// 					TotalSizeGbs: pulumi.Int(512),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracledatabase.NewExadbVmCluster(ctx, "my_exadb_vm_cluster", &oracledatabase.ExadbVmClusterArgs{
/// 			ExadbVmClusterId: pulumi.String("my-instance"),
/// 			DisplayName:      pulumi.String("my-instance displayname"),
/// 			Location:         pulumi.String("europe-west2"),
/// 			Project:          pulumi.String("my-project"),
/// 			OdbNetwork:       pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"),
/// 			OdbSubnet:        pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"),
/// 			BackupOdbSubnet:  pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Properties: &oracledatabase.ExadbVmClusterPropertiesArgs{
/// 				SshPublicKeys: pulumi.StringArray{
/// 					pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"),
/// 				},
/// 				TimeZone: &oracledatabase.ExadbVmClusterPropertiesTimeZoneArgs{
/// 					Id: pulumi.String("UTC"),
/// 				},
/// 				GridImageId:             pulumi.String("ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq"),
/// 				NodeCount:               pulumi.Int(1),
/// 				EnabledEcpuCountPerNode: pulumi.Int(8),
/// 				VmFileSystemStorage: &oracledatabase.ExadbVmClusterPropertiesVmFileSystemStorageArgs{
/// 					SizeInGbsPerNode: pulumi.Int(220),
/// 				},
/// 				ExascaleDbStorageVault: exascaleDbStorageVaults.ID().ToIDOutput().ToStringOutput(),
/// 				HostnamePrefix:         pulumi.String("hostname8"),
/// 				ShapeAttribute:         pulumi.String("SMART_STORAGE"),
/// 				DataCollectionOptions: &oracledatabase.ExadbVmClusterPropertiesDataCollectionOptionsArgs{
/// 					IsDiagnosticsEventsEnabled: pulumi.Bool(true),
/// 					IsHealthMonitoringEnabled:  pulumi.Bool(true),
/// 					IsIncidentLogsEnabled:      pulumi.Bool(true),
/// 				},
/// 				LicenseModel:               pulumi.String("LICENSE_INCLUDED"),
/// 				ScanListenerPortTcp:        pulumi.Int(1521),
/// 				AdditionalEcpuCountPerNode: pulumi.Int(8),
/// 				ClusterName:                pulumi.String("example"),
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
/// resource "gcp_oracledatabase_exadbvmcluster" "my_exadb_vm_cluster" {
///   exadb_vm_cluster_id = "my-instance"
///   display_name        = "my-instance displayname"
///   location            = "europe-west2"
///   project             = "my-project"
///   odb_network         = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"
///   odb_subnet          = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"
///   backup_odb_subnet   = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet"
///   labels = {
///     "label-one" = "value-one"
///   }
///   properties = {
///     ssh_public_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"]
///     time_zone = {
///       id = "UTC"
///     }
///     grid_image_id               = "ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq"
///     node_count                  = 1
///     enabled_ecpu_count_per_node = 8
///     vm_file_system_storage = {
///       size_in_gbs_per_node = 220
///     }
///     exascale_db_storage_vault = gcp_oracledatabase_exascaledbstoragevault.exascaleDbStorageVaults.id
///     hostname_prefix           = "hostname8"
///     shape_attribute           = "SMART_STORAGE"
///     data_collection_options = {
///       is_diagnostics_events_enabled = "true"
///       is_health_monitoring_enabled  = "true"
///       is_incident_logs_enabled      = "true"
///     }
///     license_model                  = "LICENSE_INCLUDED"
///     scan_listener_port_tcp         = 1521
///     additional_ecpu_count_per_node = 8
///     cluster_name                   = "example"
///   }
///   deletion_protection = "true"
/// }
/// resource "gcp_oracledatabase_exascaledbstoragevault" "exascaleDbStorageVaults" {
///   exascale_db_storage_vault_id = "my-storage-vault"
///   display_name                 = "my-storage-vault displayname"
///   location                     = "europe-west2"
///   project                      = "my-project"
///   properties = {
///     exascale_db_storage_details = {
///       total_size_gbs = 512
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
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVault;
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVaultArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs;
/// import com.pulumi.gcp.oracledatabase.ExadbVmCluster;
/// import com.pulumi.gcp.oracledatabase.ExadbVmClusterArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExadbVmClusterPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExadbVmClusterPropertiesTimeZoneArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExadbVmClusterPropertiesVmFileSystemStorageArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExadbVmClusterPropertiesDataCollectionOptionsArgs;
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
///         var exascaleDbStorageVaults = new ExascaleDbStorageVault("exascaleDbStorageVaults", ExascaleDbStorageVaultArgs.builder()
///             .exascaleDbStorageVaultId("my-storage-vault")
///             .displayName("my-storage-vault displayname")
///             .location("europe-west2")
///             .project("my-project")
///             .properties(ExascaleDbStorageVaultPropertiesArgs.builder()
///                 .exascaleDbStorageDetails(ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs.builder()
///                     .totalSizeGbs(512)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var myExadbVmCluster = new ExadbVmCluster("myExadbVmCluster", ExadbVmClusterArgs.builder()
///             .exadbVmClusterId("my-instance")
///             .displayName("my-instance displayname")
///             .location("europe-west2")
///             .project("my-project")
///             .odbNetwork("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork")
///             .odbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet")
///             .backupOdbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet")
///             .labels(Map.of("label-one", "value-one"))
///             .properties(ExadbVmClusterPropertiesArgs.builder()
///                 .sshPublicKeys("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com")
///                 .timeZone(ExadbVmClusterPropertiesTimeZoneArgs.builder()
///                     .id("UTC")
///                     .build())
///                 .gridImageId("ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq")
///                 .nodeCount(1)
///                 .enabledEcpuCountPerNode(8)
///                 .vmFileSystemStorage(ExadbVmClusterPropertiesVmFileSystemStorageArgs.builder()
///                     .sizeInGbsPerNode(220)
///                     .build())
///                 .exascaleDbStorageVault(exascaleDbStorageVaults.id())
///                 .hostnamePrefix("hostname8")
///                 .shapeAttribute("SMART_STORAGE")
///                 .dataCollectionOptions(ExadbVmClusterPropertiesDataCollectionOptionsArgs.builder()
///                     .isDiagnosticsEventsEnabled(true)
///                     .isHealthMonitoringEnabled(true)
///                     .isIncidentLogsEnabled(true)
///                     .build())
///                 .licenseModel("LICENSE_INCLUDED")
///                 .scanListenerPortTcp(1521)
///                 .additionalEcpuCountPerNode(8)
///                 .clusterName("example")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myExadbVmCluster:
///     type: gcp:oracledatabase:ExadbVmCluster
///     name: my_exadb_vm_cluster
///     properties:
///       exadbVmClusterId: my-instance
///       displayName: my-instance displayname
///       location: europe-west2
///       project: my-project
///       odbNetwork: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork
///       odbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet
///       backupOdbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet
///       labels:
///         label-one: value-one
///       properties:
///         sshPublicKeys:
///           - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com
///         timeZone:
///           id: UTC
///         gridImageId: ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq
///         nodeCount: 1
///         enabledEcpuCountPerNode: 8
///         vmFileSystemStorage:
///           sizeInGbsPerNode: 220
///         exascaleDbStorageVault: ${exascaleDbStorageVaults.id}
///         hostnamePrefix: hostname8
///         shapeAttribute: SMART_STORAGE
///         dataCollectionOptions:
///           isDiagnosticsEventsEnabled: 'true'
///           isHealthMonitoringEnabled: 'true'
///           isIncidentLogsEnabled: 'true'
///         licenseModel: LICENSE_INCLUDED
///         scanListenerPortTcp: 1521
///         additionalEcpuCountPerNode: 8
///         clusterName: example
///       deletionProtection: 'true'
///   exascaleDbStorageVaults:
///     type: gcp:oracledatabase:ExascaleDbStorageVault
///     properties:
///       exascaleDbStorageVaultId: my-storage-vault
///       displayName: my-storage-vault displayname
///       location: europe-west2
///       project: my-project
///       properties:
///         exascaleDbStorageDetails:
///           totalSizeGbs: 512
///       deletionProtection: 'true'
/// ```
///
///
/// ## Import
///
/// ExadbVmCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/exadbVmClusters/{{exadb_vm_cluster_id}}`
/// * `{{project}}/{{location}}/{{exadb_vm_cluster_id}}`
/// * `{{location}}/{{exadb_vm_cluster_id}}`
///
///
/// When using the `pulumi import` command, ExadbVmCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/exadbVmCluster:ExadbVmCluster default projects/{{project}}/locations/{{location}}/exadbVmClusters/{{exadb_vm_cluster_id}}
/// $ pulumi import gcp:oracledatabase/exadbVmCluster:ExadbVmCluster default {{project}}/{{location}}/{{exadb_vm_cluster_id}}
/// $ pulumi import gcp:oracledatabase/exadbVmCluster:ExadbVmCluster default {{location}}/{{exadb_vm_cluster_id}}
/// ```
class ExadbVmCluster extends pulumi.CustomResource {
  /// The name of the backup OdbSubnet associated with the ExadbVmCluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final pulumi.Output<String> backupOdbSubnet;
  /// The date and time that the ExadbVmCluster was created.
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
  /// The display name for the ExadbVmCluster. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The ID of the subscription entitlement associated with the ExadbVmCluster.
  late final pulumi.Output<String> entitlementId;
  /// The ID of the ExadbVmCluster to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  late final pulumi.Output<String> exadbVmClusterId;
  /// The GCP Oracle zone where Oracle ExadbVmCluster is hosted.
  /// Example: us-east4-b-r2.
  /// During creation, the system will pick the zone assigned to the
  /// ExascaleDbStorageVault.
  late final pulumi.Output<String> gcpOracleZone;
  /// The identity connector details which will allow OCI to securely access
  /// the resources in the customer project.
  /// Structure is documented below.
  late final pulumi.Output<List<ExadbVmClusterIdentityConnector>> identityConnectors;
  /// The labels or tags associated with the ExadbVmCluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the ExadbVmCluster resource in the following format:
  /// projects/{project}/locations/{region}/exadbVmClusters/{exadb_vm_cluster}
  late final pulumi.Output<String> name;
  /// The name of the OdbNetwork associated with the ExadbVmCluster.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  late final pulumi.Output<String?> odbNetwork;
  /// The name of the OdbSubnet associated with the ExadbVmCluster for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final pulumi.Output<String> odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The properties of an ExadbVmCluster.
  /// Structure is documented below.
  late final pulumi.Output<ExadbVmClusterProperties> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [ExadbVmCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExadbVmCluster]. {@macro pulumi_oracledatabase_exadb_vm_cluster_exadb_vm_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExadbVmCluster(
    String name, {
    ExadbVmClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/exadbVmCluster:ExadbVmCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    backupOdbSubnet = registerOutput<String>('backupOdbSubnet');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    exadbVmClusterId = registerOutput<String>('exadbVmClusterId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    identityConnectors = registerOutput<List<ExadbVmClusterIdentityConnector>>('identityConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExadbVmClusterIdentityConnector>(guardedValue, (value) => ExadbVmClusterIdentityConnector.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    odbNetwork = registerOutput<String?>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<ExadbVmClusterProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExadbVmClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }

  /// Gets an existing [ExadbVmCluster] resource's state with the given [name] and [id].
  static ExadbVmCluster get(
    String name,
    pulumi.Input<String> id, {
    ExadbVmClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ExadbVmCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ExadbVmCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/exadbVmCluster:ExadbVmCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupOdbSubnet = registerOutput<String>('backupOdbSubnet');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    exadbVmClusterId = registerOutput<String>('exadbVmClusterId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    identityConnectors = registerOutput<List<ExadbVmClusterIdentityConnector>>('identityConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExadbVmClusterIdentityConnector>(guardedValue, (value) => ExadbVmClusterIdentityConnector.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    odbNetwork = registerOutput<String?>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<ExadbVmClusterProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExadbVmClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }

  /// Creates a typed reference to an existing [ExadbVmCluster] resource.
  ExadbVmCluster.reference(String urn)
    : super(
        'gcp:oracledatabase/exadbVmCluster:ExadbVmCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    backupOdbSubnet = registerOutput<String>('backupOdbSubnet');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    exadbVmClusterId = registerOutput<String>('exadbVmClusterId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    identityConnectors = registerOutput<List<ExadbVmClusterIdentityConnector>>('identityConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExadbVmClusterIdentityConnector>(guardedValue, (value) => ExadbVmClusterIdentityConnector.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    odbNetwork = registerOutput<String?>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<ExadbVmClusterProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExadbVmClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }
}
