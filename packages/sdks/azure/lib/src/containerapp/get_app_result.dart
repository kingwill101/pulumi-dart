// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_dapr.dart';
import 'get_app_identity.dart';
import 'get_app_ingress.dart';
import 'get_app_registry.dart';
import 'get_app_secret.dart';
import 'get_app_template.dart';

/// Result data returned by getApp.
class GetAppResult {
  /// The ID of the Container App Environment this Container App is linked to.
  final String? containerAppEnvironmentId;
  final String? customDomainVerificationId;
  /// A `dapr` block as detailed below.
  final List<GetAppDapr>? daprs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  final List<GetAppIdentity>? identities;
  /// An `ingress` block as detailed below.
  final List<GetAppIngress>? ingresses;
  final String? latestRevisionFqdn;
  final String? latestRevisionName;
  final String? location;
  /// The max inactive revisions for this Container App.
  final int? maxInactiveRevisions;
  /// Name for the IP restriction rule.
  final String? name;
  final List<String>? outboundIpAddresses;
  final bool? readSecrets;
  /// A `registry` block as detailed below.
  final List<GetAppRegistry>? registries;
  final String? resourceGroupName;
  /// The revision mode of the Container App.
  final String? revisionMode;
  /// One or more `secret` block as detailed below.
  final List<GetAppSecret>? secrets;
  /// A mapping of tags to assign to the Container App.
  final Map<String, String>? tags;
  /// A `template` block as detailed below.
  final List<GetAppTemplate>? templates;
  /// The name of the Workload Profile in the Container App Environment in which this Container App is running.
  final String? workloadProfileName;

  /// Creates a new [GetAppResult].
  /// [containerAppEnvironmentId] The ID of the Container App Environment this Container App is linked to.
  /// [customDomainVerificationId] Optional.
  /// [daprs] A `dapr` block as detailed below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  /// [ingresses] An `ingress` block as detailed below.
  /// [latestRevisionFqdn] Optional.
  /// [latestRevisionName] Optional.
  /// [location] Optional.
  /// [maxInactiveRevisions] The max inactive revisions for this Container App.
  /// [name] Name for the IP restriction rule.
  /// [outboundIpAddresses] Optional.
  /// [readSecrets] Optional.
  /// [registries] A `registry` block as detailed below.
  /// [resourceGroupName] Optional.
  /// [revisionMode] The revision mode of the Container App.
  /// [secrets] One or more `secret` block as detailed below.
  /// [tags] A mapping of tags to assign to the Container App.
  /// [templates] A `template` block as detailed below.
  /// [workloadProfileName] The name of the Workload Profile in the Container App Environment in which this Container App is running.
  const GetAppResult({
    this.containerAppEnvironmentId,
    this.customDomainVerificationId,
    this.daprs,
    this.id,
    this.identities,
    this.ingresses,
    this.latestRevisionFqdn,
    this.latestRevisionName,
    this.location,
    this.maxInactiveRevisions,
    this.name,
    this.outboundIpAddresses,
    this.readSecrets,
    this.registries,
    this.resourceGroupName,
    this.revisionMode,
    this.secrets,
    this.tags,
    this.templates,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'customDomainVerificationId': ?customDomainVerificationId,
      'daprs': ?(() { final guardedValue = daprs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppDapr, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ingresses': ?(() { final guardedValue = ingresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppIngress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'latestRevisionFqdn': ?latestRevisionFqdn,
      'latestRevisionName': ?latestRevisionName,
      'location': ?location,
      'maxInactiveRevisions': ?maxInactiveRevisions,
      'name': ?name,
      'outboundIpAddresses': ?outboundIpAddresses,
      'readSecrets': ?readSecrets,
      'registries': ?(() { final guardedValue = registries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppRegistry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'revisionMode': ?revisionMode,
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory GetAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppResult(
      containerAppEnvironmentId: (() { final guardedValue = map['containerAppEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      daprs: (() { final guardedValue = map['daprs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppDapr>(guardedValue, (value) => GetAppDapr.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppIdentity>(guardedValue, (value) => GetAppIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      ingresses: (() { final guardedValue = map['ingresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppIngress>(guardedValue, (value) => GetAppIngress.fromMap((value as Map).cast<String, dynamic>())); })(),
      latestRevisionFqdn: (() { final guardedValue = map['latestRevisionFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestRevisionName: (() { final guardedValue = map['latestRevisionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxInactiveRevisions: (() { final guardedValue = map['maxInactiveRevisions']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      readSecrets: (() { final guardedValue = map['readSecrets']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      registries: (() { final guardedValue = map['registries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppRegistry>(guardedValue, (value) => GetAppRegistry.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionMode: (() { final guardedValue = map['revisionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppSecret>(guardedValue, (value) => GetAppSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppTemplate>(guardedValue, (value) => GetAppTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      workloadProfileName: (() { final guardedValue = map['workloadProfileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
