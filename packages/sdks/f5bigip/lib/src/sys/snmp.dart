import 'package:pulumi/pulumi.dart' as pulumi;
import 'snmp_args.dart';
import 'snmp_state.dart';

/// `f5bigip.sys.Snmp` provides details bout how to enable "ilx", "asm" "apm" resource on BIG-IP
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const snmp = new f5bigip.sys.Snmp("snmp", {
///     sysContact: " NetOPsAdmin s.shitole@f5.com",
///     sysLocation: "SeattleHQ",
///     allowedaddresses: ["202.10.10.2"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// snmp = f5bigip.sys.Snmp("snmp",
///     sys_contact=" NetOPsAdmin s.shitole@f5.com",
///     sys_location="SeattleHQ",
///     allowedaddresses=["202.10.10.2"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snmp = new F5BigIP.Sys.Snmp("snmp", new()
///     {
///         SysContact = " NetOPsAdmin s.shitole@f5.com",
///         SysLocation = "SeattleHQ",
///         Allowedaddresses = new[]
///         {
///             "202.10.10.2",
///         },
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
/// 		_, err := sys.NewSnmp(ctx, "snmp", &sys.SnmpArgs{
/// 			SysContact:  pulumi.String(" NetOPsAdmin s.shitole@f5.com"),
/// 			SysLocation: pulumi.String("SeattleHQ"),
/// 			Allowedaddresses: pulumi.StringArray{
/// 				pulumi.String("202.10.10.2"),
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
/// import com.pulumi.f5bigip.sys.Snmp;
/// import com.pulumi.f5bigip.sys.SnmpArgs;
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
///         var snmp = new Snmp("snmp", SnmpArgs.builder()
///             .sysContact(" NetOPsAdmin s.shitole@f5.com")
///             .sysLocation("SeattleHQ")
///             .allowedaddresses("202.10.10.2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snmp:
///     type: f5bigip:sys:Snmp
///     properties:
///       sysContact: ' NetOPsAdmin s.shitole@f5.com'
///       sysLocation: SeattleHQ
///       allowedaddresses:
///         - 202.10.10.2
/// ```
class Snmp extends pulumi.CustomResource {
  /// Configures hosts or networks from which snmpd can accept traffic. Entries go directly into hosts.allow.
  late final pulumi.Output<List<String>?> allowedaddresses;
  /// Specifies the contact information for the system administrator.
  late final pulumi.Output<String?> sysContact;
  /// Describes the system's physical location.
  late final pulumi.Output<String?> sysLocation;

  /// Creates a new [Snmp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snmp]. {@macro pulumi_sys_snmp_snmp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snmp(
    String name, {
    SnmpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/snmp:Snmp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedaddresses = registerOutput<List<String>?>('allowedaddresses');
    this.sysContact = registerOutput<String?>('sysContact');
    this.sysLocation = registerOutput<String?>('sysLocation');
  }

  /// Gets an existing [Snmp] resource's state with the given [name] and [id].
  static Snmp get(
    String name,
    pulumi.Input<String> id, {
    SnmpState? state,
  }) {
    return Snmp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snmp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/snmp:Snmp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedaddresses = registerOutput<List<String>?>('allowedaddresses');
    this.sysContact = registerOutput<String?>('sysContact');
    this.sysLocation = registerOutput<String?>('sysLocation');
  }
}
