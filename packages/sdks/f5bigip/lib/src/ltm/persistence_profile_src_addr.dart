import 'package:pulumi/pulumi.dart' as pulumi;
import 'persistence_profile_src_addr_args.dart';
import 'persistence_profile_src_addr_state.dart';

/// Configures a source address persistence profile
///
/// ## Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const srcaddr = new f5bigip.ltm.PersistenceProfileSrcAddr("srcaddr", {
///     name: "/Common/terraform_srcaddr",
///     defaultsFrom: "/Common/source_addr",
///     matchAcrossPools: "enabled",
///     matchAcrossServices: "enabled",
///     matchAcrossVirtuals: "enabled",
///     mirror: "enabled",
///     timeout: 3600,
///     overrideConnLimit: "enabled",
///     hashAlgorithm: "carp",
///     mapProxies: "enabled",
///     mask: "255.255.255.255",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// srcaddr = f5bigip.ltm.PersistenceProfileSrcAddr("srcaddr",
///     name="/Common/terraform_srcaddr",
///     defaults_from="/Common/source_addr",
///     match_across_pools="enabled",
///     match_across_services="enabled",
///     match_across_virtuals="enabled",
///     mirror="enabled",
///     timeout=3600,
///     override_conn_limit="enabled",
///     hash_algorithm="carp",
///     map_proxies="enabled",
///     mask="255.255.255.255")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var srcaddr = new F5BigIP.Ltm.PersistenceProfileSrcAddr("srcaddr", new()
///     {
///         Name = "/Common/terraform_srcaddr",
///         DefaultsFrom = "/Common/source_addr",
///         MatchAcrossPools = "enabled",
///         MatchAcrossServices = "enabled",
///         MatchAcrossVirtuals = "enabled",
///         Mirror = "enabled",
///         Timeout = 3600,
///         OverrideConnLimit = "enabled",
///         HashAlgorithm = "carp",
///         MapProxies = "enabled",
///         Mask = "255.255.255.255",
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
/// 		_, err := ltm.NewPersistenceProfileSrcAddr(ctx, "srcaddr", &ltm.PersistenceProfileSrcAddrArgs{
/// 			Name:                pulumi.String("/Common/terraform_srcaddr"),
/// 			DefaultsFrom:        pulumi.String("/Common/source_addr"),
/// 			MatchAcrossPools:    pulumi.String("enabled"),
/// 			MatchAcrossServices: pulumi.String("enabled"),
/// 			MatchAcrossVirtuals: pulumi.String("enabled"),
/// 			Mirror:              pulumi.String("enabled"),
/// 			Timeout:             pulumi.Int(3600),
/// 			OverrideConnLimit:   pulumi.String("enabled"),
/// 			HashAlgorithm:       pulumi.String("carp"),
/// 			MapProxies:          pulumi.String("enabled"),
/// 			Mask:                pulumi.String("255.255.255.255"),
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
/// import com.pulumi.f5bigip.ltm.PersistenceProfileSrcAddr;
/// import com.pulumi.f5bigip.ltm.PersistenceProfileSrcAddrArgs;
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
///         var srcaddr = new PersistenceProfileSrcAddr("srcaddr", PersistenceProfileSrcAddrArgs.builder()
///             .name("/Common/terraform_srcaddr")
///             .defaultsFrom("/Common/source_addr")
///             .matchAcrossPools("enabled")
///             .matchAcrossServices("enabled")
///             .matchAcrossVirtuals("enabled")
///             .mirror("enabled")
///             .timeout(3600)
///             .overrideConnLimit("enabled")
///             .hashAlgorithm("carp")
///             .mapProxies("enabled")
///             .mask("255.255.255.255")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   srcaddr:
///     type: f5bigip:ltm:PersistenceProfileSrcAddr
///     properties:
///       name: /Common/terraform_srcaddr
///       defaultsFrom: /Common/source_addr
///       matchAcrossPools: enabled
///       matchAcrossServices: enabled
///       matchAcrossVirtuals: enabled
///       mirror: enabled
///       timeout: 3600
///       overrideConnLimit: enabled
///       hashAlgorithm: carp
///       mapProxies: enabled
///       mask: 255.255.255.255
/// ```
///
///
/// ## Reference
///
/// `name` - (Required) Name of the virtual address
///
/// `defaults_from` - (Required) Parent cookie persistence profile
///
/// `match_across_pools` (Optional) (enabled or disabled) match across pools with given persistence record
///
/// `match_across_services` (Optional) (enabled or disabled) match across services with given persistence record
///
/// `match_across_virtuals` (Optional) (enabled or disabled) match across virtual servers with given persistence record
///
/// `mirror` (Optional) (enabled or disabled) mirror persistence record
///
/// `timeout` (Optional) (enabled or disabled) Timeout for persistence of the session in seconds
///
/// `override_conn_limit` (Optional) (enabled or disabled) Enable or dissable pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
///
/// `hash_algorithm` (Optional) Specify the hash algorithm
///
/// `mask` (Optional) Identify a range of source IP addresses to manage together as a single source address affinity persistent connection when connecting to the pool. Must be a valid IPv4 or IPv6 mask.
///
/// `map_proxies` (Optional) (enabled or disabled) Directs all to the same single pool member
///
/// ## Importing
///
/// An source-addr persistence profile can be imported into this resource by supplying the Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_persistence_profile_srcaddr.srcaddr "/Common/terraform_srcaddr"
/// ```
class PersistenceProfileSrcAddr extends pulumi.CustomResource {
  late final pulumi.Output<String> appService;
  /// Inherit defaults from parent profile
  late final pulumi.Output<String> defaultsFrom;
  /// Specify the hash algorithm
  late final pulumi.Output<String> hashAlgorithm;
  /// To enable _ disable directs all to the same single pool member
  late final pulumi.Output<String> mapProxies;
  /// Identify a range of source IP addresses to manage together as a single source address affinity persistent connection when connecting to the pool. Must be a valid IPv4 or IPv6 mask.
  late final pulumi.Output<String> mask;
  /// To enable _ disable match across pools with given persistence record
  late final pulumi.Output<String> matchAcrossPools;
  /// To enable _ disable match across services with given persistence record
  late final pulumi.Output<String> matchAcrossServices;
  /// To enable _ disable match across services with given persistence record
  late final pulumi.Output<String> matchAcrossVirtuals;
  /// To enable _ disable
  late final pulumi.Output<String> mirror;
  /// Name of the persistence profile
  late final pulumi.Output<String> name;
  /// To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  late final pulumi.Output<String> overrideConnLimit;
  /// Timeout for persistence of the session
  late final pulumi.Output<int> timeout;

