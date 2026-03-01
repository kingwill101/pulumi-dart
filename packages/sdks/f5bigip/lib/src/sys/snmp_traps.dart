import 'package:pulumi/pulumi.dart' as pulumi;
import 'snmp_traps_args.dart';
import 'snmp_traps_state.dart';

/// `f5bigip.sys.SnmpTraps` provides details bout how to enable snmp_traps resource on BIG-IP
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const snmpTraps = new f5bigip.sys.SnmpTraps("snmp_traps", {
///     name: "snmptraps",
///     community: "f5community",
///     host: "195.10.10.1",
///     description: "Setup snmp traps",
///     port: 111,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// snmp_traps = f5bigip.sys.SnmpTraps("snmp_traps",
///     name="snmptraps",
///     community="f5community",
///     host="195.10.10.1",
///     description="Setup snmp traps",
///     port=111)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snmpTraps = new F5BigIP.Sys.SnmpTraps("snmp_traps", new()
///     {
///         Name = "snmptraps",
///         Community = "f5community",
///         Host = "195.10.10.1",
///         Description = "Setup snmp traps",
///         Port = 111,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/sys"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sys.NewSnmpTraps(ctx, "snmp_traps", &sys.SnmpTrapsArgs{
/// 			Name:        pulumi.String("snmptraps"),
/// 			Community:   pulumi.String("f5community"),
/// 			Host:        pulumi.String("195.10.10.1"),
/// 			Description: pulumi.String("Setup snmp traps"),
/// 			Port:        pulumi.Int(111),
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
/// import com.pulumi.f5bigip.sys.SnmpTraps;
/// import com.pulumi.f5bigip.sys.SnmpTrapsArgs;
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
///         var snmpTraps = new SnmpTraps("snmpTraps", SnmpTrapsArgs.builder()
///             .name("snmptraps")
///             .community("f5community")
///             .host("195.10.10.1")
///             .description("Setup snmp traps")
///             .port(111)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snmpTraps:
///     type: f5bigip:sys:SnmpTraps
///     name: snmp_traps
///     properties:
///       name: snmptraps
///       community: f5community
///       host: 195.10.10.1
///       description: Setup snmp traps
///       port: 111
/// ```
class SnmpTraps extends pulumi.CustomResource {
  /// Encrypted password
  late final pulumi.Output<String?> authPasswordencrypted;
  /// Specifies the protocol used to authenticate the user.
  late final pulumi.Output<String?> authProtocol;
  /// Specifies the community string used for this trap.
  late final pulumi.Output<String?> community;
  /// The port that the trap will be sent to.
  late final pulumi.Output<String?> description;
  /// Specifies the authoritative security engine for SNMPv3.
  late final pulumi.Output<String?> engineId;
  /// The host the trap will be sent to.
  late final pulumi.Output<String?> host;
  /// Name of the snmp trap.
  late final pulumi.Output<String?> name;
  /// User defined description.
  late final pulumi.Output<int?> port;
  /// Specifies the clear text password used to encrypt traffic. This field will not be displayed.
  late final pulumi.Output<String?> privacyPassword;
  /// Specifies the encrypted password used to encrypt traffic.
  late final pulumi.Output<String?> privacyPasswordEncrypted;
  /// Specifies the protocol used to encrypt traffic.
  late final pulumi.Output<String?> privacyProtocol;
  /// Specifies whether or not traffic is encrypted and whether or not authentication is required.
  late final pulumi.Output<String> securityLevel;
  /// Security name used in conjunction with SNMPv3.
  late final pulumi.Output<String?> securityName;
  /// SNMP version used for sending the trap.
  late final pulumi.Output<String> version;

  /// Creates a new [SnmpTraps].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnmpTraps]. {@macro pulumi_sys_snmp_traps_snmp_traps_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnmpTraps(
    String name, {
    SnmpTrapsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/snmpTraps:SnmpTraps',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authPasswordencrypted = registerOutput<String?>('authPasswordencrypted');
    this.authProtocol = registerOutput<String?>('authProtocol');
    this.community = registerOutput<String?>('community');
    this.description = registerOutput<String?>('description');
    this.engineId = registerOutput<String?>('engineId');
    this.host = registerOutput<String?>('host');
    this.name = registerOutput<String?>('name');
    this.port = registerOutput<int?>('port');
    this.privacyPassword = registerOutput<String?>('privacyPassword');
    this.privacyPasswordEncrypted = registerOutput<String?>('privacyPasswordEncrypted');
    this.privacyProtocol = registerOutput<String?>('privacyProtocol');
    this.securityLevel = registerOutput<String>('securityLevel');
    this.securityName = registerOutput<String?>('securityName');
    this.version = registerOutput<String>('version');
  }

  /// Gets an existing [SnmpTraps] resource's state with the given [name] and [id].
  static SnmpTraps get(
    String name,
    pulumi.Input<String> id, {
    SnmpTrapsState? state,
  }) {
    return SnmpTraps._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnmpTraps._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/snmpTraps:SnmpTraps',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authPasswordencrypted = registerOutput<String?>('authPasswordencrypted');
    this.authProtocol = registerOutput<String?>('authProtocol');
    this.community = registerOutput<String?>('community');
    this.description = registerOutput<String?>('description');
    this.engineId = registerOutput<String?>('engineId');
    this.host = registerOutput<String?>('host');
    this.name = registerOutput<String?>('name');
    this.port = registerOutput<int?>('port');
    this.privacyPassword = registerOutput<String?>('privacyPassword');
    this.privacyPasswordEncrypted = registerOutput<String?>('privacyPasswordEncrypted');
    this.privacyProtocol = registerOutput<String?>('privacyProtocol');
    this.securityLevel = registerOutput<String>('securityLevel');
    this.securityName = registerOutput<String?>('securityName');
    this.version = registerOutput<String>('version');
  }
}
