import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_auth.dart';
import 'service_converge_config.dart';
import 'service_endpoint_spec.dart';
import 'service_mode.dart';
import 'service_rollback_config.dart';
import 'service_state.dart';
import 'service_task_spec.dart';
import 'service_update_config.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// This resource manages the lifecycle of a Docker service. By default, the creation, update and delete of services are detached.
/// With the Converge Config the behavior of the `docker cli` is imitated to guarantee tha for example, all tasks of a service are running or successfully updated or to inform `terraform` that a service could no be updated and was successfully rolled back.
///
/// ## Example Usage
///
/// ### Basic
///
/// The following configuration starts a Docker Service with
///
/// - the given image,
/// - 1 replica
/// - exposes the port `8080` in `vip` mode to the host machine
/// - moreover, uses the `container` runtime
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const foo = new docker.Service("foo", {
///     name: "foo-service",
///     taskSpec: {
///         containerSpec: {
///             image: "repo.mycompany.com:8080/foo-service:v1",
///         },
///     },
///     endpointSpec: {
///         ports: [{
///             targetPort: 8080,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// foo = docker.Service("foo",
///     name="foo-service",
///     task_spec={
///         "container_spec": {
///             "image": "repo.mycompany.com:8080/foo-service:v1",
///         },
///     },
///     endpoint_spec={
///         "ports": [{
///             "target_port": 8080,
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Docker.Service("foo", new()
///     {
///         Name = "foo-service",
///         TaskSpec = new Docker.Inputs.ServiceTaskSpecArgs
///         {
///             ContainerSpec = new Docker.Inputs.ServiceTaskSpecContainerSpecArgs
///             {
///                 Image = "repo.mycompany.com:8080/foo-service:v1",
///             },
///         },
///         EndpointSpec = new Docker.Inputs.ServiceEndpointSpecArgs
///         {
///             Ports = new[]
///             {
///                 new Docker.Inputs.ServiceEndpointSpecPortArgs
///                 {
///                     TargetPort = 8080,
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
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docker.NewService(ctx, "foo", &docker.ServiceArgs{
/// 			Name: pulumi.String("foo-service"),
/// 			TaskSpec: &docker.ServiceTaskSpecArgs{
/// 				ContainerSpec: &docker.ServiceTaskSpecContainerSpecArgs{
/// 					Image: pulumi.String("repo.mycompany.com:8080/foo-service:v1"),
/// 				},
/// 			},
/// 			EndpointSpec: &docker.ServiceEndpointSpecArgs{
/// 				Ports: docker.ServiceEndpointSpecPortArray{
/// 					&docker.ServiceEndpointSpecPortArgs{
/// 						TargetPort: pulumi.Int(8080),
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
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// resource "docker_service" "foo" {
///   name = "foo-service"
///   task_spec = {
///     container_spec = {
///       image = "repo.mycompany.com:8080/foo-service:v1"
///     }
///   }
///   endpoint_spec = {
///     ports = [{
///       "targetPort" = "8080"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.Service;
/// import com.pulumi.docker.ServiceArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecPortArgs;
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
///         var foo = new Service("foo", ServiceArgs.builder()
///             .name("foo-service")
///             .taskSpec(ServiceTaskSpecArgs.builder()
///                 .containerSpec(ServiceTaskSpecContainerSpecArgs.builder()
///                     .image("repo.mycompany.com:8080/foo-service:v1")
///                     .build())
///                 .build())
///             .endpointSpec(ServiceEndpointSpecArgs.builder()
///                 .ports(ServiceEndpointSpecPortArgs.builder()
///                     .targetPort(8080)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: docker:Service
///     properties:
///       name: foo-service
///       taskSpec:
///         containerSpec:
///           image: repo.mycompany.com:8080/foo-service:v1
///       endpointSpec:
///         ports:
///           - targetPort: '8080'
/// ```
///
///
/// The following command is the equivalent:
///
/// ```shell
/// #!/bin/bash
/// docker service create -d -p 8080 --name foo-service repo.mycompany.com:8080/foo-service:v1
/// ```
///
/// ### Basic with Datasource
///
/// Alternatively, if the image is already present on the Docker Host and not managed
/// by `terraform`, you can also use the `docker.RemoteImage` datasource:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const foo = docker.getRemoteImage({
///     name: "repo.mycompany.com:8080/foo-service:v1",
/// });
/// const fooService = new docker.Service("foo", {
///     name: "foo-service",
///     taskSpec: {
///         containerSpec: {
///             image: foo.then(foo => foo.repoDigest),
///         },
///     },
///     endpointSpec: {
///         ports: [{
///             targetPort: 8080,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// foo = docker.get_remote_image(name="repo.mycompany.com:8080/foo-service:v1")
/// foo_service = docker.Service("foo",
///     name="foo-service",
///     task_spec={
///         "container_spec": {
///             "image": foo.repo_digest,
///         },
///     },
///     endpoint_spec={
///         "ports": [{
///             "target_port": 8080,
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Docker.GetRemoteImage.Invoke(new()
///     {
///         Name = "repo.mycompany.com:8080/foo-service:v1",
///     });
///
///     var fooService = new Docker.Service("foo", new()
///     {
///         Name = "foo-service",
///         TaskSpec = new Docker.Inputs.ServiceTaskSpecArgs
///         {
///             ContainerSpec = new Docker.Inputs.ServiceTaskSpecContainerSpecArgs
///             {
///                 Image = foo.Apply(getRemoteImageResult => getRemoteImageResult.RepoDigest),
///             },
///         },
///         EndpointSpec = new Docker.Inputs.ServiceEndpointSpecArgs
///         {
///             Ports = new[]
///             {
///                 new Docker.Inputs.ServiceEndpointSpecPortArgs
///                 {
///                     TargetPort = 8080,
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
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := docker.GetRemoteImage(ctx, &docker.LookupRemoteImageArgs{
/// 			Name: "repo.mycompany.com:8080/foo-service:v1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docker.NewService(ctx, "foo", &docker.ServiceArgs{
/// 			Name: pulumi.String("foo-service"),
/// 			TaskSpec: &docker.ServiceTaskSpecArgs{
/// 				ContainerSpec: &docker.ServiceTaskSpecContainerSpecArgs{
/// 					Image: pulumi.String(foo.RepoDigest),
/// 				},
/// 			},
/// 			EndpointSpec: &docker.ServiceEndpointSpecArgs{
/// 				Ports: docker.ServiceEndpointSpecPortArray{
/// 					&docker.ServiceEndpointSpecPortArgs{
/// 						TargetPort: pulumi.Int(8080),
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
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// data "docker_getremoteimage" "foo" {
///   name = "repo.mycompany.com:8080/foo-service:v1"
/// }
///
/// resource "docker_service" "foo" {
///   name = "foo-service"
///   task_spec = {
///     container_spec = {
///       image = data.docker_getremoteimage.foo.repo_digest
///     }
///   }
///   endpoint_spec = {
///     ports = [{
///       "targetPort" = "8080"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.DockerFunctions;
/// import com.pulumi.docker.inputs.GetRemoteImageArgs;
/// import com.pulumi.docker.Service;
/// import com.pulumi.docker.ServiceArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecPortArgs;
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
///         final var foo = DockerFunctions.getRemoteImage(GetRemoteImageArgs.builder()
///             .name("repo.mycompany.com:8080/foo-service:v1")
///             .build());
///
///         var fooService = new Service("fooService", ServiceArgs.builder()
///             .name("foo-service")
///             .taskSpec(ServiceTaskSpecArgs.builder()
///                 .containerSpec(ServiceTaskSpecContainerSpecArgs.builder()
///                     .image(foo.repoDigest())
///                     .build())
///                 .build())
///             .endpointSpec(ServiceEndpointSpecArgs.builder()
///                 .ports(ServiceEndpointSpecPortArgs.builder()
///                     .targetPort(8080)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooService:
///     type: docker:Service
///     name: foo
///     properties:
///       name: foo-service
///       taskSpec:
///         containerSpec:
///           image: ${foo.repoDigest}
///       endpointSpec:
///         ports:
///           - targetPort: '8080'
/// variables:
///   foo:
///     fn::invoke:
///       function: docker:getRemoteImage
///       arguments:
///         name: repo.mycompany.com:8080/foo-service:v1
/// ```
///
///
/// ### Advanced
///
/// The following configuration shows the full capabilities of a Docker Service,
/// with a `volume`, `config`, `secret` and `network`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const testVolume = new docker.Volume("test_volume", {name: "tftest-volume"});
/// const testVolume2 = new docker.Volume("test_volume_2", {name: "tftest-volume2"});
/// const serviceConfig = new docker.ServiceConfig("service_config", {
///     name: "tftest-full-myconfig",
///     data: "ewogICJwcmVmaXgiOiAiMTIzIgp9",
/// });
/// const serviceSecret = new docker.Secret("service_secret", {
///     name: "tftest-mysecret",
///     data: "ewogICJrZXkiOiAiUVdFUlRZIgp9",
/// });
/// const testNetwork = new docker.Network("test_network", {
///     name: "tftest-network",
///     driver: "overlay",
/// });
/// const foo = new docker.Service("foo", {
///     name: "tftest-service-basic",
///     taskSpec: {
///         containerSpec: {
///             configs: [
///                 {
///                     configId: serviceConfig.id,
///                     configName: serviceConfig.name,
///                     fileName: "/configs.json",
///                 },
///                 {},
///             ],
///             secrets: [
///                 {
///                     secretId: serviceSecret.id,
///                     secretName: serviceSecret.name,
///                     fileName: "/secrets.json",
///                     fileUid: "0",
///                     fileGid: "0",
///                     fileMode: 777,
///                 },
///                 {},
///             ],
///             image: "repo.mycompany.com:8080/foo-service:v1",
///             labels: [{
///                 label: "foo.bar",
///                 value: "baz",
///             }],
///             commands: ["ls"],
///             args: ["-las"],
///             hostname: "my-fancy-service",
///             env: {
///                 MYFOO: "BAR",
///             },
///             dir: "/root",
///             user: "root",
///             groups: [
///                 "docker",
///                 "foogroup",
///             ],
///             privileges: {
///                 seLinuxContext: {
///                     disable: true,
///                     user: "user-label",
///                     role: "role-label",
///                     type: "type-label",
///                     level: "level-label",
///                 },
///             },
///             readOnly: true,
///             mounts: [
///                 {
///                     target: "/mount/test",
///                     source: testVolume.name,
///                     type: "bind",
///                     readOnly: true,
///                     bindOptions: {
///                         propagation: "rprivate",
///                     },
///                 },
///                 {
///                     target: "/mount/test2",
///                     source: testVolume2.name,
///                     type: "volume",
///                     readOnly: true,
///                     volumeOptions: {
///                         noCopy: true,
///                         labels: [{
///                             label: "foo",
///                             value: "bar",
///                         }],
///                         driverName: "random-driver",
///                         driverOptions: {
///                             op1: "val1",
///                         },
///                     },
///                 },
///             ],
///             stopSignal: "SIGTERM",
///             stopGracePeriod: "10s",
///             healthcheck: {
///                 tests: [
///                     "CMD",
///                     "curl",
///                     "-f",
///                     "http://localhost:8080/health",
///                 ],
///                 interval: "5s",
///                 timeout: "2s",
///                 retries: 4,
///             },
///             hosts: [{
///                 host: "testhost",
///                 ip: "10.0.1.0",
///             }],
///             dnsConfig: {
///                 nameservers: ["8.8.8.8"],
///                 searches: ["example.org"],
///                 options: ["timeout:3"],
///             },
///         },
///         resources: {
///             limits: {
///                 nanoCpus: 1000000,
///                 memoryBytes: 536870912,
///             },
///             reservation: {
///                 nanoCpus: 1000000,
///                 memoryBytes: 536870912,
///                 genericResources: {
///                     namedResourcesSpecs: ["GPU=UUID1"],
///                     discreteResourcesSpecs: ["SSD=3"],
///                 },
///             },
///         },
///         restartPolicy: {
///             condition: "on-failure",
///             delay: "3s",
///             maxAttempts: 4,
///             window: "10s",
///         }[0],
///         placement: {
///             constraints: ["node.role==manager"],
///             prefs: ["spread=node.role.manager"],
///             maxReplicas: 1,
///         },
///         forceUpdate: 0,
///         runtime: "container",
///         networks: [testNetwork.id],
///         logDriver: {
///             name: "json-file",
///             options: {
///                 "max-size": "10m",
///                 "max-file": "3",
///             },
///         },
///     },
///     mode: {
///         replicated: {
///             replicas: 2,
///         },
///     },
///     updateConfig: {
///         parallelism: 2,
///         delay: "10s",
///         failureAction: "pause",
///         monitor: "5s",
///         maxFailureRatio: "0.1",
///         order: "start-first",
///     },
///     rollbackConfig: {
///         parallelism: 2,
///         delay: "5ms",
///         failureAction: "pause",
///         monitor: "10h",
///         maxFailureRatio: "0.9",
///         order: "stop-first",
///     },
///     endpointSpec: {
///         ports: [
///             {
///                 name: "random",
///                 protocol: "tcp",
///                 targetPort: 8080,
///                 publishedPort: 8080,
///                 publishMode: "ingress",
///             },
///             {},
///         ],
///         mode: "vip",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// test_volume = docker.Volume("test_volume", name="tftest-volume")
/// test_volume2 = docker.Volume("test_volume_2", name="tftest-volume2")
/// service_config = docker.ServiceConfig("service_config",
///     name="tftest-full-myconfig",
///     data="ewogICJwcmVmaXgiOiAiMTIzIgp9")
/// service_secret = docker.Secret("service_secret",
///     name="tftest-mysecret",
///     data="ewogICJrZXkiOiAiUVdFUlRZIgp9")
/// test_network = docker.Network("test_network",
///     name="tftest-network",
///     driver="overlay")
/// foo = docker.Service("foo",
///     name="tftest-service-basic",
///     task_spec={
///         "container_spec": {
///             "configs": [
///                 {
///                     "config_id": service_config.id,
///                     "config_name": service_config.name,
///                     "file_name": "/configs.json",
///                 },
///                 {},
///             ],
///             "secrets": [
///                 {
///                     "secret_id": service_secret.id,
///                     "secret_name": service_secret.name,
///                     "file_name": "/secrets.json",
///                     "file_uid": "0",
///                     "file_gid": "0",
///                     "file_mode": 777,
///                 },
///                 {},
///             ],
///             "image": "repo.mycompany.com:8080/foo-service:v1",
///             "labels": [{
///                 "label": "foo.bar",
///                 "value": "baz",
///             }],
///             "commands": ["ls"],
///             "args": ["-las"],
///             "hostname": "my-fancy-service",
///             "env": {
///                 "MYFOO": "BAR",
///             },
///             "dir": "/root",
///             "user": "root",
///             "groups": [
///                 "docker",
///                 "foogroup",
///             ],
///             "privileges": {
///                 "se_linux_context": {
///                     "disable": True,
///                     "user": "user-label",
///                     "role": "role-label",
///                     "type": "type-label",
///                     "level": "level-label",
///                 },
///             },
///             "read_only": True,
///             "mounts": [
///                 {
///                     "target": "/mount/test",
///                     "source": test_volume.name,
///                     "type": "bind",
///                     "read_only": True,
///                     "bind_options": {
///                         "propagation": "rprivate",
///                     },
///                 },
///                 {
///                     "target": "/mount/test2",
///                     "source": test_volume2.name,
///                     "type": "volume",
///                     "read_only": True,
///                     "volume_options": {
///                         "no_copy": True,
///                         "labels": [{
///                             "label": "foo",
///                             "value": "bar",
///                         }],
///                         "driver_name": "random-driver",
///                         "driver_options": {
///                             "op1": "val1",
///                         },
///                     },
///                 },
///             ],
///             "stop_signal": "SIGTERM",
///             "stop_grace_period": "10s",
///             "healthcheck": {
///                 "tests": [
///                     "CMD",
///                     "curl",
///                     "-f",
///                     "http://localhost:8080/health",
///                 ],
///                 "interval": "5s",
///                 "timeout": "2s",
///                 "retries": 4,
///             },
///             "hosts": [{
///                 "host": "testhost",
///                 "ip": "10.0.1.0",
///             }],
///             "dns_config": {
///                 "nameservers": ["8.8.8.8"],
///                 "searches": ["example.org"],
///                 "options": ["timeout:3"],
///             },
///         },
///         "resources": {
///             "limits": {
///                 "nano_cpus": 1000000,
///                 "memory_bytes": 536870912,
///             },
///             "reservation": {
///                 "nano_cpus": 1000000,
///                 "memory_bytes": 536870912,
///                 "generic_resources": {
///                     "named_resources_specs": ["GPU=UUID1"],
///                     "discrete_resources_specs": ["SSD=3"],
///                 },
///             },
///         },
///         "restart_policy": {
///             "condition": "on-failure",
///             "delay": "3s",
///             "maxAttempts": 4,
///             "window": "10s",
///         }[0],
///         "placement": {
///             "constraints": ["node.role==manager"],
///             "prefs": ["spread=node.role.manager"],
///             "max_replicas": 1,
///         },
///         "force_update": 0,
///         "runtime": "container",
///         "networks": [test_network.id],
///         "log_driver": {
///             "name": "json-file",
///             "options": {
///                 "max-size": "10m",
///                 "max-file": "3",
///             },
///         },
///     },
///     mode={
///         "replicated": {
///             "replicas": 2,
///         },
///     },
///     update_config={
///         "parallelism": 2,
///         "delay": "10s",
///         "failure_action": "pause",
///         "monitor": "5s",
///         "max_failure_ratio": "0.1",
///         "order": "start-first",
///     },
///     rollback_config={
///         "parallelism": 2,
///         "delay": "5ms",
///         "failure_action": "pause",
///         "monitor": "10h",
///         "max_failure_ratio": "0.9",
///         "order": "stop-first",
///     },
///     endpoint_spec={
///         "ports": [
///             {
///                 "name": "random",
///                 "protocol": "tcp",
///                 "target_port": 8080,
///                 "published_port": 8080,
///                 "publish_mode": "ingress",
///             },
///             {},
///         ],
///         "mode": "vip",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testVolume = new Docker.Volume("test_volume", new()
///     {
///         Name = "tftest-volume",
///     });
///
///     var testVolume2 = new Docker.Volume("test_volume_2", new()
///     {
///         Name = "tftest-volume2",
///     });
///
///     var serviceConfig = new Docker.ServiceConfig("service_config", new()
///     {
///         Name = "tftest-full-myconfig",
///         Data = "ewogICJwcmVmaXgiOiAiMTIzIgp9",
///     });
///
///     var serviceSecret = new Docker.Secret("service_secret", new()
///     {
///         Name = "tftest-mysecret",
///         Data = "ewogICJrZXkiOiAiUVdFUlRZIgp9",
///     });
///
///     var testNetwork = new Docker.Network("test_network", new()
///     {
///         Name = "tftest-network",
///         Driver = "overlay",
///     });
///
///     var foo = new Docker.Service("foo", new()
///     {
///         Name = "tftest-service-basic",
///         TaskSpec = new Docker.Inputs.ServiceTaskSpecArgs
///         {
///             ContainerSpec = new Docker.Inputs.ServiceTaskSpecContainerSpecArgs
///             {
///                 Configs = new[]
///                 {
///                     new Docker.Inputs.ServiceTaskSpecContainerSpecConfigArgs
///                     {
///                         ConfigId = serviceConfig.Id,
///                         ConfigName = serviceConfig.Name,
///                         FileName = "/configs.json",
///                     },
///                     null,
///                 },
///                 Secrets = new[]
///                 {
///                     new Docker.Inputs.ServiceTaskSpecContainerSpecSecretArgs
///                     {
///                         SecretId = serviceSecret.Id,
///                         SecretName = serviceSecret.Name,
///                         FileName = "/secrets.json",
///                         FileUid = "0",
///                         FileGid = "0",
///                         FileMode = 777,
///                     },
///                     null,
///                 },
///                 Image = "repo.mycompany.com:8080/foo-service:v1",
///                 Labels = new[]
///                 {
///                     new Docker.Inputs.ServiceTaskSpecContainerSpecLabelArgs
///                     {
///                         Label = "foo.bar",
///                         Value = "baz",
///                     },
///                 },
///                 Commands = new[]
///                 {
///                     "ls",
///                 },
///                 Args = new[]
///                 {
///                     "-las",
///                 },
///                 Hostname = "my-fancy-service",
///                 Env =
///                 {
///                     { "MYFOO", "BAR" },
///                 },
///                 Dir = "/root",
///                 User = "root",
///                 Groups = new[]
///                 {
///                     "docker",
///                     "foogroup",
///                 },
///                 Privileges = new Docker.Inputs.ServiceTaskSpecContainerSpecPrivilegesArgs
///                 {
///                     SeLinuxContext = new Docker.Inputs.ServiceTaskSpecContainerSpecPrivilegesSeLinuxContextArgs
///                     {
///                         Disable = true,
///                         User = "user-label",
///                         Role = "role-label",
///                         Type = "type-label",
///                         Level = "level-label",
///                     },
///                 },
///                 ReadOnly = true,
///                 Mounts = new[]
///                 {
///                     new Docker.Inputs.ServiceTaskSpecContainerSpecMountArgs
///                     {
///                         Target = "/mount/test",
///                         Source = testVolume.Name,
///                         Type = "bind",
///                         ReadOnly = true,
///                         BindOptions = new Docker.Inputs.ServiceTaskSpecContainerSpecMountBindOptionsArgs
///                         {
///                             Propagation = "rprivate",
///                         },
///                     },
///                     new Docker.Inputs.ServiceTaskSpecContainerSpecMountArgs
///                     {
///                         Target = "/mount/test2",
///                         Source = testVolume2.Name,
///                         Type = "volume",
///                         ReadOnly = true,
///                         VolumeOptions = new Docker.Inputs.ServiceTaskSpecContainerSpecMountVolumeOptionsArgs
///                         {
///                             NoCopy = true,
///                             Labels = new[]
///                             {
///                                 new Docker.Inputs.ServiceTaskSpecContainerSpecMountVolumeOptionsLabelArgs
///                                 {
///                                     Label = "foo",
///                                     Value = "bar",
///                                 },
///                             },
///                             DriverName = "random-driver",
///                             DriverOptions =
///                             {
///                                 { "op1", "val1" },
///                             },
///                         },
///                     },
///                 },
///                 StopSignal = "SIGTERM",
///                 StopGracePeriod = "10s",
///                 Healthcheck = new Docker.Inputs.ServiceTaskSpecContainerSpecHealthcheckArgs
///                 {
///                     Tests = new[]
///                     {
///                         "CMD",
///                         "curl",
///                         "-f",
///                         "http://localhost:8080/health",
///                     },
///                     Interval = "5s",
///                     Timeout = "2s",
///                     Retries = 4,
///                 },
///                 Hosts = new[]
///                 {
///                     new Docker.Inputs.ServiceTaskSpecContainerSpecHostArgs
///                     {
///                         Host = "testhost",
///                         Ip = "10.0.1.0",
///                     },
///                 },
///                 DnsConfig = new Docker.Inputs.ServiceTaskSpecContainerSpecDnsConfigArgs
///                 {
///                     Nameservers = new[]
///                     {
///                         "8.8.8.8",
///                     },
///                     Searches = new[]
///                     {
///                         "example.org",
///                     },
///                     Options = new[]
///                     {
///                         "timeout:3",
///                     },
///                 },
///             },
///             Resources = new Docker.Inputs.ServiceTaskSpecResourcesArgs
///             {
///                 Limits = new Docker.Inputs.ServiceTaskSpecResourcesLimitsArgs
///                 {
///                     NanoCpus = 1000000,
///                     MemoryBytes = 536870912,
///                 },
///                 Reservation = new Docker.Inputs.ServiceTaskSpecResourcesReservationArgs
///                 {
///                     NanoCpus = 1000000,
///                     MemoryBytes = 536870912,
///                     GenericResources = new Docker.Inputs.ServiceTaskSpecResourcesReservationGenericResourcesArgs
///                     {
///                         NamedResourcesSpecs = new[]
///                         {
///                             "GPU=UUID1",
///                         },
///                         DiscreteResourcesSpecs = new[]
///                         {
///                             "SSD=3",
///                         },
///                     },
///                 },
///             },
///             RestartPolicy =
///             {
///                 { "condition", "on-failure" },
///                 { "delay", "3s" },
///                 { "maxAttempts", 4 },
///                 { "window", "10s" },
///             }[0],
///             Placement = new Docker.Inputs.ServiceTaskSpecPlacementArgs
///             {
///                 Constraints = new[]
///                 {
///                     "node.role==manager",
///                 },
///                 Prefs = new[]
///                 {
///                     "spread=node.role.manager",
///                 },
///                 MaxReplicas = 1,
///             },
///             ForceUpdate = 0,
///             Runtime = "container",
///             Networks = new[]
///             {
///                 testNetwork.Id,
///             },
///             LogDriver = new Docker.Inputs.ServiceTaskSpecLogDriverArgs
///             {
///                 Name = "json-file",
///                 Options =
///                 {
///                     { "max-size", "10m" },
///                     { "max-file", "3" },
///                 },
///             },
///         },
///         Mode = new Docker.Inputs.ServiceModeArgs
///         {
///             Replicated = new Docker.Inputs.ServiceModeReplicatedArgs
///             {
///                 Replicas = 2,
///             },
///         },
///         UpdateConfig = new Docker.Inputs.ServiceUpdateConfigArgs
///         {
///             Parallelism = 2,
///             Delay = "10s",
///             FailureAction = "pause",
///             Monitor = "5s",
///             MaxFailureRatio = "0.1",
///             Order = "start-first",
///         },
///         RollbackConfig = new Docker.Inputs.ServiceRollbackConfigArgs
///         {
///             Parallelism = 2,
///             Delay = "5ms",
///             FailureAction = "pause",
///             Monitor = "10h",
///             MaxFailureRatio = "0.9",
///             Order = "stop-first",
///         },
///         EndpointSpec = new Docker.Inputs.ServiceEndpointSpecArgs
///         {
///             Ports = new[]
///             {
///                 new Docker.Inputs.ServiceEndpointSpecPortArgs
///                 {
///                     Name = "random",
///                     Protocol = "tcp",
///                     TargetPort = 8080,
///                     PublishedPort = 8080,
///                     PublishMode = "ingress",
///                 },
///                 null,
///             },
///             Mode = "vip",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testVolume, err := docker.NewVolume(ctx, "test_volume", &docker.VolumeArgs{
/// 			Name: pulumi.String("tftest-volume"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVolume2, err := docker.NewVolume(ctx, "test_volume_2", &docker.VolumeArgs{
/// 			Name: pulumi.String("tftest-volume2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceConfig, err := docker.NewServiceConfig(ctx, "service_config", &docker.ServiceConfigArgs{
/// 			Name: pulumi.String("tftest-full-myconfig"),
/// 			Data: pulumi.String("ewogICJwcmVmaXgiOiAiMTIzIgp9"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceSecret, err := docker.NewSecret(ctx, "service_secret", &docker.SecretArgs{
/// 			Name: pulumi.String("tftest-mysecret"),
/// 			Data: pulumi.String("ewogICJrZXkiOiAiUVdFUlRZIgp9"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testNetwork, err := docker.NewNetwork(ctx, "test_network", &docker.NetworkArgs{
/// 			Name:   pulumi.String("tftest-network"),
/// 			Driver: pulumi.String("overlay"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docker.NewService(ctx, "foo", &docker.ServiceArgs{
/// 			Name: pulumi.String("tftest-service-basic"),
/// 			TaskSpec: &docker.ServiceTaskSpecArgs{
/// 				ContainerSpec: &docker.ServiceTaskSpecContainerSpecArgs{
/// 					Configs: docker.ServiceTaskSpecContainerSpecConfigArray{
/// 						&docker.ServiceTaskSpecContainerSpecConfigArgs{
/// 							ConfigId:   serviceConfig.ID(),
/// 							ConfigName: serviceConfig.Name,
/// 							FileName:   pulumi.String("/configs.json"),
/// 						},
/// 						&docker.ServiceTaskSpecContainerSpecConfigArgs{},
/// 					},
/// 					Secrets: docker.ServiceTaskSpecContainerSpecSecretArray{
/// 						&docker.ServiceTaskSpecContainerSpecSecretArgs{
/// 							SecretId:   serviceSecret.ID(),
/// 							SecretName: serviceSecret.Name,
/// 							FileName:   pulumi.String("/secrets.json"),
/// 							FileUid:    pulumi.String("0"),
/// 							FileGid:    pulumi.String("0"),
/// 							FileMode:   pulumi.Int(777),
/// 						},
/// 						&docker.ServiceTaskSpecContainerSpecSecretArgs{},
/// 					},
/// 					Image: pulumi.String("repo.mycompany.com:8080/foo-service:v1"),
/// 					Labels: docker.ServiceTaskSpecContainerSpecLabelArray{
/// 						&docker.ServiceTaskSpecContainerSpecLabelArgs{
/// 							Label: pulumi.String("foo.bar"),
/// 							Value: pulumi.String("baz"),
/// 						},
/// 					},
/// 					Commands: pulumi.StringArray{
/// 						pulumi.String("ls"),
/// 					},
/// 					Args: pulumi.StringArray{
/// 						pulumi.String("-las"),
/// 					},
/// 					Hostname: pulumi.String("my-fancy-service"),
/// 					Env: pulumi.StringMap{
/// 						"MYFOO": pulumi.String("BAR"),
/// 					},
/// 					Dir:  pulumi.String("/root"),
/// 					User: pulumi.String("root"),
/// 					Groups: pulumi.StringArray{
/// 						pulumi.String("docker"),
/// 						pulumi.String("foogroup"),
/// 					},
/// 					Privileges: &docker.ServiceTaskSpecContainerSpecPrivilegesArgs{
/// 						SeLinuxContext: &docker.ServiceTaskSpecContainerSpecPrivilegesSeLinuxContextArgs{
/// 							Disable: pulumi.Bool(true),
/// 							User:    pulumi.String("user-label"),
/// 							Role:    pulumi.String("role-label"),
/// 							Type:    pulumi.String("type-label"),
/// 							Level:   pulumi.String("level-label"),
/// 						},
/// 					},
/// 					ReadOnly: pulumi.Bool(true),
/// 					Mounts: docker.ServiceTaskSpecContainerSpecMountArray{
/// 						&docker.ServiceTaskSpecContainerSpecMountArgs{
/// 							Target:   pulumi.String("/mount/test"),
/// 							Source:   testVolume.Name,
/// 							Type:     pulumi.String("bind"),
/// 							ReadOnly: pulumi.Bool(true),
/// 							BindOptions: &docker.ServiceTaskSpecContainerSpecMountBindOptionsArgs{
/// 								Propagation: pulumi.String("rprivate"),
/// 							},
/// 						},
/// 						&docker.ServiceTaskSpecContainerSpecMountArgs{
/// 							Target:   pulumi.String("/mount/test2"),
/// 							Source:   testVolume2.Name,
/// 							Type:     pulumi.String("volume"),
/// 							ReadOnly: pulumi.Bool(true),
/// 							VolumeOptions: &docker.ServiceTaskSpecContainerSpecMountVolumeOptionsArgs{
/// 								NoCopy: pulumi.Bool(true),
/// 								Labels: docker.ServiceTaskSpecContainerSpecMountVolumeOptionsLabelArray{
/// 									&docker.ServiceTaskSpecContainerSpecMountVolumeOptionsLabelArgs{
/// 										Label: pulumi.String("foo"),
/// 										Value: pulumi.String("bar"),
/// 									},
/// 								},
/// 								DriverName: pulumi.String("random-driver"),
/// 								DriverOptions: pulumi.StringMap{
/// 									"op1": pulumi.String("val1"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					StopSignal:      pulumi.String("SIGTERM"),
/// 					StopGracePeriod: pulumi.String("10s"),
/// 					Healthcheck: &docker.ServiceTaskSpecContainerSpecHealthcheckArgs{
/// 						Tests: pulumi.StringArray{
/// 							pulumi.String("CMD"),
/// 							pulumi.String("curl"),
/// 							pulumi.String("-f"),
/// 							pulumi.String("http://localhost:8080/health"),
/// 						},
/// 						Interval: pulumi.String("5s"),
/// 						Timeout:  pulumi.String("2s"),
/// 						Retries:  pulumi.Int(4),
/// 					},
/// 					Hosts: docker.ServiceTaskSpecContainerSpecHostArray{
/// 						&docker.ServiceTaskSpecContainerSpecHostArgs{
/// 							Host: pulumi.String("testhost"),
/// 							Ip:   pulumi.String("10.0.1.0"),
/// 						},
/// 					},
/// 					DnsConfig: &docker.ServiceTaskSpecContainerSpecDnsConfigArgs{
/// 						Nameservers: pulumi.StringArray{
/// 							pulumi.String("8.8.8.8"),
/// 						},
/// 						Searches: pulumi.StringArray{
/// 							pulumi.String("example.org"),
/// 						},
/// 						Options: pulumi.StringArray{
/// 							pulumi.String("timeout:3"),
/// 						},
/// 					},
/// 				},
/// 				Resources: &docker.ServiceTaskSpecResourcesArgs{
/// 					Limits: &docker.ServiceTaskSpecResourcesLimitsArgs{
/// 						NanoCpus:    pulumi.Int(1000000),
/// 						MemoryBytes: pulumi.Int(536870912),
/// 					},
/// 					Reservation: &docker.ServiceTaskSpecResourcesReservationArgs{
/// 						NanoCpus:    pulumi.Int(1000000),
/// 						MemoryBytes: pulumi.Int(536870912),
/// 						GenericResources: &docker.ServiceTaskSpecResourcesReservationGenericResourcesArgs{
/// 							NamedResourcesSpecs: pulumi.StringArray{
/// 								pulumi.String("GPU=UUID1"),
/// 							},
/// 							DiscreteResourcesSpecs: pulumi.StringArray{
/// 								pulumi.String("SSD=3"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				RestartPolicy: map[string]interface{}{
/// 					"condition":   "on-failure",
/// 					"delay":       "3s",
/// 					"maxAttempts": 4,
/// 					"window":      "10s",
/// 				}[0],
/// 				Placement: &docker.ServiceTaskSpecPlacementArgs{
/// 					Constraints: pulumi.StringArray{
/// 						pulumi.String("node.role==manager"),
/// 					},
/// 					Prefs: pulumi.StringArray{
/// 						pulumi.String("spread=node.role.manager"),
/// 					},
/// 					MaxReplicas: pulumi.Int(1),
/// 				},
/// 				ForceUpdate: pulumi.Int(0),
/// 				Runtime:     pulumi.String("container"),
/// 				Networks: pulumi.StringArray{
/// 					testNetwork.ID(),
/// 				},
/// 				LogDriver: &docker.ServiceTaskSpecLogDriverArgs{
/// 					Name: pulumi.String("json-file"),
/// 					Options: pulumi.StringMap{
/// 						"max-size": pulumi.String("10m"),
/// 						"max-file": pulumi.String("3"),
/// 					},
/// 				},
/// 			},
/// 			Mode: &docker.ServiceModeArgs{
/// 				Replicated: &docker.ServiceModeReplicatedArgs{
/// 					Replicas: pulumi.Int(2),
/// 				},
/// 			},
/// 			UpdateConfig: &docker.ServiceUpdateConfigArgs{
/// 				Parallelism:     pulumi.Int(2),
/// 				Delay:           pulumi.String("10s"),
/// 				FailureAction:   pulumi.String("pause"),
/// 				Monitor:         pulumi.String("5s"),
/// 				MaxFailureRatio: pulumi.String("0.1"),
/// 				Order:           pulumi.String("start-first"),
/// 			},
/// 			RollbackConfig: &docker.ServiceRollbackConfigArgs{
/// 				Parallelism:     pulumi.Int(2),
/// 				Delay:           pulumi.String("5ms"),
/// 				FailureAction:   pulumi.String("pause"),
/// 				Monitor:         pulumi.String("10h"),
/// 				MaxFailureRatio: pulumi.String("0.9"),
/// 				Order:           pulumi.String("stop-first"),
/// 			},
/// 			EndpointSpec: &docker.ServiceEndpointSpecArgs{
/// 				Ports: docker.ServiceEndpointSpecPortArray{
/// 					&docker.ServiceEndpointSpecPortArgs{
/// 						Name:          pulumi.String("random"),
/// 						Protocol:      pulumi.String("tcp"),
/// 						TargetPort:    pulumi.Int(8080),
/// 						PublishedPort: pulumi.Int(8080),
/// 						PublishMode:   pulumi.String("ingress"),
/// 					},
/// 					&docker.ServiceEndpointSpecPortArgs{},
/// 				},
/// 				Mode: pulumi.String("vip"),
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
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// resource "docker_volume" "test_volume" {
///   name = "tftest-volume"
/// }
/// resource "docker_volume" "test_volume_2" {
///   name = "tftest-volume2"
/// }
/// resource "docker_serviceconfig" "service_config" {
///   name = "tftest-full-myconfig"
///   data = "ewogICJwcmVmaXgiOiAiMTIzIgp9"
/// }
/// resource "docker_secret" "service_secret" {
///   name = "tftest-mysecret"
///   data = "ewogICJrZXkiOiAiUVdFUlRZIgp9"
/// }
/// resource "docker_network" "test_network" {
///   name   = "tftest-network"
///   driver = "overlay"
/// }
/// resource "docker_service" "foo" {
///   name = "tftest-service-basic"
///   task_spec = {
///     container_spec = {
///       configs = [{
///         "configId"   = docker_serviceconfig.service_config.id
///         "configName" = docker_serviceconfig.service_config.name
///         "fileName"   = "/configs.json"
///       }, {}]
///       secrets = [{
///         "secretId"   = docker_secret.service_secret.id
///         "secretName" = docker_secret.service_secret.name
///         "fileName"   = "/secrets.json"
///         "fileUid"    = "0"
///         "fileGid"    = "0"
///         "fileMode"   = 777
///       }, {}]
///       image = "repo.mycompany.com:8080/foo-service:v1"
///       labels = [{
///         "label" = "foo.bar"
///         "value" = "baz"
///       }]
///       commands = ["ls"]
///       args     = ["-las"]
///       hostname = "my-fancy-service"
///       env = {
///         "MYFOO" = "BAR"
///       }
///       dir    = "/root"
///       user   = "root"
///       groups = ["docker", "foogroup"]
///       privileges = {
///         se_linux_context = {
///           disable = true
///           user    = "user-label"
///           role    = "role-label"
///           type    = "type-label"
///           level   = "level-label"
///         }
///       }
///       read_only = true
///       mounts = [{
///         "target"   = "/mount/test"
///         "source"   = docker_volume.test_volume.name
///         "type"     = "bind"
///         "readOnly" = true
///         "bindOptions" = {
///           "propagation" = "rprivate"
///         }
///         }, {
///         "target"   = "/mount/test2"
///         "source"   = docker_volume.test_volume_2.name
///         "type"     = "volume"
///         "readOnly" = true
///         "volumeOptions" = {
///           "noCopy" = true
///           "labels" = [{
///             "label" = "foo"
///             "value" = "bar"
///           }]
///           "driverName" = "random-driver"
///           "driverOptions" = {
///             "op1" = "val1"
///           }
///         }
///       }]
///       stop_signal       = "SIGTERM"
///       stop_grace_period = "10s"
///       healthcheck = {
///         tests    = ["CMD", "curl", "-f", "http://localhost:8080/health"]
///         interval = "5s"
///         timeout  = "2s"
///         retries  = 4
///       }
///       hosts = [{
///         "host" = "testhost"
///         "ip"   = "10.0.1.0"
///       }]
///       dns_config = {
///         nameservers = ["8.8.8.8"]
///         searches    = ["example.org"]
///         options     = ["timeout:3"]
///       }
///     }
///     resources = {
///       limits = {
///         nano_cpus    = 1000000
///         memory_bytes = 536870912
///       }
///       reservation = {
///         nano_cpus    = 1000000
///         memory_bytes = 536870912
///         generic_resources = {
///           named_resources_specs    = ["GPU=UUID1"]
///           discrete_resources_specs = ["SSD=3"]
///         }
///       }
///     }
///     restart_policy = {
///       "condition"   = "on-failure"
///       "delay"       = "3s"
///       "maxAttempts" = 4
///       "window"      = "10s"
///     }[0]
///     placement = {
///       constraints  = ["node.role==manager"]
///       prefs        = ["spread=node.role.manager"]
///       max_replicas = 1
///     }
///     force_update = 0
///     runtime      = "container"
///     networks     = [docker_network.test_network.id]
///     log_driver = {
///       name = "json-file"
///       options = {
///         "max-size" = "10m"
///         "max-file" = "3"
///       }
///     }
///   }
///   mode = {
///     replicated = {
///       replicas = 2
///     }
///   }
///   update_config = {
///     parallelism       = 2
///     delay             = "10s"
///     failure_action    = "pause"
///     monitor           = "5s"
///     max_failure_ratio = "0.1"
///     order             = "start-first"
///   }
///   rollback_config = {
///     parallelism       = 2
///     delay             = "5ms"
///     failure_action    = "pause"
///     monitor           = "10h"
///     max_failure_ratio = "0.9"
///     order             = "stop-first"
///   }
///   endpoint_spec = {
///     ports = [{
///       "name"          = "random"
///       "protocol"      = "tcp"
///       "targetPort"    = "8080"
///       "publishedPort" = "8080"
///       "publishMode"   = "ingress"
///     }, {}]
///     mode = "vip"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.Volume;
/// import com.pulumi.docker.VolumeArgs;
/// import com.pulumi.docker.ServiceConfig;
/// import com.pulumi.docker.ServiceConfigArgs;
/// import com.pulumi.docker.Secret;
/// import com.pulumi.docker.SecretArgs;
/// import com.pulumi.docker.Network;
/// import com.pulumi.docker.NetworkArgs;
/// import com.pulumi.docker.Service;
/// import com.pulumi.docker.ServiceArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecConfigArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecSecretArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecLabelArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecPrivilegesArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecPrivilegesSeLinuxContextArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecMountArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecMountBindOptionsArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecMountVolumeOptionsArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecMountVolumeOptionsLabelArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecHealthcheckArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecHostArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecDnsConfigArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecResourcesArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecResourcesLimitsArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecResourcesReservationArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecResourcesReservationGenericResourcesArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecPlacementArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecLogDriverArgs;
/// import com.pulumi.docker.inputs.ServiceModeArgs;
/// import com.pulumi.docker.inputs.ServiceModeReplicatedArgs;
/// import com.pulumi.docker.inputs.ServiceUpdateConfigArgs;
/// import com.pulumi.docker.inputs.ServiceRollbackConfigArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecPortArgs;
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
///         var testVolume = new Volume("testVolume", VolumeArgs.builder()
///             .name("tftest-volume")
///             .build());
///
///         var testVolume2 = new Volume("testVolume2", VolumeArgs.builder()
///             .name("tftest-volume2")
///             .build());
///
///         var serviceConfig = new ServiceConfig("serviceConfig", ServiceConfigArgs.builder()
///             .name("tftest-full-myconfig")
///             .data("ewogICJwcmVmaXgiOiAiMTIzIgp9")
///             .build());
///
///         var serviceSecret = new Secret("serviceSecret", SecretArgs.builder()
///             .name("tftest-mysecret")
///             .data("ewogICJrZXkiOiAiUVdFUlRZIgp9")
///             .build());
///
///         var testNetwork = new Network("testNetwork", NetworkArgs.builder()
///             .name("tftest-network")
///             .driver("overlay")
///             .build());
///
///         var foo = new Service("foo", ServiceArgs.builder()
///             .name("tftest-service-basic")
///             .taskSpec(ServiceTaskSpecArgs.builder()
///                 .containerSpec(ServiceTaskSpecContainerSpecArgs.builder()
///                     .configs(
///                         ServiceTaskSpecContainerSpecConfigArgs.builder()
///                             .configId(serviceConfig.id())
///                             .configName(serviceConfig.name())
///                             .fileName("/configs.json")
///                             .build(),
///                         ServiceTaskSpecContainerSpecConfigArgs.builder()
///                             .build())
///                     .secrets(
///                         ServiceTaskSpecContainerSpecSecretArgs.builder()
///                             .secretId(serviceSecret.id())
///                             .secretName(serviceSecret.name())
///                             .fileName("/secrets.json")
///                             .fileUid("0")
///                             .fileGid("0")
///                             .fileMode(777)
///                             .build(),
///                         ServiceTaskSpecContainerSpecSecretArgs.builder()
///                             .build())
///                     .image("repo.mycompany.com:8080/foo-service:v1")
///                     .labels(ServiceTaskSpecContainerSpecLabelArgs.builder()
///                         .label("foo.bar")
///                         .value("baz")
///                         .build())
///                     .commands("ls")
///                     .args("-las")
///                     .hostname("my-fancy-service")
///                     .env(Map.of("MYFOO", "BAR"))
///                     .dir("/root")
///                     .user("root")
///                     .groups(
///                         "docker",
///                         "foogroup")
///                     .privileges(ServiceTaskSpecContainerSpecPrivilegesArgs.builder()
///                         .seLinuxContext(ServiceTaskSpecContainerSpecPrivilegesSeLinuxContextArgs.builder()
///                             .disable(true)
///                             .user("user-label")
///                             .role("role-label")
///                             .type("type-label")
///                             .level("level-label")
///                             .build())
///                         .build())
///                     .readOnly(true)
///                     .mounts(
///                         ServiceTaskSpecContainerSpecMountArgs.builder()
///                             .target("/mount/test")
///                             .source(testVolume.name())
///                             .type("bind")
///                             .readOnly(true)
///                             .bindOptions(ServiceTaskSpecContainerSpecMountBindOptionsArgs.builder()
///                                 .propagation("rprivate")
///                                 .build())
///                             .build(),
///                         ServiceTaskSpecContainerSpecMountArgs.builder()
///                             .target("/mount/test2")
///                             .source(testVolume2.name())
///                             .type("volume")
///                             .readOnly(true)
///                             .volumeOptions(ServiceTaskSpecContainerSpecMountVolumeOptionsArgs.builder()
///                                 .noCopy(true)
///                                 .labels(ServiceTaskSpecContainerSpecMountVolumeOptionsLabelArgs.builder()
///                                     .label("foo")
///                                     .value("bar")
///                                     .build())
///                                 .driverName("random-driver")
///                                 .driverOptions(Map.of("op1", "val1"))
///                                 .build())
///                             .build())
///                     .stopSignal("SIGTERM")
///                     .stopGracePeriod("10s")
///                     .healthcheck(ServiceTaskSpecContainerSpecHealthcheckArgs.builder()
///                         .tests(
///                             "CMD",
///                             "curl",
///                             "-f",
///                             "http://localhost:8080/health")
///                         .interval("5s")
///                         .timeout("2s")
///                         .retries(4)
///                         .build())
///                     .hosts(ServiceTaskSpecContainerSpecHostArgs.builder()
///                         .host("testhost")
///                         .ip("10.0.1.0")
///                         .build())
///                     .dnsConfig(ServiceTaskSpecContainerSpecDnsConfigArgs.builder()
///                         .nameservers("8.8.8.8")
///                         .searches("example.org")
///                         .options("timeout:3")
///                         .build())
///                     .build())
///                 .resources(ServiceTaskSpecResourcesArgs.builder()
///                     .limits(ServiceTaskSpecResourcesLimitsArgs.builder()
///                         .nanoCpus(1000000)
///                         .memoryBytes(536870912)
///                         .build())
///                     .reservation(ServiceTaskSpecResourcesReservationArgs.builder()
///                         .nanoCpus(1000000)
///                         .memoryBytes(536870912)
///                         .genericResources(ServiceTaskSpecResourcesReservationGenericResourcesArgs.builder()
///                             .namedResourcesSpecs("GPU=UUID1")
///                             .discreteResourcesSpecs("SSD=3")
///                             .build())
///                         .build())
///                     .build())
///                 .restartPolicy(com.pulumi.docker.inputs.ServiceTaskSpecRestartPolicyArgs.builder()
///                     .condition("on-failure")
///                     .delay("3s")
///                     .maxAttempts(4)
///                     .window("10s")
///                     .build()[0])
///                 .placement(ServiceTaskSpecPlacementArgs.builder()
///                     .constraints("node.role==manager")
///                     .prefs("spread=node.role.manager")
///                     .maxReplicas(1)
///                     .build())
///                 .forceUpdate(0)
///                 .runtime("container")
///                 .networks(Arrays.asList(testNetwork.id()))
///                 .logDriver(ServiceTaskSpecLogDriverArgs.builder()
///                     .name("json-file")
///                     .options(Map.ofEntries(
///                         Map.entry("max-size", "10m"),
///                         Map.entry("max-file", "3")
///                     ))
///                     .build())
///                 .build())
///             .mode(ServiceModeArgs.builder()
///                 .replicated(ServiceModeReplicatedArgs.builder()
///                     .replicas(2)
///                     .build())
///                 .build())
///             .updateConfig(ServiceUpdateConfigArgs.builder()
///                 .parallelism(2)
///                 .delay("10s")
///                 .failureAction("pause")
///                 .monitor("5s")
///                 .maxFailureRatio("0.1")
///                 .order("start-first")
///                 .build())
///             .rollbackConfig(ServiceRollbackConfigArgs.builder()
///                 .parallelism(2)
///                 .delay("5ms")
///                 .failureAction("pause")
///                 .monitor("10h")
///                 .maxFailureRatio("0.9")
///                 .order("stop-first")
///                 .build())
///             .endpointSpec(ServiceEndpointSpecArgs.builder()
///                 .ports(
///                     ServiceEndpointSpecPortArgs.builder()
///                         .name("random")
///                         .protocol("tcp")
///                         .targetPort(8080)
///                         .publishedPort(8080)
///                         .publishMode("ingress")
///                         .build(),
///                     ServiceEndpointSpecPortArgs.builder()
///                         .build())
///                 .mode("vip")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/service:Service foo id
/// ```
///
/// ### Example
///
/// Assuming you created a `service` as follows
///
/// ```sh
/// #!/bin/bash
/// docker service create --name foo -p 8080:80 nginx
/// # prints th ID
/// 4pcphbxkfn2rffhbhe6czytgi
/// ```
///
/// you provide the definition for the resource as follows
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const foo = new docker.Service("foo", {
///     name: "foo",
///     taskSpec: {
///         containerSpec: {
///             image: "nginx",
///         },
///     },
///     endpointSpec: {
///         ports: [{
///             targetPort: 80,
///             publishedPort: 8080,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// foo = docker.Service("foo",
///     name="foo",
///     task_spec={
///         "container_spec": {
///             "image": "nginx",
///         },
///     },
///     endpoint_spec={
///         "ports": [{
///             "target_port": 80,
///             "published_port": 8080,
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Docker.Service("foo", new()
///     {
///         Name = "foo",
///         TaskSpec = new Docker.Inputs.ServiceTaskSpecArgs
///         {
///             ContainerSpec = new Docker.Inputs.ServiceTaskSpecContainerSpecArgs
///             {
///                 Image = "nginx",
///             },
///         },
///         EndpointSpec = new Docker.Inputs.ServiceEndpointSpecArgs
///         {
///             Ports = new[]
///             {
///                 new Docker.Inputs.ServiceEndpointSpecPortArgs
///                 {
///                     TargetPort = 80,
///                     PublishedPort = 8080,
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
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docker.NewService(ctx, "foo", &docker.ServiceArgs{
/// 			Name: pulumi.String("foo"),
/// 			TaskSpec: &docker.ServiceTaskSpecArgs{
/// 				ContainerSpec: &docker.ServiceTaskSpecContainerSpecArgs{
/// 					Image: pulumi.String("nginx"),
/// 				},
/// 			},
/// 			EndpointSpec: &docker.ServiceEndpointSpecArgs{
/// 				Ports: docker.ServiceEndpointSpecPortArray{
/// 					&docker.ServiceEndpointSpecPortArgs{
/// 						TargetPort:    pulumi.Int(80),
/// 						PublishedPort: pulumi.Int(8080),
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
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// resource "docker_service" "foo" {
///   name = "foo"
///   task_spec = {
///     container_spec = {
///       image = "nginx"
///     }
///   }
///   endpoint_spec = {
///     ports = [{
///       "targetPort"    = "80"
///       "publishedPort" = "8080"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.Service;
/// import com.pulumi.docker.ServiceArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecArgs;
/// import com.pulumi.docker.inputs.ServiceTaskSpecContainerSpecArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecArgs;
/// import com.pulumi.docker.inputs.ServiceEndpointSpecPortArgs;
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
///         var foo = new Service("foo", ServiceArgs.builder()
///             .name("foo")
///             .taskSpec(ServiceTaskSpecArgs.builder()
///                 .containerSpec(ServiceTaskSpecContainerSpecArgs.builder()
///                     .image("nginx")
///                     .build())
///                 .build())
///             .endpointSpec(ServiceEndpointSpecArgs.builder()
///                 .ports(ServiceEndpointSpecPortArgs.builder()
///                     .targetPort(80)
///                     .publishedPort(8080)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: docker:Service
///     properties:
///       name: foo
///       taskSpec:
///         containerSpec:
///           image: nginx
///       endpointSpec:
///         ports:
///           - targetPort: '80'
///             publishedPort: '8080'
/// ```
///
///
/// then the import command is as follows
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/service:Service foo 4pcphbxkfn2rffhbhe6czytgi
/// ```
class Service extends pulumi.CustomResource {
  /// Configuration for the authentication for pulling the images of the service
  late final pulumi.Output<ServiceAuth?> auth;
  /// A configuration to ensure that a service converges aka reaches the desired that of all task up and running
  late final pulumi.Output<ServiceConvergeConfig?> convergeConfig;
  /// Properties that can be configured to access and load balance a service
  late final pulumi.Output<ServiceEndpointSpec> endpointSpec;
  /// User-defined key/value metadata
  late final pulumi.Output<List<Map<String, dynamic>>> labels;
  /// Scheduling mode for the service
  late final pulumi.Output<ServiceMode> mode;
  /// Name of the service
  late final pulumi.Output<String> name;
  /// Specification for the rollback strategy of the service
  late final pulumi.Output<ServiceRollbackConfig?> rollbackConfig;
  /// User modifiable task configuration
  late final pulumi.Output<ServiceTaskSpec> taskSpec;
  /// Specification for the update strategy of the service
  late final pulumi.Output<ServiceUpdateConfig?> updateConfig;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_index_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auth = registerOutput<ServiceAuth?>('auth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAuth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    convergeConfig = registerOutput<ServiceConvergeConfig?>('convergeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceConvergeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointSpec = registerOutput<ServiceEndpointSpec>('endpointSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEndpointSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<List<Map<String, dynamic>>>('labels');
    mode = registerOutput<ServiceMode>('mode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    rollbackConfig = registerOutput<ServiceRollbackConfig?>('rollbackConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceRollbackConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    taskSpec = registerOutput<ServiceTaskSpec>('taskSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceTaskSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateConfig = registerOutput<ServiceUpdateConfig?>('updateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceUpdateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auth = registerOutput<ServiceAuth?>('auth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAuth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    convergeConfig = registerOutput<ServiceConvergeConfig?>('convergeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceConvergeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointSpec = registerOutput<ServiceEndpointSpec>('endpointSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEndpointSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<List<Map<String, dynamic>>>('labels');
    mode = registerOutput<ServiceMode>('mode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    rollbackConfig = registerOutput<ServiceRollbackConfig?>('rollbackConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceRollbackConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    taskSpec = registerOutput<ServiceTaskSpec>('taskSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceTaskSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateConfig = registerOutput<ServiceUpdateConfig?>('updateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceUpdateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
