// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_type.dart';
import 'environment_variable.dart';
import 'volume_mount.dart';

/// {@template pulumi_web_web_app_site_container_slot_args_doc}
/// The set of arguments for WebAppSiteContainerSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_site_container_slot_args_doc}
class WebAppSiteContainerSlotArgs {
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
  /// Name of the deployment slot. If a slot is not specified, the API will create the container for the production slot.
  final pulumi.Input<String> slot;
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

  /// Creates a new [WebAppSiteContainerSlotArgs].
  /// [authType] Auth Type
  /// [containerName] Site Container Name
  /// [environmentVariables] List of environment variables
  /// [image] Image Name
  /// [isMain] <code>true</code> if the container is the main site container; <code>false</code> otherwise.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [passwordSecret] Password Secret
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will create the container for the production slot.
  /// [startUpCommand] StartUp Command
  /// [targetPort] Target Port
  /// [userManagedIdentityClientId] UserManagedIdentity ClientId
  /// [userName] User Name
  /// [volumeMounts] List of volume mounts
  WebAppSiteContainerSlotArgs({
    pulumi.Output<AuthType>? authType,
    pulumi.Output<String>? containerName,
    pulumi.Output<List<EnvironmentVariable>>? environmentVariables,
    required pulumi.Output<String> image,
    required pulumi.Output<bool> isMain,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    pulumi.Output<String>? passwordSecret,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
    pulumi.Output<String>? startUpCommand,
    pulumi.Output<String>? targetPort,
    pulumi.Output<String>? userManagedIdentityClientId,
    pulumi.Output<String>? userName,
    pulumi.Output<List<VolumeMount>>? volumeMounts,
  }) :
      authType = pulumi.Input.asOptionalInput<AuthType>(authType),
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      environmentVariables = pulumi.Input.asOptionalInput<List<EnvironmentVariable>>(environmentVariables),
      image = pulumi.Input.asInput<String>(image),
      isMain = pulumi.Input.asInput<bool>(isMain),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      passwordSecret = pulumi.Input.asOptionalInput<String>(passwordSecret),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot),
      startUpCommand = pulumi.Input.asOptionalInput<String>(startUpCommand),
      targetPort = pulumi.Input.asOptionalInput<String>(targetPort),
      userManagedIdentityClientId = pulumi.Input.asOptionalInput<String>(userManagedIdentityClientId),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      volumeMounts = pulumi.Input.asOptionalInput<List<VolumeMount>>(volumeMounts);

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
      'slot': slot,
      'startUpCommand': ?startUpCommand,
      'targetPort': ?targetPort,
      'userManagedIdentityClientId': ?userManagedIdentityClientId,
      'userName': ?userName,
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAppSiteContainerSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSiteContainerSlotArgs(
      authType: map['authType'] == null ? null : pulumi.Output.create<AuthType>(AuthType.fromValue(map['authType'] as String)),
      containerName: map['containerName'] == null ? null : pulumi.Output.create<String>(map['containerName'] as String),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<List<EnvironmentVariable>>(pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))),
      image: pulumi.Output.create<String>(map['image'] as String),
      isMain: pulumi.Output.create<bool>(map['isMain'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      passwordSecret: map['passwordSecret'] == null ? null : pulumi.Output.create<String>(map['passwordSecret'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
      startUpCommand: map['startUpCommand'] == null ? null : pulumi.Output.create<String>(map['startUpCommand'] as String),
      targetPort: map['targetPort'] == null ? null : pulumi.Output.create<String>(map['targetPort'] as String),
      userManagedIdentityClientId: map['userManagedIdentityClientId'] == null ? null : pulumi.Output.create<String>(map['userManagedIdentityClientId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Output.create<List<VolumeMount>>(pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

