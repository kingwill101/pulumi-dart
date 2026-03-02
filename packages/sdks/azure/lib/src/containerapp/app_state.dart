// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_dapr.dart';
import 'app_identity.dart';
import 'app_ingress.dart';
import 'app_registry.dart';
import 'app_secret.dart';
import 'app_template.dart';

/// Input properties used for looking up and filtering App resources.
class AppState {
  /// The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerAppEnvironmentId;
  /// The ID of the Custom Domain Verification for this Container App.
  final pulumi.Input<String>? customDomainVerificationId;
  /// A `dapr` block as detailed below.
  final pulumi.Input<AppDapr>? dapr;
  /// An `identity` block as detailed below.
  final pulumi.Input<AppIdentity>? identity;
  /// An `ingress` block as detailed below.
  final pulumi.Input<AppIngress>? ingress;
  /// The FQDN of the Latest Revision of the Container App.
  final pulumi.Input<String>? latestRevisionFqdn;
  /// The name of the latest Container Revision.
  final pulumi.Input<String>? latestRevisionName;
  /// The location this Container App is deployed in. This is the same as the Environment in which it is deployed.
  final pulumi.Input<String>? location;
  /// The maximum of inactive revisions allowed for this Container App.
  final pulumi.Input<int>? maxInactiveRevisions;
  /// The name for this Container App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of the Public IP Addresses which the Container App uses for outbound network access.
  final pulumi.Input<List<String>>? outboundIpAddresses;
  /// A `registry` block as detailed below.
  final pulumi.Input<List<AppRegistry>>? registries;
  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration.
  final pulumi.Input<String>? revisionMode;
  /// One or more `secret` block as detailed below.
  final pulumi.Input<List<AppSecret>>? secrets;
  /// A mapping of tags to assign to the Container App.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `template` block as detailed below.
  final pulumi.Input<AppTemplate>? template;
  /// The name of the Workload Profile in the Container App Environment to place this Container App.
  ///
  /// > **Note:** Omit this value to use the default `Consumption` Workload Profile.
  final pulumi.Input<String>? workloadProfileName;

  /// Creates a new [AppState].
  /// [containerAppEnvironmentId] The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created.
  /// [customDomainVerificationId] The ID of the Custom Domain Verification for this Container App.
  /// [dapr] A `dapr` block as detailed below.
  /// [identity] An `identity` block as detailed below.
  /// [ingress] An `ingress` block as detailed below.
  /// [latestRevisionFqdn] The FQDN of the Latest Revision of the Container App.
  /// [latestRevisionName] The name of the latest Container Revision.
  /// [location] The location this Container App is deployed in. This is the same as the Environment in which it is deployed.
  /// [maxInactiveRevisions] The maximum of inactive revisions allowed for this Container App.
  /// [name] The name for this Container App. Changing this forces a new resource to be created.
  /// [outboundIpAddresses] A list of the Public IP Addresses which the Container App uses for outbound network access.
  /// [registries] A `registry` block as detailed below.
  /// [resourceGroupName] The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  /// [revisionMode] The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration.
  /// [secrets] One or more `secret` block as detailed below.
  /// [tags] A mapping of tags to assign to the Container App.
  /// [template] A `template` block as detailed below.
  /// [workloadProfileName] The name of the Workload Profile in the Container App Environment to place this Container App.
  AppState({
    this.containerAppEnvironmentId,
    this.customDomainVerificationId,
    this.dapr,
    this.identity,
    this.ingress,
    this.latestRevisionFqdn,
    this.latestRevisionName,
    this.location,
    this.maxInactiveRevisions,
    this.name,
    this.outboundIpAddresses,
    this.registries,
    this.resourceGroupName,
    this.revisionMode,
    this.secrets,
    this.tags,
    this.template,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'customDomainVerificationId': ?customDomainVerificationId,
      'dapr': ?pulumi.Input.mapOptionalInputValue<AppDapr, Map<String, dynamic>>(dapr, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingress': ?pulumi.Input.mapOptionalInputValue<AppIngress, Map<String, dynamic>>(ingress, (value) => value.toMap()),
      'latestRevisionFqdn': ?latestRevisionFqdn,
      'latestRevisionName': ?latestRevisionName,
      'location': ?location,
      'maxInactiveRevisions': ?maxInactiveRevisions,
      'name': ?name,
      'outboundIpAddresses': ?outboundIpAddresses,
      'registries': ?pulumi.Input.mapOptionalInputValue<List<AppRegistry>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<AppRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'revisionMode': ?revisionMode,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<AppSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<AppSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'template': ?pulumi.Input.mapOptionalInputValue<AppTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : (map['containerAppEnvironmentId']! as String).input(),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : (map['customDomainVerificationId']! as String).input(),
      dapr: map['dapr'] == null ? null : (AppDapr.fromMap((map['dapr']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (AppIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      ingress: map['ingress'] == null ? null : (AppIngress.fromMap((map['ingress']! as Map).cast<String, dynamic>())).input(),
      latestRevisionFqdn: map['latestRevisionFqdn'] == null ? null : (map['latestRevisionFqdn']! as String).input(),
      latestRevisionName: map['latestRevisionName'] == null ? null : (map['latestRevisionName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maxInactiveRevisions: map['maxInactiveRevisions'] == null ? null : (map['maxInactiveRevisions']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : ((map['outboundIpAddresses']! as List).cast<String>()).input(),
      registries: map['registries'] == null ? null : (pulumi.Input.decodeList<AppRegistry>(map['registries']!, (value) => AppRegistry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      revisionMode: map['revisionMode'] == null ? null : (map['revisionMode']! as String).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<AppSecret>(map['secrets']!, (value) => AppSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      template: map['template'] == null ? null : (AppTemplate.fromMap((map['template']! as Map).cast<String, dynamic>())).input(),
      workloadProfileName: map['workloadProfileName'] == null ? null : (map['workloadProfileName']! as String).input(),
    );
  }
}

