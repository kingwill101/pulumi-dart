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
  final pulumi.Input<String?>? containerAppEnvironmentId;
  /// The ID of the Custom Domain Verification for this Container App.
  final pulumi.Input<String?>? customDomainVerificationId;
  /// A `dapr` block as detailed below.
  final pulumi.Input<AppDapr?>? dapr;
  /// An `identity` block as detailed below.
  final pulumi.Input<AppIdentity?>? identity;
  /// An `ingress` block as detailed below.
  final pulumi.Input<AppIngress?>? ingress;
  /// The FQDN of the Latest Revision of the Container App.
  final pulumi.Input<String?>? latestRevisionFqdn;
  /// The name of the latest Container Revision.
  final pulumi.Input<String?>? latestRevisionName;
  /// The location this Container App is deployed in. This is the same as the Environment in which it is deployed.
  final pulumi.Input<String?>? location;
  /// The maximum of inactive revisions allowed for this Container App.
  final pulumi.Input<int?>? maxInactiveRevisions;
  /// The name for this Container App. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A list of the Public IP Addresses which the Container App uses for outbound network access.
  final pulumi.Input<List<String>?>? outboundIpAddresses;
  /// A `registry` block as detailed below.
  final pulumi.Input<List<AppRegistry>?>? registries;
  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `trafficWeight` block in the `ingress` configuration.
  final pulumi.Input<String?>? revisionMode;
  /// One or more `secret` block as detailed below.
  final pulumi.Input<List<AppSecret>?>? secrets;
  /// A mapping of tags to assign to the Container App.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A `template` block as detailed below.
  final pulumi.Input<AppTemplate?>? template;
  /// The name of the Workload Profile in the Container App Environment to place this Container App.
  ///
  /// &gt; **Note:** Omit this value to use the default `Consumption` Workload Profile.
  final pulumi.Input<String?>? workloadProfileName;

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
  /// [revisionMode] The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `trafficWeight` block in the `ingress` configuration.
  /// [secrets] One or more `secret` block as detailed below.
  /// [tags] A mapping of tags to assign to the Container App.
  /// [template] A `template` block as detailed below.
  /// [workloadProfileName] The name of the Workload Profile in the Container App Environment to place this Container App.
  const AppState({
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
      containerAppEnvironmentId: (() { final guardedValue = map['containerAppEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dapr: (() { final guardedValue = map['dapr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppDapr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppIngress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      latestRevisionFqdn: (() { final guardedValue = map['latestRevisionFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestRevisionName: (() { final guardedValue = map['latestRevisionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxInactiveRevisions: (() { final guardedValue = map['maxInactiveRevisions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      registries: (() { final guardedValue = map['registries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppRegistry>(guardedValue, (value) => AppRegistry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionMode: (() { final guardedValue = map['revisionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSecret>(guardedValue, (value) => AppSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadProfileName: (() { final guardedValue = map['workloadProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
