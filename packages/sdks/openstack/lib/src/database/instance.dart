import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_datastore.dart';
import 'instance_state.dart';

/// Manages a V1 DB instance resource within OpenStack.
///
/// &gt; **Note:** All arguments including the instance user password will be stored
/// in the raw state as plain-text. Read more about sensitive data in
/// state.
///
/// ## Example Usage
///
/// ### Instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test = new openstack.database.Instance("test", {
///     region: "region-test",
///     name: "test",
///     flavorId: "31792d21-c355-4587-9290-56c1ed0ca376",
///     size: 8,
///     networks: [{
///         uuid: "c0612505-caf2-4fb0-b7cb-56a0240a2b12",
///     }],
///     datastore: {
///         version: "mysql-5.7",
///         type: "mysql",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test = openstack.database.Instance("test",
///     region="region-test",
///     name="test",
///     flavor_id="31792d21-c355-4587-9290-56c1ed0ca376",
///     size=8,
///     networks=[{
///         "uuid": "c0612505-caf2-4fb0-b7cb-56a0240a2b12",
///     }],
///     datastore={
///         "version": "mysql-5.7",
///         "type": "mysql",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new OpenStack.Database.Instance("test", new()
///     {
///         Region = "region-test",
///         Name = "test",
///         FlavorId = "31792d21-c355-4587-9290-56c1ed0ca376",
///         Size = 8,
///         Networks = new[]
///         {
///             new OpenStack.Database.Inputs.InstanceNetworkArgs
///             {
///                 Uuid = "c0612505-caf2-4fb0-b7cb-56a0240a2b12",
///             },
///         },
///         Datastore = new OpenStack.Database.Inputs.InstanceDatastoreArgs
///         {
///             Version = "mysql-5.7",
///             Type = "mysql",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/database"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := database.NewInstance(ctx, "test", &database.InstanceArgs{
/// 			Region:   pulumi.String("region-test"),
/// 			Name:     pulumi.String("test"),
/// 			FlavorId: pulumi.String("31792d21-c355-4587-9290-56c1ed0ca376"),
/// 			Size:     pulumi.Int(8),
/// 			Networks: database.InstanceNetworkArray{
/// 				&database.InstanceNetworkArgs{
/// 					Uuid: pulumi.String("c0612505-caf2-4fb0-b7cb-56a0240a2b12"),
/// 				},
/// 			},
/// 			Datastore: &database.InstanceDatastoreArgs{
/// 				Version: pulumi.String("mysql-5.7"),
/// 				Type:    pulumi.String("mysql"),
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
/// import com.pulumi.openstack.database.Instance;
/// import com.pulumi.openstack.database.InstanceArgs;
/// import com.pulumi.openstack.database.inputs.InstanceNetworkArgs;
/// import com.pulumi.openstack.database.inputs.InstanceDatastoreArgs;
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
///         var test = new Instance("test", InstanceArgs.builder()
///             .region("region-test")
///             .name("test")
///             .flavorId("31792d21-c355-4587-9290-56c1ed0ca376")
///             .size(8)
///             .networks(InstanceNetworkArgs.builder()
///                 .uuid("c0612505-caf2-4fb0-b7cb-56a0240a2b12")
///                 .build())
///             .datastore(InstanceDatastoreArgs.builder()
///                 .version("mysql-5.7")
///                 .type("mysql")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: openstack:database:Instance
///     properties:
///       region: region-test
///       name: test
///       flavorId: 31792d21-c355-4587-9290-56c1ed0ca376
///       size: 8
///       networks:
///         - uuid: c0612505-caf2-4fb0-b7cb-56a0240a2b12
///       datastore:
///         version: mysql-5.7
///         type: mysql
/// ```
class Instance extends pulumi.CustomResource {
  /// A list of IP addresses assigned to the instance.
  late final pulumi.Output<List<String>> addresses;

  /// Configuration ID to be attached to the instance. Database instance
  /// will be rebooted when configuration is detached.
  late final pulumi.Output<String?> configurationId;

  /// An array of database name, charset and collate. The database
  /// object structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> databases;

  /// An array of database engine type and version. The datastore
  /// object structure is documented below. Changing this creates a new instance.
  late final pulumi.Output<InstanceDatastore> datastore;

  /// The flavor ID of the desired flavor for the instance.
  /// Changing this creates new instance.
  late final pulumi.Output<String> flavorId;

  /// A unique name for the resource.
  late final pulumi.Output<String> name;

  /// An array of one or more networks to attach to the
  /// instance. The network object structure is documented below. Changing this
  /// creates a new instance.
  late final pulumi.Output<List<Map<String, dynamic>>?> networks;

  /// The region in which to create the db instance. Changing this
  /// creates a new instance.
  late final pulumi.Output<String> region;

  /// Specifies the volume size in GB. Changing this creates new instance.
  late final pulumi.Output<int> size;

  /// An array of username, password, host and databases. The user
  /// object structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> users;

  /// Specifies the volume type to use. If you want to
  /// specify a volume type, you must also specify a volume size. Changing this
  /// creates new instance.
  late final pulumi.Output<String?> volumeType;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_database_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:database/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addresses = registerOutput<List<String>>('addresses');
    configurationId = registerOutput<String?>('configurationId');
    databases = registerOutput<List<Map<String, dynamic>>?>('databases');
    datastore = registerOutput<InstanceDatastore>(
      'datastore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceDatastore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    flavorId = registerOutput<String>('flavorId');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<Map<String, dynamic>>?>('networks');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    users = registerOutput<List<Map<String, dynamic>>?>('users');
    volumeType = registerOutput<String?>('volumeType');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:database/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addresses = registerOutput<List<String>>('addresses');
    configurationId = registerOutput<String?>('configurationId');
    databases = registerOutput<List<Map<String, dynamic>>?>('databases');
    datastore = registerOutput<InstanceDatastore>(
      'datastore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceDatastore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    flavorId = registerOutput<String>('flavorId');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<Map<String, dynamic>>?>('networks');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    users = registerOutput<List<Map<String, dynamic>>?>('users');
    volumeType = registerOutput<String?>('volumeType');
  }
}
