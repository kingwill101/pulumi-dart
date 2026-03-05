import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_script_args.dart';
import 'stack_script_state.dart';

/// Provides a Linode StackScript resource.  This can be used to create, modify, and delete Linode StackScripts.  StackScripts are private or public managed scripts which run within an instance during startup.  StackScripts can include variables whose values are specified when the Instance is created.
///
/// For more information, see [Automate Deployment with StackScripts](https://www.linode.com/docs/platform/stackscripts/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-add-stack-script).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure a StackScript attached to a Linode Instance.  As shown below, StackScripts must begin with a shebang (`#!`).  The `&lt;UDF ...&gt;` element provided in the Bash comment block defines a variable whose value is provided when creating the Instance (or disk) using the `stackscript_data` field.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = new linode.StackScript("foo", {
///     label: "foo",
///     description: "Installs a Package",
///     script: `#!/bin/bash
/// # <UDF name=\\"package\\" label=\\"System Package to Install\\" example=\\"nginx\\" default=\\"\\">
/// apt-get -q update && apt-get -q -y install PACKAGE
/// `,
///     images: [
///         "linode/ubuntu22.04",
///         "linode/ubuntu20.04",
///     ],
///     revNote: "initial version",
/// });
/// const fooInstance = new linode.Instance("foo", {
///     image: "linode/ubuntu22.04",
///     label: "foo",
///     region: "us-east",
///     type: "g6-nanode-1",
///     authorizedKeys: ["..."],
///     rootPass: "...",
///     stackscriptId: foo.id,
///     stackscriptData: {
///         "package": "nginx",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.StackScript("foo",
///     label="foo",
///     description="Installs a Package",
///     script="""#!/bin/bash
/// # <UDF name=\"package\" label=\"System Package to Install\" example=\"nginx\" default=\"\">
/// apt-get -q update && apt-get -q -y install $PACKAGE
/// """,
///     images=[
///         "linode/ubuntu22.04",
///         "linode/ubuntu20.04",
///     ],
///     rev_note="initial version")
/// foo_instance = linode.Instance("foo",
///     image="linode/ubuntu22.04",
///     label="foo",
///     region="us-east",
///     type="g6-nanode-1",
///     authorized_keys=["..."],
///     root_pass="...",
///     stackscript_id=foo.id,
///     stackscript_data={
///         "package": "nginx",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.StackScript("foo", new()
///     {
///         Label = "foo",
///         Description = "Installs a Package",
///         Script = @"#!/bin/bash
/// # <UDF name=\""package\"" label=\""System Package to Install\"" example=\""nginx\"" default=\""\"">
/// apt-get -q update && apt-get -q -y install $PACKAGE
/// ",
///         Images = new[]
///         {
///             "linode/ubuntu22.04",
///             "linode/ubuntu20.04",
///         },
///         RevNote = "initial version",
///     });
///
///     var fooInstance = new Linode.Instance("foo", new()
///     {
///         Image = "linode/ubuntu22.04",
///         Label = "foo",
///         Region = "us-east",
///         Type = "g6-nanode-1",
///         AuthorizedKeys = new[]
///         {
///             "...",
///         },
///         RootPass = "...",
///         StackscriptId = foo.Id,
///         StackscriptData =
///         {
///             { "package", "nginx" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := linode.NewStackScript(ctx, "foo", &linode.StackScriptArgs{
/// 			Label:       pulumi.String("foo"),
/// 			Description: pulumi.String("Installs a Package"),
/// 			Script:      pulumi.String("#!/bin/bash\n# <UDF name=\\\"package\\\" label=\\\"System Package to Install\\\" example=\\\"nginx\\\" default=\\\"\\\">\napt-get -q update && apt-get -q -y install $PACKAGE\n"),
/// 			Images: pulumi.StringArray{
/// 				pulumi.String("linode/ubuntu22.04"),
/// 				pulumi.String("linode/ubuntu20.04"),
/// 			},
/// 			RevNote: pulumi.String("initial version"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstance(ctx, "foo", &linode.InstanceArgs{
/// 			Image:  pulumi.String("linode/ubuntu22.04"),
/// 			Label:  pulumi.String("foo"),
/// 			Region: pulumi.String("us-east"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 			AuthorizedKeys: pulumi.StringArray{
/// 				pulumi.String("..."),
/// 			},
/// 			RootPass:      pulumi.String("..."),
/// 			StackscriptId: foo.ID(),
/// 			StackscriptData: pulumi.StringMap{
/// 				"package": pulumi.String("nginx"),
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
/// import com.pulumi.linode.StackScript;
/// import com.pulumi.linode.StackScriptArgs;
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
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
///         var foo = new StackScript("foo", StackScriptArgs.builder()
///             .label("foo")
///             .description("Installs a Package")
///             .script("""
/// #!/bin/bash
/// # <UDF name=\"package\" label=\"System Package to Install\" example=\"nginx\" default=\"\">
/// apt-get -q update && apt-get -q -y install $PACKAGE
///             """)
///             .images(
///                 "linode/ubuntu22.04",
///                 "linode/ubuntu20.04")
///             .revNote("initial version")
///             .build());
///
///         var fooInstance = new Instance("fooInstance", InstanceArgs.builder()
///             .image("linode/ubuntu22.04")
///             .label("foo")
///             .region("us-east")
///             .type("g6-nanode-1")
///             .authorizedKeys("...")
///             .rootPass("...")
///             .stackscriptId(foo.id())
///             .stackscriptData(Map.of("package", "nginx"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:StackScript
///     properties:
///       label: foo
///       description: Installs a Package
///       script: |
///         #!/bin/bash
///         # <UDF name=\"package\" label=\"System Package to Install\" example=\"nginx\" default=\"\">
///         apt-get -q update && apt-get -q -y install $PACKAGE
///       images:
///         - linode/ubuntu22.04
///         - linode/ubuntu20.04
///       revNote: initial version
///   fooInstance:
///     type: linode:Instance
///     name: foo
///     properties:
///       image: linode/ubuntu22.04
///       label: foo
///       region: us-east
///       type: g6-nanode-1
///       authorizedKeys:
///         - '...'
///       rootPass: '...'
///       stackscriptId: ${foo.id}
///       stackscriptData:
///         package: nginx
/// ```
///
///
/// ## Import
///
/// Linodes StackScripts can be imported using the Linode StackScript `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/stackScript:StackScript mystackscript 1234567
/// ```
class StackScript extends pulumi.CustomResource {
  /// The date this StackScript was created.
  late final pulumi.Output<String> created;
  /// Count of currently active, deployed Linodes created from this StackScript.
  late final pulumi.Output<int> deploymentsActive;
  /// The total number of times this StackScript has been deployed.
  late final pulumi.Output<int> deploymentsTotal;
  /// A description for the StackScript.
  late final pulumi.Output<String> description;
  /// A set of Image IDs representing the Images that this StackScript is compatible for deploying with. `any/all` indicates that all available image distributions, including private images, are accepted. Currently private image IDs are not supported.
  ///
  /// - - -
  late final pulumi.Output<List<String>> images;
  /// This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private. *Changing `is_public` forces the creation of a new StackScript*
  late final pulumi.Output<bool> isPublic;
  /// The StackScript's label is for display purposes only.
  late final pulumi.Output<String> label;
  /// This field allows you to add notes for the set of revisions made to this StackScript.
  late final pulumi.Output<String> revNote;
  /// The script to execute when provisioning a new Linode with this StackScript.
  late final pulumi.Output<String> script;
  /// The date this StackScript was updated.
  late final pulumi.Output<String> updated;
  /// This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment.
  late final pulumi.Output<List<Map<String, dynamic>>> userDefinedFields;
  /// The Gravatar ID for the User who created the StackScript.
  late final pulumi.Output<String> userGravatarId;
  /// The User who created the StackScript.
  late final pulumi.Output<String> username;