  /// Creates a new [PersistenceProfileSrcAddr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersistenceProfileSrcAddr]. {@macro pulumi_ltm_persistence_profile_src_addr_persistence_profile_src_addr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersistenceProfileSrcAddr(
    String name, {
    PersistenceProfileSrcAddrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/persistenceProfileSrcAddr:PersistenceProfileSrcAddr',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appService = registerOutput<String>('appService');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    hashAlgorithm = registerOutput<String>('hashAlgorithm');
    mapProxies = registerOutput<String>('mapProxies');
    mask = registerOutput<String>('mask');
    matchAcrossPools = registerOutput<String>('matchAcrossPools');
    matchAcrossServices = registerOutput<String>('matchAcrossServices');
    matchAcrossVirtuals = registerOutput<String>('matchAcrossVirtuals');
    mirror = registerOutput<String>('mirror');
    this.name = registerOutput<String>('name');
    overrideConnLimit = registerOutput<String>('overrideConnLimit');
    timeout = registerOutput<int>('timeout');
  }

  /// Gets an existing [PersistenceProfileSrcAddr] resource's state with the given [name] and [id].
  static PersistenceProfileSrcAddr get(
    String name,
    pulumi.Input<String> id, {
    PersistenceProfileSrcAddrState? state,
  }) {
    return PersistenceProfileSrcAddr._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PersistenceProfileSrcAddr._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/persistenceProfileSrcAddr:PersistenceProfileSrcAddr',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appService = registerOutput<String>('appService');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    hashAlgorithm = registerOutput<String>('hashAlgorithm');
    mapProxies = registerOutput<String>('mapProxies');
    mask = registerOutput<String>('mask');
    matchAcrossPools = registerOutput<String>('matchAcrossPools');
    matchAcrossServices = registerOutput<String>('matchAcrossServices');
    matchAcrossVirtuals = registerOutput<String>('matchAcrossVirtuals');
    mirror = registerOutput<String>('mirror');
    this.name = registerOutput<String>('name');
    overrideConnLimit = registerOutput<String>('overrideConnLimit');
    timeout = registerOutput<int>('timeout');
  }
}
