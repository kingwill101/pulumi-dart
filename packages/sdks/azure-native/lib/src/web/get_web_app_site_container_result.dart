// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_response.dart';
import 'system_data_response.dart';
import 'volume_mount_response.dart';

/// Result data returned by getWebAppSiteContainer.
class GetWebAppSiteContainerResult {
  /// Auth Type
  final String? authType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Created Time
  final String createdTime;
  /// List of environment variables
  final List<EnvironmentVariableResponse>? environmentVariables;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Image Name
  final String image;
  /// &lt;code&gt;true&lt;/code&gt; if all AppSettings and ConnectionStrings have to be passed to the container as environment variables; &lt;code&gt;false&lt;/code&gt; otherwise.
  final bool? inheritAppSettingsAndConnectionStrings;
  /// &lt;code&gt;true&lt;/code&gt; if the container is the main site container; &lt;code&gt;false&lt;/code&gt; otherwise.
  final bool isMain;
  /// Kind of resource.
  final String? kind;
  /// Last Modified Time
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Password Secret
  final String? passwordSecret;
  /// StartUp Command
  final String? startUpCommand;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Target Port
  final String? targetPort;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// UserManagedIdentity ClientId
  final String? userManagedIdentityClientId;
  /// User Name
  final String? userName;
  /// List of volume mounts
  final List<VolumeMountResponse>? volumeMounts;

  /// Creates a new [GetWebAppSiteContainerResult].
  /// [authType] Auth Type
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTime] Created Time
  /// [environmentVariables] List of environment variables
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [image] Image Name
  /// [inheritAppSettingsAndConnectionStrings] &lt;code&gt;true&lt;/code&gt; if all AppSettings and ConnectionStrings have to be passed to the container as environment variables; &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [isMain] &lt;code&gt;true&lt;/code&gt; if the container is the main site container; &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [kind] Kind of resource.
  /// [lastModifiedTime] Last Modified Time
  /// [name] The name of the resource
  /// [passwordSecret] Password Secret
  /// [startUpCommand] StartUp Command
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetPort] Target Port
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userManagedIdentityClientId] UserManagedIdentity ClientId
  /// [userName] User Name
  /// [volumeMounts] List of volume mounts
  const GetWebAppSiteContainerResult({
    this.authType,
    required this.azureApiVersion,
    required this.createdTime,
    this.environmentVariables,
    required this.id,
    required this.image,
    this.inheritAppSettingsAndConnectionStrings,
    required this.isMain,
    this.kind,
    required this.lastModifiedTime,
    required this.name,
    this.passwordSecret,
    this.startUpCommand,
    required this.systemData,
    this.targetPort,
    required this.type,
    this.userManagedIdentityClientId,
    this.userName,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'azureApiVersion': azureApiVersion,
      'createdTime': createdTime,
      'environmentVariables': ?(() { final guardedValue = environmentVariables; if (guardedValue == null) return null; return pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'image': image,
      'inheritAppSettingsAndConnectionStrings': ?inheritAppSettingsAndConnectionStrings,
      'isMain': isMain,
      'kind': ?kind,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'passwordSecret': ?passwordSecret,
      'startUpCommand': ?startUpCommand,
      'systemData': systemData.toMap(),
      'targetPort': ?targetPort,
      'type': type,
      'userManagedIdentityClientId': ?userManagedIdentityClientId,
      'userName': ?userName,
      'volumeMounts': ?(() { final guardedValue = volumeMounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWebAppSiteContainerResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteContainerResult(
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdTime: map['createdTime'] as String,
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentVariableResponse>(guardedValue, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      image: map['image'] as String,
      inheritAppSettingsAndConnectionStrings: (() { final guardedValue = map['inheritAppSettingsAndConnectionStrings']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isMain: map['isMain'] as bool,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      passwordSecret: (() { final guardedValue = map['passwordSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startUpCommand: (() { final guardedValue = map['startUpCommand']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      targetPort: (() { final guardedValue = map['targetPort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      userManagedIdentityClientId: (() { final guardedValue = map['userManagedIdentityClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeMountResponse>(guardedValue, (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
