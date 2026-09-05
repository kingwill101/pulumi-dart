import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_label.dart';
import 'secret_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Manages the secrets of a Docker service in a swarm.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
/// import * as std from "@pulumi/std";
///
/// const foo = new docker.Secret("foo", {
///     name: "foo",
///     data: std.base64encode({
///         input: "{\"foo\": \"s3cr3t\"}",
///     }).result,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
/// import pulumi_std as std
///
/// foo = docker.Secret("foo",
///     name="foo",
///     data=std.base64encode(input="{\"foo\": \"s3cr3t\"}")["result"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Docker.Secret("foo", new()
///     {
///         Name = "foo",
///         Data = Std.Base64encode.Invoke(new()
///         {
///             Input = "{\"foo\": \"s3cr3t\"}",
///         }).Result,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeBase64encode, err := std.Base64encode(ctx, map[string]string{
/// 			"input": "{\"foo\": \"s3cr3t\"}",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docker.NewSecret(ctx, "foo", &docker.SecretArgs{
/// 			Name: pulumi.String("foo"),
/// 			Data: invokeBase64encode.Result,
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
/// resource "docker_secret" "foo" {
///   name = "foo"
///   data = base64encode("{\"foo\": \"s3cr3t\"}")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.Secret;
/// import com.pulumi.docker.SecretArgs;
/// import com.pulumi.std.StdFunctions;
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
///         var foo = new Secret("foo", SecretArgs.builder()
///             .name("foo")
///             .data(StdFunctions.base64encode(Map.of("input", "{\"foo\": \"s3cr3t\"}")).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: docker:Secret
///     properties:
///       name: foo
///       data:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: '{"foo": "s3cr3t"}'
///           return: result
/// ```
///
///
/// ## Import
///
/// ```sh
/// #!/bin/bash
///
/// # Docker secret cannot be imported as the secret data, once set, is never exposed again.
/// ```
class Secret extends pulumi.CustomResource {
  /// Base64-url-safe-encoded secret data
  late final pulumi.Output<String> data;
  /// User-defined key/value metadata
  late final pulumi.Output<List<SecretLabel>?> labels;
  /// User-defined name of the secret
  late final pulumi.Output<String> name;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_index_secret_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/secret:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.2.0').merge(options),
          additionalSecretOutputs: const ['data'],
        ) {
    data = registerOutput<String>('data', isSecret: true);
    labels = registerOutput<List<SecretLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretLabel>(guardedValue, (value) => SecretLabel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Secret] resource's state with the given [name] and [id].
  static Secret get(
    String name,
    pulumi.Input<String> id, {
    SecretState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Secret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Secret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/secret:Secret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    data = registerOutput<String>('data', isSecret: true);
    labels = registerOutput<List<SecretLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretLabel>(guardedValue, (value) => SecretLabel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [Secret] resource.
  Secret.reference(String urn)
    : super(
        'docker:index/secret:Secret',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['data'],
        isResourceReference: true,
      ) {
    data = registerOutput<String>('data', isSecret: true);
    labels = registerOutput<List<SecretLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretLabel>(guardedValue, (value) => SecretLabel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }
}
