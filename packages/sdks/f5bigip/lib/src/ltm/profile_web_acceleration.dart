import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_web_acceleration_args.dart';
import 'profile_web_acceleration_state.dart';

/// `f5bigip.ltm.ProfileWebAcceleration` Configures a custom web-acceleration profile for use.
///
/// For resources should be named with their "full path". The full path is the combination of the partition + name of the resource. For example /Common/sample-resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const sample_resource = new f5bigip.ltm.ProfileWebAcceleration("sample-resource", {
///     name: "/Common/sample-resource",
///     defaultsFrom: "/Common/test2",
///     cacheSize: 101,
///     cacheMaxEntries: 201,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// sample_resource = f5bigip.ltm.ProfileWebAcceleration("sample-resource",
///     name="/Common/sample-resource",
///     defaults_from="/Common/test2",
///     cache_size=101,
///     cache_max_entries=201)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample_resource = new F5BigIP.Ltm.ProfileWebAcceleration("sample-resource", new()
///     {
///         Name = "/Common/sample-resource",
///         DefaultsFrom = "/Common/test2",
///         CacheSize = 101,
///         CacheMaxEntries = 201,
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
/// 		_, err := ltm.NewProfileWebAcceleration(ctx, "sample-resource", &ltm.ProfileWebAccelerationArgs{
/// 			Name:            pulumi.String("/Common/sample-resource"),
/// 			DefaultsFrom:    pulumi.String("/Common/test2"),
/// 			CacheSize:       pulumi.Int(101),
/// 			CacheMaxEntries: pulumi.Int(201),
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
/// import com.pulumi.f5bigip.ltm.ProfileWebAcceleration;
/// import com.pulumi.f5bigip.ltm.ProfileWebAccelerationArgs;
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
///         var sample_resource = new ProfileWebAcceleration("sample-resource", ProfileWebAccelerationArgs.builder()
///             .name("/Common/sample-resource")
///             .defaultsFrom("/Common/test2")
///             .cacheSize(101)
///             .cacheMaxEntries(201)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample-resource:
///     type: f5bigip:ltm:ProfileWebAcceleration
///     properties:
///       name: /Common/sample-resource
///       defaultsFrom: /Common/test2
///       cacheSize: 101
///       cacheMaxEntries: 201
/// ```
class ProfileWebAcceleration extends pulumi.CustomResource {
  /// Specifies how quickly the system ages a cache entry. The aging rate ranges from 0 (slowest aging) to 10 (fastest aging). The default value is `9`.
  late final pulumi.Output<int> cacheAgingRate;
  /// Specifies which cache disabling headers sent by clients the system ignores. The default value is `all`.
  late final pulumi.Output<String> cacheClientCacheControlMode;
  /// Inserts Age and Date headers in the response. The default value is `enabled`.
  late final pulumi.Output<String> cacheInsertAgeHeader;
  /// Specifies how long the system considers the cached content to be valid. The default value is `3600 seconds`.
  late final pulumi.Output<int> cacheMaxAge;
  /// Specifies the maximum number of entries that can be in the cache. The default value is `0` (zero), which means that the system does not limit the maximum entries.
  late final pulumi.Output<int> cacheMaxEntries;
  /// Specifies the smallest object that the system considers eligible for caching. The default value is `500 bytes`.
  late final pulumi.Output<int> cacheObjectMaxSize;
  /// Specifies the smallest object that the system considers eligible for caching. The default value is `500 bytes`.
  late final pulumi.Output<int> cacheObjectMinSize;
  /// Specifies the maximum size for the cache. When the cache reaches the maximum size, the system starts removing the oldest entries. The default value is `100 megabytes`.
  late final pulumi.Output<int> cacheSize;
  /// Configures a list of URIs to exclude from the cache. The default value of `none` specifies no URIs are excluded.
  late final pulumi.Output<List<String>> cacheUriExcludes;
  /// Configures a list of URIs to include in the cache even if they would normally be excluded due to factors like object size or HTTP request type. The default value of none specifies no URIs are to be forced into the cache.
  late final pulumi.Output<List<String>> cacheUriIncludeOverrides;
  /// Configures a list of URIs to include in the cache. The default value of `.*` specifies that all URIs are cacheable.
  late final pulumi.Output<List<String>> cacheUriIncludes;
  /// Configures a list of URIs to keep in the cache. The pinning process keeps URIs in cache when they would normally be evicted to make room for more active URIs.
  late final pulumi.Output<List<String>> cacheUriPinneds;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;
  /// Specifies the name of the web acceleration profile service ,name of Profile should be full path. Full path is the combination of the `partition + web acceleration profile name`,For example `/Common/sample-resource`.
  late final pulumi.Output<String> name;

  /// Creates a new [ProfileWebAcceleration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileWebAcceleration]. {@macro pulumi_ltm_profile_web_acceleration_profile_web_acceleration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileWebAcceleration(
    String name, {
    ProfileWebAccelerationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileWebAcceleration:ProfileWebAcceleration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cacheAgingRate = registerOutput<int>('cacheAgingRate');
    this.cacheClientCacheControlMode = registerOutput<String>('cacheClientCacheControlMode');
    this.cacheInsertAgeHeader = registerOutput<String>('cacheInsertAgeHeader');
    this.cacheMaxAge = registerOutput<int>('cacheMaxAge');
    this.cacheMaxEntries = registerOutput<int>('cacheMaxEntries');
    this.cacheObjectMaxSize = registerOutput<int>('cacheObjectMaxSize');
    this.cacheObjectMinSize = registerOutput<int>('cacheObjectMinSize');
    this.cacheSize = registerOutput<int>('cacheSize');
    this.cacheUriExcludes = registerOutput<List<String>>('cacheUriExcludes');
    this.cacheUriIncludeOverrides = registerOutput<List<String>>('cacheUriIncludeOverrides');
    this.cacheUriIncludes = registerOutput<List<String>>('cacheUriIncludes');
    this.cacheUriPinneds = registerOutput<List<String>>('cacheUriPinneds');
    this.defaultsFrom = registerOutput<String>('defaultsFrom');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ProfileWebAcceleration] resource's state with the given [name] and [id].
  static ProfileWebAcceleration get(
    String name,
    pulumi.Input<String> id, {
    ProfileWebAccelerationState? state,
  }) {
    return ProfileWebAcceleration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileWebAcceleration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileWebAcceleration:ProfileWebAcceleration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cacheAgingRate = registerOutput<int>('cacheAgingRate');
    this.cacheClientCacheControlMode = registerOutput<String>('cacheClientCacheControlMode');
    this.cacheInsertAgeHeader = registerOutput<String>('cacheInsertAgeHeader');
    this.cacheMaxAge = registerOutput<int>('cacheMaxAge');
    this.cacheMaxEntries = registerOutput<int>('cacheMaxEntries');
    this.cacheObjectMaxSize = registerOutput<int>('cacheObjectMaxSize');
    this.cacheObjectMinSize = registerOutput<int>('cacheObjectMinSize');
    this.cacheSize = registerOutput<int>('cacheSize');
    this.cacheUriExcludes = registerOutput<List<String>>('cacheUriExcludes');
    this.cacheUriIncludeOverrides = registerOutput<List<String>>('cacheUriIncludeOverrides');
    this.cacheUriIncludes = registerOutput<List<String>>('cacheUriIncludes');
    this.cacheUriPinneds = registerOutput<List<String>>('cacheUriPinneds');
    this.defaultsFrom = registerOutput<String>('defaultsFrom');
    this.name = registerOutput<String>('name');
  }
}
