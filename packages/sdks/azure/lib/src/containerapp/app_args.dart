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
  /// The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration.
  final pulumi.Input<String> revisionMode;
  /// One or more `secret` block as detailed below.
  final pulumi.Input<List<AppSecret>>? secrets;
  /// A mapping of tags to assign to the Container App.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `template` block as detailed below.
  final pulumi.Input<AppTemplate> template;
  /// The name of the Workload Profile in the Container App Environment to place this Container App.
  ///
  /// > **Note:** Omit this value to use the default `Consumption` Workload Profile.
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
  /// [revisionMode] The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration.
  /// [secrets] One or more `secret` block as detailed below.
  /// [tags] A mapping of tags to assign to the Container App.
  /// [template] A `template` block as detailed below.
  /// [workloadProfileName] The name of the Workload Profile in the Container App Environment to place this Container App.
  AppArgs({
    required pulumi.Output<String> containerAppEnvironmentId,
    pulumi.Output<AppDapr>? dapr,
    pulumi.Output<AppIdentity>? identity,
    pulumi.Output<AppIngress>? ingress,
    pulumi.Output<int>? maxInactiveRevisions,
    pulumi.Output<String>? name,
    pulumi.Output<List<AppRegistry>>? registries,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> revisionMode,
    pulumi.Output<List<AppSecret>>? secrets,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<AppTemplate> template,
    pulumi.Output<String>? workloadProfileName,
  }) :
      containerAppEnvironmentId = pulumi.Input.asInput<String>(containerAppEnvironmentId),
      dapr = pulumi.Input.asOptionalInput<AppDapr>(dapr),
      identity = pulumi.Input.asOptionalInput<AppIdentity>(identity),
      ingress = pulumi.Input.asOptionalInput<AppIngress>(ingress),
      maxInactiveRevisions = pulumi.Input.asOptionalInput<int>(maxInactiveRevisions),
      name = pulumi.Input.asOptionalInput<String>(name),
      registries = pulumi.Input.asOptionalInput<List<AppRegistry>>(registries),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revisionMode = pulumi.Input.asInput<String>(revisionMode),
      secrets = pulumi.Input.asOptionalInput<List<AppSecret>>(secrets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      template = pulumi.Input.asInput<AppTemplate>(template),
      workloadProfileName = pulumi.Input.asOptionalInput<String>(workloadProfileName);

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
      containerAppEnvironmentId: pulumi.Output.create<String>(map['containerAppEnvironmentId'] as String),
      dapr: map['dapr'] == null ? null : pulumi.Output.create<AppDapr>(AppDapr.fromMap((map['dapr'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<AppIdentity>(AppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<AppIngress>(AppIngress.fromMap((map['ingress'] as Map).cast<String, dynamic>())),
      maxInactiveRevisions: map['maxInactiveRevisions'] == null ? null : pulumi.Output.create<int>(map['maxInactiveRevisions'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      registries: map['registries'] == null ? null : pulumi.Output.create<List<AppRegistry>>(pulumi.Input.decodeList<AppRegistry>(map['registries'], (value) => AppRegistry.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      revisionMode: pulumi.Output.create<String>(map['revisionMode'] as String),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<List<AppSecret>>(pulumi.Input.decodeList<AppSecret>(map['secrets'], (value) => AppSecret.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      template: pulumi.Output.create<AppTemplate>(AppTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())),
      workloadProfileName: map['workloadProfileName'] == null ? null : pulumi.Output.create<String>(map['workloadProfileName'] as String),
    );
  }
}

