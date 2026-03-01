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
    pulumi.Output<String>? containerAppEnvironmentId,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<AppDapr>? dapr,
    pulumi.Output<AppIdentity>? identity,
    pulumi.Output<AppIngress>? ingress,
    pulumi.Output<String>? latestRevisionFqdn,
    pulumi.Output<String>? latestRevisionName,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maxInactiveRevisions,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddresses,
    pulumi.Output<List<AppRegistry>>? registries,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? revisionMode,
    pulumi.Output<List<AppSecret>>? secrets,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<AppTemplate>? template,
    pulumi.Output<String>? workloadProfileName,
  }) :
      containerAppEnvironmentId = pulumi.Input.asOptionalInput<String>(containerAppEnvironmentId),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      dapr = pulumi.Input.asOptionalInput<AppDapr>(dapr),
      identity = pulumi.Input.asOptionalInput<AppIdentity>(identity),
      ingress = pulumi.Input.asOptionalInput<AppIngress>(ingress),
      latestRevisionFqdn = pulumi.Input.asOptionalInput<String>(latestRevisionFqdn),
      latestRevisionName = pulumi.Input.asOptionalInput<String>(latestRevisionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxInactiveRevisions = pulumi.Input.asOptionalInput<int>(maxInactiveRevisions),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddresses),
      registries = pulumi.Input.asOptionalInput<List<AppRegistry>>(registries),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      revisionMode = pulumi.Input.asOptionalInput<String>(revisionMode),
      secrets = pulumi.Input.asOptionalInput<List<AppSecret>>(secrets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      template = pulumi.Input.asOptionalInput<AppTemplate>(template),
      workloadProfileName = pulumi.Input.asOptionalInput<String>(workloadProfileName);

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
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['containerAppEnvironmentId'] as String),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      dapr: map['dapr'] == null ? null : pulumi.Output.create<AppDapr>(AppDapr.fromMap((map['dapr'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<AppIdentity>(AppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<AppIngress>(AppIngress.fromMap((map['ingress'] as Map).cast<String, dynamic>())),
      latestRevisionFqdn: map['latestRevisionFqdn'] == null ? null : pulumi.Output.create<String>(map['latestRevisionFqdn'] as String),
      latestRevisionName: map['latestRevisionName'] == null ? null : pulumi.Output.create<String>(map['latestRevisionName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxInactiveRevisions: map['maxInactiveRevisions'] == null ? null : pulumi.Output.create<int>(map['maxInactiveRevisions'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddresses'] as List).cast<String>()),
      registries: map['registries'] == null ? null : pulumi.Output.create<List<AppRegistry>>(pulumi.Input.decodeList<AppRegistry>(map['registries'], (value) => AppRegistry.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      revisionMode: map['revisionMode'] == null ? null : pulumi.Output.create<String>(map['revisionMode'] as String),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<List<AppSecret>>(pulumi.Input.decodeList<AppSecret>(map['secrets'], (value) => AppSecret.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      template: map['template'] == null ? null : pulumi.Output.create<AppTemplate>(AppTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())),
      workloadProfileName: map['workloadProfileName'] == null ? null : pulumi.Output.create<String>(map['workloadProfileName'] as String),
    );
  }
}

