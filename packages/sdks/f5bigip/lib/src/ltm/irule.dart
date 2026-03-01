import 'package:pulumi/pulumi.dart' as pulumi;
import 'irule_args.dart';
import 'irule_state.dart';

/// `f5bigip.ltm.IRule` Creates iRule on BIG-IP F5 device
///
/// For resources should be named with their "full path". The full path is the combination of the partition + name of the resource. For example /Common/my-pool.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
/// import * as std from "@pulumi/std";
///
/// // Loading from a file is the preferred method
/// const rule = new f5bigip.ltm.IRule("rule", {
///     name: "/Common/terraform_irule",
///     irule: std.file({
///         input: "myirule.tcl",
///     }).then(invoke => invoke.result),
/// });
/// const rule2 = new f5bigip.ltm.IRule("rule2", {
///     name: "/Common/terraform_irule2",
///     irule: `when CLIENT_ACCEPTED {
///      log local0. \\"test\\"
///    }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// # Loading from a file is the preferred method
/// rule = f5bigip.ltm.IRule("rule",
///     name="/Common/terraform_irule",
///     irule=std.file(input="myirule.tcl").result)
/// rule2 = f5bigip.ltm.IRule("rule2",
///     name="/Common/terraform_irule2",
///     irule="""when CLIENT_ACCEPTED {
///      log local0. \"test\"
///    }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Loading from a file is the preferred method
///     var rule = new F5BigIP.Ltm.IRule("rule", new()
///     {
///         Name = "/Common/terraform_irule",
///         Irule = Std.File.Invoke(new()
///         {
///             Input = "myirule.tcl",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var rule2 = new F5BigIP.Ltm.IRule("rule2", new()
///     {
///         Name = "/Common/terraform_irule2",
///         Irule = @"when CLIENT_ACCEPTED {
///      log local0. \""test\""
///    }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "myirule.tcl",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Loading from a file is the preferred method
/// 		_, err = ltm.NewIRule(ctx, "rule", &ltm.IRuleArgs{
/// 			Name:  pulumi.String("/Common/terraform_irule"),
/// 			Irule: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewIRule(ctx, "rule2", &ltm.IRuleArgs{
/// 			Name:  pulumi.String("/Common/terraform_irule2"),
/// 			Irule: pulumi.String("when CLIENT_ACCEPTED {\n     log local0. \\\"test\\\"\n   }\n"),
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
/// import com.pulumi.f5bigip.ltm.IRule;
/// import com.pulumi.f5bigip.ltm.IRuleArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         // Loading from a file is the preferred method
///         var rule = new IRule("rule", IRuleArgs.builder()
///             .name("/Common/terraform_irule")
///             .irule(StdFunctions.file(FileArgs.builder()
///                 .input("myirule.tcl")
///                 .build()).result())
///             .build());
///
///         var rule2 = new IRule("rule2", IRuleArgs.builder()
///             .name("/Common/terraform_irule2")
///             .irule("""
/// when CLIENT_ACCEPTED {
///      log local0. \"test\"
///    }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Loading from a file is the preferred method
///   rule:
///     type: f5bigip:ltm:IRule
///     properties:
///       name: /Common/terraform_irule
///       irule:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: myirule.tcl
///           return: result
///   rule2:
///     type: f5bigip:ltm:IRule
///     properties:
///       name: /Common/terraform_irule2
///       irule: |
///         when CLIENT_ACCEPTED {
///              log local0. \"test\"
///            }
/// ```
///
///
///
/// ##myirule.tcl
///
/// ```
/// when HTTP_REQUEST {
///
///   if { [string tolower [HTTP::header value Upgrade]] equals "websocket" } {
///     HTTP::disable
/// #    ASM::disable
///     log local0. "[IP::client_addr] - Connection upgraded to websocket protocol. Disabling ASM-checks and HTTP protocol. Traffic is treated as L4 TCP stream."
///   } else {
///     HTTP::enable
/// #    ASM::enable
///     log local0. "[IP::client_addr] - Regular HTTP request. ASM-checks and HTTP protocol enabled. Traffic is deep-inspected at L7."
///   }
/// }
/// ```
class IRule extends pulumi.CustomResource {
  /// Body of the iRule
  late final pulumi.Output<String> irule;
  /// Name of the iRule
  late final pulumi.Output<String> name;

  /// Creates a new [IRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IRule]. {@macro pulumi_ltm_i_rule_irule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IRule(
    String name, {
    IRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/iRule:IRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.irule = registerOutput<String>('irule');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [IRule] resource's state with the given [name] and [id].
  static IRule get(
    String name,
    pulumi.Input<String> id, {
    IRuleState? state,
  }) {
    return IRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/iRule:IRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.irule = registerOutput<String>('irule');
    this.name = registerOutput<String>('name');
  }
}
