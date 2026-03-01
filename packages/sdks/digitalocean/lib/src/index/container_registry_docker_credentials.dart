import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_docker_credentials_args.dart';
import 'container_registry_docker_credentials_state.dart';

/// Get Docker credentials for your DigitalOcean container registry.
///
/// An error is triggered if the provided container registry name does not exist.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// Get the container registry:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.ContainerRegistryDockerCredentials("example", {registryName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.ContainerRegistryDockerCredentials("example", registry_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.ContainerRegistryDockerCredentials("example", new()
///     {
///         RegistryName = "example",
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
/// 		_, err := digitalocean.NewContainerRegistryDockerCredentials(ctx, "example", &digitalocean.ContainerRegistryDockerCredentialsArgs{
/// 			RegistryName: pulumi.String("example"),
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
/// import com.pulumi.digitalocean.ContainerRegistryDockerCredentials;
/// import com.pulumi.digitalocean.ContainerRegistryDockerCredentialsArgs;
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
///         var example = new ContainerRegistryDockerCredentials("example", ContainerRegistryDockerCredentialsArgs.builder()
///             .registryName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:ContainerRegistryDockerCredentials
///     properties:
///       registryName: example
/// ```
///
///
/// ### Docker Provider Example
///
/// Use the `endpoint` and `docker_credentials` with the Docker provider:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getContainerRegistry({
///     name: "example",
/// });
/// const exampleContainerRegistryDockerCredentials = new digitalocean.ContainerRegistryDockerCredentials("example", {registryName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_container_registry(name="example")
/// example_container_registry_docker_credentials = digitalocean.ContainerRegistryDockerCredentials("example", registry_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetContainerRegistry.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     var exampleContainerRegistryDockerCredentials = new DigitalOcean.ContainerRegistryDockerCredentials("example", new()
///     {
///         RegistryName = "example",
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
/// 		_, err := digitalocean.LookupContainerRegistry(ctx, &digitalocean.LookupContainerRegistryArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewContainerRegistryDockerCredentials(ctx, "example", &digitalocean.ContainerRegistryDockerCredentialsArgs{
/// 			RegistryName: pulumi.String("example"),
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
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetContainerRegistryArgs;
/// import com.pulumi.digitalocean.ContainerRegistryDockerCredentials;
/// import com.pulumi.digitalocean.ContainerRegistryDockerCredentialsArgs;
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
///         final var example = DigitaloceanFunctions.getContainerRegistry(GetContainerRegistryArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleContainerRegistryDockerCredentials = new ContainerRegistryDockerCredentials("exampleContainerRegistryDockerCredentials", ContainerRegistryDockerCredentialsArgs.builder()
///             .registryName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleContainerRegistryDockerCredentials:
///     type: digitalocean:ContainerRegistryDockerCredentials
///     name: example
///     properties:
///       registryName: example
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getContainerRegistry
///       arguments:
///         name: example
/// ```
///
///
/// ### Kubernetes Example
///
/// Combined with the Kubernetes Provider's `kubernetes_secret` resource, you can
/// access the registry from inside your cluster:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const exampleContainerRegistryDockerCredentials = new digitalocean.ContainerRegistryDockerCredentials("example", {registryName: "example"});
/// const example = digitalocean.getKubernetesCluster({
///     name: "prod-cluster-01",
/// });
/// const exampleSecret = new kubernetes.index.Secret("example", {
///     metadata: [{
///         name: "docker-cfg",
///     }],
///     data: {
///         ".dockerconfigjson": exampleContainerRegistryDockerCredentials.dockerCredentials,
///     },
///     type: "kubernetes.io/dockerconfigjson",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_kubernetes as kubernetes
///
/// example_container_registry_docker_credentials = digitalocean.ContainerRegistryDockerCredentials("example", registry_name="example")
/// example = digitalocean.get_kubernetes_cluster(name="prod-cluster-01")
/// example_secret = kubernetes.index.Secret("example",
///     metadata=[{
///         name: docker-cfg,
///     }],
///     data={
///         .dockerconfigjson: example_container_registry_docker_credentials.docker_credentials,
///     },
///     type=kubernetes.io/dockerconfigjson)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
/// using Kubernetes = Pulumi.Kubernetes;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleContainerRegistryDockerCredentials = new DigitalOcean.ContainerRegistryDockerCredentials("example", new()
///     {
///         RegistryName = "example",
///     });
///
///     var example = DigitalOcean.GetKubernetesCluster.Invoke(new()
///     {
///         Name = "prod-cluster-01",
///     });
///
///     var exampleSecret = new Kubernetes.Index.Secret("example", new()
///     {
///         Metadata = new[]
///         {
///
///             {
///                 { "name", "docker-cfg" },
///             },
///         },
///         Data =
///         {
///             { ".dockerconfigjson", exampleContainerRegistryDockerCredentials.DockerCredentials },
///         },
///         Type = "kubernetes.io/dockerconfigjson",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleContainerRegistryDockerCredentials, err := digitalocean.NewContainerRegistryDockerCredentials(ctx, "example", &digitalocean.ContainerRegistryDockerCredentialsArgs{
/// 			RegistryName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.LookupKubernetesCluster(ctx, &digitalocean.LookupKubernetesClusterArgs{
/// 			Name: "prod-cluster-01",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kubernetes.NewSecret(ctx, "example", &kubernetes.SecretArgs{
/// 			Metadata: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name": "docker-cfg",
/// 				},
/// 			},
/// 			Data: map[string]interface{}{
/// 				".dockerconfigjson": exampleContainerRegistryDockerCredentials.DockerCredentials,
/// 			},
/// 			Type: "kubernetes.io/dockerconfigjson",
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
/// import com.pulumi.digitalocean.ContainerRegistryDockerCredentials;
/// import com.pulumi.digitalocean.ContainerRegistryDockerCredentialsArgs;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetKubernetesClusterArgs;
/// import com.pulumi.kubernetes.Secret;
/// import com.pulumi.kubernetes.SecretArgs;
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
///         var exampleContainerRegistryDockerCredentials = new ContainerRegistryDockerCredentials("exampleContainerRegistryDockerCredentials", ContainerRegistryDockerCredentialsArgs.builder()
///             .registryName("example")
///             .build());
///
///         final var example = DigitaloceanFunctions.getKubernetesCluster(GetKubernetesClusterArgs.builder()
///             .name("prod-cluster-01")
///             .build());
///
///         var exampleSecret = new Secret("exampleSecret", SecretArgs.builder()
///             .metadata(List.of(Map.of("name", "docker-cfg")))
///             .data(Map.of(".dockerconfigjson", exampleContainerRegistryDockerCredentials.dockerCredentials()))
///             .type("kubernetes.io/dockerconfigjson")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleContainerRegistryDockerCredentials:
///     type: digitalocean:ContainerRegistryDockerCredentials
///     name: example
///     properties:
///       registryName: example
///   exampleSecret:
///     type: kubernetes:Secret
///     name: example
///     properties:
///       metadata:
///         - name: docker-cfg
///       data:
///         .dockerconfigjson: ${exampleContainerRegistryDockerCredentials.dockerCredentials}
///       type: kubernetes.io/dockerconfigjson
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getKubernetesCluster
///       arguments:
///         name: prod-cluster-01
/// ```
class ContainerRegistryDockerCredentials extends pulumi.CustomResource {
  /// The date and time the registry access token will expire.
  late final pulumi.Output<String> credentialExpirationTime;
  /// Credentials for the container registry.
  late final pulumi.Output<String> dockerCredentials;
  /// The amount of time to pass before the Docker credentials expire in seconds. Defaults to 1576800000, or roughly 50 years. Must be greater than 0 and less than 1576800000.
  late final pulumi.Output<int?> expirySeconds;
  /// The name of the container registry.
  late final pulumi.Output<String> registryName;
  /// Allow for write access to the container registry. Defaults to false.
  late final pulumi.Output<bool?> write;

