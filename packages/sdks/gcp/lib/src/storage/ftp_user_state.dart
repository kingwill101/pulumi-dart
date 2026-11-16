// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ftp_user_storage_directory_mapping.dart';
import 'ftp_user_user_credential.dart';

/// Input properties used for looking up and filtering FtpUser resources.
class FtpUserState {
  /// The email address of the service account associated with the user.
  final pulumi.Input<String?>? customerServiceAccount;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Resource labels that can contain user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location (region) of the Storage FTP User.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The ID of the server.
  final pulumi.Input<String?>? serverId;
  /// The provisioning status of the user.
  final pulumi.Input<String?>? state;
  /// Directory mappings for the Storage FTP user.
  /// Structure is documented below.
  final pulumi.Input<List<FtpUserStorageDirectoryMapping>?>? storageDirectoryMappings;
  /// The credentials associated with the user.
  /// Structure is documented below.
  final pulumi.Input<List<FtpUserUserCredential>?>? userCredentials;
  /// The unique ID for the user.
  final pulumi.Input<String?>? userId;
  /// The SFTP login username for the user.
  final pulumi.Input<String?>? username;

  /// Creates a new [FtpUserState].
  /// [customerServiceAccount] The email address of the service account associated with the user.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels that can contain user-provided metadata.
  /// [location] The location (region) of the Storage FTP User.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serverId] The ID of the server.
  /// [state] The provisioning status of the user.
  /// [storageDirectoryMappings] Directory mappings for the Storage FTP user.
  /// [userCredentials] The credentials associated with the user.
  /// [userId] The unique ID for the user.
  /// [username] The SFTP login username for the user.
  const FtpUserState({
    this.customerServiceAccount,
    this.deletionPolicy,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.project,
    this.pulumiLabels,
    this.serverId,
    this.state,
    this.storageDirectoryMappings,
    this.userCredentials,
    this.userId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerServiceAccount': ?customerServiceAccount,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serverId': ?serverId,
      'state': ?state,
      'storageDirectoryMappings': ?pulumi.Input.mapOptionalInputValue<List<FtpUserStorageDirectoryMapping>, List<Map<String, dynamic>>>(storageDirectoryMappings, (value) => pulumi.Input.encodeList<FtpUserStorageDirectoryMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userCredentials': ?pulumi.Input.mapOptionalInputValue<List<FtpUserUserCredential>, List<Map<String, dynamic>>>(userCredentials, (value) => pulumi.Input.encodeList<FtpUserUserCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userId': ?userId,
      'username': ?username,
    };
  }

  factory FtpUserState.fromMap(Map<String, dynamic> map) {
    return FtpUserState(
      customerServiceAccount: (() { final guardedValue = map['customerServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageDirectoryMappings: (() { final guardedValue = map['storageDirectoryMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FtpUserStorageDirectoryMapping>(guardedValue, (value) => FtpUserStorageDirectoryMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userCredentials: (() { final guardedValue = map['userCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FtpUserUserCredential>(guardedValue, (value) => FtpUserUserCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
