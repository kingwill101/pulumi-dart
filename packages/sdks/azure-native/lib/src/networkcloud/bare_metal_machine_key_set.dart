import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_machine_key_set_args.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update bare metal machine key set of cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bareMetalMachineKeySet = new AzureNative.NetworkCloud.BareMetalMachineKeySet("bareMetalMachineKeySet", new()
///     {
///         AzureGroupId = "f110271b-XXXX-4163-9b99-214d91660f0e",
///         BareMetalMachineKeySetName = "bareMetalMachineKeySetName",
///         ClusterName = "clusterName",
///         Expiration = "2022-12-31T23:59:59.008Z",
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         JumpHostsAllowed = new[]
///         {
///             "192.0.2.1",
///             "192.0.2.5",
///         },
///         Location = "location",
///         OsGroupName = "standardAccessGroup",
///         PrivilegeLevel = AzureNative.NetworkCloud.BareMetalMachineKeySetPrivilegeLevel.Standard,
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
///         UserList = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.KeySetUserArgs
///             {
///                 AzureUserName = "userABC",
///                 Description = "Needs access for troubleshooting as a part of the support team",
///                 SshPublicKey = new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///                 {
///                     KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///                 },
///                 UserPrincipalName = "userABC@contoso.com",
///             },
///             new AzureNative.NetworkCloud.Inputs.KeySetUserArgs
///             {
///                 AzureUserName = "userXYZ",
///                 Description = "Needs access for troubleshooting as a part of the support team",
///                 SshPublicKey = new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///                 {
///                     KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///                 },
///                 UserPrincipalName = "userABC@contoso.com",
///             },
///         },
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
/// 	networkcloud "github.com/pulumi/pulumi-azure-native-sdk/networkcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkcloud.NewBareMetalMachineKeySet(ctx, "bareMetalMachineKeySet", &networkcloud.BareMetalMachineKeySetArgs{
/// 			AzureGroupId:               pulumi.String("f110271b-XXXX-4163-9b99-214d91660f0e"),
/// 			BareMetalMachineKeySetName: pulumi.String("bareMetalMachineKeySetName"),
/// 			ClusterName:                pulumi.String("clusterName"),
/// 			Expiration:                 pulumi.String("2022-12-31T23:59:59.008Z"),
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			JumpHostsAllowed: pulumi.StringArray{
/// 				pulumi.String("192.0.2.1"),
/// 				pulumi.String("192.0.2.5"),
/// 			},
/// 			Location:          pulumi.String("location"),
/// 			OsGroupName:       pulumi.String("standardAccessGroup"),
/// 			PrivilegeLevel:    pulumi.String(networkcloud.BareMetalMachineKeySetPrivilegeLevelStandard),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
/// 			UserList: networkcloud.KeySetUserArray{
/// 				&networkcloud.KeySetUserArgs{
/// 					AzureUserName: pulumi.String("userABC"),
/// 					Description:   pulumi.String("Needs access for troubleshooting as a part of the support team"),
/// 					SshPublicKey: &networkcloud.SshPublicKeyArgs{
/// 						KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 					},
/// 					UserPrincipalName: pulumi.String("userABC@contoso.com"),
/// 				},
/// 				&networkcloud.KeySetUserArgs{
/// 					AzureUserName: pulumi.String("userXYZ"),
/// 					Description:   pulumi.String("Needs access for troubleshooting as a part of the support team"),
/// 					SshPublicKey: &networkcloud.SshPublicKeyArgs{
/// 						KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 					},
/// 					UserPrincipalName: pulumi.String("userABC@contoso.com"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.networkcloud.BareMetalMachineKeySet;
/// import com.pulumi.azurenative.networkcloud.BareMetalMachineKeySetArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.KeySetUserArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.SshPublicKeyArgs;
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
///         var bareMetalMachineKeySet = new BareMetalMachineKeySet("bareMetalMachineKeySet", BareMetalMachineKeySetArgs.builder()
///             .azureGroupId("f110271b-XXXX-4163-9b99-214d91660f0e")
///             .bareMetalMachineKeySetName("bareMetalMachineKeySetName")
///             .clusterName("clusterName")
///             .expiration("2022-12-31T23:59:59.008Z")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .jumpHostsAllowed(
///                 "192.0.2.1",
///                 "192.0.2.5")
///             .location("location")
///             .osGroupName("standardAccessGroup")
///             .privilegeLevel("Standard")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
///             .userList(
///                 KeySetUserArgs.builder()
///                     .azureUserName("userABC")
///                     .description("Needs access for troubleshooting as a part of the support team")
///                     .sshPublicKey(SshPublicKeyArgs.builder()
///                         .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                         .build())
///                     .userPrincipalName("userABC@contoso.com")
///                     .build(),
///                 KeySetUserArgs.builder()
///                     .azureUserName("userXYZ")
///                     .description("Needs access for troubleshooting as a part of the support team")
///                     .sshPublicKey(SshPublicKeyArgs.builder()
///                         .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                         .build())
///                     .userPrincipalName("userABC@contoso.com")
///                     .build())
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
/// const bareMetalMachineKeySet = new azure_native.networkcloud.BareMetalMachineKeySet("bareMetalMachineKeySet", {
///     azureGroupId: "f110271b-XXXX-4163-9b99-214d91660f0e",
///     bareMetalMachineKeySetName: "bareMetalMachineKeySetName",
///     clusterName: "clusterName",
///     expiration: "2022-12-31T23:59:59.008Z",
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     jumpHostsAllowed: [
///         "192.0.2.1",
///         "192.0.2.5",
///     ],
///     location: "location",
///     osGroupName: "standardAccessGroup",
///     privilegeLevel: azure_native.networkcloud.BareMetalMachineKeySetPrivilegeLevel.Standard,
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
///     userList: [
///         {
///             azureUserName: "userABC",
///             description: "Needs access for troubleshooting as a part of the support team",
///             sshPublicKey: {
///                 keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             },
///             userPrincipalName: "userABC@contoso.com",
///         },
///         {
///             azureUserName: "userXYZ",
///             description: "Needs access for troubleshooting as a part of the support team",
///             sshPublicKey: {
///                 keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             },
///             userPrincipalName: "userABC@contoso.com",
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bare_metal_machine_key_set = azure_native.networkcloud.BareMetalMachineKeySet("bareMetalMachineKeySet",
///     azure_group_id="f110271b-XXXX-4163-9b99-214d91660f0e",
///     bare_metal_machine_key_set_name="bareMetalMachineKeySetName",
///     cluster_name="clusterName",
///     expiration="2022-12-31T23:59:59.008Z",
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     jump_hosts_allowed=[
///         "192.0.2.1",
///         "192.0.2.5",
///     ],
///     location="location",
///     os_group_name="standardAccessGroup",
///     privilege_level=azure_native.networkcloud.BareMetalMachineKeySetPrivilegeLevel.STANDARD,
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     },
///     user_list=[
///         {
///             "azure_user_name": "userABC",
///             "description": "Needs access for troubleshooting as a part of the support team",
///             "ssh_public_key": {
///                 "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             },
///             "user_principal_name": "userABC@contoso.com",
///         },
///         {
///             "azure_user_name": "userXYZ",
///             "description": "Needs access for troubleshooting as a part of the support team",
///             "ssh_public_key": {
///                 "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             },
///             "user_principal_name": "userABC@contoso.com",
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   bareMetalMachineKeySet:
///     type: azure-native:networkcloud:BareMetalMachineKeySet
///     properties:
///       azureGroupId: f110271b-XXXX-4163-9b99-214d91660f0e
///       bareMetalMachineKeySetName: bareMetalMachineKeySetName
///       clusterName: clusterName
///       expiration: 2022-12-31T23:59:59.008Z
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       jumpHostsAllowed:
///         - 192.0.2.1
///         - 192.0.2.5
///       location: location
///       osGroupName: standardAccessGroup
///       privilegeLevel: Standard
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
///       userList:
///         - azureUserName: userABC
///           description: Needs access for troubleshooting as a part of the support team
///           sshPublicKey:
///             keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///           userPrincipalName: userABC@contoso.com
///         - azureUserName: userXYZ
///           description: Needs access for troubleshooting as a part of the support team
///           sshPublicKey:
///             keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///           userPrincipalName: userABC@contoso.com
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
/// $ pulumi import azure-native:networkcloud:BareMetalMachineKeySet bareMetalMachineKeySetName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/clusters/{clusterName}/bareMetalMachineKeySets/{bareMetalMachineKeySetName}
/// ```
class BareMetalMachineKeySet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The object ID of Azure Active Directory group that all users in the list must be in for access to be granted. Users that are not in the group will not have access.
  late final pulumi.Output<String> azureGroupId;

  /// The more detailed status of the key set.
  late final pulumi.Output<String> detailedStatus;

  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;

  /// Resource ETag.
  late final pulumi.Output<String> etag;

  /// The date and time after which the users in this key set will be removed from the bare metal machines.
  late final pulumi.Output<String> expiration;

  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// The list of IP addresses of jump hosts with management network access from which a login will be allowed for the users.
  late final pulumi.Output<List<String>> jumpHostsAllowed;

  /// The last time this key set was validated.
  late final pulumi.Output<String> lastValidation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The name of the group that users will be assigned to on the operating system of the machines.
  late final pulumi.Output<String?> osGroupName;

  /// The access level allowed for the users in this key set.
  late final pulumi.Output<String> privilegeLevel;

  /// The provisioning state of the bare metal machine key set.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The unique list of permitted users.
  late final pulumi.Output<List<Map<String, dynamic>>> userList;

  /// The status evaluation of each user.
  late final pulumi.Output<List<Map<String, dynamic>>> userListStatus;

  /// Creates a new [BareMetalMachineKeySet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalMachineKeySet]. {@macro pulumi_networkcloud_bare_metal_machine_key_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalMachineKeySet(
    String name, {
    BareMetalMachineKeySetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:networkcloud:BareMetalMachineKeySet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureGroupId = registerOutput<String>('azureGroupId');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    expiration = registerOutput<String>('expiration');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
    );
    jumpHostsAllowed = registerOutput<List<String>>('jumpHostsAllowed');
    lastValidation = registerOutput<String>('lastValidation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osGroupName = registerOutput<String?>('osGroupName');
    privilegeLevel = registerOutput<String>('privilegeLevel');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    userList = registerOutput<List<Map<String, dynamic>>>('userList');
    userListStatus = registerOutput<List<Map<String, dynamic>>>(
      'userListStatus',
    );
  }
}
