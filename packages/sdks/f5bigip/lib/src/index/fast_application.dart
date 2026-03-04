import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_application_args.dart';
import 'fast_application_state.dart';

/// `f5bigip.FastApplication` This resource will create and manage FAST applications on BIG-IP from provided JSON declaration.
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
/// const foo_app = new f5bigip.FastApplication("foo-app", {
///     template: "examples/simple_http",
///     fastJson: std.file({
///         input: "new_fast_app.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// foo_app = f5bigip.FastApplication("foo-app",
///     template="examples/simple_http",
///     fast_json=std.file(input="new_fast_app.json").result)
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
///     var foo_app = new F5BigIP.FastApplication("foo-app", new()
///     {
///         Template = "examples/simple_http",
///         FastJson = Std.File.Invoke(new()
///         {
///             Input = "new_fast_app.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "new_fast_app.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = f5bigip.NewFastApplication(ctx, "foo-app", &f5bigip.FastApplicationArgs{
/// 			Template: pulumi.String("examples/simple_http"),
/// 			FastJson: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.f5bigip.FastApplication;
/// import com.pulumi.f5bigip.FastApplicationArgs;
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
///         var foo_app = new FastApplication("foo-app", FastApplicationArgs.builder()
///             .template("examples/simple_http")
///             .fastJson(StdFunctions.file(FileArgs.builder()
///                 .input("new_fast_app.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo-app:
///     type: f5bigip:FastApplication
///     properties:
///       template: examples/simple_http
///       fastJson:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: new_fast_app.json
///           return: result
/// ```
class FastApplication extends pulumi.CustomResource {
  /// A FAST application name.
  ///
  ///
  ///
  /// * `FAST documentation` - https://clouddocs.f5.com/products/extensions/f5-appsvcs-templates/latest/
  late final pulumi.Output<String> application;

  /// Path/Filename of Declarative FAST JSON which is a json file used with builtin ```file``` function
  late final pulumi.Output<String> fastJson;

  /// Name of installed FAST template used to create FAST application. This parameter is required when creating new resource.
  late final pulumi.Output<String?> template;

  /// A FAST tenant name on which you want to manage application.
  late final pulumi.Output<String> tenant;

  /// Creates a new [FastApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FastApplication]. {@macro pulumi_index_fast_application_fast_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FastApplication(
    String name, {
    FastApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/fastApplication:FastApplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    application = registerOutput<String>('application');
    fastJson = registerOutput<String>('fastJson');
    template = registerOutput<String?>('template');
    tenant = registerOutput<String>('tenant');
  }

  /// Gets an existing [FastApplication] resource's state with the given [name] and [id].
  static FastApplication get(
    String name,
    pulumi.Input<String> id, {
    FastApplicationState? state,
  }) {
    return FastApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FastApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/fastApplication:FastApplication',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    application = registerOutput<String>('application');
    fastJson = registerOutput<String>('fastJson');
    template = registerOutput<String?>('template');
    tenant = registerOutput<String>('tenant');
  }
}
