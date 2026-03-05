import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_policy_args.dart';
import 'spaces_bucket_policy_state.dart';

/// Provides a bucket policy resource for Spaces, DigitalOcean's object storage product.
/// The `digitalocean.SpacesBucketPolicy` resource allows Terraform to attach bucket
/// policy to Spaces.
///
/// The [Spaces API](https://docs.digitalocean.com/reference/api/spaces-api/) was
/// designed to be interoperable with Amazon's AWS S3 API. This allows users to
/// interact with the service while using the tools they already know. Spaces
/// mirrors S3's authentication framework and requests to Spaces require a key pair
/// similar to Amazon's Access ID and Secret Key.
///
/// The authentication requirement can be met by either setting the
/// `SPACES_ACCESS_KEY_ID` and `SPACES_SECRET_ACCESS_KEY` environment variables or
/// the provider's `spaces_access_id` and `spaces_secret_key` arguments to the
/// access ID and secret you generate via the DigitalOcean control panel. For
/// example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const static_assets = new digitalocean.SpacesBucket("static-assets", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// static_assets = digitalocean.SpacesBucket("static-assets")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var static_assets = new DigitalOcean.SpacesBucket("static-assets");
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
/// 		_, err := digitalocean.NewSpacesBucket(ctx, "static-assets", nil)
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
/// import com.pulumi.digitalocean.SpacesBucket;
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
///         var static_assets = new SpacesBucket("static-assets");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   static-assets:
///     type: digitalocean:SpacesBucket
/// ```
///
///
/// For more information, See [An Introduction to DigitalOcean Spaces](https://www.digitalocean.com/community/tutorials/an-introduction-to-digitalocean-spaces)
///
/// ## Example Usage
///
/// ### Limiting access to specific IP addresses
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.SpacesBucket("foobar", {
///     name: "foobar",
///     region: digitalocean.Region.NYC3,
/// });
/// const foobarSpacesBucketPolicy = new digitalocean.SpacesBucketPolicy("foobar", {
///     region: foobar.region,
///     bucket: foobar.name,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "IPAllow",
///             Effect: "Deny",
///             Principal: "*",
///             Action: "s3:*",
///             Resource: [
///                 pulumi.interpolate`arn:aws:s3:::${foobar.name}`,
///                 pulumi.interpolate`arn:aws:s3:::${foobar.name}/*`,
///             ],
///             Condition: {
///                 NotIpAddress: {
///                     "aws:SourceIp": "54.240.143.0/24",
///                 },
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesBucket("foobar",
///     name="foobar",
///     region=digitalocean.Region.NYC3)
/// foobar_spaces_bucket_policy = digitalocean.SpacesBucketPolicy("foobar",
///     region=foobar.region,
///     bucket=foobar.name,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "IPAllow",
///             "Effect": "Deny",
///             "Principal": "*",
///             "Action": "s3:*",
///             "Resource": [
///                 foobar.name.apply(lambda name: f"arn:aws:s3:::{name}"),
///                 foobar.name.apply(lambda name: f"arn:aws:s3:::{name}/*"),
///             ],
///             "Condition": {
///                 "NotIpAddress": {
///                     "aws:SourceIp": "54.240.143.0/24",
///                 },
///             },
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.SpacesBucket("foobar", new()
///     {
///         Name = "foobar",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var foobarSpacesBucketPolicy = new DigitalOcean.SpacesBucketPolicy("foobar", new()
///     {
///         Region = foobar.Region,
///         Bucket = foobar.Name,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "IPAllow",
///                     ["Effect"] = "Deny",
///                     ["Principal"] = "*",
///                     ["Action"] = "s3:*",
///                     ["Resource"] = new[]
///                     {
///                         foobar.Name.Apply(name => $"arn:aws:s3:::{name}"),
///                         foobar.Name.Apply(name => $"arn:aws:s3:::{name}/*"),
///                     },
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["NotIpAddress"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceIp"] = "54.240.143.0/24",
///                         },
///                     },
///                 },
///             },
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := digitalocean.NewSpacesBucket(ctx, "foobar", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("foobar"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewSpacesBucketPolicy(ctx, "foobar", &digitalocean.SpacesBucketPolicyArgs{
/// 			Region: foobar.Region,
/// 			Bucket: foobar.Name,
/// 			Policy: pulumi.All(foobar.Name, foobar.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 				foobarName := _args[0].(string)
/// 				foobarName1 := _args[1].(string)
/// 				var _zero string
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Sid":       "IPAllow",
/// 							"Effect":    "Deny",
/// 							"Principal": "*",
/// 							"Action":    "s3:*",
/// 							"Resource": []string{
/// 								fmt.Sprintf("arn:aws:s3:::%v", foobarName),
/// 								fmt.Sprintf("arn:aws:s3:::%v/*", foobarName1),
/// 							},
/// 							"Condition": map[string]interface{}{
/// 								"NotIpAddress": map[string]interface{}{
/// 									"aws:SourceIp": "54.240.143.0/24",
/// 								},
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return json0, nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.digitalocean.SpacesBucket;
/// import com.pulumi.digitalocean.SpacesBucketArgs;
/// import com.pulumi.digitalocean.SpacesBucketPolicy;
/// import com.pulumi.digitalocean.SpacesBucketPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var foobar = new SpacesBucket("foobar", SpacesBucketArgs.builder()
///             .name("foobar")
///             .region("nyc3")
///             .build());
///
///         var foobarSpacesBucketPolicy = new SpacesBucketPolicy("foobarSpacesBucketPolicy", SpacesBucketPolicyArgs.builder()
///             .region(foobar.region())
///             .bucket(foobar.name())
///             .policy(Output.tuple(foobar.name(), foobar.name()).applyValue(values -> {
///                 var foobarName = values.t1;
///                 var foobarName1 = values.t2;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty("Version", "2012-10-17"),
///                         jsonProperty("Statement", jsonArray(jsonObject(
///                             jsonProperty("Sid", "IPAllow"),
///                             jsonProperty("Effect", "Deny"),
///                             jsonProperty("Principal", "*"),
///                             jsonProperty("Action", "s3:*"),
///                             jsonProperty("Resource", jsonArray(
///                                 String.format("arn:aws:s3:::%s", foobarName),
///                                 String.format("arn:aws:s3:::%s/*", foobarName1)
///                             )),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("NotIpAddress", jsonObject(
///                                     jsonProperty("aws:SourceIp", "54.240.143.0/24")
///                                 ))
///                             ))
///                         )))
///                     ));
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: foobar
///       region: nyc3
///   foobarSpacesBucketPolicy:
///     type: digitalocean:SpacesBucketPolicy
///     name: foobar
///     properties:
///       region: ${foobar.region}
///       bucket: ${foobar.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: IPAllow
///               Effect: Deny
///               Principal: '*'
///               Action: s3:*
///               Resource:
///                 - arn:aws:s3:::${foobar.name}
///                 - arn:aws:s3:::${foobar.name}/*
///               Condition:
///                 NotIpAddress:
///                   aws:SourceIp: 54.240.143.0/24
/// ```
///
///
/// !&gt; **Warning:** Before using this policy, replace the 54.240.143.0/24 IP address range in this example with an appropriate value for your use case. Otherwise, you will lose the ability to access your bucket.
///
/// ## Import
///
/// Bucket policies can be imported using the `region` and `bucket` attributes (delimited by a comma):
///
/// ```sh
/// $ pulumi import digitalocean:index/spacesBucketPolicy:SpacesBucketPolicy foobar `region`,`bucket`
/// ```
class SpacesBucketPolicy extends pulumi.CustomResource {
  /// The name of the bucket to which to apply the policy.
  late final pulumi.Output<String> bucket;
  /// The text of the policy.
  late final pulumi.Output<String> policy;
  /// The region where the bucket resides.
  late final pulumi.Output<String> region;

  /// Creates a new [SpacesBucketPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpacesBucketPolicy]. {@macro pulumi_index_spaces_bucket_policy_spaces_bucket_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpacesBucketPolicy(
    String name, {
    SpacesBucketPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucketPolicy:SpacesBucketPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [SpacesBucketPolicy] resource's state with the given [name] and [id].
  static SpacesBucketPolicy get(
    String name,
    pulumi.Input<String> id, {
    SpacesBucketPolicyState? state,
  }) {
    return SpacesBucketPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpacesBucketPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucketPolicy:SpacesBucketPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
