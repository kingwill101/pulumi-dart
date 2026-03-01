import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_list_args.dart';
import 'url_list_state.dart';

/// UrlList proto helps users to set reusable, independently manageable lists of hosts, host patterns, URLs, URL patterns.
///
///
/// To get more information about UrlLists, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.urlLists)
/// * How-to Guides
/// * Use UrlLists
///
/// ## Example Usage
///
/// ### Network Security Url Lists Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.UrlList("default", {
///     name: "my-url-lists",
///     location: "us-central1",
///     values: ["www.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.UrlList("default",
///     name="my-url-lists",
///     location="us-central1",
///     values=["www.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.UrlList("default", new()
///     {
///         Name = "my-url-lists",
///         Location = "us-central1",
///         Values = new[]
///         {
///             "www.example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewUrlList(ctx, "default", &networksecurity.UrlListArgs{
/// 			Name:     pulumi.String("my-url-lists"),
/// 			Location: pulumi.String("us-central1"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("www.example.com"),
/// 			},
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
/// import com.pulumi.gcp.networksecurity.UrlList;
/// import com.pulumi.gcp.networksecurity.UrlListArgs;
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
///         var default_ = new UrlList("default", UrlListArgs.builder()
///             .name("my-url-lists")
///             .location("us-central1")
///             .values("www.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:UrlList
///     properties:
///       name: my-url-lists
///       location: us-central1
///       values:
///         - www.example.com
/// ```
///
/// ### Network Security Url Lists Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.UrlList("default", {
///     name: "my-url-lists",
///     location: "us-central1",
///     description: "my description",
///     values: [
///         "www.example.com",
///         "about.example.com",
///         "github.com/example-org/*",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.UrlList("default",
///     name="my-url-lists",
///     location="us-central1",
///     description="my description",
///     values=[
///         "www.example.com",
///         "about.example.com",
///         "github.com/example-org/*",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.UrlList("default", new()
///     {
///         Name = "my-url-lists",
///         Location = "us-central1",
///         Description = "my description",
///         Values = new[]
///         {
///             "www.example.com",
///             "about.example.com",
///             "github.com/example-org/*",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewUrlList(ctx, "default", &networksecurity.UrlListArgs{
/// 			Name:        pulumi.String("my-url-lists"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("my description"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("www.example.com"),
/// 				pulumi.String("about.example.com"),
/// 				pulumi.String("github.com/example-org/*"),
/// 			},
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
/// import com.pulumi.gcp.networksecurity.UrlList;
/// import com.pulumi.gcp.networksecurity.UrlListArgs;
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
///         var default_ = new UrlList("default", UrlListArgs.builder()
///             .name("my-url-lists")
///             .location("us-central1")
///             .description("my description")
///             .values(
///                 "www.example.com",
///                 "about.example.com",
///                 "github.com/example-org/*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:UrlList
///     properties:
///       name: my-url-lists
///       location: us-central1
///       description: my description
///       values:
///         - www.example.com
///         - about.example.com
///         - github.com/example-org/*
/// ```
///
///
/// ## Import
///
/// UrlLists can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/urlLists/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, UrlLists can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/urlList:UrlList default projects/{{project}}/locations/{{location}}/urlLists/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/urlList:UrlList default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/urlList:UrlList default {{location}}/{{name}}
/// ```
class UrlList extends pulumi.CustomResource {
  /// Output only. Time when the security policy was created.
  /// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'
  late final pulumi.Output<String> createTime;
  /// Free-text description of the resource.
  late final pulumi.Output<String?> description;
  /// The location of the url lists.
  late final pulumi.Output<String> location;
  /// Short name of the UrlList resource to be created.
  /// This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. Time when the security policy was updated.
  /// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'.
  late final pulumi.Output<String> updateTime;
  /// FQDNs and URLs.
  late final pulumi.Output<List<String>> values;

  /// Creates a new [UrlList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UrlList]. {@macro pulumi_networksecurity_url_list_url_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UrlList(
    String name, {
    UrlListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/urlList:UrlList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.values = registerOutput<List<String>>('values');
  }

  /// Gets an existing [UrlList] resource's state with the given [name] and [id].
  static UrlList get(
    String name,
    pulumi.Input<String> id, {
    UrlListState? state,
  }) {
    return UrlList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UrlList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/urlList:UrlList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.values = registerOutput<List<String>>('values');
  }
}
