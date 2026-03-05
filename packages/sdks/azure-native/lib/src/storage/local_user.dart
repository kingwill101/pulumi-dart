import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_user_args.dart';
import 'system_data_response.dart';

/// The local user associated with the storage accounts.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateLocalUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localUser = new AzureNative.Storage.LocalUser("localUser", new()
///     {
///         AccountName = "sto2527",
///         AllowAclAuthorization = true,
///         GroupId = 2000,
///         HasSshPassword = true,
///         HomeDirectory = "homedirectory",
///         PermissionScopes = new[]
///         {
///             new AzureNative.Storage.Inputs.PermissionScopeArgs
///             {
///                 Permissions = "rwd",
///                 ResourceName = "share1",
///                 Service = "file",
///             },
///             new AzureNative.Storage.Inputs.PermissionScopeArgs
///             {
///                 Permissions = "rw",
///                 ResourceName = "share2",
///                 Service = "file",
///             },
///         },
///         ResourceGroupName = "res6977",
///         SshAuthorizedKeys = new[]
///         {
///             new AzureNative.Storage.Inputs.SshPublicKeyArgs
///             {
///                 Description = "key name",
///                 Key = "ssh-rsa keykeykeykeykey=",
///             },
///         },
///         Username = "user1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewLocalUser(ctx, "localUser", &storage.LocalUserArgs{
/// 			AccountName:           pulumi.String("sto2527"),
/// 			AllowAclAuthorization: pulumi.Bool(true),
/// 			GroupId:               pulumi.Int(2000),
/// 			HasSshPassword:        pulumi.Bool(true),
/// 			HomeDirectory:         pulumi.String("homedirectory"),
/// 			PermissionScopes: storage.PermissionScopeArray{
/// 				&storage.PermissionScopeArgs{
/// 					Permissions:  pulumi.String("rwd"),
/// 					ResourceName: pulumi.String("share1"),
/// 					Service:      pulumi.String("file"),
/// 				},
/// 				&storage.PermissionScopeArgs{
/// 					Permissions:  pulumi.String("rw"),
/// 					ResourceName: pulumi.String("share2"),
/// 					Service:      pulumi.String("file"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res6977"),
/// 			SshAuthorizedKeys: storage.SshPublicKeyArray{
/// 				&storage.SshPublicKeyArgs{
/// 					Description: pulumi.String("key name"),
/// 					Key:         pulumi.String("ssh-rsa keykeykeykeykey="),
/// 				},
/// 			},
/// 			Username: pulumi.String("user1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.LocalUser;
/// import com.pulumi.azurenative.storage.LocalUserArgs;
/// import com.pulumi.azurenative.storage.inputs.PermissionScopeArgs;
/// import com.pulumi.azurenative.storage.inputs.SshPublicKeyArgs;
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
///         var localUser = new LocalUser("localUser", LocalUserArgs.builder()
///             .accountName("sto2527")
///             .allowAclAuthorization(true)
///             .groupId(2000)
///             .hasSshPassword(true)
///             .homeDirectory("homedirectory")
///             .permissionScopes(
///                 PermissionScopeArgs.builder()
///                     .permissions("rwd")
///                     .resourceName("share1")
///                     .service("file")
///                     .build(),
///                 PermissionScopeArgs.builder()
///                     .permissions("rw")
///                     .resourceName("share2")
///                     .service("file")
///                     .build())
///             .resourceGroupName("res6977")
///             .sshAuthorizedKeys(SshPublicKeyArgs.builder()
///                 .description("key name")
///                 .key("ssh-rsa keykeykeykeykey=")
///                 .build())
///             .username("user1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const localUser = new azure_native.storage.LocalUser("localUser", {
///     accountName: "sto2527",
///     allowAclAuthorization: true,
///     groupId: 2000,
///     hasSshPassword: true,
///     homeDirectory: "homedirectory",
///     permissionScopes: [
///         {
///             permissions: "rwd",
///             resourceName: "share1",
///             service: "file",
///         },
///         {
///             permissions: "rw",
///             resourceName: "share2",
///             service: "file",
///         },
///     ],
///     resourceGroupName: "res6977",
///     sshAuthorizedKeys: [{
///         description: "key name",
///         key: "ssh-rsa keykeykeykeykey=",
///     }],
///     username: "user1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_user = azure_native.storage.LocalUser("localUser",
///     account_name="sto2527",
///     allow_acl_authorization=True,
///     group_id=2000,
///     has_ssh_password=True,
///     home_directory="homedirectory",
///     permission_scopes=[
///         {
///             "permissions": "rwd",
///             "resource_name": "share1",
///             "service": "file",
///         },
///         {
///             "permissions": "rw",
///             "resource_name": "share2",
///             "service": "file",
///         },
///     ],
///     resource_group_name="res6977",
///     ssh_authorized_keys=[{
///         "description": "key name",
///         "key": "ssh-rsa keykeykeykeykey=",
///     }],
///     username="user1")
///
/// ```
///
/// ```yaml
/// resources:
///   localUser:
///     type: azure-native:storage:LocalUser
///     properties:
///       accountName: sto2527
///       allowAclAuthorization: true
///       groupId: 2000
///       hasSshPassword: true
///       homeDirectory: homedirectory
///       permissionScopes:
///         - permissions: rwd
///           resourceName: share1
///           service: file
///         - permissions: rw
///           resourceName: share2
///           service: file
///       resourceGroupName: res6977
///       sshAuthorizedKeys:
///         - description: key name
///           key: ssh-rsa keykeykeykeykey=
///       username: user1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateNFSv3EnabledLocalUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localUser = new AzureNative.Storage.LocalUser("localUser", new()
///     {
///         AccountName = "sto2527",
///         ExtendedGroups = new[]
///         {
///             1001,
///             1005,
///             2005,
///         },
///         IsNFSv3Enabled = true,
///         ResourceGroupName = "res6977",
///         Username = "user1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewLocalUser(ctx, "localUser", &storage.LocalUserArgs{
/// 			AccountName: pulumi.String("sto2527"),
/// 			ExtendedGroups: pulumi.IntArray{
/// 				pulumi.Int(1001),
/// 				pulumi.Int(1005),
/// 				pulumi.Int(2005),
/// 			},
/// 			IsNFSv3Enabled:    pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("res6977"),
/// 			Username:          pulumi.String("user1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.LocalUser;
/// import com.pulumi.azurenative.storage.LocalUserArgs;
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
///         var localUser = new LocalUser("localUser", LocalUserArgs.builder()
///             .accountName("sto2527")
///             .extendedGroups(
///                 1001,
///                 1005,
///                 2005)
///             .isNFSv3Enabled(true)
///             .resourceGroupName("res6977")
///             .username("user1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const localUser = new azure_native.storage.LocalUser("localUser", {
///     accountName: "sto2527",
///     extendedGroups: [
///         1001,
///         1005,
///         2005,
///     ],
///     isNFSv3Enabled: true,
///     resourceGroupName: "res6977",
///     username: "user1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_user = azure_native.storage.LocalUser("localUser",
///     account_name="sto2527",
///     extended_groups=[
///         1001,
///         1005,
///         2005,
///     ],
///     is_nf_sv3_enabled=True,
///     resource_group_name="res6977",
///     username="user1")
///
/// ```
///
/// ```yaml
/// resources:
///   localUser:
///     type: azure-native:storage:LocalUser
///     properties:
///       accountName: sto2527
///       extendedGroups:
///         - 1001
///         - 1005
///         - 2005
///       isNFSv3Enabled: true
///       resourceGroupName: res6977
///       username: user1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### UpdateLocalUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localUser = new AzureNative.Storage.LocalUser("localUser", new()
///     {
///         AccountName = "sto2527",
///         AllowAclAuthorization = false,
///         ExtendedGroups = new[]
///         {
///             1001,
///             1005,
///             2005,
///         },
///         GroupId = 3000,
///         HasSharedKey = false,
///         HasSshKey = false,
///         HasSshPassword = false,
///         HomeDirectory = "homedirectory2",
///         IsNFSv3Enabled = true,
///         ResourceGroupName = "res6977",
///         Username = "user1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewLocalUser(ctx, "localUser", &storage.LocalUserArgs{
/// 			AccountName:           pulumi.String("sto2527"),
/// 			AllowAclAuthorization: pulumi.Bool(false),
/// 			ExtendedGroups: pulumi.IntArray{
/// 				pulumi.Int(1001),
/// 				pulumi.Int(1005),
/// 				pulumi.Int(2005),
/// 			},
/// 			GroupId:           pulumi.Int(3000),
/// 			HasSharedKey:      pulumi.Bool(false),
/// 			HasSshKey:         pulumi.Bool(false),
/// 			HasSshPassword:    pulumi.Bool(false),
/// 			HomeDirectory:     pulumi.String("homedirectory2"),
/// 			IsNFSv3Enabled:    pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("res6977"),
/// 			Username:          pulumi.String("user1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.LocalUser;
/// import com.pulumi.azurenative.storage.LocalUserArgs;
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
///         var localUser = new LocalUser("localUser", LocalUserArgs.builder()
///             .accountName("sto2527")
///             .allowAclAuthorization(false)
///             .extendedGroups(
///                 1001,
///                 1005,
///                 2005)
///             .groupId(3000)
///             .hasSharedKey(false)
///             .hasSshKey(false)
///             .hasSshPassword(false)
///             .homeDirectory("homedirectory2")
///             .isNFSv3Enabled(true)
///             .resourceGroupName("res6977")
///             .username("user1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const localUser = new azure_native.storage.LocalUser("localUser", {
///     accountName: "sto2527",
///     allowAclAuthorization: false,
///     extendedGroups: [
///         1001,
///         1005,
///         2005,
///     ],
///     groupId: 3000,
///     hasSharedKey: false,
///     hasSshKey: false,
///     hasSshPassword: false,
///     homeDirectory: "homedirectory2",
///     isNFSv3Enabled: true,
///     resourceGroupName: "res6977",
///     username: "user1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_user = azure_native.storage.LocalUser("localUser",
///     account_name="sto2527",
///     allow_acl_authorization=False,
///     extended_groups=[
///         1001,
///         1005,
///         2005,
///     ],
///     group_id=3000,
///     has_shared_key=False,
///     has_ssh_key=False,
///     has_ssh_password=False,
///     home_directory="homedirectory2",
///     is_nf_sv3_enabled=True,
///     resource_group_name="res6977",
///     username="user1")
///
/// ```
///
/// ```yaml
/// resources:
///   localUser:
///     type: azure-native:storage:LocalUser
///     properties:
///       accountName: sto2527
///       allowAclAuthorization: false
///       extendedGroups:
///         - 1001
///         - 1005
///         - 2005
///       groupId: 3000
///       hasSharedKey: false
///       hasSshKey: false
///       hasSshPassword: false
///       homeDirectory: homedirectory2
///       isNFSv3Enabled: true
///       resourceGroupName: res6977
///       username: user1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storage:LocalUser user1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/localUsers/{username}
/// ```
class LocalUser extends pulumi.CustomResource {
  /// Indicates whether ACL authorization is allowed for this user. Set it to false to disallow using ACL authorization.
  late final pulumi.Output<bool?> allowAclAuthorization;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Supplementary group membership. Only applicable for local users enabled for NFSv3 access.
  late final pulumi.Output<List<int>?> extendedGroups;

