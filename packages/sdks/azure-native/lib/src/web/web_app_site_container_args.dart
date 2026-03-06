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
  /// &lt;code&gt;true&lt;/code&gt; if the container is the main site container; &lt;code&gt;false&lt;/code&gt; otherwise.
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
  /// [isMain] &lt;code&gt;true&lt;/code&gt; if the container is the main site container; &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [passwordSecret] Password Secret
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [startUpCommand] StartUp Command
  /// [targetPort] Target Port
  /// [userManagedIdentityClientId] UserManagedIdentity ClientId
  /// [userName] User Name
  /// [volumeMounts] List of volume mounts
  const WebAppSiteContainerArgs({
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
      'authType': ?pulumi.Input.mapOptionalInputValue<AuthType, String>(authType, (value) => value.wireValue),
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
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthType.fromValue(guardedValue as String)); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      isMain: pulumi.Input.fromValue(map['isMain'] as bool),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      passwordSecret: (() { final guardedValue = map['passwordSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startUpCommand: (() { final guardedValue = map['startUpCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPort: (() { final guardedValue = map['targetPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userManagedIdentityClientId: (() { final guardedValue = map['userManagedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMount>(guardedValue, (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

