import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_args.dart';
import 'container_registry_state.dart';

/// Provides a DigitalOcean Container Registry resource. A Container Registry is
/// a secure, private location to store your containers for rapid deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// // Create a new container registry
/// const foobar = new digitalocean.ContainerRegistry("foobar", {
///     name: "foobar",
///     subscriptionTierSlug: "starter",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// # Create a new container registry
/// foobar = digitalocean.ContainerRegistry("foobar",
///     name="foobar",
///     subscription_tier_slug="starter")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new container registry
///     var foobar = new DigitalOcean.ContainerRegistry("foobar", new()
///     {
///         Name = "foobar",
///         SubscriptionTierSlug = "starter",
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
/// 		// Create a new container registry
/// 		_, err := digitalocean.NewContainerRegistry(ctx, "foobar", &digitalocean.ContainerRegistryArgs{
/// 			Name:                 pulumi.String("foobar"),
/// 			SubscriptionTierSlug: pulumi.String("starter"),
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
/// # Create a new container registry
/// resource "digitalocean_containerregistry" "foobar" {
///   name                   = "foobar"
///   subscription_tier_slug = "starter"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ContainerRegistry;
/// import com.pulumi.digitalocean.ContainerRegistryArgs;
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
///         // Create a new container registry
///         var foobar = new ContainerRegistry("foobar", ContainerRegistryArgs.builder()
///             .name("foobar")
///             .subscriptionTierSlug("starter")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new container registry
///   foobar:
///     type: digitalocean:ContainerRegistry
///     properties:
///       name: foobar
///       subscriptionTierSlug: starter
/// ```
///
///
/// ## Import
///
/// Container Registries can be imported using the `name`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/containerRegistry:ContainerRegistry myregistry registryname
/// ```
class ContainerRegistry extends pulumi.CustomResource {
  /// The date and time when the registry was created
  late final pulumi.Output<String> createdAt;
  /// The URL endpoint of the container registry. Ex: `registry.digitalocean.com/my_registry`
  late final pulumi.Output<String> endpoint;
  /// The name of the container_registry
  late final pulumi.Output<String> name;
  /// The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically.
  late final pulumi.Output<String> region;
  /// The domain of the container registry. Ex: `registry.digitalocean.com`
  late final pulumi.Output<String> serverUrl;
  /// The amount of storage used in the registry in bytes.
  late final pulumi.Output<int> storageUsageBytes;
  /// The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)
  late final pulumi.Output<String> subscriptionTierSlug;

  /// Creates a new [ContainerRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerRegistry]. {@macro pulumi_index_container_registry_container_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerRegistry(
    String name, {
    ContainerRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/containerRegistry:ContainerRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    endpoint = registerOutput<String>('endpoint');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverUrl = registerOutput<String>('serverUrl');
    storageUsageBytes = registerOutput<int>('storageUsageBytes');
    subscriptionTierSlug = registerOutput<String>('subscriptionTierSlug');
  }

  /// Gets an existing [ContainerRegistry] resource's state with the given [name] and [id].
  static ContainerRegistry get(
    String name,
    pulumi.Input<String> id, {
    ContainerRegistryState? state,
  }) {
    return ContainerRegistry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContainerRegistry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/containerRegistry:ContainerRegistry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    endpoint = registerOutput<String>('endpoint');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverUrl = registerOutput<String>('serverUrl');
    storageUsageBytes = registerOutput<int>('storageUsageBytes');
    subscriptionTierSlug = registerOutput<String>('subscriptionTierSlug');
  }
}