  /// An identifier for associating a group of users.
  late final pulumi.Output<int?> groupId;

  /// Indicates whether shared key exists. Set it to false to remove existing shared key.
  late final pulumi.Output<bool?> hasSharedKey;

  /// Indicates whether ssh key exists. Set it to false to remove existing SSH key.
  late final pulumi.Output<bool?> hasSshKey;

  /// Indicates whether ssh password exists. Set it to false to remove existing SSH password.
  late final pulumi.Output<bool?> hasSshPassword;

  /// Optional, local user home directory.
  late final pulumi.Output<String?> homeDirectory;

  /// Indicates if the local user is enabled for access with NFSv3 protocol.
  late final pulumi.Output<bool?> isNFSv3Enabled;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The permission scopes of the local user.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissionScopes;

  /// A unique Security Identifier that is generated by the server.
  late final pulumi.Output<String> sid;

  /// Optional, local user ssh authorized keys for SFTP.
  late final pulumi.Output<List<Map<String, dynamic>>?> sshAuthorizedKeys;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// A unique Identifier that is generated by the server.
  late final pulumi.Output<int> userId;

  /// Creates a new [LocalUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalUser]. {@macro pulumi_storage_local_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalUser(
    String name, {
    LocalUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storage:LocalUser',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowAclAuthorization = registerOutput<bool?>('allowAclAuthorization');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedGroups = registerOutput<List<int>?>('extendedGroups');
    groupId = registerOutput<int?>('groupId');
    hasSharedKey = registerOutput<bool?>('hasSharedKey');
    hasSshKey = registerOutput<bool?>('hasSshKey');
    hasSshPassword = registerOutput<bool?>('hasSshPassword');
    homeDirectory = registerOutput<String?>('homeDirectory');
    isNFSv3Enabled = registerOutput<bool?>('isNFSv3Enabled');
    this.name = registerOutput<String>('name');
    permissionScopes = registerOutput<List<Map<String, dynamic>>?>(
      'permissionScopes',
    );
    sid = registerOutput<String>('sid');
    sshAuthorizedKeys = registerOutput<List<Map<String, dynamic>>?>(
      'sshAuthorizedKeys',
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    userId = registerOutput<int>('userId');
  }
}
