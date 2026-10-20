import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_kv_args.dart';
import 'workers_kv_state.dart';

/// Accepted Permissions
///
/// - `Workers KV Storage Read`
/// - `Workers KV Storage Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersKv = new cloudflare.WorkersKv("example_workers_kv", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     namespaceId: "0f2ac74b498b48028cb68387c421e279",
///     keyName: "My-Key",
///     value: "Some Value",
///     metadata: JSON.stringify({}),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_kv = cloudflare.WorkersKv("example_workers_kv",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     namespace_id="0f2ac74b498b48028cb68387c421e279",
///     key_name="My-Key",
///     value="Some Value",
///     metadata=json.dumps({}))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkersKv = new Cloudflare.WorkersKv("example_workers_kv", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         NamespaceId = "0f2ac74b498b48028cb68387c421e279",
///         KeyName = "My-Key",
///         Value = "Some Value",
///         Metadata = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudflare.NewWorkersKv(ctx, "example_workers_kv", &cloudflare.WorkersKvArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			NamespaceId: pulumi.String("0f2ac74b498b48028cb68387c421e279"),
/// 			KeyName:     pulumi.String("My-Key"),
/// 			Value:       pulumi.String("Some Value"),
/// 			Metadata:    pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_workers_kv" "example_workers_kv" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   namespace_id = "0f2ac74b498b48028cb68387c421e279"
///   key_name     = "My-Key"
///   value        = "Some Value"
///   metadata     = jsonencode({})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersKv;
/// import com.pulumi.cloudflare.WorkersKvArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampleWorkersKv = new WorkersKv("exampleWorkersKv", WorkersKvArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .namespaceId("0f2ac74b498b48028cb68387c421e279")
///             .keyName("My-Key")
///             .value("Some Value")
///             .metadata(serializeJson(
///                 jsonObject(
///
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersKv:
///     type: cloudflare:WorkersKv
///     name: example_workers_kv
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       namespaceId: 0f2ac74b498b48028cb68387c421e279
///       keyName: My-Key
///       value: Some Value
///       metadata:
///         fn::toJSON: {}
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workersKv:WorkersKv example '<account_id>/<namespace_id>/<key_name>'
/// ```
class WorkersKv extends pulumi.CustomResource {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  late final pulumi.Output<String> accountId;
  /// Expires the key at a certain time, measured in number of seconds since the UNIX epoch.
  late final pulumi.Output<double?> expiration;
  /// Expires the key after a number of seconds. Must be at least 60.
  late final pulumi.Output<double?> expirationTtl;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  late final pulumi.Output<String> keyName;
  /// Associates arbitrary JSON data with a key/value pair.
  late final pulumi.Output<String?> metadata;
  /// ID of the Workers KV namespace.
  late final pulumi.Output<String> namespaceId;
  /// A byte sequence to be stored, up to 25 MiB in length.
  late final pulumi.Output<String> value;

  /// Creates a new [WorkersKv].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkersKv]. {@macro pulumi_index_workers_kv_workers_kv_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkersKv(
    String name, {
    WorkersKvArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersKv:WorkersKv',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    expiration = registerOutput<double?>('expiration');
    expirationTtl = registerOutput<double?>('expirationTtl');
    keyName = registerOutput<String>('keyName');
    metadata = registerOutput<String?>('metadata');
    namespaceId = registerOutput<String>('namespaceId');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [WorkersKv] resource's state with the given [name] and [id].
  static WorkersKv get(
    String name,
    pulumi.Input<String> id, {
    WorkersKvState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkersKv._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkersKv._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersKv:WorkersKv',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    expiration = registerOutput<double?>('expiration');
    expirationTtl = registerOutput<double?>('expirationTtl');
    keyName = registerOutput<String>('keyName');
    metadata = registerOutput<String?>('metadata');
    namespaceId = registerOutput<String>('namespaceId');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [WorkersKv] resource.
  WorkersKv.reference(String urn)
    : super(
        'cloudflare:index/workersKv:WorkersKv',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    expiration = registerOutput<double?>('expiration');
    expirationTtl = registerOutput<double?>('expirationTtl');
    keyName = registerOutput<String>('keyName');
    metadata = registerOutput<String?>('metadata');
    namespaceId = registerOutput<String>('namespaceId');
    value = registerOutput<String>('value');
  }
}
