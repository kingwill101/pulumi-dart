// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_type.dart';
import 'environment_variable.dart';
import 'volume_mount.dart';

/// {@template pulumi_web_web_app_site_container_args_doc}
/// The set of arguments for WebAppSiteContainer.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_site_container_args_doc}
class WebAppSiteContainerArgs {
  /// Auth Type
  final pulumi.Input<AuthType>? authType;
  /// Site Container Name
  final pulumi.Input<String>? containerName;
  /// List of environment variables
  final pulumi.Input<List<EnvironmentVariable>>? environmentVariables;
  /// Image Name
  final pulumi.Input<String> image;
  /// <code>true</code> if the container is the main site container; <code>false</code> otherwise.
  final pulumi.Input<bool> isMain;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Password Secret
  final pulumi.Input<String>? passwordSecret;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// StartUp Command
  final pulumi.Input<String>? startUpCommand;
  /// Target Port
  final pulumi.Input<String>? targetPort;
  /// UserManagedIdentity ClientId
  final pulumi.Input<String>? userManagedIdentityClientId;
  /// User Name
  final pulumi.Input<String>? userName;
  /// List of volume mounts
  final pulumi.Input<List<VolumeMount>>? volumeMounts;

  /// Creates a new [WebAppSiteContainerArgs].
  /// [authType] Auth Type
  /// [containerName] Site Container Name
  /// [environmentVariables] List of environment variables
  /// [image] Image Name
  /// [isMain] <code>true</code> if the container is the main site container; <code>false</code> otherwise.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [passwordSecret] Password Secret
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [startUpCommand] StartUp Command
  /// [targetPort] Target Port
  /// [userManagedIdentityClientId] UserManagedIdentity ClientId
  /// [userName] User Name
  /// [volumeMounts] List of volume mounts
  WebAppSiteContainerArgs({
    this.authType,
    this.containerName,
    this.environmentVariables,
    required this.image,
    required this.isMain,
    this.kind,
    required this.name,
    this.passwordSecret,
    required this.resourceGroupName,
    this.startUpCommand,
    this.targetPort,
    this.userManagedIdentityClientId,
    this.userName,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?pulumi.Input.mapOptionalInputValue<AuthType, String>(authType, (value) => value.value),
      'containerName': ?containerName,
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'isMain': isMain,
      'kind': ?kind,
      'name': name,
      'passwordSecret': ?passwordSecret,
      'resourceGroupName': resourceGroupName,
      'startUpCommand': ?startUpCommand,
      'targetPort': ?targetPort,
      'userManagedIdentityClientId': ?userManagedIdentityClientId,
      'userName': ?userName,
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAppSiteContainerArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSiteContainerArgs(
      authType: map['authType'] == null ? null : (AuthType.fromValue(map['authType'] as String)).input(),
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      isMain: (map['isMain'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      passwordSecret: map['passwordSecret'] == null ? null : (map['passwordSecret'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      startUpCommand: map['startUpCommand'] == null ? null : (map['startUpCommand'] as String).input(),
      targetPort: map['targetPort'] == null ? null : (map['targetPort'] as String).input(),
      userManagedIdentityClientId: map['userManagedIdentityClientId'] == null ? null : (map['userManagedIdentityClientId'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

