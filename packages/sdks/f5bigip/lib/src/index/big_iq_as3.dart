import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_iq_as3_args.dart';
import 'big_iq_as3_state.dart';

/// `f5bigip.BigIqAs3` provides details about bigiq as3 resource
///
/// This resource is helpful to configure as3 declarative JSON on BIG-IP through BIG-IQ.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
/// import * as std from "@pulumi/std";
///
/// // Example Usage for json file
/// const exampletask = new f5bigip.BigIqAs3("exampletask", {
///     bigiqAddress: "xx.xx.xxx.xx",
///     bigiqUser: "xxxxx",
///     bigiqPassword: "xxxxxxxxx",
///     as3Json: std.file({
///         input: "bigiq_example.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// # Example Usage for json file
/// exampletask = f5bigip.BigIqAs3("exampletask",
///     bigiq_address="xx.xx.xxx.xx",
///     bigiq_user="xxxxx",
///     bigiq_password="xxxxxxxxx",
///     as3_json=std.file(input="bigiq_example.json").result)
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
///     // Example Usage for json file
///     var exampletask = new F5BigIP.BigIqAs3("exampletask", new()
///     {
///         BigiqAddress = "xx.xx.xxx.xx",
///         BigiqUser = "xxxxx",
///         BigiqPassword = "xxxxxxxxx",
///         As3Json = Std.File.Invoke(new()
///         {
///             Input = "bigiq_example.json",
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
/// 			Input: "bigiq_example.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example Usage for json file
/// 		_, err = f5bigip.NewBigIqAs3(ctx, "exampletask", &f5bigip.BigIqAs3Args{
/// 			BigiqAddress:  pulumi.String("xx.xx.xxx.xx"),
/// 			BigiqUser:     pulumi.String("xxxxx"),
/// 			BigiqPassword: pulumi.String("xxxxxxxxx"),
/// 			As3Json:       pulumi.String(invokeFile.Result),
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
/// import com.pulumi.f5bigip.BigIqAs3;
/// import com.pulumi.f5bigip.BigIqAs3Args;
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
///         // Example Usage for json file
///         var exampletask = new BigIqAs3("exampletask", BigIqAs3Args.builder()
///             .bigiqAddress("xx.xx.xxx.xx")
///             .bigiqUser("xxxxx")
///             .bigiqPassword("xxxxxxxxx")
///             .as3Json(StdFunctions.file(FileArgs.builder()
///                 .input("bigiq_example.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Example Usage for json file
///   exampletask:
///     type: f5bigip:BigIqAs3
///     properties:
///       bigiqAddress: xx.xx.xxx.xx
///       bigiqUser: xxxxx
///       bigiqPassword: xxxxxxxxx
///       as3Json:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: bigiq_example.json
///           return: result
/// ```
class BigIqAs3 extends pulumi.CustomResource {
  /// Path/Filename of Declarative AS3 JSON which is a json file used with builtin ```file``` function
  late final pulumi.Output<String> as3Json;
  /// Address of the BIG-IQ to which your targer BIG-IP is attached
  late final pulumi.Output<String> bigiqAddress;
  /// BIGIQ Login reference for token authentication
  late final pulumi.Output<String?> bigiqLoginRef;
  /// Password of the BIG-IQ to which your targer BIG-IP is attached
  late final pulumi.Output<String> bigiqPassword;
  /// type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  late final pulumi.Output<String?> bigiqPort;
  /// type `bool`, if set to `true` enables Token based Authentication,default is `false`
  late final pulumi.Output<bool?> bigiqTokenAuth;
  /// User name  of the BIG-IQ to which your targer BIG-IP is attached
  late final pulumi.Output<String> bigiqUser;
  /// Set True if you want to ignore metadata changes during update. By default it is set to `true`
  ///
  /// * `bigiq_example.json` - Example  AS3 Declarative JSON file
  ///
  /// ```json
  /// {
  /// "class": "AS3",
  /// "action": "deploy",
  /// "persist": true,
  /// "declaration": {
  /// "class": "ADC",
  /// "schemaVersion": "3.7.0",
  /// "id": "example-declaration-01",
  /// "label": "Task1",
  /// "remark": "Task 1 - HTTP Application Service",
  /// "target": {
  /// "address": "xx.xxx.xx.xxx"
  /// },
  /// "Task1": {
  /// "class": "Tenant",
  /// "MyWebApp1http": {
  /// "class": "Application",
  /// "template": "http",
  ///
  ///
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.1.2.10"
  /// ],
  /// "pool": "web_pool"
  /// },
  /// "web_pool": {
  /// "class": "Pool",
  /// "monitors": [
  /// "http"
  /// ],
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.0.2.33",
  /// "192.0.2.13"
  /// ],
  /// "shareNodes": true
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  /// }
  /// ```
  ///
  /// * `AS3 documentation` - https://clouddocs.f5.com/products/extensions/f5-appsvcs-extension/latest/userguide/big-iq.html
  ///
  /// >  **Note:** This resource does not support `teanat_filter` parameter as BIG-IP As3 resource
  late final pulumi.Output<bool?> ignoreMetadata;
  /// Name of Tenant
  late final pulumi.Output<String> tenantList;

  /// Creates a new [BigIqAs3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BigIqAs3]. {@macro pulumi_index_big_iq_as3_big_iq_as3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BigIqAs3(
    String name, {
    BigIqAs3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/bigIqAs3:BigIqAs3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.as3Json = registerOutput<String>('as3Json');
    this.bigiqAddress = registerOutput<String>('bigiqAddress');
    this.bigiqLoginRef = registerOutput<String?>('bigiqLoginRef');
    this.bigiqPassword = registerOutput<String>('bigiqPassword');
    this.bigiqPort = registerOutput<String?>('bigiqPort');
    this.bigiqTokenAuth = registerOutput<bool?>('bigiqTokenAuth');
    this.bigiqUser = registerOutput<String>('bigiqUser');
    this.ignoreMetadata = registerOutput<bool?>('ignoreMetadata');
    this.tenantList = registerOutput<String>('tenantList');
  }

  /// Gets an existing [BigIqAs3] resource's state with the given [name] and [id].
  static BigIqAs3 get(
    String name,
    pulumi.Input<String> id, {
    BigIqAs3State? state,
  }) {
    return BigIqAs3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BigIqAs3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/bigIqAs3:BigIqAs3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.as3Json = registerOutput<String>('as3Json');
    this.bigiqAddress = registerOutput<String>('bigiqAddress');
    this.bigiqLoginRef = registerOutput<String?>('bigiqLoginRef');
    this.bigiqPassword = registerOutput<String>('bigiqPassword');
    this.bigiqPort = registerOutput<String?>('bigiqPort');
    this.bigiqTokenAuth = registerOutput<bool?>('bigiqTokenAuth');
    this.bigiqUser = registerOutput<String>('bigiqUser');
    this.ignoreMetadata = registerOutput<bool?>('ignoreMetadata');
    this.tenantList = registerOutput<String>('tenantList');
  }
}
