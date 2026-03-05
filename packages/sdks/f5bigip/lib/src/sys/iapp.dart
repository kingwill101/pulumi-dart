import 'package:pulumi/pulumi.dart' as pulumi;
import 'iapp_args.dart';
import 'iapp_state.dart';

/// `f5bigip.sys.IApp` resource helps you to deploy Application Services template that can be used to automate and orchestrate Layer 4-7 applications service deployments using F5 Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
/// import * as std from "@pulumi/std";
///
/// const simplehttp = new f5bigip.sys.IApp("simplehttp", {
///     name: "simplehttp",
///     jsonfile: std.file({
///         input: "simplehttp.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// simplehttp = f5bigip.sys.IApp("simplehttp",
///     name="simplehttp",
///     jsonfile=std.file(input="simplehttp.json").result)
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
///     var simplehttp = new F5BigIP.Sys.IApp("simplehttp", new()
///     {
///         Name = "simplehttp",
///         Jsonfile = Std.File.Invoke(new()
///         {
///             Input = "simplehttp.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/sys"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "simplehttp.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sys.NewIApp(ctx, "simplehttp", &sys.IAppArgs{
/// 			Name:     pulumi.String("simplehttp"),
/// 			Jsonfile: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.f5bigip.sys.IApp;
/// import com.pulumi.f5bigip.sys.IAppArgs;
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
///         var simplehttp = new IApp("simplehttp", IAppArgs.builder()
///             .name("simplehttp")
///             .jsonfile(StdFunctions.file(FileArgs.builder()
///                 .input("simplehttp.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   simplehttp:
///     type: f5bigip:sys:IApp
///     properties:
///       name: simplehttp
///       jsonfile:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: simplehttp.json
///           return: result
/// ```
///
///
///
/// ### Json File
/// ```json
/// {
/// "fullPath":"/Common/simplehttp.app/simplehttp",
/// "generation":222,
/// "inheritedDevicegroup":"true",
/// "inheritedTrafficGroup":"true",
/// "kind":"tm:sys:application:service:servicestate",
/// "name":"simplehttp",
/// "partition":"Common",
/// "selfLink":"https://localhost/mgmt/tm/sys/application/service/~Common~simplehttp.app~simplehttp?ver=13.0.0",
/// "strictUpdates":"enabled",
/// "subPath":"simplehttp.app",
/// "tables":[
///    {
///       "name":"basic__snatpool_members"
///    },
///    {
///       "name":"net__snatpool_members"
///    },
///    {
///       "name":"optimizations__hosts"
///    },
///    {
///       "columnNames":[
///          "name"
///       ],
///       "name":"pool__hosts",
///       "rows":[
///          {
///             "row":[
///                "f5.cisco.com"
///             ]
///          }
///       ]
///    },
///    {
///       "columnNames":[
///          "addr",
///          "port",
///          "connection_limit"
///       ],
///       "name":"pool__members",
///       "rows":[
///          {
///             "row":[
///                "10.0.2.167",
///                "80",
///                "0"
///             ]
///          },
///          {
///             "row":[
///                "10.0.2.168",
///                "80",
///                "0"
///             ]
///          }
///       ]
///    },
///    {
///       "name":"server_pools__servers"
///    }
/// ],
/// "template":"/Common/f5.http",
/// "templateModified":"no",
/// "templateReference":{
///    "link":"https://localhost/mgmt/tm/sys/application/template/~Common~f5.http?ver=13.0.0"
/// },
/// "trafficGroup":"/Common/traffic-group-1",
/// "trafficGroupReference":{
///    "link":"https://localhost/mgmt/tm/cm/traffic-group/~Common~traffic-group-1?ver=13.0.0"
/// },
/// "variables":[
///    {
///       "encrypted":"no",
///       "name":"client__http_compression",
///       "value":"/#create_new#"
///    },
///    {
///       "encrypted":"no",
///       "name":"monitor__monitor",
///       "value":"/Common/http"
///    },
///    {
///       "encrypted":"no",
///       "name":"net__client_mode",
///       "value":"wan"
///    },
///    {
///       "encrypted":"no",
///       "name":"net__server_mode",
///       "value":"lan"
///    },
///    {
///       "encrypted":"no",
///       "name":"net__v13_tcp",
///       "value":"warn"
///    },
///    {
///       "encrypted":"no",
///       "name":"pool__addr",
///       "value":"10.0.1.100"
///    },
///    {
///       "encrypted":"no",
///       "name":"pool__pool_to_use",
///       "value":"/#create_new#"
///    },
///    {
///       "encrypted":"no",
///       "name":"pool__port",
///       "value":"80"
///    },
///    {
///       "encrypted":"no",
///       "name":"ssl__mode",
///       "value":"no_ssl"
///    },
///    {
///       "encrypted":"no",
///       "name":"ssl_encryption_questions__advanced",
///       "value":"no"
///    },
///    {
///       "encrypted":"no",
///       "name":"ssl_encryption_questions__help",
///       "value":"hide"
///    }
/// ]
/// }
/// ```
class IApp extends pulumi.CustomResource {
  /// User defined description.
  late final pulumi.Output<String?> description;
  /// BIG-IP password
  late final pulumi.Output<String> devicegroup;
  /// Run the specified template action associated with the application, this option can be specified in `json` with `executeAction`, value specified with `execute_action` attribute take precedence over `json` value
  late final pulumi.Output<String> executeAction;
  /// Read-only. Shows whether the application folder will automatically remain with the same device-group as its parent folder. Use 'device-group default' or 'device-group non-default' to set this.
  late final pulumi.Output<String?> inheritedDevicegroup;
  /// Read-only. Shows whether the application folder will automatically remain with the same traffic-group as its parent folder. Use 'traffic-group default' or 'traffic-group non-default' to set this.
  late final pulumi.Output<String?> inheritedTrafficGroup;
  /// Refer to the Json file which will be deployed on F5 BIG-IP.
  late final pulumi.Output<String> jsonfile;
  /// string values
  late final pulumi.Output<List<Map<String, dynamic>>?> lists;
  /// User defined generic data for the application service. It is a name and value pair.
  late final pulumi.Output<List<Map<String, dynamic>>?> metadatas;
  /// Name of the iApp.
  late final pulumi.Output<String> name;
  /// Displays the administrative partition within which the application resides.
  late final pulumi.Output<String?> partition;
  /// Specifies whether configuration objects contained in the application may be directly modified, outside the context of the system's application management interfaces.
  late final pulumi.Output<String?> strictUpdates;
  late final pulumi.Output<List<Map<String, dynamic>>?> tables;
  /// The template defines the configuration for the application. This may be changed after the application has been created to move the application to a new template.
  late final pulumi.Output<String?> template;
  /// Indicates that the application template used to deploy the application has been modified. The application should be updated to make use of the latest changes.
  late final pulumi.Output<String?> templateModified;
  /// Indicates any missing prerequisites associated with the template that defines this application.
  late final pulumi.Output<String?> templatePrerequisiteErrors;
  /// The name of the traffic group that the application service is assigned to.
  late final pulumi.Output<String?> trafficGroup;
  late final pulumi.Output<List<Map<String, dynamic>>?> variables;

