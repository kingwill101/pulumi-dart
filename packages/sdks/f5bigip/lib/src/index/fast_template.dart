import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_template_args.dart';
import 'fast_template_state.dart';

/// `f5bigip.FastTemplate` This resource will import and create FAST template sets on BIG-IP LTM.
/// Template set can be imported from zip archive files on the local disk.
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
/// const foo_template = new f5bigip.FastTemplate("foo-template", {
///     name: "foo_template",
///     source: "foo_template.zip",
///     md5Hash: std.filemd5({
///         input: "foo_template.zip",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// foo_template = f5bigip.FastTemplate("foo-template",
///     name="foo_template",
///     source="foo_template.zip",
///     md5_hash=std.filemd5(input="foo_template.zip").result)
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
///     var foo_template = new F5BigIP.FastTemplate("foo-template", new()
///     {
///         Name = "foo_template",
///         Source = "foo_template.zip",
///         Md5Hash = Std.Filemd5.Invoke(new()
///         {
///             Input = "foo_template.zip",
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
/// 		invokeFilemd5, err := std.Filemd5(ctx, &std.Filemd5Args{
/// 			Input: "foo_template.zip",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = f5bigip.NewFastTemplate(ctx, "foo-template", &f5bigip.FastTemplateArgs{
/// 			Name:    pulumi.String("foo_template"),
/// 			Source:  pulumi.String("foo_template.zip"),
/// 			Md5Hash: pulumi.String(invokeFilemd5.Result),
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
/// import com.pulumi.f5bigip.FastTemplate;
/// import com.pulumi.f5bigip.FastTemplateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filemd5Args;
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
///         var foo_template = new FastTemplate("foo-template", FastTemplateArgs.builder()
///             .name("foo_template")
///             .source("foo_template.zip")
///             .md5Hash(StdFunctions.filemd5(Filemd5Args.builder()
///                 .input("foo_template.zip")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo-template:
///     type: f5bigip:FastTemplate
///     properties:
///       name: foo_template
///       source: foo_template.zip
///       md5Hash:
///         fn::invoke:
///           function: std:filemd5
///           arguments:
///             input: foo_template.zip
///           return: result
/// ```
class FastTemplate extends pulumi.CustomResource {
  /// MD5 hash of the zip archive file containing FAST template
  late final pulumi.Output<String> md5Hash;
  /// Name of the FAST template set to be created on to BIGIP
  late final pulumi.Output<String?> name;
  /// Path to the zip archive file containing FAST template set on Local Disk
  late final pulumi.Output<String> source;

  /// Creates a new [FastTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FastTemplate]. {@macro pulumi_index_fast_template_fast_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FastTemplate(
    String name, {
    FastTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/fastTemplate:FastTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.md5Hash = registerOutput<String>('md5Hash');
    this.name = registerOutput<String?>('name');
    this.source = registerOutput<String>('source');
  }

  /// Gets an existing [FastTemplate] resource's state with the given [name] and [id].
  static FastTemplate get(
    String name,
    pulumi.Input<String> id, {
    FastTemplateState? state,
  }) {
    return FastTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FastTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/fastTemplate:FastTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.md5Hash = registerOutput<String>('md5Hash');
    this.name = registerOutput<String?>('name');
    this.source = registerOutput<String>('source');
  }
}
