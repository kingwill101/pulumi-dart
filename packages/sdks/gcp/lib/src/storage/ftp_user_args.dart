// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ftp_user_storage_directory_mapping.dart';
import 'ftp_user_user_credential.dart';

/// {@template pulumi_storage_ftp_user_ftp_user_args_doc}
/// The set of arguments for FtpUser.
/// {@endtemplate}
/// {@macro pulumi_storage_ftp_user_ftp_user_args_doc}
class FtpUserArgs {
  /// The email address of the service account associated with the user.
  final pulumi.Input<String> customerServiceAccount;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Resource labels that can contain user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location (region) of the Storage FTP User.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the server.
  final pulumi.Input<String> serverId;
  /// Directory mappings for the Storage FTP user.
  /// Structure is documented below.
  final pulumi.Input<List<FtpUserStorageDirectoryMapping>?>? storageDirectoryMappings;
  /// The credentials associated with the user.
  /// Structure is documented below.
  final pulumi.Input<List<FtpUserUserCredential>?>? userCredentials;
  /// The unique ID for the user.
  final pulumi.Input<String> userId;

  /// Creates a new [FtpUserArgs].
  /// [customerServiceAccount] The email address of the service account associated with the user.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Resource labels that can contain user-provided metadata.
  /// [location] The location (region) of the Storage FTP User.
  /// [project] The ID of the project in which the resource belongs.
  /// [serverId] The ID of the server.
  /// [storageDirectoryMappings] Directory mappings for the Storage FTP user.
  /// [userCredentials] The credentials associated with the user.
  /// [userId] The unique ID for the user.
  const FtpUserArgs({
    required this.customerServiceAccount,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.project,
    required this.serverId,
    this.storageDirectoryMappings,
    this.userCredentials,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerServiceAccount': customerServiceAccount,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'serverId': serverId,
      'storageDirectoryMappings': ?pulumi.Input.mapOptionalInputValue<List<FtpUserStorageDirectoryMapping>, List<Map<String, dynamic>>>(storageDirectoryMappings, (value) => pulumi.Input.encodeList<FtpUserStorageDirectoryMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userCredentials': ?pulumi.Input.mapOptionalInputValue<List<FtpUserUserCredential>, List<Map<String, dynamic>>>(userCredentials, (value) => pulumi.Input.encodeList<FtpUserUserCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userId': userId,
    };
  }

  factory FtpUserArgs.fromMap(Map<String, dynamic> map) {
    return FtpUserArgs(
      customerServiceAccount: pulumi.Input.fromValue(map['customerServiceAccount'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      storageDirectoryMappings: (() { final guardedValue = map['storageDirectoryMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FtpUserStorageDirectoryMapping>(guardedValue, (value) => FtpUserStorageDirectoryMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userCredentials: (() { final guardedValue = map['userCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FtpUserUserCredential>(guardedValue, (value) => FtpUserUserCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
