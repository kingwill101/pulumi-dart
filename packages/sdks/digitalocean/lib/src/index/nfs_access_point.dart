import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_point_access_policy.dart';
import 'nfs_access_point_args.dart';
import 'nfs_access_point_state.dart';

/// Provides a DigitalOcean NFS access point for a Network File Storage share. Access points define export paths and access policies for mounting an NFS share from a VPC.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.Vpc("foobar", {
///     name: "example-vpc",
///     region: "atl1",
/// });
/// const foobarNfs = new digitalocean.Nfs("foobar", {
///     region: "atl1",
///     name: "example-nfs",
///     size: 50,
///     vpcId: foobar.id,
///     performanceTier: "standard",
/// });
/// const foobarNfsAccessPoint = new digitalocean.NfsAccessPoint("foobar", {
///     name: "example-access-point",
///     shareId: foobarNfs.id,
///     path: "/data",
///     vpcId: foobar.id,
///     accessPolicy: {
///         anonuid: 65534,
///         anongid: 65534,
///         protocols: ["NFS4"],
///         squashConfig: "ROOT_SQUASH",
///         identityEnforcementEnabled: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.Vpc("foobar",
///     name="example-vpc",
///     region="atl1")
/// foobar_nfs = digitalocean.Nfs("foobar",
///     region="atl1",
///     name="example-nfs",
///     size=50,
///     vpc_id=foobar.id,
///     performance_tier="standard")
/// foobar_nfs_access_point = digitalocean.NfsAccessPoint("foobar",
///     name="example-access-point",
///     share_id=foobar_nfs.id,
///     path="/data",
///     vpc_id=foobar.id,
///     access_policy={
///         "anonuid": 65534,
///         "anongid": 65534,
///         "protocols": ["NFS4"],
///         "squash_config": "ROOT_SQUASH",
///         "identity_enforcement_enabled": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.Vpc("foobar", new()
///     {
///         Name = "example-vpc",
///         Region = "atl1",
///     });
///
///     var foobarNfs = new DigitalOcean.Nfs("foobar", new()
///     {
///         Region = "atl1",
///         Name = "example-nfs",
///         Size = 50,
///         VpcId = foobar.Id,
///         PerformanceTier = "standard",
///     });
///
///     var foobarNfsAccessPoint = new DigitalOcean.NfsAccessPoint("foobar", new()
///     {
///         Name = "example-access-point",
///         ShareId = foobarNfs.Id,
///         Path = "/data",
///         VpcId = foobar.Id,
///         AccessPolicy = new DigitalOcean.Inputs.NfsAccessPointAccessPolicyArgs
///         {
///             Anonuid = 65534,
///             Anongid = 65534,
///             Protocols = new[]
///             {
///                 "NFS4",
///             },
///             SquashConfig = "ROOT_SQUASH",
///             IdentityEnforcementEnabled = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := digitalocean.NewVpc(ctx, "foobar", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("example-vpc"),
/// 			Region: pulumi.String("atl1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarNfs, err := digitalocean.NewNfs(ctx, "foobar", &digitalocean.NfsArgs{
/// 			Region:          pulumi.String("atl1"),
/// 			Name:            pulumi.String("example-nfs"),
/// 			Size:            pulumi.Int(50),
/// 			VpcId:           foobar.ID().ToIDOutput().ToStringOutput(),
/// 			PerformanceTier: pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfsAccessPoint(ctx, "foobar", &digitalocean.NfsAccessPointArgs{
/// 			Name:    pulumi.String("example-access-point"),
/// 			ShareId: foobarNfs.ID().ToIDOutput().ToStringOutput(),
/// 			Path:    pulumi.String("/data"),
/// 			VpcId:   foobar.ID().ToIDOutput().ToStringOutput(),
/// 			AccessPolicy: &digitalocean.NfsAccessPointAccessPolicyArgs{
/// 				Anonuid: pulumi.Int(65534),
/// 				Anongid: pulumi.Int(65534),
/// 				Protocols: pulumi.StringArray{
/// 					pulumi.String("NFS4"),
/// 				},
/// 				SquashConfig:               pulumi.String("ROOT_SQUASH"),
/// 				IdentityEnforcementEnabled: pulumi.Bool(false),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_vpc" "foobar" {
///   name   = "example-vpc"
///   region = "atl1"
/// }
/// resource "digitalocean_nfs" "foobar" {
///   region           = "atl1"
///   name             = "example-nfs"
///   size             = 50
///   vpc_id           = digitalocean_vpc.foobar.id
///   performance_tier = "standard"
/// }
/// resource "digitalocean_nfsaccesspoint" "foobar" {
///   name     = "example-access-point"
///   share_id = digitalocean_nfs.foobar.id
///   path     = "/data"
///   vpc_id   = digitalocean_vpc.foobar.id
///   access_policy = {
///     anonuid                      = 65534
///     anongid                      = 65534
///     protocols                    = ["NFS4"]
///     squash_config                = "ROOT_SQUASH"
///     identity_enforcement_enabled = false
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.Vpc;
/// import com.pulumi.digitalocean.VpcArgs;
/// import com.pulumi.digitalocean.Nfs;
/// import com.pulumi.digitalocean.NfsArgs;
/// import com.pulumi.digitalocean.NfsAccessPoint;
/// import com.pulumi.digitalocean.NfsAccessPointArgs;
/// import com.pulumi.digitalocean.inputs.NfsAccessPointAccessPolicyArgs;
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
///         var foobar = new Vpc("foobar", VpcArgs.builder()
///             .name("example-vpc")
///             .region("atl1")
///             .build());
///
///         var foobarNfs = new Nfs("foobarNfs", NfsArgs.builder()
///             .region("atl1")
///             .name("example-nfs")
///             .size(50)
///             .vpcId(foobar.id())
///             .performanceTier("standard")
///             .build());
///
///         var foobarNfsAccessPoint = new NfsAccessPoint("foobarNfsAccessPoint", NfsAccessPointArgs.builder()
///             .name("example-access-point")
///             .shareId(foobarNfs.id())
///             .path("/data")
///             .vpcId(foobar.id())
///             .accessPolicy(NfsAccessPointAccessPolicyArgs.builder()
///                 .anonuid(65534)
///                 .anongid(65534)
///                 .protocols("NFS4")
///                 .squashConfig("ROOT_SQUASH")
///                 .identityEnforcementEnabled(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:Vpc
///     properties:
///       name: example-vpc
///       region: atl1
///   foobarNfs:
///     type: digitalocean:Nfs
///     name: foobar
///     properties:
///       region: atl1
///       name: example-nfs
///       size: 50
///       vpcId: ${foobar.id}
///       performanceTier: standard
///   foobarNfsAccessPoint:
///     type: digitalocean:NfsAccessPoint
///     name: foobar
///     properties:
///       name: example-access-point
///       shareId: ${foobarNfs.id}
///       path: /data
///       vpcId: ${foobar.id}
///       accessPolicy:
///         anonuid: 65534
///         anongid: 65534
///         protocols:
///           - NFS4
///         squashConfig: ROOT_SQUASH
///         identityEnforcementEnabled: false
/// ```
///
///
/// ## Import
///
/// NFS access points can be imported using the access point ID, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/nfsAccessPoint:NfsAccessPoint foobar 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class NfsAccessPoint extends pulumi.CustomResource {
  /// Access policy configuration for the access point. See Access Policy below.
  late final pulumi.Output<NfsAccessPointAccessPolicy> accessPolicy;
  /// The date and time when the access point was created.
  late final pulumi.Output<String> createdAt;
  /// Whether this is the default access point for the share.
  late final pulumi.Output<bool> isDefault;
  /// A name for the NFS access point.
  late final pulumi.Output<String> name;
  /// The export path for the access point.
  late final pulumi.Output<String> path;
  /// The ID of the NFS share.
  late final pulumi.Output<String> shareId;
  /// The status of the access point.
  late final pulumi.Output<String> status;
  /// The date and time when the access point was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The ID of the VPC that can access this access point. The VPC must be attached to the NFS share.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [NfsAccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NfsAccessPoint]. {@macro pulumi_index_nfs_access_point_nfs_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NfsAccessPoint(
    String name, {
    NfsAccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfsAccessPoint:NfsAccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicy = registerOutput<NfsAccessPointAccessPolicy>('accessPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsAccessPointAccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    shareId = registerOutput<String>('shareId');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [NfsAccessPoint] resource's state with the given [name] and [id].
  static NfsAccessPoint get(
    String name,
    pulumi.Input<String> id, {
    NfsAccessPointState? state,
  }) {
    return NfsAccessPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NfsAccessPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfsAccessPoint:NfsAccessPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicy = registerOutput<NfsAccessPointAccessPolicy>('accessPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsAccessPointAccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    shareId = registerOutput<String>('shareId');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    vpcId = registerOutput<String>('vpcId');
  }
}
