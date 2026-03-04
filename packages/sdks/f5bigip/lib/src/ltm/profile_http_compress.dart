import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_http_compress_args.dart';
import 'profile_http_compress_state.dart';

/// `f5bigip.ltm.ProfileHttpCompress`  Virtual server HTTP compression profile configuration
///
/// Resources should be named with their `full path`.The full path is the combination of the `partition + name` (example: `/Common/my-httpcompresprofile` ) or  `partition + directory + name` of the resource  (example: `/Common/test/my-httpcompresprofile`)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const sjhttpcompression = new f5bigip.ltm.ProfileHttpCompress("sjhttpcompression", {
///     name: "/Common/sjhttpcompression2",
///     defaultsFrom: "/Common/httpcompression",
///     uriExcludes: [
///         "www.abc.f5.com",
///         "www.abc2.f5.com",
///     ],
///     uriIncludes: ["www.xyzbc.cisco.com"],
///     contentTypeIncludes: ["nicecontent.com"],
///     contentTypeExcludes: ["nicecontentexclude.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// sjhttpcompression = f5bigip.ltm.ProfileHttpCompress("sjhttpcompression",
///     name="/Common/sjhttpcompression2",
///     defaults_from="/Common/httpcompression",
///     uri_excludes=[
///         "www.abc.f5.com",
///         "www.abc2.f5.com",
///     ],
///     uri_includes=["www.xyzbc.cisco.com"],
///     content_type_includes=["nicecontent.com"],
///     content_type_excludes=["nicecontentexclude.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sjhttpcompression = new F5BigIP.Ltm.ProfileHttpCompress("sjhttpcompression", new()
///     {
///         Name = "/Common/sjhttpcompression2",
///         DefaultsFrom = "/Common/httpcompression",
///         UriExcludes = new[]
///         {
///             "www.abc.f5.com",
///             "www.abc2.f5.com",
///         },
///         UriIncludes = new[]
///         {
///             "www.xyzbc.cisco.com",
///         },
///         ContentTypeIncludes = new[]
///         {
///             "nicecontent.com",
///         },
///         ContentTypeExcludes = new[]
///         {
///             "nicecontentexclude.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewProfileHttpCompress(ctx, "sjhttpcompression", &ltm.ProfileHttpCompressArgs{
/// 			Name:         pulumi.String("/Common/sjhttpcompression2"),
/// 			DefaultsFrom: pulumi.String("/Common/httpcompression"),
/// 			UriExcludes: pulumi.StringArray{
/// 				pulumi.String("www.abc.f5.com"),
/// 				pulumi.String("www.abc2.f5.com"),
/// 			},
/// 			UriIncludes: pulumi.StringArray{
/// 				pulumi.String("www.xyzbc.cisco.com"),
/// 			},
/// 			ContentTypeIncludes: pulumi.StringArray{
/// 				pulumi.String("nicecontent.com"),
/// 			},
/// 			ContentTypeExcludes: pulumi.StringArray{
/// 				pulumi.String("nicecontentexclude.com"),
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
/// import com.pulumi.f5bigip.ltm.ProfileHttpCompress;
/// import com.pulumi.f5bigip.ltm.ProfileHttpCompressArgs;
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
///         var sjhttpcompression = new ProfileHttpCompress("sjhttpcompression", ProfileHttpCompressArgs.builder()
///             .name("/Common/sjhttpcompression2")
///             .defaultsFrom("/Common/httpcompression")
///             .uriExcludes(
///                 "www.abc.f5.com",
///                 "www.abc2.f5.com")
///             .uriIncludes("www.xyzbc.cisco.com")
///             .contentTypeIncludes("nicecontent.com")
///             .contentTypeExcludes("nicecontentexclude.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sjhttpcompression:
///     type: f5bigip:ltm:ProfileHttpCompress
///     properties:
///       name: /Common/sjhttpcompression2
///       defaultsFrom: /Common/httpcompression
///       uriExcludes:
///         - www.abc.f5.com
///         - www.abc2.f5.com
///       uriIncludes:
///         - www.xyzbc.cisco.com
///       contentTypeIncludes:
///         - nicecontent.com
///       contentTypeExcludes:
///         - nicecontentexclude.com
/// ```
///
///
/// ## Import
///
/// BIG-IP LTM HTTP Compress profiles can be imported using the `name`, e.g.
///
/// ```sh
/// $ pulumi import f5bigip:ltm/profileHttpCompress:ProfileHttpCompress test-httpcomprs_import /Common/test-httpcomprs
/// ```
class ProfileHttpCompress extends pulumi.CustomResource {
  /// Specifies the maximum number of compressed bytes that the system buffers before inserting a Content-Length header (which specifies the compressed size) into the response. The default is `4096` bytes.
  late final pulumi.Output<int> compressionBuffersize;