  /// Creates a new [IApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IApp]. {@macro pulumi_sys_i_app_iapp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IApp(
    String name, {
    IAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/iApp:IApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    devicegroup = registerOutput<String>('devicegroup');
    executeAction = registerOutput<String>('executeAction');
    inheritedDevicegroup = registerOutput<String?>('inheritedDevicegroup');
    inheritedTrafficGroup = registerOutput<String?>('inheritedTrafficGroup');
    jsonfile = registerOutput<String>('jsonfile');
    lists = registerOutput<List<Map<String, dynamic>>?>('lists');
    metadatas = registerOutput<List<Map<String, dynamic>>?>('metadatas');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String?>('partition');
    strictUpdates = registerOutput<String?>('strictUpdates');
    tables = registerOutput<List<Map<String, dynamic>>?>('tables');
    template = registerOutput<String?>('template');
    templateModified = registerOutput<String?>('templateModified');
    templatePrerequisiteErrors = registerOutput<String?>('templatePrerequisiteErrors');
    trafficGroup = registerOutput<String?>('trafficGroup');
    variables = registerOutput<List<Map<String, dynamic>>?>('variables');
  }

  /// Gets an existing [IApp] resource's state with the given [name] and [id].
  static IApp get(
    String name,
    pulumi.Input<String> id, {
    IAppState? state,
  }) {
    return IApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/iApp:IApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    devicegroup = registerOutput<String>('devicegroup');
    executeAction = registerOutput<String>('executeAction');
    inheritedDevicegroup = registerOutput<String?>('inheritedDevicegroup');
    inheritedTrafficGroup = registerOutput<String?>('inheritedTrafficGroup');
    jsonfile = registerOutput<String>('jsonfile');
    lists = registerOutput<List<Map<String, dynamic>>?>('lists');
    metadatas = registerOutput<List<Map<String, dynamic>>?>('metadatas');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String?>('partition');
    strictUpdates = registerOutput<String?>('strictUpdates');
    tables = registerOutput<List<Map<String, dynamic>>?>('tables');
    template = registerOutput<String?>('template');
    templateModified = registerOutput<String?>('templateModified');
    templatePrerequisiteErrors = registerOutput<String?>('templatePrerequisiteErrors');
    trafficGroup = registerOutput<String?>('trafficGroup');
    variables = registerOutput<List<Map<String, dynamic>>?>('variables');
  }
}
