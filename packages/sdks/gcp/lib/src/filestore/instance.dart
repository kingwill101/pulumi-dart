import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_directory_services.dart';
import 'instance_file_shares.dart';
import 'instance_initial_replication.dart';
import 'instance_performance_config.dart';
import 'instance_state.dart';

/// A Google Cloud Filestore instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/filestore/docs/reference/rest/v1beta1/projects.locations.instances/create)
/// * How-to Guides
/// * [Copying Data In/Out](https://cloud.google.com/filestore/docs/copying-data)
/// * [Official Documentation](https://cloud.google.com/filestore/docs/creating-instances)
/// * [Use with Kubernetes](https://cloud.google.com/filestore/docs/accessing-fileshares)
///
/// ## Example Usage
///
/// ### Filestore Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.filestore.Instance("instance", {
///     name: "test-instance",
///     location: "us-central1-b",
///     tier: "BASIC_HDD",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.filestore.Instance("instance",
///     name="test-instance",
///     location="us-central1-b",
///     tier="BASIC_HDD",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
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
///     var instance = new Gcp.Filestore.Instance("instance", new()
///     {
///         Name = "test-instance",
///         Location = "us-central1-b",
///         Tier = "BASIC_HDD",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := filestore.NewInstance(ctx, "instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("test-instance"),
/// 			Location: pulumi.String("us-central1-b"),
/// 			Tier:     pulumi.String("BASIC_HDD"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
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
/// resource "gcp_filestore_instance" "instance" {
///   name     = "test-instance"
///   location = "us-central1-b"
///   tier     = "BASIC_HDD"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share1"
///   }
///   networks {
///     network = "default"
///     modes   = ["MODE_IPV4"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("test-instance")
///             .location("us-central1-b")
///             .tier("BASIC_HDD")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:filestore:Instance
///     properties:
///       name: test-instance
///       location: us-central1-b
///       tier: BASIC_HDD
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
/// ```
///
/// ### Filestore Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.filestore.Instance("instance", {
///     name: "test-instance",
///     location: "us-central1-b",
///     tier: "BASIC_SSD",
///     fileShares: {
///         capacityGb: 2560,
///         name: "share1",
///         nfsExportOptions: [
///             {
///                 ipRanges: ["10.0.0.0/24"],
///                 accessMode: "READ_WRITE",
///                 squashMode: "NO_ROOT_SQUASH",
///             },
///             {
///                 ipRanges: ["10.10.0.0/24"],
///                 accessMode: "READ_ONLY",
///                 squashMode: "ROOT_SQUASH",
///                 anonUid: 123,
///                 anonGid: 456,
///             },
///         ],
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///         connectMode: "DIRECT_PEERING",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.filestore.Instance("instance",
///     name="test-instance",
///     location="us-central1-b",
///     tier="BASIC_SSD",
///     file_shares={
///         "capacity_gb": 2560,
///         "name": "share1",
///         "nfs_export_options": [
///             {
///                 "ip_ranges": ["10.0.0.0/24"],
///                 "access_mode": "READ_WRITE",
///                 "squash_mode": "NO_ROOT_SQUASH",
///             },
///             {
///                 "ip_ranges": ["10.10.0.0/24"],
///                 "access_mode": "READ_ONLY",
///                 "squash_mode": "ROOT_SQUASH",
///                 "anon_uid": 123,
///                 "anon_gid": 456,
///             },
///         ],
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
///         "connect_mode": "DIRECT_PEERING",
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
///     var instance = new Gcp.Filestore.Instance("instance", new()
///     {
///         Name = "test-instance",
///         Location = "us-central1-b",
///         Tier = "BASIC_SSD",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 2560,
///             Name = "share1",
///             NfsExportOptions = new[]
///             {
///                 new Gcp.Filestore.Inputs.InstanceFileSharesNfsExportOptionArgs
///                 {
///                     IpRanges = new[]
///                     {
///                         "10.0.0.0/24",
///                     },
///                     AccessMode = "READ_WRITE",
///                     SquashMode = "NO_ROOT_SQUASH",
///                 },
///                 new Gcp.Filestore.Inputs.InstanceFileSharesNfsExportOptionArgs
///                 {
///                     IpRanges = new[]
///                     {
///                         "10.10.0.0/24",
///                     },
///                     AccessMode = "READ_ONLY",
///                     SquashMode = "ROOT_SQUASH",
///                     AnonUid = 123,
///                     AnonGid = 456,
///                 },
///             },
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///                 ConnectMode = "DIRECT_PEERING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := filestore.NewInstance(ctx, "instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("test-instance"),
/// 			Location: pulumi.String("us-central1-b"),
/// 			Tier:     pulumi.String("BASIC_SSD"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(2560),
/// 				Name:       pulumi.String("share1"),
/// 				NfsExportOptions: filestore.InstanceFileSharesNfsExportOptionArray{
/// 					&filestore.InstanceFileSharesNfsExportOptionArgs{
/// 						IpRanges: pulumi.StringArray{
/// 							pulumi.String("10.0.0.0/24"),
/// 						},
/// 						AccessMode: pulumi.String("READ_WRITE"),
/// 						SquashMode: pulumi.String("NO_ROOT_SQUASH"),
/// 					},
/// 					&filestore.InstanceFileSharesNfsExportOptionArgs{
/// 						IpRanges: pulumi.StringArray{
/// 							pulumi.String("10.10.0.0/24"),
/// 						},
/// 						AccessMode: pulumi.String("READ_ONLY"),
/// 						SquashMode: pulumi.String("ROOT_SQUASH"),
/// 						AnonUid:    pulumi.Int(123),
/// 						AnonGid:    pulumi.Int(456),
/// 					},
/// 				},
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 					ConnectMode: pulumi.String("DIRECT_PEERING"),
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
/// resource "gcp_filestore_instance" "instance" {
///   name     = "test-instance"
///   location = "us-central1-b"
///   tier     = "BASIC_SSD"
///   file_shares = {
///     capacity_gb = 2560
///     name        = "share1"
///     nfs_export_options = [{
///       "ipRanges"   = ["10.0.0.0/24"]
///       "accessMode" = "READ_WRITE"
///       "squashMode" = "NO_ROOT_SQUASH"
///       }, {
///       "ipRanges"   = ["10.10.0.0/24"]
///       "accessMode" = "READ_ONLY"
///       "squashMode" = "ROOT_SQUASH"
///       "anonUid"    = 123
///       "anonGid"    = 456
///     }]
///   }
///   networks {
///     network      = "default"
///     modes        = ["MODE_IPV4"]
///     connect_mode = "DIRECT_PEERING"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesNfsExportOptionArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("test-instance")
///             .location("us-central1-b")
///             .tier("BASIC_SSD")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(2560)
///                 .name("share1")
///                 .nfsExportOptions(
///                     InstanceFileSharesNfsExportOptionArgs.builder()
///                         .ipRanges("10.0.0.0/24")
///                         .accessMode("READ_WRITE")
///                         .squashMode("NO_ROOT_SQUASH")
///                         .build(),
///                     InstanceFileSharesNfsExportOptionArgs.builder()
///                         .ipRanges("10.10.0.0/24")
///                         .accessMode("READ_ONLY")
///                         .squashMode("ROOT_SQUASH")
///                         .anonUid(123)
///                         .anonGid(456)
///                         .build())
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .connectMode("DIRECT_PEERING")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:filestore:Instance
///     properties:
///       name: test-instance
///       location: us-central1-b
///       tier: BASIC_SSD
///       fileShares:
///         capacityGb: 2560
///         name: share1
///         nfsExportOptions:
///           - ipRanges:
///               - 10.0.0.0/24
///             accessMode: READ_WRITE
///             squashMode: NO_ROOT_SQUASH
///           - ipRanges:
///               - 10.10.0.0/24
///             accessMode: READ_ONLY
///             squashMode: ROOT_SQUASH
///             anonUid: 123
///             anonGid: 456
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
///           connectMode: DIRECT_PEERING
/// ```
///
/// ### Filestore Instance Protocol
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.filestore.Instance("instance", {
///     name: "test-instance",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     protocol: "NFS_V4_1",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.filestore.Instance("instance",
///     name="test-instance",
///     location="us-central1",
///     tier="ENTERPRISE",
///     protocol="NFS_V4_1",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
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
///     var instance = new Gcp.Filestore.Instance("instance", new()
///     {
///         Name = "test-instance",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         Protocol = "NFS_V4_1",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := filestore.NewInstance(ctx, "instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("test-instance"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			Protocol: pulumi.String("NFS_V4_1"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
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
/// resource "gcp_filestore_instance" "instance" {
///   name     = "test-instance"
///   location = "us-central1"
///   tier     = "ENTERPRISE"
///   protocol = "NFS_V4_1"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share1"
///   }
///   networks {
///     network = "default"
///     modes   = ["MODE_IPV4"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("test-instance")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .protocol("NFS_V4_1")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:filestore:Instance
///     properties:
///       name: test-instance
///       location: us-central1
///       tier: ENTERPRISE
///       protocol: NFS_V4_1
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
/// ```
///
/// ### Filestore Instance Enterprise
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const filestoreKeyring = new gcp.kms.KeyRing("filestore_keyring", {
///     name: "filestore-keyring",
///     location: "us-central1",
/// });
/// const filestoreKey = new gcp.kms.CryptoKey("filestore_key", {
///     name: "filestore-key",
///     keyRing: filestoreKeyring.id,
/// });
/// const instance = new gcp.filestore.Instance("instance", {
///     name: "test-instance",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///     }],
///     kmsKeyName: filestoreKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// filestore_keyring = gcp.kms.KeyRing("filestore_keyring",
///     name="filestore-keyring",
///     location="us-central1")
/// filestore_key = gcp.kms.CryptoKey("filestore_key",
///     name="filestore-key",
///     key_ring=filestore_keyring.id)
/// instance = gcp.filestore.Instance("instance",
///     name="test-instance",
///     location="us-central1",
///     tier="ENTERPRISE",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
///     }],
///     kms_key_name=filestore_key.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filestoreKeyring = new Gcp.Kms.KeyRing("filestore_keyring", new()
///     {
///         Name = "filestore-keyring",
///         Location = "us-central1",
///     });
///
///     var filestoreKey = new Gcp.Kms.CryptoKey("filestore_key", new()
///     {
///         Name = "filestore-key",
///         KeyRing = filestoreKeyring.Id,
///     });
///
///     var instance = new Gcp.Filestore.Instance("instance", new()
///     {
///         Name = "test-instance",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///             },
///         },
///         KmsKeyName = filestoreKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filestoreKeyring, err := kms.NewKeyRing(ctx, "filestore_keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("filestore-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		filestoreKey, err := kms.NewCryptoKey(ctx, "filestore_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("filestore-key"),
/// 			KeyRing: filestoreKeyring.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = filestore.NewInstance(ctx, "instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("test-instance"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 				},
/// 			},
/// 			KmsKeyName: filestoreKey.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_filestore_instance" "instance" {
///   name     = "test-instance"
///   location = "us-central1"
///   tier     = "ENTERPRISE"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share1"
///   }
///   networks {
///     network = "default"
///     modes   = ["MODE_IPV4"]
///   }
///   kms_key_name = gcp_kms_cryptokey.filestore_key.id
/// }
/// resource "gcp_kms_keyring" "filestore_keyring" {
///   name     = "filestore-keyring"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokey" "filestore_key" {
///   name     = "filestore-key"
///   key_ring = gcp_kms_keyring.filestore_keyring.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
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
///         var filestoreKeyring = new KeyRing("filestoreKeyring", KeyRingArgs.builder()
///             .name("filestore-keyring")
///             .location("us-central1")
///             .build());
///
///         var filestoreKey = new CryptoKey("filestoreKey", CryptoKeyArgs.builder()
///             .name("filestore-key")
///             .keyRing(filestoreKeyring.id())
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("test-instance")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .build())
///             .kmsKeyName(filestoreKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:filestore:Instance
///     properties:
///       name: test-instance
///       location: us-central1
///       tier: ENTERPRISE
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
///       kmsKeyName: ${filestoreKey.id}
///   filestoreKeyring:
///     type: gcp:kms:KeyRing
///     name: filestore_keyring
///     properties:
///       name: filestore-keyring
///       location: us-central1
///   filestoreKey:
///     type: gcp:kms:CryptoKey
///     name: filestore_key
///     properties:
///       name: filestore-key
///       keyRing: ${filestoreKeyring.id}
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:filestore/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{name}}
/// $ pulumi import gcp:filestore/instance:Instance default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:filestore/instance:Instance default {{location}}/{{name}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Indicates whether the instance is protected against deletion.
  late final pulumi.Output<bool?> deletionProtectionEnabled;
  /// The reason for enabling deletion protection.
  late final pulumi.Output<String?> deletionProtectionReason;
  /// A description of the instance.
  late final pulumi.Output<String?> description;
  /// The desiredReplicaState field controls the state of a replica. Terraform will attempt to make the actual state of the replica match the desired state.
  late final pulumi.Output<String?> desiredReplicaState;
  /// Directory Services configuration.
  /// Should only be set if protocol is "NFS_V4_1".
  /// Structure is documented below.
  late final pulumi.Output<InstanceDirectoryServices?> directoryServices;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Output only fields for replication configuration.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> effectiveReplications;
  /// Server-specified ETag for the instance resource to prevent
  /// simultaneous updates from overwriting each other.
  late final pulumi.Output<String> etag;
  /// File system shares on the instance. For this version, only a
  /// single file share is supported.
  /// Structure is documented below.
  late final pulumi.Output<InstanceFileShares> fileShares;
  /// Replication configuration, once set, this cannot be updated.
  /// Additionally this should be specified on the replica instance only, indicating the active as the peerInstance
  /// Structure is documented below.
  late final pulumi.Output<InstanceInitialReplication?> initialReplication;
  /// KMS key name used for data encryption.
  late final pulumi.Output<String?> kmsKeyName;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  late final pulumi.Output<String> location;
  /// The resource name of the instance.
  late final pulumi.Output<String> name;
  /// VPC networks to which the instance is connected. For this version,
  /// only a single network is supported.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> networks;
  /// Performance configuration for the instance. If not provided,
  /// the default performance settings will be used.
  /// Structure is documented below.
  late final pulumi.Output<InstancePerformanceConfig?> performanceConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Either NFSv3, for using NFS version 3 as file sharing protocol,
  /// or NFSv4.1, for using NFS version 4.1 as file sharing protocol.
  /// NFSv4.1 can be used with HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE.
  /// The default is NFSv3.
  /// Default value is `NFS_V3`.
  /// Possible values are: `NFS_V3`, `NFS_V4_1`.
  late final pulumi.Output<String?> protocol;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager
  /// tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is
  /// ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. This field is only set
  /// at create time and modifying this field after creation
  /// will trigger recreation. To apply tags to an existing
  /// resource, see the `gcp.tags.TagValue` resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The service tier of the instance.
  /// Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
  late final pulumi.Output<String> tier;
  /// (Optional, Deprecated)
  /// The name of the Filestore zone of the instance.
  ///
  /// &gt; **Warning:** `zone` is deprecated and will be removed in a future major release. Use `location` instead.
  late final pulumi.Output<String> zone;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_filestore_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtectionEnabled = registerOutput<bool?>('deletionProtectionEnabled');
    deletionProtectionReason = registerOutput<String?>('deletionProtectionReason');
    description = registerOutput<String?>('description');
    desiredReplicaState = registerOutput<String?>('desiredReplicaState');
    directoryServices = registerOutput<InstanceDirectoryServices?>('directoryServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceDirectoryServices.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveReplications = registerOutput<List<Map<String, dynamic>>>('effectiveReplications');
    etag = registerOutput<String>('etag');
    fileShares = registerOutput<InstanceFileShares>('fileShares', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFileShares.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    initialReplication = registerOutput<InstanceInitialReplication?>('initialReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceInitialReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<Map<String, dynamic>>>('networks');
    performanceConfig = registerOutput<InstancePerformanceConfig?>('performanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstancePerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    protocol = registerOutput<String?>('protocol');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtectionEnabled = registerOutput<bool?>('deletionProtectionEnabled');
    deletionProtectionReason = registerOutput<String?>('deletionProtectionReason');
    description = registerOutput<String?>('description');
    desiredReplicaState = registerOutput<String?>('desiredReplicaState');
    directoryServices = registerOutput<InstanceDirectoryServices?>('directoryServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceDirectoryServices.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveReplications = registerOutput<List<Map<String, dynamic>>>('effectiveReplications');
    etag = registerOutput<String>('etag');
    fileShares = registerOutput<InstanceFileShares>('fileShares', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFileShares.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    initialReplication = registerOutput<InstanceInitialReplication?>('initialReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceInitialReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<Map<String, dynamic>>>('networks');
    performanceConfig = registerOutput<InstancePerformanceConfig?>('performanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstancePerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    protocol = registerOutput<String?>('protocol');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    zone = registerOutput<String>('zone');
  }
}