  /// Excludes a specified list of content types from compression of HTTP Content-Type responses. Use a string list to specify a list of content types you want to compress.
  late final pulumi.Output<List<String>> contentTypeExcludes;

  /// Specifies a list of content types for compression of HTTP Content-Type responses. Use a string list to specify a list of content types you want to compress.
  late final pulumi.Output<List<String>> contentTypeIncludes;

  /// Specifies, when checked (enabled), that the system monitors the percent CPU usage and adjusts compression rates automatically when the CPU usage reaches either the CPU Saver High Threshold or the CPU Saver Low Threshold. The default is `enabled`.
  late final pulumi.Output<String> cpuSaver;

  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;

  /// Specifies the degree to which the system compresses the content. Higher compression levels cause the compression process to be slower. The default is 1 - Least Compression (Fastest)
  late final pulumi.Output<int> gzipCompressionLevel;

  /// Specifies the number of bytes of memory that the system uses for internal compression buffers when compressing a server response. The default is `8 kilobytes/8192 bytes`.
  late final pulumi.Output<int> gzipMemoryLevel;

  /// Specifies the number of kilobytes in the window size that the system uses when compressing a server response. The default is `16` kilobytes
  late final pulumi.Output<int> gzipWindowSize;

  /// Specifies, when checked (enabled), that the system does not remove the Accept-Encoding: header from an HTTP request. The default is `disabled`.
  late final pulumi.Output<String> keepAcceptEncoding;

  /// Name of the LTM http compress profile,named with their `full path`.The full path is the combination of the `partition + name` (example: `/Common/my-httpcompresprofile` ) or  `partition + directory + name` of the resource  (example: `my-httpcompresprofile`)
  late final pulumi.Output<String> name;

  /// Disables compression on a specified list of HTTP Request-URI responses. Use a regular expression to specify a list of URIs you do not want to compress.
  late final pulumi.Output<List<String>> uriExcludes;

  /// Enables compression on a specified list of HTTP Request-URI responses. Use a regular expression to specify a list of URIs you want to compress.
  late final pulumi.Output<List<String>> uriIncludes;

  /// Specifies, when checked (enabled), that the system inserts a Vary header into cacheable server responses. The default is `enabled`.
  late final pulumi.Output<String> varyHeader;

  /// Creates a new [ProfileHttpCompress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileHttpCompress]. {@macro pulumi_ltm_profile_http_compress_profile_http_compress_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileHttpCompress(
    String name, {
    ProfileHttpCompressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileHttpCompress:ProfileHttpCompress',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    compressionBuffersize = registerOutput<int>('compressionBuffersize');
    contentTypeExcludes = registerOutput<List<String>>('contentTypeExcludes');
    contentTypeIncludes = registerOutput<List<String>>('contentTypeIncludes');
    cpuSaver = registerOutput<String>('cpuSaver');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    gzipCompressionLevel = registerOutput<int>('gzipCompressionLevel');
    gzipMemoryLevel = registerOutput<int>('gzipMemoryLevel');
    gzipWindowSize = registerOutput<int>('gzipWindowSize');
    keepAcceptEncoding = registerOutput<String>('keepAcceptEncoding');
    this.name = registerOutput<String>('name');
    uriExcludes = registerOutput<List<String>>('uriExcludes');
    uriIncludes = registerOutput<List<String>>('uriIncludes');
    varyHeader = registerOutput<String>('varyHeader');
  }

  /// Gets an existing [ProfileHttpCompress] resource's state with the given [name] and [id].
  static ProfileHttpCompress get(
    String name,
    pulumi.Input<String> id, {
    ProfileHttpCompressState? state,
  }) {
    return ProfileHttpCompress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileHttpCompress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileHttpCompress:ProfileHttpCompress',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    compressionBuffersize = registerOutput<int>('compressionBuffersize');
    contentTypeExcludes = registerOutput<List<String>>('contentTypeExcludes');
    contentTypeIncludes = registerOutput<List<String>>('contentTypeIncludes');
    cpuSaver = registerOutput<String>('cpuSaver');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    gzipCompressionLevel = registerOutput<int>('gzipCompressionLevel');
    gzipMemoryLevel = registerOutput<int>('gzipMemoryLevel');
    gzipWindowSize = registerOutput<int>('gzipWindowSize');
    keepAcceptEncoding = registerOutput<String>('keepAcceptEncoding');
    this.name = registerOutput<String>('name');
    uriExcludes = registerOutput<List<String>>('uriExcludes');
    uriIncludes = registerOutput<List<String>>('uriIncludes');
    varyHeader = registerOutput<String>('varyHeader');
  }
}
