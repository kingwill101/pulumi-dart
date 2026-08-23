// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_dapr.dart';
import 'app_identity.dart';
import 'app_ingress.dart';
import 'app_registry.dart';
import 'app_secret.dart';
import 'app_template.dart';

/// {@template pulumi_containerapp_app_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_containerapp_app_app_args_doc}
class AppArgs {
  /// The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// A `dapr` block as detailed below.
  final pulumi.Input<AppDapr>? dapr;
  /// An `identity` block as detailed below.
  final pulumi.Input<AppIdentity>? identity;
  /// An `ingress` block as detailed below.
  final pulumi.Input<AppIngress>? ingress;
  /// The maximum of inactive revisions allowed for this Container App.
  final pulumi.Input<int>? maxInactiveRevisions;
  /// The name for this Container App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `registry` block as detailed below.
  final pulumi.Input<List<AppRegistry>>? registries;
  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `trafficWeight` block in the `ingress` configuration.
  final pulumi.Input<String> revisionMode;
  /// One or more `secret` block as detailed below.
  final pulumi.Input<List<AppSecret>>? secrets;
  /// A mapping of tags to assign to the Container App.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `template` block as detailed below.
  final pulumi.Input<AppTemplate> template;
  /// The name of the Workload Profile in the Container App Environment to place this Container App.
  ///
  /// &gt; **Note:** Omit this value to use the default `Consumption` Workload Profile.
  final pulumi.Input<String>? workloadProfileName;

  /// Creates a new [AppArgs].
  /// [containerAppEnvironmentId] The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created.
  /// [dapr] A `dapr` block as detailed below.
  /// [identity] An `identity` block as detailed below.
  /// [ingress] An `ingress` block as detailed below.
  /// [maxInactiveRevisions] The maximum of inactive revisions allowed for this Container App.
  /// [name] The name for this Container App. Changing this forces a new resource to be created.
  /// [registries] A `registry` block as detailed below.
  /// [resourceGroupName] The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  /// [revisionMode] The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `trafficWeight` block in the `ingress` configuration.
  /// [secrets] One or more `secret` block as detailed below.
  /// [tags] A mapping of tags to assign to the Container App.
  /// [template] A `template` block as detailed below.
  /// [workloadProfileName] The name of the Workload Profile in the Container App Environment to place this Container App.
  const AppArgs({
    required this.containerAppEnvironmentId,
    this.dapr,
    this.identity,
    this.ingress,
    this.maxInactiveRevisions,
    this.name,
    this.registries,
    required this.resourceGroupName,
    required this.revisionMode,
    this.secrets,
    this.tags,
    required this.template,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'dapr': ?pulumi.Input.mapOptionalInputValue<AppDapr, Map<String, dynamic>>(dapr, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingress': ?pulumi.Input.mapOptionalInputValue<AppIngress, Map<String, dynamic>>(ingress, (value) => value.toMap()),
      'maxInactiveRevisions': ?maxInactiveRevisions,
      'name': ?name,
      'registries': ?pulumi.Input.mapOptionalInputValue<List<AppRegistry>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<AppRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'revisionMode': revisionMode,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<AppSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<AppSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'template': pulumi.Input.mapInputValue<AppTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      containerAppEnvironmentId: pulumi.Input.fromValue(map['containerAppEnvironmentId'] as String),
      dapr: (() { final guardedValue = map['dapr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppDapr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppIngress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxInactiveRevisions: (() { final guardedValue = map['maxInactiveRevisions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registries: (() { final guardedValue = map['registries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppRegistry>(guardedValue, (value) => AppRegistry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      revisionMode: pulumi.Input.fromValue(map['revisionMode'] as String),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSecret>(guardedValue, (value) => AppSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      template: pulumi.Input.fromValue(AppTemplate.fromMap((map['template']! as Map).cast<String, dynamic>())),
      workloadProfileName: (() { final guardedValue = map['workloadProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