  /// Creates a new [ContainerRegistryDockerCredentials].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerRegistryDockerCredentials]. {@macro pulumi_index_container_registry_docker_credentials_container_registry_docker_credentials_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerRegistryDockerCredentials(
    String name, {
    ContainerRegistryDockerCredentialsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/containerRegistryDockerCredentials:ContainerRegistryDockerCredentials',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.credentialExpirationTime = registerOutput<String>('credentialExpirationTime');
    this.dockerCredentials = registerOutput<String>('dockerCredentials');
    this.expirySeconds = registerOutput<int?>('expirySeconds');
    this.registryName = registerOutput<String>('registryName');
    this.write = registerOutput<bool?>('write');
  }

  /// Gets an existing [ContainerRegistryDockerCredentials] resource's state with the given [name] and [id].
  static ContainerRegistryDockerCredentials get(
    String name,
    pulumi.Input<String> id, {
    ContainerRegistryDockerCredentialsState? state,
  }) {
    return ContainerRegistryDockerCredentials._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContainerRegistryDockerCredentials._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/containerRegistryDockerCredentials:ContainerRegistryDockerCredentials',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.credentialExpirationTime = registerOutput<String>('credentialExpirationTime');
    this.dockerCredentials = registerOutput<String>('dockerCredentials');
    this.expirySeconds = registerOutput<int?>('expirySeconds');
    this.registryName = registerOutput<String>('registryName');
    this.write = registerOutput<bool?>('write');
  }
}
