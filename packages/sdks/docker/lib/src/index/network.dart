import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// `docker.Network` provides a docker network resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const privateNetwork = new docker.Network("private_network", {name: "my_network"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// private_network = docker.Network("private_network", name="my_network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateNetwork = new Docker.Network("private_network", new()
///     {
///         Name = "my_network",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v4/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docker.NewNetwork(ctx, "private_network", &docker.NetworkArgs{
/// 			Name: pulumi.String("my_network"),
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
/// import com.pulumi.docker.Network;
/// import com.pulumi.docker.NetworkArgs;
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
///         var privateNetwork = new Network("privateNetwork", NetworkArgs.builder()
///             .name("my_network")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   privateNetwork:
///     type: docker:Network
///     name: private_network
///     properties:
///       name: my_network
/// ```
///
///
/// ## Import
///
/// ### Example
///
/// Assuming you created a `network` as follows
///
/// #!/bin/bash
///
/// docker network create foo
///
/// prints the long ID
///
/// 87b57a9b91ecab2db2a6dbf38df74c67d7c7108cbe479d6576574ec2cd8c2d73
///
/// you provide the definition for the resource as follows
///
/// terraform
///
/// resource "docker_network" "foo" {
///
/// name = "foo"
///
/// }
///
/// then the import command is as follows
///
/// #!/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/network:Network foo 87b57a9b91ecab2db2a6dbf38df74c67d7c7108cbe479d6576574ec2cd8c2d73
/// ```
class Network extends pulumi.CustomResource {
  /// Enable manual container attachment to the network.
  late final pulumi.Output<bool?> attachable;

  /// Requests daemon to check for networks with same name.
  late final pulumi.Output<bool?> checkDuplicate;

  /// The driver of the Docker network. Possible values are `bridge`, `host`, `overlay`, `macvlan`. See [network docs](https://docs.docker.com/network/#network-drivers) for more details.
  late final pulumi.Output<String> driver;

  /// Create swarm routing-mesh network. Defaults to `false`.
  late final pulumi.Output<bool?> ingress;

  /// Whether the network is internal.
  late final pulumi.Output<bool> internal;

  /// The IPAM configuration options
  late final pulumi.Output<List<Map<String, dynamic>>> ipamConfigs;

  /// Driver used by the custom IP scheme of the network. Defaults to `default`
  late final pulumi.Output<String?> ipamDriver;

  /// Provide explicit options to the IPAM driver. Valid options vary with `ipam_driver` and refer to that driver's documentation for more details.
  late final pulumi.Output<Map<String, String>?> ipamOptions;

  /// Enable IPv6 networking. Defaults to `false`.
  late final pulumi.Output<bool?> ipv6;

  /// User-defined key/value metadata
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;

  /// The name of the Docker network.
  late final pulumi.Output<String> name;

  /// Only available with bridge networks. See [bridge options docs](https://docs.docker.com/engine/reference/commandline/network_create/#bridge-driver-options) for more details.
  late final pulumi.Output<Map<String, String>> options;

  /// Scope of the network. One of `swarm`, `global`, or `local`.
  late final pulumi.Output<String> scope;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_index_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'docker:index/network:Network',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachable = registerOutput<bool?>('attachable');
    checkDuplicate = registerOutput<bool?>('checkDuplicate');
    driver = registerOutput<String>('driver');
    ingress = registerOutput<bool?>('ingress');
    internal = registerOutput<bool>('internal');
    ipamConfigs = registerOutput<List<Map<String, dynamic>>>('ipamConfigs');
    ipamDriver = registerOutput<String?>('ipamDriver');
    ipamOptions = registerOutput<Map<String, String>?>('ipamOptions');
    ipv6 = registerOutput<bool?>('ipv6');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<Map<String, String>>('options');
    scope = registerOutput<String>('scope');
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'docker:index/network:Network',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachable = registerOutput<bool?>('attachable');
    checkDuplicate = registerOutput<bool?>('checkDuplicate');
    driver = registerOutput<String>('driver');
    ingress = registerOutput<bool?>('ingress');
    internal = registerOutput<bool>('internal');
    ipamConfigs = registerOutput<List<Map<String, dynamic>>>('ipamConfigs');
    ipamDriver = registerOutput<String?>('ipamDriver');
    ipamOptions = registerOutput<Map<String, String>?>('ipamOptions');
    ipv6 = registerOutput<bool?>('ipv6');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<Map<String, String>>('options');
    scope = registerOutput<String>('scope');
  }
}