  /// Creates a new [StackScript].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackScript]. {@macro pulumi_index_stack_script_stack_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackScript(
    String name, {
    StackScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/stackScript:StackScript',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    deploymentsActive = registerOutput<int>('deploymentsActive');
    deploymentsTotal = registerOutput<int>('deploymentsTotal');
    description = registerOutput<String>('description');
    images = registerOutput<List<String>>('images');
    isPublic = registerOutput<bool>('isPublic');
    label = registerOutput<String>('label');
    revNote = registerOutput<String>('revNote');
    script = registerOutput<String>('script');
    updated = registerOutput<String>('updated');
    userDefinedFields = registerOutput<List<Map<String, dynamic>>>('userDefinedFields');
    userGravatarId = registerOutput<String>('userGravatarId');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [StackScript] resource's state with the given [name] and [id].
  static StackScript get(
    String name,
    pulumi.Input<String> id, {
    StackScriptState? state,
  }) {
    return StackScript._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StackScript._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/stackScript:StackScript',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    deploymentsActive = registerOutput<int>('deploymentsActive');
    deploymentsTotal = registerOutput<int>('deploymentsTotal');
    description = registerOutput<String>('description');
    images = registerOutput<List<String>>('images');
    isPublic = registerOutput<bool>('isPublic');
    label = registerOutput<String>('label');
    revNote = registerOutput<String>('revNote');
    script = registerOutput<String>('script');
    updated = registerOutput<String>('updated');
    userDefinedFields = registerOutput<List<Map<String, dynamic>>>('userDefinedFields');
    userGravatarId = registerOutput<String>('userGravatarId');
    username = registerOutput<String>('username');
  }
}
