import 'package:pulumi/pulumi.dart' as pulumi;
import 'ftp_user_args.dart';
import 'ftp_user_state.dart';
import 'ftp_user_storage_directory_mapping.dart';
import 'ftp_user_user_credential.dart';

/// A Storage FTP User resource supporting directory mappings and user credentials for an SFTP Server.
///
///
///
/// ## Example Usage
///
/// ### Storage Ftp User Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "sftp-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "sftp-sa",
///     displayName: "Storage FTP Service Account",
/// });
/// const server = new gcp.storage.FtpServer("server", {
///     location: "us-west1",
///     serverId: "sftp-srv",
///     displayName: "My SFTP Server",
///     accessType: "EXTERNAL",
///     externalConfig: {
///         allowedCidrBlocks: [
///             "192.168.1.0/24",
///             "10.0.0.0/8",
///         ],
///     },
/// });
/// const userFtp = new gcp.storage.FtpUser("user_ftp", {
///     location: "us-west1",
///     serverId: server.serverId,
///     userId: "sftp-user",
///     customerServiceAccount: sa.email,
///     storageDirectoryMappings: [
///         {
///             bucket: bucket.name,
///             bucketPrefix: "my-prefix-1",
///             directory: "/dir-1",
///             permission: "READ_ONLY",
///         },
///         {
///             bucket: bucket.name,
///             bucketPrefix: "my-prefix-2",
///             directory: "/dir-2",
///             permission: "READ_ONLY",
///         },
///     ],
///     userCredentials: [{
///         credentialName: "ssh-key-credential",
///         credentialType: "PUBLIC_KEY",
///         sshPublicKeyBody: "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPM4pxpbPpjuBocS6qlW0BHRYgH5xmv/yVrANZR9lc1N user@example.com",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="sftp-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="sftp-sa",
///     display_name="Storage FTP Service Account")
/// server = gcp.storage.FtpServer("server",
///     location="us-west1",
///     server_id="sftp-srv",
///     display_name="My SFTP Server",
///     access_type="EXTERNAL",
///     external_config={
///         "allowed_cidr_blocks": [
///             "192.168.1.0/24",
///             "10.0.0.0/8",
///         ],
///     })
/// user_ftp = gcp.storage.FtpUser("user_ftp",
///     location="us-west1",
///     server_id=server.server_id,
///     user_id="sftp-user",
///     customer_service_account=sa.email,
///     storage_directory_mappings=[
///         {
///             "bucket": bucket.name,
///             "bucket_prefix": "my-prefix-1",
///             "directory": "/dir-1",
///             "permission": "READ_ONLY",
///         },
///         {
///             "bucket": bucket.name,
///             "bucket_prefix": "my-prefix-2",
///             "directory": "/dir-2",
///             "permission": "READ_ONLY",
///         },
///     ],
///     user_credentials=[{
///         "credential_name": "ssh-key-credential",
///         "credential_type": "PUBLIC_KEY",
///         "ssh_public_key_body": "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPM4pxpbPpjuBocS6qlW0BHRYgH5xmv/yVrANZR9lc1N user@example.com",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "sftp-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "sftp-sa",
///         DisplayName = "Storage FTP Service Account",
///     });
///
///     var server = new Gcp.Storage.FtpServer("server", new()
///     {
///         Location = "us-west1",
///         ServerId = "sftp-srv",
///         DisplayName = "My SFTP Server",
///         AccessType = "EXTERNAL",
///         ExternalConfig = new Gcp.Storage.Inputs.FtpServerExternalConfigArgs
///         {
///             AllowedCidrBlocks = new[]
///             {
///                 "192.168.1.0/24",
///                 "10.0.0.0/8",
///             },
///         },
///     });
///
///     var userFtp = new Gcp.Storage.FtpUser("user_ftp", new()
///     {
///         Location = "us-west1",
///         ServerId = server.ServerId,
///         UserId = "sftp-user",
///         CustomerServiceAccount = sa.Email,
///         StorageDirectoryMappings = new[]
///         {
///             new Gcp.Storage.Inputs.FtpUserStorageDirectoryMappingArgs
///             {
///                 Bucket = bucket.Name,
///                 BucketPrefix = "my-prefix-1",
///                 Directory = "/dir-1",
///                 Permission = "READ_ONLY",
///             },
///             new Gcp.Storage.Inputs.FtpUserStorageDirectoryMappingArgs
///             {
///                 Bucket = bucket.Name,
///                 BucketPrefix = "my-prefix-2",
///                 Directory = "/dir-2",
///                 Permission = "READ_ONLY",
///             },
///         },
///         UserCredentials = new[]
///         {
///             new Gcp.Storage.Inputs.FtpUserUserCredentialArgs
///             {
///                 CredentialName = "ssh-key-credential",
///                 CredentialType = "PUBLIC_KEY",
///                 SshPublicKeyBody = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPM4pxpbPpjuBocS6qlW0BHRYgH5xmv/yVrANZR9lc1N user@example.com",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("sftp-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("sftp-sa"),
/// 			DisplayName: pulumi.String("Storage FTP Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		server, err := storage.NewFtpServer(ctx, "server", &storage.FtpServerArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			ServerId:    pulumi.String("sftp-srv"),
/// 			DisplayName: pulumi.String("My SFTP Server"),
/// 			AccessType:  pulumi.String("EXTERNAL"),
/// 			ExternalConfig: &storage.FtpServerExternalConfigArgs{
/// 				AllowedCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.1.0/24"),
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewFtpUser(ctx, "user_ftp", &storage.FtpUserArgs{
/// 			Location:               pulumi.String("us-west1"),
/// 			ServerId:               server.ServerId,
/// 			UserId:                 pulumi.String("sftp-user"),
/// 			CustomerServiceAccount: sa.Email,
/// 			StorageDirectoryMappings: storage.FtpUserStorageDirectoryMappingArray{
/// 				&storage.FtpUserStorageDirectoryMappingArgs{
/// 					Bucket:       bucket.Name,
/// 					BucketPrefix: pulumi.String("my-prefix-1"),
/// 					Directory:    pulumi.String("/dir-1"),
/// 					Permission:   pulumi.String("READ_ONLY"),
/// 				},
/// 				&storage.FtpUserStorageDirectoryMappingArgs{
/// 					Bucket:       bucket.Name,
/// 					BucketPrefix: pulumi.String("my-prefix-2"),
/// 					Directory:    pulumi.String("/dir-2"),
/// 					Permission:   pulumi.String("READ_ONLY"),
/// 				},
/// 			},
/// 			UserCredentials: storage.FtpUserUserCredentialArray{
/// 				&storage.FtpUserUserCredentialArgs{
/// 					CredentialName:   pulumi.String("ssh-key-credential"),
/// 					CredentialType:   pulumi.String("PUBLIC_KEY"),
/// 					SshPublicKeyBody: pulumi.String("ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPM4pxpbPpjuBocS6qlW0BHRYgH5xmv/yVrANZR9lc1N user@example.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "sftp-bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_serviceaccount_account" "sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "sftp-sa"
///   display_name = "Storage FTP Service Account"
/// }
/// resource "gcp_storage_ftp_server" "server" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "us-west1"
///   server_id    = "sftp-srv"
///   display_name = "My SFTP Server"
///   access_type  = "EXTERNAL"
///   external_config = {
///     allowed_cidr_blocks = ["192.168.1.0/24", "10.0.0.0/8"]
///   }
/// }
/// resource "gcp_storage_ftp_user" "user_ftp" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                 = "us-west1"
///   server_id                = gcp_storage_ftp_server.server.server_id
///   user_id                  = "sftp-user"
///   customer_service_account = gcp_serviceaccount_account.sa.email
///   storage_directory_mappings {
///     bucket        = gcp_storage_bucket.bucket.name
///     bucket_prefix = "my-prefix-1"
///     directory     = "/dir-1"
///     permission    = "READ_ONLY"
///   }
///   storage_directory_mappings {
///     bucket        = gcp_storage_bucket.bucket.name
///     bucket_prefix = "my-prefix-2"
///     directory     = "/dir-2"
///     permission    = "READ_ONLY"
///   }
///   user_credentials {
///     credential_name     = "ssh-key-credential"
///     credential_type     = "PUBLIC_KEY"
///     ssh_public_key_body = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPM4pxpbPpjuBocS6qlW0BHRYgH5xmv/yVrANZR9lc1N user@example.com"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.storage.FtpServer;
/// import com.pulumi.gcp.storage.FtpServerArgs;
/// import com.pulumi.gcp.storage.inputs.FtpServerExternalConfigArgs;
/// import com.pulumi.gcp.storage.FtpUser;
/// import com.pulumi.gcp.storage.FtpUserArgs;
/// import com.pulumi.gcp.storage.inputs.FtpUserStorageDirectoryMappingArgs;
/// import com.pulumi.gcp.storage.inputs.FtpUserUserCredentialArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("sftp-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("sftp-sa")
///             .displayName("Storage FTP Service Account")
///             .build());
///
///         var server = new FtpServer("server", FtpServerArgs.builder()
///             .location("us-west1")
///             .serverId("sftp-srv")
///             .displayName("My SFTP Server")
///             .accessType("EXTERNAL")
///             .externalConfig(FtpServerExternalConfigArgs.builder()
///                 .allowedCidrBlocks(
///                     "192.168.1.0/24",
///                     "10.0.0.0/8")
///                 .build())
///             .build());
///
///         var userFtp = new FtpUser("userFtp", FtpUserArgs.builder()
///             .location("us-west1")
///             .serverId(server.serverId())
///             .userId("sftp-user")
///             .customerServiceAccount(sa.email())
///             .storageDirectoryMappings(
///                 FtpUserStorageDirectoryMappingArgs.builder()
///                     .bucket(bucket.name())
///                     .bucketPrefix("my-prefix-1")
///                     .directory("/dir-1")
///                     .permission("READ_ONLY")
///                     .build(),
///                 FtpUserStorageDirectoryMappingArgs.builder()
///                     .bucket(bucket.name())
///                     .bucketPrefix("my-prefix-2")
///                     .directory("/dir-2")
///                     .permission("READ_ONLY")
///                     .build())
///             .userCredentials(FtpUserUserCredentialArgs.builder()
///                 .credentialName("ssh-key-credential")
///                 .credentialType("PUBLIC_KEY")
///                 .sshPublicKeyBody("ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPM4pxpbPpjuBocS6qlW0BHRYgH5xmv/yVrANZR9lc1N user@example.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: sftp-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: sftp-sa
///       displayName: Storage FTP Service Account
///   server:
///     type: gcp:storage:FtpServer
///     properties:
///       location: us-west1
///       serverId: sftp-srv
///       displayName: My SFTP Server
///       accessType: EXTERNAL
///       externalConfig:
///         allowedCidrBlocks:
///           - 192.168.1.0/24
///           - 10.0.0.0/8
///   userFtp:
///     type: gcp:storage:FtpUser
///     name: user_ftp
///     properties:
///       location: us-west1
///       serverId: ${server.serverId}
///       userId: sftp-user
///       customerServiceAccount: ${sa.email}
///       storageDirectoryMappings:
///         - bucket: ${bucket.name}
///           bucketPrefix: my-prefix-1
///           directory: /dir-1
///           permission: READ_ONLY
///         - bucket: ${bucket.name}
///           bucketPrefix: my-prefix-2
///           directory: /dir-2
///           permission: READ_ONLY
///       userCredentials:
///         - credentialName: ssh-key-credential
///           credentialType: PUBLIC_KEY
///           sshPublicKeyBody: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPM4pxpbPpjuBocS6qlW0BHRYgH5xmv/yVrANZR9lc1N user@example.com
/// ```
///
///
/// ## Import
///
/// User can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/servers/{{server_id}}/users/{{user_id}}`
/// * `{{project}}/{{location}}/{{server_id}}/{{user_id}}`
/// * `{{location}}/{{server_id}}/{{user_id}}`
///
///
/// When using the `pulumi import` command, User can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/ftpUser:FtpUser default projects/{{project}}/locations/{{location}}/servers/{{server_id}}/users/{{user_id}}
/// $ pulumi import gcp:storage/ftpUser:FtpUser default {{project}}/{{location}}/{{server_id}}/{{user_id}}
/// $ pulumi import gcp:storage/ftpUser:FtpUser default {{location}}/{{server_id}}/{{user_id}}
/// ```
class FtpUser extends pulumi.CustomResource {
  /// The email address of the service account associated with the user.
  late final pulumi.Output<String> customerServiceAccount;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Resource labels that can contain user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location (region) of the Storage FTP User.
  late final pulumi.Output<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The ID of the server.
  late final pulumi.Output<String> serverId;
  /// The provisioning status of the user.
  late final pulumi.Output<String> state;
  /// Directory mappings for the Storage FTP user.
  /// Structure is documented below.
  late final pulumi.Output<List<FtpUserStorageDirectoryMapping>?> storageDirectoryMappings;
  /// The credentials associated with the user.
  /// Structure is documented below.
  late final pulumi.Output<List<FtpUserUserCredential>?> userCredentials;
  /// The unique ID for the user.
  late final pulumi.Output<String> userId;
  /// The SFTP login username for the user.
  late final pulumi.Output<String> username;

  /// Creates a new [FtpUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FtpUser]. {@macro pulumi_storage_ftp_user_ftp_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FtpUser(
    String name, {
    FtpUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/ftpUser:FtpUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    customerServiceAccount = registerOutput<String>('customerServiceAccount');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serverId = registerOutput<String>('serverId');
    state = registerOutput<String>('state');
    storageDirectoryMappings = registerOutput<List<FtpUserStorageDirectoryMapping>?>('storageDirectoryMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FtpUserStorageDirectoryMapping>(guardedValue, (value) => FtpUserStorageDirectoryMapping.fromMap((value as Map).cast<String, dynamic>())); });
    userCredentials = registerOutput<List<FtpUserUserCredential>?>('userCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FtpUserUserCredential>(guardedValue, (value) => FtpUserUserCredential.fromMap((value as Map).cast<String, dynamic>())); });
    userId = registerOutput<String>('userId');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [FtpUser] resource's state with the given [name] and [id].
  static FtpUser get(
    String name,
    pulumi.Input<String> id, {
    FtpUserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FtpUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FtpUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/ftpUser:FtpUser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customerServiceAccount = registerOutput<String>('customerServiceAccount');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serverId = registerOutput<String>('serverId');
    this.state = registerOutput<String>('state');
    storageDirectoryMappings = registerOutput<List<FtpUserStorageDirectoryMapping>?>('storageDirectoryMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FtpUserStorageDirectoryMapping>(guardedValue, (value) => FtpUserStorageDirectoryMapping.fromMap((value as Map).cast<String, dynamic>())); });
    userCredentials = registerOutput<List<FtpUserUserCredential>?>('userCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FtpUserUserCredential>(guardedValue, (value) => FtpUserUserCredential.fromMap((value as Map).cast<String, dynamic>())); });
    userId = registerOutput<String>('userId');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [FtpUser] resource.
  FtpUser.reference(String urn)
    : super(
        'gcp:storage/ftpUser:FtpUser',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    customerServiceAccount = registerOutput<String>('customerServiceAccount');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serverId = registerOutput<String>('serverId');
    state = registerOutput<String>('state');
    storageDirectoryMappings = registerOutput<List<FtpUserStorageDirectoryMapping>?>('storageDirectoryMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FtpUserStorageDirectoryMapping>(guardedValue, (value) => FtpUserStorageDirectoryMapping.fromMap((value as Map).cast<String, dynamic>())); });
    userCredentials = registerOutput<List<FtpUserUserCredential>?>('userCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FtpUserUserCredential>(guardedValue, (value) => FtpUserUserCredential.fromMap((value as Map).cast<String, dynamic>())); });
    userId = registerOutput<String>('userId');
    username = registerOutput<String>('username');
  }
}
