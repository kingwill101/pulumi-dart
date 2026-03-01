import 'package:pulumi/pulumi.dart' as pulumi;
import 'persistence_profile_ssl_args.dart';
import 'persistence_profile_ssl_state.dart';

/// Configures an SSL persistence profile
///
/// ## Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const ppssl = new f5bigip.ltm.PersistenceProfileSsl("ppssl", {
///     name: "/Common/terraform_ssl",
///     defaultsFrom: "/Common/ssl",
///     matchAcrossPools: "enabled",
///     matchAcrossServices: "enabled",
///     matchAcrossVirtuals: "enabled",
///     mirror: "enabled",
///     timeout: 3600,
///     overrideConnLimit: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// ppssl = f5bigip.ltm.PersistenceProfileSsl("ppssl",
///     name="/Common/terraform_ssl",
///     defaults_from="/Common/ssl",
///     match_across_pools="enabled",
///     match_across_services="enabled",
///     match_across_virtuals="enabled",
///     mirror="enabled",
///     timeout=3600,
///     override_conn_limit="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ppssl = new F5BigIP.Ltm.PersistenceProfileSsl("ppssl", new()
///     {
///         Name = "/Common/terraform_ssl",
///         DefaultsFrom = "/Common/ssl",
///         MatchAcrossPools = "enabled",
///         MatchAcrossServices = "enabled",
///         MatchAcrossVirtuals = "enabled",
///         Mirror = "enabled",
///         Timeout = 3600,
///         OverrideConnLimit = "enabled",
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
/// 		_, err := ltm.NewPersistenceProfileSsl(ctx, "ppssl", &ltm.PersistenceProfileSslArgs{
/// 			Name:                pulumi.String("/Common/terraform_ssl"),
/// 			DefaultsFrom:        pulumi.String("/Common/ssl"),
/// 			MatchAcrossPools:    pulumi.String("enabled"),
/// 			MatchAcrossServices: pulumi.String("enabled"),
/// 			MatchAcrossVirtuals: pulumi.String("enabled"),
/// 			Mirror:              pulumi.String("enabled"),
/// 			Timeout:             pulumi.Int(3600),
/// 			OverrideConnLimit:   pulumi.String("enabled"),
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
/// import com.pulumi.f5bigip.ltm.PersistenceProfileSsl;
/// import com.pulumi.f5bigip.ltm.PersistenceProfileSslArgs;
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
///         var ppssl = new PersistenceProfileSsl("ppssl", PersistenceProfileSslArgs.builder()
///             .name("/Common/terraform_ssl")
///             .defaultsFrom("/Common/ssl")
///             .matchAcrossPools("enabled")
///             .matchAcrossServices("enabled")
///             .matchAcrossVirtuals("enabled")
///             .mirror("enabled")
///             .timeout(3600)
///             .overrideConnLimit("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ppssl:
///     type: f5bigip:ltm:PersistenceProfileSsl
///     properties:
///       name: /Common/terraform_ssl
///       defaultsFrom: /Common/ssl
///       matchAcrossPools: enabled
///       matchAcrossServices: enabled
///       matchAcrossVirtuals: enabled
///       mirror: enabled
///       timeout: 3600
///       overrideConnLimit: enabled
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
/// ## Importing
///
/// An ssl persistence profile can be imported into this resource by supplying the Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_persistence_profile_ssl.ppssl "/Common/terraform_ssl"
/// ```
class PersistenceProfileSsl extends pulumi.CustomResource {
  late final pulumi.Output<String?> appService;
  /// Inherit defaults from parent profile
  late final pulumi.Output<String> defaultsFrom;
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
  late final pulumi.Output<int?> timeout;

  /// Creates a new [PersistenceProfileSsl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersistenceProfileSsl]. {@macro pulumi_ltm_persistence_profile_ssl_persistence_profile_ssl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersistenceProfileSsl(
    String name, {
    PersistenceProfileSslArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/persistenceProfileSsl:PersistenceProfileSsl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appService = registerOutput<String?>('appService');
    this.defaultsFrom = registerOutput<String>('defaultsFrom');
    this.matchAcrossPools = registerOutput<String>('matchAcrossPools');
    this.matchAcrossServices = registerOutput<String>('matchAcrossServices');
    this.matchAcrossVirtuals = registerOutput<String>('matchAcrossVirtuals');
    this.mirror = registerOutput<String>('mirror');
    this.name = registerOutput<String>('name');
    this.overrideConnLimit = registerOutput<String>('overrideConnLimit');
    this.timeout = registerOutput<int?>('timeout');
  }

  /// Gets an existing [PersistenceProfileSsl] resource's state with the given [name] and [id].
  static PersistenceProfileSsl get(
    String name,
    pulumi.Input<String> id, {
    PersistenceProfileSslState? state,
  }) {
    return PersistenceProfileSsl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PersistenceProfileSsl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/persistenceProfileSsl:PersistenceProfileSsl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appService = registerOutput<String?>('appService');
    this.defaultsFrom = registerOutput<String>('defaultsFrom');
    this.matchAcrossPools = registerOutput<String>('matchAcrossPools');
    this.matchAcrossServices = registerOutput<String>('matchAcrossServices');
    this.matchAcrossVirtuals = registerOutput<String>('matchAcrossVirtuals');
    this.mirror = registerOutput<String>('mirror');
    this.name = registerOutput<String>('name');
    this.overrideConnLimit = registerOutput<String>('overrideConnLimit');
    this.timeout = registerOutput<int?>('timeout');
  }
}
